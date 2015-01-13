-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Czas generowania: 01 Wrz 2014, 10:27
-- Wersja serwera: 5.5.31-0ubuntu0.12.04.2
-- Wersja PHP: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `prestashop_9`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_access`
--

CREATE TABLE IF NOT EXISTS `prstshp_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_access`
--

INSERT INTO `prstshp_access` (`id_profile`, `id_tab`, `view`, `add`, `edit`, `delete`) VALUES
(1, 0, 1, 1, 1, 1),
(1, 1, 1, 1, 1, 1),
(1, 5, 1, 1, 1, 1),
(1, 7, 1, 1, 1, 1),
(1, 9, 1, 1, 1, 1),
(1, 10, 1, 1, 1, 1),
(1, 11, 1, 1, 1, 1),
(1, 13, 1, 1, 1, 1),
(1, 14, 1, 1, 1, 1),
(1, 15, 1, 1, 1, 1),
(1, 16, 1, 1, 1, 1),
(1, 19, 1, 1, 1, 1),
(1, 20, 1, 1, 1, 1),
(1, 21, 1, 1, 1, 1),
(1, 22, 1, 1, 1, 1),
(1, 23, 1, 1, 1, 1),
(1, 24, 1, 1, 1, 1),
(1, 25, 1, 1, 1, 1),
(1, 26, 1, 1, 1, 1),
(1, 27, 1, 1, 1, 1),
(1, 28, 1, 1, 1, 1),
(1, 29, 1, 1, 1, 1),
(1, 31, 1, 1, 1, 1),
(1, 32, 1, 1, 1, 1),
(1, 33, 1, 1, 1, 1),
(1, 34, 1, 1, 1, 1),
(1, 35, 1, 1, 1, 1),
(1, 36, 1, 1, 1, 1),
(1, 38, 1, 1, 1, 1),
(1, 39, 1, 1, 1, 1),
(1, 40, 1, 1, 1, 1),
(1, 41, 1, 1, 1, 1),
(1, 42, 1, 1, 1, 1),
(1, 44, 1, 1, 1, 1),
(1, 45, 1, 1, 1, 1),
(1, 48, 1, 1, 1, 1),
(1, 50, 1, 1, 1, 1),
(1, 52, 1, 1, 1, 1),
(1, 53, 1, 1, 1, 1),
(1, 54, 1, 1, 1, 1),
(1, 55, 1, 1, 1, 1),
(1, 56, 1, 1, 1, 1),
(1, 57, 1, 1, 1, 1),
(1, 58, 1, 1, 1, 1),
(1, 59, 1, 1, 1, 1),
(1, 61, 1, 1, 1, 1),
(1, 62, 1, 1, 1, 1),
(1, 63, 1, 1, 1, 1),
(1, 66, 1, 1, 1, 1),
(1, 67, 1, 1, 1, 1),
(1, 68, 1, 1, 1, 1),
(1, 69, 1, 1, 1, 1),
(1, 70, 1, 1, 1, 1),
(1, 71, 1, 1, 1, 1),
(1, 73, 1, 1, 1, 1),
(1, 74, 1, 1, 1, 1),
(1, 75, 1, 1, 1, 1),
(1, 76, 1, 1, 1, 1),
(1, 77, 1, 1, 1, 1),
(1, 78, 1, 1, 1, 1),
(1, 80, 1, 1, 1, 1),
(1, 81, 1, 1, 1, 1),
(1, 82, 1, 1, 1, 1),
(1, 83, 1, 1, 1, 1),
(1, 84, 1, 1, 1, 1),
(1, 86, 1, 1, 1, 1),
(1, 87, 1, 1, 1, 1),
(1, 88, 1, 1, 1, 1),
(1, 89, 1, 1, 1, 1),
(1, 92, 1, 1, 1, 1),
(1, 93, 1, 1, 1, 1),
(1, 94, 1, 1, 1, 1),
(1, 95, 1, 1, 1, 1),
(1, 96, 1, 1, 1, 1),
(1, 99, 1, 1, 1, 1),
(1, 100, 1, 1, 1, 1),
(1, 101, 1, 1, 1, 1),
(1, 102, 1, 1, 1, 1),
(1, 103, 1, 1, 1, 1),
(2, 0, 1, 1, 1, 1),
(2, 1, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0),
(2, 3, 0, 0, 0, 0),
(2, 4, 0, 0, 0, 0),
(2, 5, 0, 0, 0, 0),
(2, 6, 0, 0, 0, 0),
(2, 7, 0, 0, 0, 0),
(2, 8, 0, 0, 0, 0),
(2, 9, 1, 1, 1, 1),
(2, 10, 1, 1, 1, 1),
(2, 11, 1, 1, 1, 1),
(2, 12, 0, 0, 0, 0),
(2, 13, 1, 0, 1, 0),
(2, 14, 1, 1, 1, 1),
(2, 15, 0, 0, 0, 0),
(2, 16, 0, 0, 0, 0),
(2, 17, 0, 0, 0, 0),
(2, 18, 0, 0, 0, 0),
(2, 19, 0, 0, 0, 0),
(2, 20, 1, 1, 1, 1),
(2, 21, 1, 1, 1, 1),
(2, 22, 1, 1, 1, 1),
(2, 23, 1, 1, 1, 1),
(2, 24, 0, 0, 0, 0),
(2, 25, 0, 0, 0, 0),
(2, 26, 0, 0, 0, 0),
(2, 27, 1, 1, 1, 1),
(2, 28, 0, 0, 0, 0),
(2, 29, 0, 0, 0, 0),
(2, 30, 1, 1, 1, 1),
(2, 31, 1, 1, 1, 1),
(2, 32, 1, 1, 1, 1),
(2, 33, 1, 1, 1, 1),
(2, 34, 1, 1, 1, 1),
(2, 35, 1, 1, 1, 1),
(2, 36, 0, 0, 0, 0),
(2, 37, 1, 1, 1, 1),
(2, 38, 1, 1, 1, 1),
(2, 39, 0, 0, 0, 0),
(2, 40, 0, 0, 0, 0),
(2, 41, 0, 0, 0, 0),
(2, 42, 0, 0, 0, 0),
(2, 43, 0, 0, 0, 0),
(2, 44, 0, 0, 0, 0),
(2, 45, 0, 0, 0, 0),
(2, 46, 0, 0, 0, 0),
(2, 47, 0, 0, 0, 0),
(2, 48, 1, 1, 1, 1),
(2, 49, 1, 1, 1, 1),
(2, 50, 0, 0, 0, 0),
(2, 51, 0, 0, 0, 0),
(2, 52, 0, 0, 0, 0),
(2, 53, 0, 0, 0, 0),
(2, 54, 0, 0, 0, 0),
(2, 55, 0, 0, 0, 0),
(2, 56, 0, 0, 0, 0),
(2, 57, 0, 0, 0, 0),
(2, 58, 0, 0, 0, 0),
(2, 59, 0, 0, 0, 0),
(2, 60, 1, 0, 1, 0),
(2, 61, 0, 0, 0, 0),
(2, 62, 0, 0, 0, 0),
(2, 63, 0, 0, 0, 0),
(2, 64, 0, 0, 0, 0),
(2, 65, 0, 0, 0, 0),
(2, 66, 0, 0, 0, 0),
(2, 67, 0, 0, 0, 0),
(2, 68, 0, 0, 0, 0),
(2, 69, 0, 0, 0, 0),
(2, 70, 0, 0, 0, 0),
(2, 71, 0, 0, 0, 0),
(2, 72, 0, 0, 0, 0),
(2, 73, 0, 0, 0, 0),
(2, 74, 0, 0, 0, 0),
(2, 75, 0, 0, 0, 0),
(2, 76, 0, 0, 0, 0),
(2, 77, 0, 0, 0, 0),
(2, 78, 0, 0, 0, 0),
(2, 79, 0, 0, 0, 0),
(2, 80, 0, 0, 0, 0),
(2, 81, 0, 0, 0, 0),
(2, 82, 0, 0, 0, 0),
(2, 83, 0, 0, 0, 0),
(2, 84, 0, 0, 0, 0),
(2, 85, 0, 0, 0, 0),
(2, 86, 0, 0, 0, 0),
(2, 87, 0, 0, 0, 0),
(2, 88, 0, 0, 0, 0),
(2, 89, 0, 0, 0, 0),
(2, 90, 0, 0, 0, 0),
(2, 91, 0, 0, 0, 0),
(2, 92, 0, 0, 0, 0),
(2, 93, 0, 0, 0, 0),
(2, 94, 1, 1, 1, 1),
(2, 95, 1, 1, 1, 1),
(2, 96, 1, 1, 1, 1),
(2, 97, 0, 0, 0, 0),
(2, 98, 0, 0, 0, 0),
(2, 99, 1, 1, 1, 1),
(2, 100, 1, 1, 1, 1),
(2, 101, 0, 0, 0, 0),
(2, 102, 0, 0, 0, 0),
(2, 103, 0, 0, 0, 0),
(3, 0, 1, 1, 1, 1),
(3, 1, 0, 0, 0, 0),
(3, 2, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0),
(3, 4, 0, 0, 0, 0),
(3, 5, 1, 0, 0, 0),
(3, 6, 0, 0, 0, 0),
(3, 7, 0, 0, 0, 0),
(3, 8, 0, 0, 0, 0),
(3, 9, 1, 1, 1, 1),
(3, 10, 0, 0, 0, 0),
(3, 11, 0, 0, 0, 0),
(3, 12, 0, 0, 0, 0),
(3, 13, 0, 0, 0, 0),
(3, 14, 0, 0, 0, 0),
(3, 15, 1, 0, 0, 0),
(3, 16, 1, 0, 0, 0),
(3, 17, 0, 0, 0, 0),
(3, 18, 0, 0, 0, 0),
(3, 19, 0, 0, 0, 0),
(3, 20, 0, 0, 0, 0),
(3, 21, 1, 1, 1, 1),
(3, 22, 1, 1, 1, 1),
(3, 23, 0, 0, 0, 0),
(3, 24, 0, 0, 0, 0),
(3, 25, 0, 0, 0, 0),
(3, 26, 0, 0, 0, 0),
(3, 27, 0, 0, 0, 0),
(3, 28, 0, 0, 0, 0),
(3, 29, 0, 0, 0, 0),
(3, 30, 0, 0, 0, 0),
(3, 31, 0, 0, 0, 0),
(3, 32, 0, 0, 0, 0),
(3, 33, 0, 0, 0, 0),
(3, 34, 0, 0, 0, 0),
(3, 35, 0, 0, 0, 0),
(3, 36, 0, 0, 0, 0),
(3, 37, 0, 0, 0, 0),
(3, 38, 0, 0, 0, 0),
(3, 39, 0, 0, 0, 0),
(3, 40, 0, 0, 0, 0),
(3, 41, 0, 0, 0, 0),
(3, 42, 0, 0, 0, 0),
(3, 43, 0, 0, 0, 0),
(3, 44, 0, 0, 0, 0),
(3, 45, 0, 0, 0, 0),
(3, 46, 0, 0, 0, 0),
(3, 47, 0, 0, 0, 0),
(3, 48, 0, 0, 0, 0),
(3, 49, 0, 0, 0, 0),
(3, 50, 0, 0, 0, 0),
(3, 51, 0, 0, 0, 0),
(3, 52, 0, 0, 0, 0),
(3, 53, 0, 0, 0, 0),
(3, 54, 0, 0, 0, 0),
(3, 55, 0, 0, 0, 0),
(3, 56, 0, 0, 0, 0),
(3, 57, 0, 0, 0, 0),
(3, 58, 0, 0, 0, 0),
(3, 59, 1, 1, 1, 1),
(3, 60, 0, 0, 0, 0),
(3, 61, 0, 0, 0, 0),
(3, 62, 0, 0, 0, 0),
(3, 63, 0, 0, 0, 0),
(3, 64, 0, 0, 0, 0),
(3, 65, 0, 0, 0, 0),
(3, 66, 0, 0, 0, 0),
(3, 67, 0, 0, 0, 0),
(3, 68, 0, 0, 0, 0),
(3, 69, 0, 0, 0, 0),
(3, 70, 1, 1, 1, 1),
(3, 71, 0, 0, 0, 0),
(3, 72, 0, 0, 0, 0),
(3, 73, 0, 0, 0, 0),
(3, 74, 0, 0, 0, 0),
(3, 75, 0, 0, 0, 0),
(3, 76, 0, 0, 0, 0),
(3, 77, 0, 0, 0, 0),
(3, 78, 0, 0, 0, 0),
(3, 79, 0, 0, 0, 0),
(3, 80, 0, 0, 0, 0),
(3, 81, 0, 0, 0, 0),
(3, 82, 0, 0, 0, 0),
(3, 83, 0, 0, 0, 0),
(3, 84, 0, 0, 0, 0),
(3, 85, 0, 0, 0, 0),
(3, 86, 0, 0, 0, 0),
(3, 87, 0, 0, 0, 0),
(3, 88, 0, 0, 0, 0),
(3, 89, 0, 0, 0, 0),
(3, 90, 0, 0, 0, 0),
(3, 91, 0, 0, 0, 0),
(3, 92, 0, 0, 0, 0),
(3, 93, 0, 0, 0, 0),
(3, 94, 0, 0, 0, 0),
(3, 95, 0, 0, 0, 0),
(3, 96, 0, 0, 0, 0),
(3, 97, 0, 0, 0, 0),
(3, 98, 0, 0, 0, 0),
(3, 99, 0, 0, 0, 0),
(3, 100, 0, 0, 0, 0),
(3, 101, 0, 0, 0, 0),
(3, 102, 0, 0, 0, 0),
(3, 103, 0, 0, 0, 0),
(4, 0, 1, 1, 1, 1),
(4, 1, 0, 0, 0, 0),
(4, 2, 0, 0, 0, 0),
(4, 3, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0),
(4, 5, 1, 0, 0, 0),
(4, 6, 0, 0, 0, 0),
(4, 7, 0, 0, 0, 0),
(4, 8, 0, 0, 0, 0),
(4, 9, 1, 1, 1, 1),
(4, 10, 1, 1, 1, 1),
(4, 11, 1, 1, 1, 1),
(4, 12, 0, 0, 0, 0),
(4, 13, 1, 0, 1, 0),
(4, 14, 0, 0, 0, 0),
(4, 15, 0, 0, 0, 0),
(4, 16, 0, 0, 0, 0),
(4, 17, 0, 0, 0, 0),
(4, 18, 0, 0, 0, 0),
(4, 19, 1, 1, 1, 1),
(4, 20, 1, 0, 0, 0),
(4, 21, 1, 1, 1, 1),
(4, 22, 1, 1, 1, 1),
(4, 23, 0, 0, 0, 0),
(4, 24, 0, 0, 0, 0),
(4, 25, 0, 0, 0, 0),
(4, 26, 1, 0, 0, 0),
(4, 27, 0, 0, 0, 0),
(4, 28, 0, 0, 0, 0),
(4, 29, 0, 0, 0, 0),
(4, 30, 1, 1, 1, 1),
(4, 31, 1, 1, 1, 1),
(4, 32, 0, 0, 0, 0),
(4, 33, 0, 0, 0, 0),
(4, 34, 1, 1, 1, 1),
(4, 35, 0, 0, 0, 0),
(4, 36, 1, 1, 1, 1),
(4, 37, 1, 1, 1, 1),
(4, 38, 1, 1, 1, 1),
(4, 39, 1, 1, 1, 1),
(4, 40, 1, 1, 1, 1),
(4, 41, 0, 0, 0, 0),
(4, 42, 0, 0, 0, 0),
(4, 43, 0, 0, 0, 0),
(4, 44, 0, 0, 0, 0),
(4, 45, 0, 0, 0, 0),
(4, 46, 0, 0, 0, 0),
(4, 47, 0, 0, 0, 0),
(4, 48, 0, 0, 0, 0),
(4, 49, 0, 0, 0, 0),
(4, 50, 0, 0, 0, 0),
(4, 51, 0, 0, 0, 0),
(4, 52, 0, 0, 0, 0),
(4, 53, 0, 0, 0, 0),
(4, 54, 0, 0, 0, 0),
(4, 55, 0, 0, 0, 0),
(4, 56, 0, 0, 0, 0),
(4, 57, 0, 0, 0, 0),
(4, 58, 0, 0, 0, 0),
(4, 59, 0, 0, 0, 0),
(4, 60, 1, 0, 1, 0),
(4, 61, 0, 0, 0, 0),
(4, 62, 0, 0, 0, 0),
(4, 63, 0, 0, 0, 0),
(4, 64, 0, 0, 0, 0),
(4, 65, 0, 0, 0, 0),
(4, 66, 0, 0, 0, 0),
(4, 67, 0, 0, 0, 0),
(4, 68, 0, 0, 0, 0),
(4, 69, 0, 0, 0, 0),
(4, 70, 0, 0, 0, 0),
(4, 71, 0, 0, 0, 0),
(4, 72, 0, 0, 0, 0),
(4, 73, 0, 0, 0, 0),
(4, 74, 0, 0, 0, 0),
(4, 75, 0, 0, 0, 0),
(4, 76, 0, 0, 0, 0),
(4, 77, 0, 0, 0, 0),
(4, 78, 0, 0, 0, 0),
(4, 79, 0, 0, 0, 0),
(4, 80, 0, 0, 0, 0),
(4, 81, 0, 0, 0, 0),
(4, 82, 0, 0, 0, 0),
(4, 83, 0, 0, 0, 0),
(4, 84, 1, 1, 1, 1),
(4, 85, 0, 0, 0, 0),
(4, 86, 0, 0, 0, 0),
(4, 87, 0, 0, 0, 0),
(4, 88, 0, 0, 0, 0),
(4, 89, 0, 0, 0, 0),
(4, 90, 0, 0, 0, 0),
(4, 91, 1, 1, 1, 1),
(4, 92, 0, 0, 0, 0),
(4, 93, 1, 1, 1, 1),
(4, 94, 0, 0, 0, 0),
(4, 95, 0, 0, 0, 0),
(4, 96, 0, 0, 0, 0),
(4, 97, 0, 0, 0, 0),
(4, 98, 0, 0, 0, 0),
(4, 99, 1, 0, 0, 0),
(4, 100, 0, 0, 0, 0),
(4, 101, 0, 0, 0, 0),
(4, 102, 0, 0, 0, 0),
(4, 103, 0, 0, 0, 0),
(5, 0, 1, 1, 1, 1),
(5, 1, 0, 0, 0, 0),
(5, 2, 0, 0, 0, 0),
(5, 3, 0, 0, 0, 0),
(5, 4, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 0),
(5, 6, 0, 0, 0, 0),
(5, 7, 0, 0, 0, 0),
(5, 8, 0, 0, 0, 0),
(5, 9, 0, 0, 0, 0),
(5, 10, 0, 0, 0, 0),
(5, 11, 0, 0, 0, 0),
(5, 12, 0, 0, 0, 0),
(5, 13, 0, 0, 0, 0),
(5, 14, 0, 0, 0, 0),
(5, 15, 0, 0, 0, 0),
(5, 16, 0, 0, 0, 0),
(5, 17, 0, 0, 0, 0),
(5, 18, 0, 0, 0, 0),
(5, 19, 0, 0, 0, 0),
(5, 20, 0, 0, 0, 0),
(5, 21, 0, 0, 0, 0),
(5, 22, 0, 0, 0, 0),
(5, 23, 0, 0, 0, 0),
(5, 24, 0, 0, 0, 0),
(5, 25, 0, 0, 0, 0),
(5, 26, 0, 0, 0, 0),
(5, 27, 0, 0, 0, 0),
(5, 28, 0, 0, 0, 0),
(5, 29, 0, 0, 0, 0),
(5, 30, 0, 0, 0, 0),
(5, 31, 0, 0, 0, 0),
(5, 32, 0, 0, 0, 0),
(5, 33, 0, 0, 0, 0),
(5, 34, 0, 0, 0, 0),
(5, 35, 0, 0, 0, 0),
(5, 36, 0, 0, 0, 0),
(5, 37, 0, 0, 0, 0),
(5, 38, 0, 0, 0, 0),
(5, 39, 0, 0, 0, 0),
(5, 40, 0, 0, 0, 0),
(5, 41, 0, 0, 0, 0),
(5, 42, 0, 0, 0, 0),
(5, 43, 0, 0, 0, 0),
(5, 44, 0, 0, 0, 0),
(5, 45, 0, 0, 0, 0),
(5, 46, 0, 0, 0, 0),
(5, 47, 0, 0, 0, 0),
(5, 48, 0, 0, 0, 0),
(5, 49, 0, 0, 0, 0),
(5, 50, 0, 0, 0, 0),
(5, 51, 0, 0, 0, 0),
(5, 52, 0, 0, 0, 0),
(5, 53, 0, 0, 0, 0),
(5, 54, 0, 0, 0, 0),
(5, 55, 0, 0, 0, 0),
(5, 56, 0, 0, 0, 0),
(5, 57, 0, 0, 0, 0),
(5, 58, 0, 0, 0, 0),
(5, 59, 0, 0, 0, 0),
(5, 60, 0, 0, 0, 0),
(5, 61, 0, 0, 0, 0),
(5, 62, 0, 0, 0, 0),
(5, 63, 0, 0, 0, 0),
(5, 64, 0, 0, 0, 0),
(5, 65, 0, 0, 0, 0),
(5, 66, 0, 0, 0, 0),
(5, 67, 0, 0, 0, 0),
(5, 68, 0, 0, 0, 0),
(5, 69, 0, 0, 0, 0),
(5, 70, 0, 0, 0, 0),
(5, 71, 0, 0, 0, 0),
(5, 72, 0, 0, 0, 0),
(5, 73, 0, 0, 0, 0),
(5, 74, 0, 0, 0, 0),
(5, 75, 0, 0, 0, 0),
(5, 76, 0, 0, 0, 0),
(5, 77, 0, 0, 0, 0),
(5, 78, 0, 0, 0, 0),
(5, 79, 0, 0, 0, 0),
(5, 80, 0, 0, 0, 0),
(5, 81, 0, 0, 0, 0),
(5, 82, 0, 0, 0, 0),
(5, 83, 0, 0, 0, 0),
(5, 84, 0, 0, 0, 0),
(5, 85, 0, 0, 0, 0),
(5, 86, 0, 0, 0, 0),
(5, 87, 0, 0, 0, 0),
(5, 88, 0, 0, 0, 0),
(5, 89, 0, 0, 0, 0),
(5, 90, 0, 0, 0, 0),
(5, 91, 0, 0, 0, 0),
(5, 92, 0, 0, 0, 0),
(5, 93, 0, 0, 0, 0),
(5, 94, 0, 0, 0, 0),
(5, 95, 0, 0, 0, 0),
(5, 96, 0, 0, 0, 0),
(5, 97, 0, 0, 0, 0),
(5, 98, 0, 0, 0, 0),
(5, 99, 0, 0, 0, 0),
(5, 100, 0, 0, 0, 0),
(5, 101, 0, 0, 0, 0),
(5, 102, 0, 0, 0, 0),
(5, 103, 0, 0, 0, 0),
(6, 0, 1, 1, 1, 1),
(6, 1, 0, 0, 0, 0),
(6, 2, 0, 0, 0, 0),
(6, 3, 0, 0, 0, 0),
(6, 4, 0, 0, 0, 0),
(6, 5, 0, 0, 0, 0),
(6, 6, 0, 0, 0, 0),
(6, 7, 0, 0, 0, 0),
(6, 8, 0, 0, 0, 0),
(6, 9, 0, 0, 0, 0),
(6, 10, 0, 0, 0, 0),
(6, 11, 0, 0, 0, 0),
(6, 12, 0, 0, 0, 0),
(6, 13, 0, 0, 0, 0),
(6, 14, 0, 0, 0, 0),
(6, 15, 0, 0, 0, 0),
(6, 16, 0, 0, 0, 0),
(6, 17, 0, 0, 0, 0),
(6, 18, 0, 0, 0, 0),
(6, 19, 0, 0, 0, 0),
(6, 20, 0, 0, 0, 0),
(6, 21, 0, 0, 0, 0),
(6, 22, 0, 0, 0, 0),
(6, 23, 0, 0, 0, 0),
(6, 24, 0, 0, 0, 0),
(6, 25, 0, 0, 0, 0),
(6, 26, 0, 0, 0, 0),
(6, 27, 0, 0, 0, 0),
(6, 28, 0, 0, 0, 0),
(6, 29, 0, 0, 0, 0),
(6, 30, 0, 0, 0, 0),
(6, 31, 0, 0, 0, 0),
(6, 32, 0, 0, 0, 0),
(6, 33, 0, 0, 0, 0),
(6, 34, 0, 0, 0, 0),
(6, 35, 0, 0, 0, 0),
(6, 36, 0, 0, 0, 0),
(6, 37, 0, 0, 0, 0),
(6, 38, 0, 0, 0, 0),
(6, 39, 0, 0, 0, 0),
(6, 40, 0, 0, 0, 0),
(6, 41, 0, 0, 0, 0),
(6, 42, 0, 0, 0, 0),
(6, 43, 0, 0, 0, 0),
(6, 44, 0, 0, 0, 0),
(6, 45, 0, 0, 0, 0),
(6, 46, 0, 0, 0, 0),
(6, 47, 0, 0, 0, 0),
(6, 48, 0, 0, 0, 0),
(6, 49, 0, 0, 0, 0),
(6, 50, 0, 0, 0, 0),
(6, 51, 0, 0, 0, 0),
(6, 52, 0, 0, 0, 0),
(6, 53, 0, 0, 0, 0),
(6, 54, 0, 0, 0, 0),
(6, 55, 0, 0, 0, 0),
(6, 56, 0, 0, 0, 0),
(6, 57, 0, 0, 0, 0),
(6, 58, 0, 0, 0, 0),
(6, 59, 0, 0, 0, 0),
(6, 60, 0, 0, 0, 0),
(6, 61, 0, 0, 0, 0),
(6, 62, 0, 0, 0, 0),
(6, 63, 0, 0, 0, 0),
(6, 64, 0, 0, 0, 0),
(6, 65, 0, 0, 0, 0),
(6, 66, 0, 0, 0, 0),
(6, 67, 0, 0, 0, 0),
(6, 68, 0, 0, 0, 0),
(6, 69, 0, 0, 0, 0),
(6, 70, 0, 0, 0, 0),
(6, 71, 0, 0, 0, 0),
(6, 72, 0, 0, 0, 0),
(6, 73, 0, 0, 0, 0),
(6, 74, 0, 0, 0, 0),
(6, 75, 0, 0, 0, 0),
(6, 76, 0, 0, 0, 0),
(6, 77, 0, 0, 0, 0),
(6, 78, 0, 0, 0, 0),
(6, 79, 0, 0, 0, 0),
(6, 80, 0, 0, 0, 0),
(6, 81, 0, 0, 0, 0),
(6, 82, 0, 0, 0, 0),
(6, 83, 0, 0, 0, 0),
(6, 84, 0, 0, 0, 0),
(6, 85, 0, 0, 0, 0),
(6, 86, 0, 0, 0, 0),
(6, 87, 0, 0, 0, 0),
(6, 88, 0, 0, 0, 0),
(6, 89, 0, 0, 0, 0),
(6, 90, 0, 0, 0, 0),
(6, 91, 0, 0, 0, 0),
(6, 92, 0, 0, 0, 0),
(6, 93, 0, 0, 0, 0),
(6, 94, 0, 0, 0, 0),
(6, 95, 0, 0, 0, 0),
(6, 96, 0, 0, 0, 0),
(6, 97, 0, 0, 0, 0),
(6, 98, 0, 0, 0, 0),
(6, 99, 0, 0, 0, 0),
(6, 100, 0, 0, 0, 0),
(6, 101, 0, 0, 0, 0),
(6, 102, 0, 0, 0, 0),
(6, 103, 0, 0, 0, 0),
(7, 0, 1, 1, 1, 1),
(7, 1, 0, 0, 0, 0),
(7, 2, 0, 0, 0, 0),
(7, 3, 0, 0, 0, 0),
(7, 4, 0, 0, 0, 0),
(7, 5, 0, 0, 0, 0),
(7, 6, 0, 0, 0, 0),
(7, 7, 0, 0, 0, 0),
(7, 8, 0, 0, 0, 0),
(7, 9, 0, 0, 0, 0),
(7, 10, 0, 0, 0, 0),
(7, 11, 0, 0, 0, 0),
(7, 12, 0, 0, 0, 0),
(7, 13, 0, 0, 0, 0),
(7, 14, 0, 0, 0, 0),
(7, 15, 0, 0, 0, 0),
(7, 16, 0, 0, 0, 0),
(7, 17, 0, 0, 0, 0),
(7, 18, 0, 0, 0, 0),
(7, 19, 0, 0, 0, 0),
(7, 20, 0, 0, 0, 0),
(7, 21, 0, 0, 0, 0),
(7, 22, 0, 0, 0, 0),
(7, 23, 0, 0, 0, 0),
(7, 24, 0, 0, 0, 0),
(7, 25, 0, 0, 0, 0),
(7, 26, 0, 0, 0, 0),
(7, 27, 0, 0, 0, 0),
(7, 28, 0, 0, 0, 0),
(7, 29, 0, 0, 0, 0),
(7, 30, 0, 0, 0, 0),
(7, 31, 0, 0, 0, 0),
(7, 32, 0, 0, 0, 0),
(7, 33, 0, 0, 0, 0),
(7, 34, 0, 0, 0, 0),
(7, 35, 0, 0, 0, 0),
(7, 36, 0, 0, 0, 0),
(7, 37, 0, 0, 0, 0),
(7, 38, 0, 0, 0, 0),
(7, 39, 0, 0, 0, 0),
(7, 40, 0, 0, 0, 0),
(7, 41, 0, 0, 0, 0),
(7, 42, 0, 0, 0, 0),
(7, 43, 0, 0, 0, 0),
(7, 44, 0, 0, 0, 0),
(7, 45, 0, 0, 0, 0),
(7, 46, 0, 0, 0, 0),
(7, 47, 0, 0, 0, 0),
(7, 48, 0, 0, 0, 0),
(7, 49, 0, 0, 0, 0),
(7, 50, 0, 0, 0, 0),
(7, 51, 0, 0, 0, 0),
(7, 52, 0, 0, 0, 0),
(7, 53, 0, 0, 0, 0),
(7, 54, 0, 0, 0, 0),
(7, 55, 0, 0, 0, 0),
(7, 56, 0, 0, 0, 0),
(7, 57, 0, 0, 0, 0),
(7, 58, 0, 0, 0, 0),
(7, 59, 0, 0, 0, 0),
(7, 60, 0, 0, 0, 0),
(7, 61, 0, 0, 0, 0),
(7, 62, 0, 0, 0, 0),
(7, 63, 0, 0, 0, 0),
(7, 64, 0, 0, 0, 0),
(7, 65, 0, 0, 0, 0),
(7, 66, 0, 0, 0, 0),
(7, 67, 0, 0, 0, 0),
(7, 68, 0, 0, 0, 0),
(7, 69, 0, 0, 0, 0),
(7, 70, 0, 0, 0, 0),
(7, 71, 0, 0, 0, 0),
(7, 72, 0, 0, 0, 0),
(7, 73, 0, 0, 0, 0),
(7, 74, 0, 0, 0, 0),
(7, 75, 0, 0, 0, 0),
(7, 76, 0, 0, 0, 0),
(7, 77, 0, 0, 0, 0),
(7, 78, 0, 0, 0, 0),
(7, 79, 0, 0, 0, 0),
(7, 80, 0, 0, 0, 0),
(7, 81, 0, 0, 0, 0),
(7, 82, 0, 0, 0, 0),
(7, 83, 0, 0, 0, 0),
(7, 84, 0, 0, 0, 0),
(7, 85, 0, 0, 0, 0),
(7, 86, 0, 0, 0, 0),
(7, 87, 0, 0, 0, 0),
(7, 88, 0, 0, 0, 0),
(7, 89, 0, 0, 0, 0),
(7, 90, 0, 0, 0, 0),
(7, 91, 0, 0, 0, 0),
(7, 92, 0, 0, 0, 0),
(7, 93, 0, 0, 0, 0),
(7, 94, 0, 0, 0, 0),
(7, 95, 0, 0, 0, 0),
(7, 96, 0, 0, 0, 0),
(7, 97, 0, 0, 0, 0),
(7, 98, 0, 0, 0, 0),
(7, 99, 0, 0, 0, 0),
(7, 100, 0, 0, 0, 0),
(7, 101, 0, 0, 0, 0),
(7, 102, 0, 0, 0, 0),
(7, 103, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_accessory`
--

CREATE TABLE IF NOT EXISTS `prstshp_accessory` (
  `id_product_1` int(10) unsigned NOT NULL,
  `id_product_2` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_accessory`
--

INSERT INTO `prstshp_accessory` (`id_product_1`, `id_product_2`) VALUES
(4, 1),
(4, 3),
(4, 62);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_address`
--

CREATE TABLE IF NOT EXISTS `prstshp_address` (
`id_address` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `id_warehouse` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(64) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_address_format`
--

CREATE TABLE IF NOT EXISTS `prstshp_address_format` (
  `id_country` int(10) unsigned NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_address_format`
--

INSERT INTO `prstshp_address_format` (`id_country`, `format`) VALUES
(1, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(2, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(3, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(4, 'firstname lastname\ncompany\naddress1\naddress2\ncity State:name postcode\nCountry:name\nphone\nphone_mobile'),
(5, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(6, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(7, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(8, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(9, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(10, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(11, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(12, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(13, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(14, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(15, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(16, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(17, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(18, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(19, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(20, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(21, 'firstname lastname\ncompany\naddress1 address2\ncity, State:name postcode\nCountry:name\nphone\nphone_mobile'),
(22, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(23, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(24, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(25, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(26, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(27, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(28, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(29, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(30, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(31, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(32, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(33, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(34, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(35, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(36, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(37, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(38, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(39, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(40, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(41, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(42, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(43, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(44, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(45, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(46, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(47, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(48, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(49, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(50, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(51, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(52, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(53, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(54, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(55, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(56, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(57, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(58, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(59, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(60, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(61, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(62, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(63, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(64, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(65, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(66, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(67, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(68, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(69, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(70, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(71, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(72, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(73, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(74, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(75, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(76, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(77, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(78, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(79, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(80, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(81, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(82, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(83, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(84, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(85, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(86, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(87, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(88, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(89, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(90, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(91, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(92, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(93, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(94, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(95, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(96, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(97, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(98, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(99, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(100, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(101, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(102, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(103, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(104, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(105, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(106, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(107, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(108, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(109, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(110, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(111, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(112, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(113, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(114, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(115, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(116, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(117, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(118, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(119, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(120, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(121, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(122, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(123, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(124, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(125, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(126, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(127, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(128, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(129, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(130, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(131, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(132, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(133, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(134, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(135, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(136, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(137, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(138, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(139, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(140, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(141, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(142, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(143, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(144, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(145, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(146, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(147, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(148, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(149, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(150, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(151, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(152, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(153, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(154, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(155, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(156, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(157, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(158, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(159, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(160, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(161, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(162, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(163, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(164, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(165, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(166, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(167, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(168, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(169, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(170, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(171, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(172, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(173, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(174, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(175, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(176, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(177, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(178, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(179, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(180, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(181, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(182, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(183, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(184, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(185, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(186, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(187, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(188, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(189, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(190, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(191, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(192, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(193, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(194, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(195, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(196, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(197, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(198, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(199, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(200, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(201, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(202, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(203, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(204, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(205, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(206, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(207, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(208, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(209, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(210, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(211, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(212, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(213, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(214, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(215, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(216, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(217, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(218, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(219, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(220, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(221, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(222, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(223, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(224, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(225, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(226, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(227, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(228, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(229, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(230, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(231, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(232, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(233, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(234, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(235, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(236, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(237, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(238, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(239, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(240, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(241, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(242, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(243, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(244, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_advice`
--

CREATE TABLE IF NOT EXISTS `prstshp_advice` (
`id_advice` int(11) NOT NULL,
  `id_ps_advice` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `ids_tab` text,
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `location` enum('after','before') NOT NULL,
  `selector` varchar(255) DEFAULT NULL,
  `start_day` int(11) NOT NULL DEFAULT '0',
  `stop_day` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `prstshp_advice`
--

INSERT INTO `prstshp_advice` (`id_advice`, `id_ps_advice`, `id_tab`, `ids_tab`, `validated`, `hide`, `location`, `selector`, `start_day`, `stop_day`, `weight`) VALUES
(1, 324, 31, NULL, 1, 0, 'before', '.toolbar-placeholder:eq(0), form#invoice_date_form, form#product, form#store, form#category', 0, 0, 1),
(2, 354, 1, NULL, 1, 0, 'before', 'addons', 0, 0, 1),
(3, 355, 57, NULL, 1, 0, 'before', '.toolbar-placeholder:eq(0), form#tax', 0, 0, 1),
(4, 389, 0, NULL, 1, 0, 'before', '#upgradeButtonBlock', 0, 0, 1),
(5, 353, 59, NULL, 1, 0, 'before', '#typeTranslationForm', 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_advice_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_advice_lang` (
  `id_advice` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_advice_lang`
--

INSERT INTO `prstshp_advice_lang` (`id_advice`, `id_lang`, `html`) VALUES
(1, 1, '<div id="wrap_id_advice_324" ><style>\r\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:170px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:370px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left center no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\r\n</style>\r\n<hr class="clear"/>\r\n<div id="advice-16">\r\n<div class="gamification-tip">\r\n	<div class="gamification-tip-title">Hint</div>\r\n	<span class="gamification-tip-cta"><a class="gamification_fancybox"  id="324" href="#advice_content_324">Read</a><a class="gamification_close" style="display:none"  id="324" href="#advice_content_324">close</a></span>\r\n\r\n	<div class="gamification-tip-description-container">\r\n		<span class="gamification-tip-description">\r\n			Stuck? Time to become a PrestaShop Ninja! Learn how to use your Back-Office and start managing your online shop 50% faster!\r\n		</span>\r\n	</div>\r\n	<div class="hide">\r\n		<div id="advice_content_324" class="gamification-tip-infobox">\r\n			<div class="gamification-tip-infobox-title">\r\n				<span class="gamification-tip-infobox-title-prefix">Â </span>\r\n				PrestaShop User Online Training\r\n			</div>\r\n			<div class="gamification-tip-infobox-content">\r\n				<div class="gamification-tip-infobox-content-image">\r\n					<img src="https://gamification.prestashop.com/api/getAdviceImg/324.png" alt="logo">\r\n				</div>\r\n				<div class="gamification-tip-infobox-content-description">\r\n					<p>Are you a new online merchant and want to learn how to use your new Back-Office, discover new features and start selling quickly? Donâ€™t lose any time. Join our comprehensive online training hosted by PrestaShop training experts, right from the comfort of your home! </p>\r\n					<div class="gamification-tip-infobox-content-controls right">\r\n						<a href="javascript:$.fancybox.close();" class="button">Close</a>\r\n						<a href="https://gamification.prestashop.com/get_advice_link.php?id_advice=324&url=http%3A%2F%2Fwww.prestashop.com%2Fen%2Ftraining-prestashop%3Futm_source%3Dback-office%26utm_medium%3Dtraining%26utm_campaign%3Dback-office-EN%23training_11"  class="button success"  target="_blank">More information</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<script>\r\n	$(document).ready( function () {\r\n		$(''.gamification_fancybox'').bind(''click'', function () {\r\n			id_advice = 324;			\r\n			popin_url = ''https://gamification.prestashop.com/get_advice_link.php?id_advice=''+id_advice+''&url='';\r\n			$(''.gamification-tip-infobox'').after(''<img style="display:none" src="https://gamification.prestashop.com/api/getAdvicePopinImg/''+id_advice+''.png" />'');\r\n		});\r\n	});\r\n</script>\r\n</div>'),
(1, 2, '<div id="wrap_id_advice_324" ><style>\r\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:170px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:370px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left center no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\r\n</style>\r\n<hr class="clear"/>\r\n<div id="advice-16">\r\n<div class="gamification-tip">\r\n	<div class="gamification-tip-title">Hint</div>\r\n	<span class="gamification-tip-cta"><a class="gamification_fancybox"  id="324" href="#advice_content_324">Read</a><a class="gamification_close" style="display:none"  id="324" href="#advice_content_324">close</a></span>\r\n\r\n	<div class="gamification-tip-description-container">\r\n		<span class="gamification-tip-description">\r\n			Stuck? Time to become a PrestaShop Ninja! Learn how to use your Back-Office and start managing your online shop 50% faster!\r\n		</span>\r\n	</div>\r\n	<div class="hide">\r\n		<div id="advice_content_324" class="gamification-tip-infobox">\r\n			<div class="gamification-tip-infobox-title">\r\n				<span class="gamification-tip-infobox-title-prefix">Â </span>\r\n				PrestaShop User Online Training\r\n			</div>\r\n			<div class="gamification-tip-infobox-content">\r\n				<div class="gamification-tip-infobox-content-image">\r\n					<img src="https://gamification.prestashop.com/api/getAdviceImg/324.png" alt="logo">\r\n				</div>\r\n				<div class="gamification-tip-infobox-content-description">\r\n					<p>Are you a new online merchant and want to learn how to use your new Back-Office, discover new features and start selling quickly? Donâ€™t lose any time. Join our comprehensive online training hosted by PrestaShop training experts, right from the comfort of your home! </p>\r\n					<div class="gamification-tip-infobox-content-controls right">\r\n						<a href="javascript:$.fancybox.close();" class="button">Close</a>\r\n						<a href="https://gamification.prestashop.com/get_advice_link.php?id_advice=324&url=http%3A%2F%2Fwww.prestashop.com%2Fen%2Ftraining-prestashop%3Futm_source%3Dback-office%26utm_medium%3Dtraining%26utm_campaign%3Dback-office-EN%23training_11"  class="button success"  target="_blank">More information</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<script>\r\n	$(document).ready( function () {\r\n		$(''.gamification_fancybox'').bind(''click'', function () {\r\n			id_advice = 324;			\r\n			popin_url = ''https://gamification.prestashop.com/get_advice_link.php?id_advice=''+id_advice+''&url='';\r\n			$(''.gamification-tip-infobox'').after(''<img style="display:none" src="https://gamification.prestashop.com/api/getAdvicePopinImg/''+id_advice+''.png" />'');\r\n		});\r\n	});\r\n</script>\r\n</div>'),
(1, 3, '<div id="wrap_id_advice_324" ><style>\r\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:170px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:370px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left center no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\r\n</style>\r\n<hr class="clear"/>\r\n<div id="advice-16">\r\n<div class="gamification-tip">\r\n	<div class="gamification-tip-title">Hint</div>\r\n	<span class="gamification-tip-cta"><a class="gamification_fancybox"  id="324" href="#advice_content_324">Read</a><a class="gamification_close" style="display:none"  id="324" href="#advice_content_324">close</a></span>\r\n\r\n	<div class="gamification-tip-description-container">\r\n		<span class="gamification-tip-description">\r\n			Stuck? Time to become a PrestaShop Ninja! Learn how to use your Back-Office and start managing your online shop 50% faster!\r\n		</span>\r\n	</div>\r\n	<div class="hide">\r\n		<div id="advice_content_324" class="gamification-tip-infobox">\r\n			<div class="gamification-tip-infobox-title">\r\n				<span class="gamification-tip-infobox-title-prefix">Â </span>\r\n				PrestaShop User Online Training\r\n			</div>\r\n			<div class="gamification-tip-infobox-content">\r\n				<div class="gamification-tip-infobox-content-image">\r\n					<img src="https://gamification.prestashop.com/api/getAdviceImg/324.png" alt="logo">\r\n				</div>\r\n				<div class="gamification-tip-infobox-content-description">\r\n					<p>Are you a new online merchant and want to learn how to use your new Back-Office, discover new features and start selling quickly? Donâ€™t lose any time. Join our comprehensive online training hosted by PrestaShop training experts, right from the comfort of your home! </p>\r\n					<div class="gamification-tip-infobox-content-controls right">\r\n						<a href="javascript:$.fancybox.close();" class="button">Close</a>\r\n						<a href="https://gamification.prestashop.com/get_advice_link.php?id_advice=324&url=http%3A%2F%2Fwww.prestashop.com%2Fen%2Ftraining-prestashop%3Futm_source%3Dback-office%26utm_medium%3Dtraining%26utm_campaign%3Dback-office-EN%23training_11"  class="button success"  target="_blank">More information</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<script>\r\n	$(document).ready( function () {\r\n		$(''.gamification_fancybox'').bind(''click'', function () {\r\n			id_advice = 324;			\r\n			popin_url = ''https://gamification.prestashop.com/get_advice_link.php?id_advice=''+id_advice+''&url='';\r\n			$(''.gamification-tip-infobox'').after(''<img style="display:none" src="https://gamification.prestashop.com/api/getAdvicePopinImg/''+id_advice+''.png" />'');\r\n		});\r\n	});\r\n</script>\r\n</div>'),
(2, 1, '<div id="wrap_id_advice_354" ><style>\r\n#wrap_id_advice_354 .panel.panel-advice { position: relative; padding: 10px !important; min-height: 75px; }\r\n#wrap_id_advice_354 .panel.panel-advice a.preactivationLink { display: table; margin: 0; text-decoration: none; }\r\n#wrap_id_advice_354 .panel.panel-advice a.preactivationLink p, .panel.panel-advice a.preactivationLink img { display: table-cell; vertical-align: middle; }\r\n#wrap_id_advice_354 .panel.panel-advice a.preactivationLink p { padding: 0 20px; }\r\n#wrap_id_advice_354 .panel.panel-advice .gamification-close-confirmation { position: absolute; top: 4px; right: 5px; background: #FFF; padding: 5px 3px;}\r\n#wrap_id_advice_354 .panel.panel-advice .gamification_premium_close i { color: #00aff0; }\r\n#wrap_id_advice_354 .panel.panel-advice:hover .gamification_premium_close { display: block; }\r\n</style>\r\n<div class="col-lg-6">\r\n	<section id="" class="panel panel-advice">\r\n		<a class="preactivationLink row" rel="ebay" href="https://gamification.prestashop.com/get_advice_link.php?id_advice=321&url=http%3A%2F%2Faddons.prestashop.com">\r\n			<img src="https://gamification.prestashop.com/api/getAdviceImg/354.png" class="advice-img img-thumbnail">\r\n			<p class="advice-description">Discover the Power of 3500+ Modules and Themes to enhance your PrestaShop Store!</p>\r\n		</a>\r\n	</section>\r\n</div>\r\n</div>'),
(2, 2, '<div id="wrap_id_advice_354" ><style>\r\n#wrap_id_advice_354 .panel.panel-advice { position: relative; padding: 10px !important; min-height: 75px; }\r\n#wrap_id_advice_354 .panel.panel-advice a.preactivationLink { display: table; margin: 0; text-decoration: none; }\r\n#wrap_id_advice_354 .panel.panel-advice a.preactivationLink p, .panel.panel-advice a.preactivationLink img { display: table-cell; vertical-align: middle; }\r\n#wrap_id_advice_354 .panel.panel-advice a.preactivationLink p { padding: 0 20px; }\r\n#wrap_id_advice_354 .panel.panel-advice .gamification-close-confirmation { position: absolute; top: 4px; right: 5px; background: #FFF; padding: 5px 3px;}\r\n#wrap_id_advice_354 .panel.panel-advice .gamification_premium_close i { color: #00aff0; }\r\n#wrap_id_advice_354 .panel.panel-advice:hover .gamification_premium_close { display: block; }\r\n</style>\r\n<div class="col-lg-6">\r\n	<section id="" class="panel panel-advice">\r\n		<a class="preactivationLink row" rel="ebay" href="https://gamification.prestashop.com/get_advice_link.php?id_advice=321&url=http%3A%2F%2Faddons.prestashop.com">\r\n			<img src="https://gamification.prestashop.com/api/getAdviceImg/354.png" class="advice-img img-thumbnail">\r\n			<p class="advice-description">Discover the Power of 3500+ Modules and Themes to enhance your PrestaShop Store!</p>\r\n		</a>\r\n	</section>\r\n</div>\r\n</div>'),
(2, 3, '<div id="wrap_id_advice_354" ><style>\r\n#wrap_id_advice_354 .panel.panel-advice { position: relative; padding: 10px !important; min-height: 75px; }\r\n#wrap_id_advice_354 .panel.panel-advice a.preactivationLink { display: table; margin: 0; text-decoration: none; }\r\n#wrap_id_advice_354 .panel.panel-advice a.preactivationLink p, .panel.panel-advice a.preactivationLink img { display: table-cell; vertical-align: middle; }\r\n#wrap_id_advice_354 .panel.panel-advice a.preactivationLink p { padding: 0 20px; }\r\n#wrap_id_advice_354 .panel.panel-advice .gamification-close-confirmation { position: absolute; top: 4px; right: 5px; background: #FFF; padding: 5px 3px;}\r\n#wrap_id_advice_354 .panel.panel-advice .gamification_premium_close i { color: #00aff0; }\r\n#wrap_id_advice_354 .panel.panel-advice:hover .gamification_premium_close { display: block; }\r\n</style>\r\n<div class="col-lg-6">\r\n	<section id="" class="panel panel-advice">\r\n		<a class="preactivationLink row" rel="ebay" href="https://gamification.prestashop.com/get_advice_link.php?id_advice=321&url=http%3A%2F%2Faddons.prestashop.com">\r\n			<img src="https://gamification.prestashop.com/api/getAdviceImg/354.png" class="advice-img img-thumbnail">\r\n			<p class="advice-description">Discover the Power of 3500+ Modules and Themes to enhance your PrestaShop Store!</p>\r\n		</a>\r\n	</section>\r\n</div>\r\n</div>'),
(3, 1, '<div id="wrap_id_advice_355" ><style>\r\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:170px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:370px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left center no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\r\n</style>\r\n<hr class="clear"/>\r\n<div id="advice-16">\r\n<div class="gamification-tip">\r\n	<div class="gamification-tip-title">Advice</div>\r\n	<span class="gamification-tip-cta"><a class="gamification_fancybox"  id="355" href="#advice_content_355">Read</a><a class="gamification_close" style="display:none"  id="355" href="#advice_content_355">close</a></span>\r\n\r\n	<div class="gamification-tip-description-container">\r\n		<span class="gamification-tip-description">\r\n			60% of accountants would rather run a marathon than deal with sales tax\r\n		</span>\r\n	</div>\r\n	<div class="hide">\r\n		<div id="advice_content_355" class="gamification-tip-infobox">\r\n			<div class="gamification-tip-infobox-title">\r\n				<span class="gamification-tip-infobox-title-prefix">Advice</span>\r\n				Avalara\r\n			</div>\r\n			<div class="gamification-tip-infobox-content">\r\n				<div class="gamification-tip-infobox-content-image">\r\n					<img src="https://gamification.prestashop.com/api/getAdviceImg/355.png" alt="logo">\r\n				</div>\r\n				<div class="gamification-tip-infobox-content-description">\r\n					<p>Doing sales tax right is simple with Avalara.  We do all of the research and automate the process for you, ensuring that the system is up-to-date with the most recent sales tax and VAT rates and rules in every state and country so you donâ€™t have to.  As a cloud-based solution, Avalara AvaTaxâ„¢ eliminates ongoing maintenance and support.  It gives you precise tax calculations in an instant based on location, taxability rules and customer exemption status. Youâ€™ll have access to detailed reporting needed for remitting, and weâ€™ll even do the filing for you!</p>\r\n					<div class="gamification-tip-infobox-content-controls right">\r\n						<a href="javascript:$.fancybox.close();" class="button">Close</a>\r\n						<a href="{link}AdminModules{/link}&install=avalaratax&tab_module=market_place&module_name=avalaratax&anchor=avalaratax"  class="button success"  target="_blank">Discover the module</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<script>\r\n	$(document).ready( function () {\r\n		$(''.gamification_fancybox'').bind(''click'', function () {\r\n			id_advice = 355;			\r\n			popin_url = ''https://gamification.prestashop.com/get_advice_link.php?id_advice=''+id_advice+''&url='';\r\n			$(''.gamification-tip-infobox'').after(''<img style="display:none" src="https://gamification.prestashop.com/api/getAdvicePopinImg/''+id_advice+''.png" />'');\r\n		});\r\n	});\r\n</script></div>'),
(3, 2, '<div id="wrap_id_advice_355" ><style>\r\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:170px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:370px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left center no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\r\n</style>\r\n<hr class="clear"/>\r\n<div id="advice-16">\r\n<div class="gamification-tip">\r\n	<div class="gamification-tip-title">Advice</div>\r\n	<span class="gamification-tip-cta"><a class="gamification_fancybox"  id="355" href="#advice_content_355">Read</a><a class="gamification_close" style="display:none"  id="355" href="#advice_content_355">close</a></span>\r\n\r\n	<div class="gamification-tip-description-container">\r\n		<span class="gamification-tip-description">\r\n			60% of accountants would rather run a marathon than deal with sales tax\r\n		</span>\r\n	</div>\r\n	<div class="hide">\r\n		<div id="advice_content_355" class="gamification-tip-infobox">\r\n			<div class="gamification-tip-infobox-title">\r\n				<span class="gamification-tip-infobox-title-prefix">Advice</span>\r\n				Avalara\r\n			</div>\r\n			<div class="gamification-tip-infobox-content">\r\n				<div class="gamification-tip-infobox-content-image">\r\n					<img src="https://gamification.prestashop.com/api/getAdviceImg/355.png" alt="logo">\r\n				</div>\r\n				<div class="gamification-tip-infobox-content-description">\r\n					<p>Doing sales tax right is simple with Avalara.  We do all of the research and automate the process for you, ensuring that the system is up-to-date with the most recent sales tax and VAT rates and rules in every state and country so you donâ€™t have to.  As a cloud-based solution, Avalara AvaTaxâ„¢ eliminates ongoing maintenance and support.  It gives you precise tax calculations in an instant based on location, taxability rules and customer exemption status. Youâ€™ll have access to detailed reporting needed for remitting, and weâ€™ll even do the filing for you!</p>\r\n					<div class="gamification-tip-infobox-content-controls right">\r\n						<a href="javascript:$.fancybox.close();" class="button">Close</a>\r\n						<a href="{link}AdminModules{/link}&install=avalaratax&tab_module=market_place&module_name=avalaratax&anchor=avalaratax"  class="button success"  target="_blank">Discover the module</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<script>\r\n	$(document).ready( function () {\r\n		$(''.gamification_fancybox'').bind(''click'', function () {\r\n			id_advice = 355;			\r\n			popin_url = ''https://gamification.prestashop.com/get_advice_link.php?id_advice=''+id_advice+''&url='';\r\n			$(''.gamification-tip-infobox'').after(''<img style="display:none" src="https://gamification.prestashop.com/api/getAdvicePopinImg/''+id_advice+''.png" />'');\r\n		});\r\n	});\r\n</script></div>'),
(3, 3, '<div id="wrap_id_advice_355" ><style>\r\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:170px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:370px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left center no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\r\n</style>\r\n<hr class="clear"/>\r\n<div id="advice-16">\r\n<div class="gamification-tip">\r\n	<div class="gamification-tip-title">Advice</div>\r\n	<span class="gamification-tip-cta"><a class="gamification_fancybox"  id="355" href="#advice_content_355">Read</a><a class="gamification_close" style="display:none"  id="355" href="#advice_content_355">close</a></span>\r\n\r\n	<div class="gamification-tip-description-container">\r\n		<span class="gamification-tip-description">\r\n			60% of accountants would rather run a marathon than deal with sales tax\r\n		</span>\r\n	</div>\r\n	<div class="hide">\r\n		<div id="advice_content_355" class="gamification-tip-infobox">\r\n			<div class="gamification-tip-infobox-title">\r\n				<span class="gamification-tip-infobox-title-prefix">Advice</span>\r\n				Avalara\r\n			</div>\r\n			<div class="gamification-tip-infobox-content">\r\n				<div class="gamification-tip-infobox-content-image">\r\n					<img src="https://gamification.prestashop.com/api/getAdviceImg/355.png" alt="logo">\r\n				</div>\r\n				<div class="gamification-tip-infobox-content-description">\r\n					<p>Doing sales tax right is simple with Avalara.  We do all of the research and automate the process for you, ensuring that the system is up-to-date with the most recent sales tax and VAT rates and rules in every state and country so you donâ€™t have to.  As a cloud-based solution, Avalara AvaTaxâ„¢ eliminates ongoing maintenance and support.  It gives you precise tax calculations in an instant based on location, taxability rules and customer exemption status. Youâ€™ll have access to detailed reporting needed for remitting, and weâ€™ll even do the filing for you!</p>\r\n					<div class="gamification-tip-infobox-content-controls right">\r\n						<a href="javascript:$.fancybox.close();" class="button">Close</a>\r\n						<a href="{link}AdminModules{/link}&install=avalaratax&tab_module=market_place&module_name=avalaratax&anchor=avalaratax"  class="button success"  target="_blank">Discover the module</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n</div>\r\n<script>\r\n	$(document).ready( function () {\r\n		$(''.gamification_fancybox'').bind(''click'', function () {\r\n			id_advice = 355;			\r\n			popin_url = ''https://gamification.prestashop.com/get_advice_link.php?id_advice=''+id_advice+''&url='';\r\n			$(''.gamification-tip-infobox'').after(''<img style="display:none" src="https://gamification.prestashop.com/api/getAdvicePopinImg/''+id_advice+''.png" />'');\r\n		});\r\n	});\r\n</script></div>');
INSERT INTO `prstshp_advice_lang` (`id_advice`, `id_lang`, `html`) VALUES
(4, 1, '<div id="wrap_id_advice_389" ><style>\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:120px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:430px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left center no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\n</style>\n<hr class="clear"/>\n<div id="advice-16">\n<div class="gamification-tip">\n	<div class="gamification-tip-title">Advice</div>\n	<span class="gamification-tip-cta"><a class="gamification_fancybox"  id="389" href="http://www.prestashop.com/club/?utm_source=back-office&utm_medium=gamification" target="_blank">Learn more</a><a class="gamification_close" style="display:none"  id="389" href="#advice_content_389">Close</a></span>\n	<div class="gamification-tip-description-container">\n		<span class="gamification-tip-description">\n			About to upgrade? How about giving your opinion on future releases before anyone else?		</span>\n	</div>\n</div>\n</div></div>'),
(4, 2, '<div id="wrap_id_advice_389" ><style>\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:120px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:430px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left center no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\n</style>\n<hr class="clear"/>\n<div id="advice-16">\n<div class="gamification-tip">\n	<div class="gamification-tip-title">Advice</div>\n	<span class="gamification-tip-cta"><a class="gamification_fancybox"  id="389" href="http://www.prestashop.com/club/?utm_source=back-office&utm_medium=gamification" target="_blank">Learn more</a><a class="gamification_close" style="display:none"  id="389" href="#advice_content_389">Close</a></span>\n	<div class="gamification-tip-description-container">\n		<span class="gamification-tip-description">\n			About to upgrade? How about giving your opinion on future releases before anyone else?		</span>\n	</div>\n</div>\n</div></div>'),
(4, 3, '<div id="wrap_id_advice_389" ><style>\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:120px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:430px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left center no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\n</style>\n<hr class="clear"/>\n<div id="advice-16">\n<div class="gamification-tip">\n	<div class="gamification-tip-title">Advice</div>\n	<span class="gamification-tip-cta"><a class="gamification_fancybox"  id="389" href="http://www.prestashop.com/club/?utm_source=back-office&utm_medium=gamification" target="_blank">Learn more</a><a class="gamification_close" style="display:none"  id="389" href="#advice_content_389">Close</a></span>\n	<div class="gamification-tip-description-container">\n		<span class="gamification-tip-description">\n			About to upgrade? How about giving your opinion on future releases before anyone else?		</span>\n	</div>\n</div>\n</div></div>'),
(5, 1, '<div id="wrap_id_advice_353" ><style>\r\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:170px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:370px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\r\n</style>\r\n<hr class="clear"/>\r\n<div id="advice-16">\r\n<div class="gamification-tip">\r\n	<div class="gamification-tip-title">Advice</div>\r\n	<span class="gamification-tip-cta"><a class="gamification_fancybox" href="https://gamification.prestashop.com/get_advice_link.php?id_advice=353&url=http%3A%2F%2Fcrowdin.net%2Fproject%2Fprestashop-official%2F">Join</a><a class="gamification_close" style="display:none"  id="353" href="#advice_content_353">close</a></span>\r\n	<div class="gamification-tip-description-container">\r\n		<span class="gamification-tip-description">\r\n			Help us translate PrestaShop 1.6 into your language by <a href="https://gamification.prestashop.com/get_advice_link.php?id_advice=353&url=http%3A%2F%2Fcrowdin.net%2Fproject%2Fprestashop-official%2F">joining us on Crowdin</a>!\r\n		</span>\r\n\r\n<div style="display:none"><img src="https://gamification.prestashop.com/api/getAdviceImg/353.png" /></div>\r\n	</div>\r\n</div>\r\n</div>\r\n</div>'),
(5, 2, '<div id="wrap_id_advice_353" ><style>\r\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:170px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:370px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\r\n</style>\r\n<hr class="clear"/>\r\n<div id="advice-16">\r\n<div class="gamification-tip">\r\n	<div class="gamification-tip-title">Advice</div>\r\n	<span class="gamification-tip-cta"><a class="gamification_fancybox" href="https://gamification.prestashop.com/get_advice_link.php?id_advice=353&url=http%3A%2F%2Fcrowdin.net%2Fproject%2Fprestashop-official%2F">Join</a><a class="gamification_close" style="display:none"  id="353" href="#advice_content_353">close</a></span>\r\n	<div class="gamification-tip-description-container">\r\n		<span class="gamification-tip-description">\r\n			Help us translate PrestaShop 1.6 into your language by <a href="https://gamification.prestashop.com/get_advice_link.php?id_advice=353&url=http%3A%2F%2Fcrowdin.net%2Fproject%2Fprestashop-official%2F">joining us on Crowdin</a>!\r\n		</span>\r\n\r\n<div style="display:none"><img src="https://gamification.prestashop.com/api/getAdviceImg/353.png" /></div>\r\n	</div>\r\n</div>\r\n</div>\r\n</div>'),
(5, 3, '<div id="wrap_id_advice_353" ><style>\r\n.hide{display:none}.text-right{text-align:right}.text-left{text-align:left}.text-center{text-align:center}hr.clear{visibility:hidden;margin-bottom:20px}.gamification-tip{width:100%;height:40px;margin:0 0 20px 0;position:relative;line-height:43px;background-color:#f8f8f8;border-bottom:solid 5px #d2d2d2}.gamification-tip div.gamification-tip-title{position:absolute;top:0;left:0;height:40px;width:90px;padding:0 0 0 40px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") 10px 5px no-repeat;color:#556e26;font-size:14px;font-weight:bold}.gamification-tip div.gamification-tip-description-container{height:40px;padding:0 130px 0 130px;display:table-cell;vertical-align:middle;font-size:13px;color:#666666;background:url("https://gamification.prestashop.com/images/interface/gamification-tip-bg.png") 100px top no-repeat}.gamification-tip div.gamification-tip-description-container span.gamification-tip-description{display:inline-block;line-height:15px;max-height:30px;overflow:hidden}.gamification-tip span.gamification-tip-cta{position:absolute;line-height:43px;height:40px;width:70px;top:0;right:0;padding:0 10px 0 30px;border-bottom:solid 5px #739334;background:url("https://gamification.prestashop.com/images/interface/gamification-cta-bg.png") left top no-repeat #a6c964}.gamification-tip span.gamification-tip-cta a{display:inline-block;width:100%;font-size:14px;text-transform:uppercase;font-weight:bold;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;color:#556e26;background:url("https://gamification.prestashop.com/images/interface/gamification-popin.png") right 10px no-repeat}.gamification-tip-infobox{padding:0 20px 20px 20px;position:relative}.gamification-tip-infobox .gamification-tip-infobox-title{display:inline-block;margin:0 0 20px -20px;width:100%;padding:10px 20px 5px;border-bottom:solid 3px #739334;font:800 18px/20px arial;text-transform:uppercase;color:#556e26;background-color:#e7f0d6}.gamification-tip-infobox .gamification-tip-infobox-title span.gamification-tip-infobox-title-prefix{display:inline-block;height:40px;padding-left:30px;line-height:40px;text-transform:none;font-size:16px;font-weight:500;margin-right:10px;background:url("https://gamification.prestashop.com/images/interface/gamification-lightbulb.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content{display:block;width:100%}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-image{float:left;width:170px;height:200px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-separator.png") no-repeat right center}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description{float:left;width:370px;padding:0 0 25px 25px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description p{line-height:20px}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-description ul li{padding:0 0 0 20px;line-height:25px;background:url("https://gamification.prestashop.com/images/interface/gamification-bullet-check.png") left top no-repeat}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls{padding:20px 0 0 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button{display:inline-block;height:30px;padding:0 20px;margin-right:10px;border:none;border-bottom:solid 3px #ababab;line-height:33px;text-transform:uppercase;font-weight:bold;color:#929292;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0;border-radius:3px;background:#d2d2d2}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button.success{color:#384819;background:#a6c964;border-color:#739334;text-shadow:rgba(255, 255, 255, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:hover{color:#f8f8f8;background:#5f5f5f;border-color:#2c2c2c;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox .gamification-tip-infobox-content .gamification-tip-infobox-content-controls a.button:active{color:white;background:#2c2c2c;border-color:black;text-shadow:rgba(0, 0, 0, 0.5) 0 1px 0}.gamification-tip-infobox a.infobox-close{display:inline-block;width:14px;height:14px;position:absolute;top:20px;right:20px;text-indent:-9999px;background:url("https://gamification.prestashop.com/images/interface/gamification-infobox-close.png") no-repeat}\r\n</style>\r\n<hr class="clear"/>\r\n<div id="advice-16">\r\n<div class="gamification-tip">\r\n	<div class="gamification-tip-title">Advice</div>\r\n	<span class="gamification-tip-cta"><a class="gamification_fancybox" href="https://gamification.prestashop.com/get_advice_link.php?id_advice=353&url=http%3A%2F%2Fcrowdin.net%2Fproject%2Fprestashop-official%2F">Join</a><a class="gamification_close" style="display:none"  id="353" href="#advice_content_353">close</a></span>\r\n	<div class="gamification-tip-description-container">\r\n		<span class="gamification-tip-description">\r\n			Help us translate PrestaShop 1.6 into your language by <a href="https://gamification.prestashop.com/get_advice_link.php?id_advice=353&url=http%3A%2F%2Fcrowdin.net%2Fproject%2Fprestashop-official%2F">joining us on Crowdin</a>!\r\n		</span>\r\n\r\n<div style="display:none"><img src="https://gamification.prestashop.com/api/getAdviceImg/353.png" /></div>\r\n	</div>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_alias`
--

CREATE TABLE IF NOT EXISTS `prstshp_alias` (
`id_alias` int(10) unsigned NOT NULL,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `prstshp_alias`
--

INSERT INTO `prstshp_alias` (`id_alias`, `alias`, `search`, `active`) VALUES
(1, 'bloose', 'blouse', 1),
(2, 'blues', 'blouse', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_attachment`
--

CREATE TABLE IF NOT EXISTS `prstshp_attachment` (
`id_attachment` int(10) unsigned NOT NULL,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `file_size` bigint(10) unsigned NOT NULL DEFAULT '0',
  `mime` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_attachment_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_attachment_lang` (
`id_attachment` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_attribute`
--

CREATE TABLE IF NOT EXISTS `prstshp_attribute` (
`id_attribute` int(10) unsigned NOT NULL,
  `id_attribute_group` int(10) unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Zrzut danych tabeli `prstshp_attribute`
--

INSERT INTO `prstshp_attribute` (`id_attribute`, `id_attribute_group`, `color`, `position`) VALUES
(1, 1, '', 0),
(2, 2, '', 0),
(3, 3, '', 0),
(4, 1, '', 0),
(5, 3, '', 0),
(6, 1, '', 0),
(7, 2, '', 0),
(8, 3, '', 0),
(9, 1, '', 0),
(10, 2, '', 0),
(11, 3, '', 0),
(12, 1, '', 0),
(13, 2, '', 0),
(14, 3, '', 0),
(15, 2, '', 0),
(16, 1, '', 0),
(17, 1, '', 0),
(18, 2, '', 0),
(19, 1, '', 0),
(20, 2, '', 0),
(21, 1, '', 0),
(22, 2, '', 0),
(23, 1, '', 0),
(24, 2, '', 0),
(25, 1, '', 0),
(26, 1, '', 0),
(27, 2, '', 0),
(28, 2, '', 0),
(29, 1, '', 0),
(30, 1, '', 0),
(31, 1, '', 0),
(32, 1, '', 0),
(33, 2, '', 0),
(34, 1, '', 0),
(35, 1, '', 0),
(36, 1, '', 0),
(37, 3, '', 0),
(38, 1, '', 0),
(39, 1, '', 0),
(40, 1, '', 0),
(41, 2, '', 0),
(42, 1, '', 0),
(43, 1, '', 0),
(44, 1, '', 0),
(45, 1, '', 0),
(46, 1, '', 0),
(47, 1, '', 0),
(48, 1, '', 0),
(49, 1, '', 0),
(50, 1, '', 0),
(51, 2, '', 0),
(52, 1, '', 0),
(53, 1, '', 0),
(54, 1, '', 0),
(55, 2, '', 0),
(56, 1, '', 0),
(57, 2, '', 0),
(58, 1, '', 0),
(59, 2, '', 0),
(60, 1, '', 0),
(61, 2, '', 0),
(62, 3, '', 0),
(63, 1, '', 0),
(64, 1, '', 0),
(65, 1, '', 0),
(66, 2, '', 0),
(67, 2, '', 0),
(68, 1, '', 0),
(69, 1, '', 0),
(70, 1, '', 0),
(71, 1, '', 0),
(72, 1, '', 0),
(73, 1, '', 0),
(74, 2, '', 0),
(75, 1, '', 0),
(76, 1, '', 0),
(77, 1, '', 0),
(78, 1, '', 0),
(79, 2, '', 0),
(80, 1, '', 0),
(81, 1, '', 0),
(82, 1, '', 0),
(83, 1, '', 0),
(84, 2, '', 0),
(85, 1, '', 0),
(86, 1, '', 0),
(87, 2, '', 0),
(88, 1, '', 0),
(89, 1, '', 0),
(90, 1, '', 0),
(91, 1, '', 0),
(92, 2, '', 0),
(93, 1, '', 0),
(94, 1, '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_attribute_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_attribute_group` (
`id_attribute_group` int(10) unsigned NOT NULL,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  `group_type` enum('select','radio','color') NOT NULL DEFAULT 'select',
  `position` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `prstshp_attribute_group`
--

INSERT INTO `prstshp_attribute_group` (`id_attribute_group`, `is_color_group`, `group_type`, `position`) VALUES
(1, 0, 'select', 0),
(2, 0, 'select', 0),
(3, 0, 'radio', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_attribute_group_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_attribute_group_lang` (
  `id_attribute_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_attribute_group_lang`
--

INSERT INTO `prstshp_attribute_group_lang` (`id_attribute_group`, `id_lang`, `name`, `public_name`) VALUES
(1, 1, 'MODEL', 'MODEL'),
(1, 3, 'MODEL', 'MODEL'),
(2, 1, 'KOLOR', 'KOLOR'),
(2, 3, 'KOLOR', 'KOLOR'),
(3, 1, 'ROZMIAR', 'ROZMIAR'),
(3, 3, 'ROZMIAR', 'ROZMIAR');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_attribute_group_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_attribute_group_shop` (
  `id_attribute_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_attribute_group_shop`
--

INSERT INTO `prstshp_attribute_group_shop` (`id_attribute_group`, `id_shop`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_attribute_impact`
--

CREATE TABLE IF NOT EXISTS `prstshp_attribute_impact` (
`id_attribute_impact` int(10) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_attribute` int(11) unsigned NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(17,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_attribute_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_attribute_lang` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_attribute_lang`
--

INSERT INTO `prstshp_attribute_lang` (`id_attribute`, `id_lang`, `name`) VALUES
(56, 1, '1666'),
(37, 1, '35'),
(3, 1, '36'),
(5, 1, '37'),
(14, 1, '38'),
(11, 1, '39'),
(8, 1, '40'),
(62, 1, '41'),
(58, 1, 'B1910'),
(60, 1, 'B1929'),
(68, 1, 'B2065'),
(73, 1, 'B2272'),
(4, 1, 'B2272 CZERWONY'),
(1, 1, 'B2272 CZEWRWONY'),
(9, 1, 'B2272 PERŁOWY'),
(93, 1, 'B2272 PUDROWY RÓŻ'),
(6, 1, 'B2272 ŻÓŁTY'),
(69, 1, 'B2330S'),
(25, 1, 'B2330S BEŻOWY'),
(89, 1, 'B2348'),
(77, 1, 'B2379'),
(35, 1, 'B2379 BEŻOWY'),
(38, 1, 'B2379 CZARNY'),
(85, 1, 'B2387F'),
(43, 1, 'B2387F CZARNY'),
(23, 1, 'B2387F JASNY BEŻ'),
(70, 1, 'B2389'),
(65, 1, 'B2426'),
(19, 1, 'B2426 BEŻOWY'),
(16, 1, 'B2426 BIAŁE'),
(17, 1, 'B2426 CZERWONY'),
(21, 1, 'B2426 NIEBIESKI'),
(12, 1, 'B2426 RÓŻOWY'),
(45, 1, 'B2427S BEŻOWY'),
(42, 1, 'B2427S CZARNY'),
(44, 1, 'B2427S JASNY BEŻ'),
(63, 1, 'B24419 CZARNY'),
(53, 1, 'B24456 CZARNY'),
(94, 1, 'B2561'),
(39, 1, 'B2561 BEŻOWY'),
(40, 1, 'B2561 JASNY BEŻ'),
(20, 1, 'BEŻOWY'),
(61, 1, 'BEŻOWY RÓŻ'),
(15, 1, 'BIAŁY'),
(83, 1, 'BIJOUX156'),
(81, 1, 'BIJOUX157'),
(82, 1, 'BIJOUX159'),
(47, 1, 'C2265 BEŻOWY'),
(46, 1, 'C2265 CZARNY'),
(26, 1, 'C2265 GRANAT'),
(52, 1, 'C2265 JASNY BEŻ'),
(48, 1, 'C2303 BIAŁY'),
(50, 1, 'C2303 SREBRNY'),
(49, 1, 'C2303 ZŁOTY'),
(71, 1, 'C2373'),
(28, 1, 'CZARNY'),
(2, 1, 'CZERWONY'),
(18, 1, 'CZERWONY MIX'),
(41, 1, 'CZERWONY OZDOBA'),
(27, 1, 'GRANAT'),
(55, 1, 'GRANATOWY'),
(24, 1, 'JASNY BEŻ'),
(59, 1, 'KOLOROWE'),
(79, 1, 'koralowy'),
(84, 1, 'MIĘTOWY'),
(22, 1, 'NIEBIESKI'),
(67, 1, 'NIEBIESKI MIX'),
(10, 1, 'PERŁOWY'),
(57, 1, 'POMARAŃCZOWY'),
(66, 1, 'POPIELATY'),
(74, 1, 'PUDROWY RÓŻ'),
(87, 1, 'RÓŻ PUDROWY'),
(13, 1, 'RÓŻOWY'),
(51, 1, 'SREBRNY'),
(54, 1, 'V1985'),
(80, 1, 'V2001'),
(88, 1, 'V2008'),
(76, 1, 'V2334S'),
(34, 1, 'V2334S NIEBIESKI'),
(36, 1, 'V2334S RÓŻOWY'),
(91, 1, 'V2334S ZIELONY'),
(32, 1, 'V2334S ZŁOTY'),
(78, 1, 'V2335/R4'),
(72, 1, 'V2375'),
(90, 1, 'V2385'),
(75, 1, 'V2391/1'),
(64, 1, 'V24444 CZARNY'),
(30, 1, 'V24469 NIEBIESKI'),
(29, 1, 'V24482 CZARNY'),
(86, 1, 'V2451'),
(31, 1, 'V25421 CZARNY'),
(92, 1, 'ZIELONY'),
(7, 1, 'ŻÓŁTY'),
(33, 1, 'ZŁOTY'),
(56, 3, '1666'),
(37, 3, '35'),
(3, 3, '36'),
(5, 3, '37'),
(14, 3, '38'),
(11, 3, '39'),
(8, 3, '40'),
(62, 3, '41'),
(58, 3, 'B1910'),
(60, 3, 'B1929'),
(68, 3, 'B2065'),
(73, 3, 'B2272'),
(4, 3, 'B2272 CZERWONY'),
(1, 3, 'B2272 CZEWRWONY'),
(9, 3, 'B2272 PERŁOWY'),
(93, 3, 'B2272 PUDROWY RÓŻ'),
(6, 3, 'B2272 ŻÓŁTY'),
(69, 3, 'B2330S'),
(25, 3, 'B2330S BEŻOWY'),
(89, 3, 'B2348'),
(77, 3, 'B2379'),
(35, 3, 'B2379 BEŻOWY'),
(38, 3, 'B2379 CZARNY'),
(85, 3, 'B2387F'),
(43, 3, 'B2387F CZARNY'),
(23, 3, 'B2387F JASNY BEŻ'),
(70, 3, 'B2389'),
(65, 3, 'B2426'),
(19, 3, 'B2426 BEŻOWY'),
(16, 3, 'B2426 BIAŁE'),
(17, 3, 'B2426 CZERWONY'),
(21, 3, 'B2426 NIEBIESKI'),
(12, 3, 'B2426 RÓŻOWY'),
(45, 3, 'B2427S BEŻOWY'),
(42, 3, 'B2427S CZARNY'),
(44, 3, 'B2427S JASNY BEŻ'),
(63, 3, 'B24419 CZARNY'),
(53, 3, 'B24456 CZARNY'),
(94, 3, 'B2561'),
(39, 3, 'B2561 BEŻOWY'),
(40, 3, 'B2561 JASNY BEŻ'),
(20, 3, 'BEŻOWY'),
(61, 3, 'BEŻOWY RÓŻ'),
(15, 3, 'BIAŁY'),
(83, 3, 'BIJOUX156'),
(81, 3, 'BIJOUX157'),
(82, 3, 'BIJOUX159'),
(47, 3, 'C2265 BEŻOWY'),
(46, 3, 'C2265 CZARNY'),
(26, 3, 'C2265 GRANAT'),
(52, 3, 'C2265 JASNY BEŻ'),
(48, 3, 'C2303 BIAŁY'),
(50, 3, 'C2303 SREBRNY'),
(49, 3, 'C2303 ZŁOTY'),
(71, 3, 'C2373'),
(28, 3, 'CZARNY'),
(2, 3, 'CZERWONY'),
(18, 3, 'CZERWONY MIX'),
(41, 3, 'CZERWONY OZDOBA'),
(27, 3, 'GRANAT'),
(55, 3, 'GRANATOWY'),
(24, 3, 'JASNY BEŻ'),
(59, 3, 'KOLOROWE'),
(79, 3, 'koralowy'),
(84, 3, 'MIĘTOWY'),
(22, 3, 'NIEBIESKI'),
(67, 3, 'NIEBIESKI MIX'),
(10, 3, 'PERŁOWY'),
(57, 3, 'POMARAŃCZOWY'),
(66, 3, 'POPIELATY'),
(74, 3, 'PUDROWY RÓŻ'),
(87, 3, 'RÓŻ PUDROWY'),
(13, 3, 'RÓŻOWY'),
(51, 3, 'SREBRNY'),
(54, 3, 'V1985'),
(80, 3, 'V2001'),
(88, 3, 'V2008'),
(76, 3, 'V2334S'),
(34, 3, 'V2334S NIEBIESKI'),
(36, 3, 'V2334S RÓŻOWY'),
(91, 3, 'V2334S ZIELONY'),
(32, 3, 'V2334S ZŁOTY'),
(78, 3, 'V2335/R4'),
(72, 3, 'V2375'),
(90, 3, 'V2385'),
(75, 3, 'V2391/1'),
(64, 3, 'V24444 CZARNY'),
(30, 3, 'V24469 NIEBIESKI'),
(29, 3, 'V24482 CZARNY'),
(86, 3, 'V2451'),
(31, 3, 'V25421 CZARNY'),
(92, 3, 'ZIELONY'),
(7, 3, 'ŻÓŁTY'),
(33, 3, 'ZŁOTY');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_attribute_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_attribute_shop` (
  `id_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_attribute_shop`
--

INSERT INTO `prstshp_attribute_shop` (`id_attribute`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_badge`
--

CREATE TABLE IF NOT EXISTS `prstshp_badge` (
`id_badge` int(11) NOT NULL,
  `id_ps_badge` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `id_group` int(11) NOT NULL,
  `group_position` int(11) NOT NULL,
  `scoring` int(11) NOT NULL,
  `awb` int(11) DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_badge_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_badge_lang` (
  `id_badge` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_carrier`
--

CREATE TABLE IF NOT EXISTS `prstshp_carrier` (
`id_carrier` int(10) unsigned NOT NULL,
  `id_reference` int(10) unsigned NOT NULL,
  `id_tax_rules_group` int(10) unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `need_range` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `max_width` int(10) DEFAULT '0',
  `max_height` int(10) DEFAULT '0',
  `max_depth` int(10) DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` int(10) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `prstshp_carrier`
--

INSERT INTO `prstshp_carrier` (`id_carrier`, `id_reference`, `id_tax_rules_group`, `name`, `url`, `active`, `deleted`, `shipping_handling`, `range_behavior`, `is_module`, `is_free`, `shipping_external`, `need_range`, `external_module_name`, `shipping_method`, `position`, `max_width`, `max_height`, `max_depth`, `max_weight`, `grade`) VALUES
(1, 1, 0, 'Ecelebrity.eu', '', 1, 1, 0, 0, 0, 1, 0, 0, '', 1, 0, 0, 0, 0, '0.000000', 0),
(2, 2, 0, 'My carrier', '', 1, 1, 1, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 0, '0.000000', 0),
(3, 3, 0, 'My carrier', '', 1, 1, 1, 0, 0, 0, 0, 0, '', 1, 2, 0, 0, 0, '0.000000', 0),
(4, 4, 0, 'Przesyłka kurierska', '', 1, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, '0.000000', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_carrier_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_carrier_group` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_carrier_group`
--

INSERT INTO `prstshp_carrier_group` (`id_carrier`, `id_group`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 0),
(4, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_carrier_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_carrier_lang` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `delay` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_carrier_lang`
--

INSERT INTO `prstshp_carrier_lang` (`id_carrier`, `id_shop`, `id_lang`, `delay`) VALUES
(1, 1, 1, 'Pick up in-store'),
(2, 1, 1, 'Delivery next day!'),
(3, 1, 1, 'Delivery next day!'),
(4, 1, 1, '2'),
(1, 1, 2, 'Pick up in-store'),
(2, 1, 2, 'Delivery next day!'),
(3, 1, 2, 'Delivery next day!'),
(1, 1, 3, 'Pick up in-store'),
(2, 1, 3, 'Delivery next day!'),
(3, 1, 3, 'Delivery next day!'),
(4, 1, 3, '2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_carrier_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_carrier_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_carrier_shop`
--

INSERT INTO `prstshp_carrier_shop` (`id_carrier`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_carrier_tax_rules_group_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_carrier_tax_rules_group_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_carrier_tax_rules_group_shop`
--

INSERT INTO `prstshp_carrier_tax_rules_group_shop` (`id_carrier`, `id_tax_rules_group`, `id_shop`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_carrier_zone`
--

CREATE TABLE IF NOT EXISTS `prstshp_carrier_zone` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_carrier_zone`
--

INSERT INTO `prstshp_carrier_zone` (`id_carrier`, `id_zone`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 0),
(4, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart` (
`id_cart` int(10) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `allow_seperated_package` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_cart`
--

INSERT INTO `prstshp_cart` (`id_cart`, `id_shop_group`, `id_shop`, `id_carrier`, `delivery_option`, `id_lang`, `id_address_delivery`, `id_address_invoice`, `id_currency`, `id_customer`, `id_guest`, `secure_key`, `recyclable`, `gift`, `gift_message`, `mobile_theme`, `allow_seperated_package`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 0, '', 3, 0, 0, 2, 0, 0, '', 0, 0, '', 0, 0, '2014-08-28 12:35:23', '2014-08-28 13:01:11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_cart_rule`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_cart_rule` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_product`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_product` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_product_attribute` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_cart_product`
--

INSERT INTO `prstshp_cart_product` (`id_cart`, `id_product`, `id_address_delivery`, `id_shop`, `id_product_attribute`, `quantity`, `date_add`) VALUES
(1, 4, 0, 1, 5, 1, '2014-08-28 12:35:23'),
(1, 4, 0, 1, 168, 1, '2014-08-28 12:37:20'),
(1, 4, 0, 1, 185, 1, '2014-08-28 13:01:11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule` (
`id_cart_rule` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '1',
  `partial_use` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shop_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `reduction_tax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reduction_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `reduction_product` int(10) NOT NULL DEFAULT '0',
  `gift_product` int(10) unsigned NOT NULL DEFAULT '0',
  `gift_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `highlight` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule_carrier`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule_carrier` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_carrier` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule_combination`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule_combination` (
  `id_cart_rule_1` int(10) unsigned NOT NULL,
  `id_cart_rule_2` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule_country`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule_country` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule_group` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule_lang` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule_product_rule`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule_product_rule` (
`id_product_rule` int(10) unsigned NOT NULL,
  `id_product_rule_group` int(10) unsigned NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule_product_rule_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule_product_rule_group` (
`id_product_rule_group` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule_product_rule_value`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule_product_rule_value` (
  `id_product_rule` int(10) unsigned NOT NULL,
  `id_item` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cart_rule_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_cart_rule_shop` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_category`
--

CREATE TABLE IF NOT EXISTS `prstshp_category` (
`id_category` int(10) unsigned NOT NULL,
  `id_parent` int(10) unsigned NOT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nleft` int(10) unsigned NOT NULL DEFAULT '0',
  `nright` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Zrzut danych tabeli `prstshp_category`
--

INSERT INTO `prstshp_category` (`id_category`, `id_parent`, `id_shop_default`, `level_depth`, `nleft`, `nright`, `active`, `date_add`, `date_upd`, `position`, `is_root_category`) VALUES
(1, 0, 1, 0, 1, 44, 1, '2014-06-21 01:13:32', '2014-06-21 01:13:32', 0, 0),
(2, 1, 1, 1, 2, 43, 1, '2014-06-21 01:13:32', '2014-06-21 01:13:32', 0, 1),
(19, 2, 1, 2, 3, 16, 1, '2014-08-28 09:37:45', '2014-08-28 09:37:45', 1, 0),
(20, 19, 1, 3, 4, 5, 1, '2014-08-28 09:37:45', '2014-08-28 09:37:45', 1, 0),
(21, 19, 1, 3, 6, 7, 1, '2014-08-28 09:38:04', '2014-08-28 09:38:04', 2, 0),
(22, 2, 1, 2, 17, 24, 1, '2014-08-28 09:38:10', '2014-08-28 09:38:10', 2, 0),
(23, 22, 1, 3, 18, 19, 1, '2014-08-28 09:38:11', '2014-08-28 09:38:11', 1, 0),
(24, 2, 1, 2, 25, 40, 1, '2014-08-28 09:38:15', '2014-08-28 09:38:15', 3, 0),
(25, 24, 1, 3, 26, 27, 1, '2014-08-28 09:38:15', '2014-08-28 09:38:15', 1, 0),
(26, 24, 1, 3, 28, 29, 1, '2014-08-28 09:38:19', '2014-08-28 09:38:19', 2, 0),
(27, 24, 1, 3, 30, 31, 1, '2014-08-28 09:38:33', '2014-08-28 09:38:33', 3, 0),
(28, 19, 1, 3, 8, 9, 1, '2014-08-28 09:38:41', '2014-08-28 09:38:41', 3, 0),
(29, 22, 1, 3, 20, 21, 1, '2014-08-28 09:39:29', '2014-08-28 09:39:29', 2, 0),
(30, 19, 1, 3, 10, 11, 1, '2014-08-28 09:39:44', '2014-08-28 09:39:44', 4, 0),
(31, 24, 1, 3, 32, 33, 1, '2014-08-28 09:39:57', '2014-08-28 09:39:57', 4, 0),
(32, 19, 1, 3, 12, 13, 1, '2014-08-28 09:40:09', '2014-08-28 09:40:09', 5, 0),
(33, 19, 1, 3, 14, 15, 1, '2014-08-28 09:40:54', '2014-08-28 09:40:54', 6, 0),
(34, 24, 1, 3, 34, 35, 1, '2014-08-28 09:41:01', '2014-08-28 09:41:01', 5, 0),
(35, 24, 1, 3, 36, 37, 1, '2014-08-28 09:41:05', '2014-08-28 09:41:05', 6, 0),
(36, 22, 1, 3, 22, 23, 1, '2014-08-28 09:41:07', '2014-08-28 09:41:07', 3, 0),
(37, 2, 1, 2, 41, 42, 1, '2014-08-28 09:41:41', '2014-08-28 10:21:13', 4, 0),
(38, 24, 1, 3, 38, 39, 1, '2014-08-28 09:42:44', '2014-08-28 09:42:44', 7, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_category_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_category_group`
--

INSERT INTO `prstshp_category_group` (`id_category`, `id_group`) VALUES
(1, 0),
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(7, 0),
(7, 1),
(7, 2),
(7, 3),
(8, 0),
(8, 1),
(8, 2),
(8, 3),
(9, 0),
(9, 1),
(9, 2),
(9, 3),
(10, 0),
(10, 1),
(10, 2),
(10, 3),
(11, 0),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(19, 3),
(20, 1),
(20, 2),
(20, 3),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 2),
(22, 3),
(23, 1),
(23, 2),
(23, 3),
(24, 1),
(24, 2),
(24, 3),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 2),
(28, 3),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(32, 3),
(33, 1),
(33, 2),
(33, 3),
(34, 1),
(34, 2),
(34, 3),
(35, 1),
(35, 2),
(35, 3),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_category_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_category_lang`
--

INSERT INTO `prstshp_category_lang` (`id_category`, `id_shop`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'Root', '', 'root', '', '', ''),
(1, 1, 2, 'Root', '', 'root', '', '', ''),
(1, 1, 3, 'Root', '', 'root', '', '', ''),
(2, 1, 1, 'Home', '', 'home', '', '', ''),
(2, 1, 2, 'Home', '', 'home', '', '', ''),
(2, 1, 3, 'Home', '', 'home', '', '', ''),
(19, 1, 1, 'CLASSICO&BELLEZZA', '', 'CLASSICO-BELLEZZA', 'CLASSICO&BELLEZZA', 'CLASSICO&BELLEZZA', ''),
(19, 1, 3, 'CLASSICO&BELLEZZA', '', 'CLASSICO-BELLEZZA', 'CLASSICO&BELLEZZA', 'CLASSICO&BELLEZZA', ''),
(20, 1, 1, 'DECOLTE', '', 'DECOLTE', 'DECOLTE', 'DECOLTE', ''),
(20, 1, 3, 'DECOLTE', '', 'DECOLTE', 'DECOLTE', 'DECOLTE', ''),
(21, 1, 1, 'BOTKI LETNIE', '', 'BOTKI-LETNIE', 'BOTKI LETNIE', 'BOTKI LETNIE', ''),
(21, 1, 3, 'BOTKI LETNIE', '', 'BOTKI-LETNIE', 'BOTKI LETNIE', 'BOTKI LETNIE', ''),
(22, 1, 1, 'CELEBRITY', '', 'CELEBRITY', 'CELEBRITY', 'CELEBRITY', ''),
(22, 1, 3, 'CELEBRITY', '', 'CELEBRITY', 'CELEBRITY', 'CELEBRITY', ''),
(23, 1, 1, 'DECOLTE', '', 'DECOLTE', 'DECOLTE', 'DECOLTE', ''),
(23, 1, 3, 'DECOLTE', '', 'DECOLTE', 'DECOLTE', 'DECOLTE', ''),
(24, 1, 1, 'VICTIM', '', 'VICTIM', 'VICTIM', 'VICTIM', ''),
(24, 1, 3, 'VICTIM', '', 'VICTIM', 'VICTIM', 'VICTIM', ''),
(25, 1, 1, 'KOZAKI NA OBCASIE', '', 'KOZAKI-NA-OBCASIE', 'KOZAKI NA OBCASIE', 'KOZAKI NA OBCASIE', ''),
(25, 1, 3, 'KOZAKI NA OBCASIE', '', 'KOZAKI-NA-OBCASIE', 'KOZAKI NA OBCASIE', 'KOZAKI NA OBCASIE', ''),
(26, 1, 1, 'KOZAKI PŁASKIE', '', 'KOZAKI-PLASKIE', 'KOZAKI PŁASKIE', 'KOZAKI PŁASKIE', ''),
(26, 1, 3, 'KOZAKI PŁASKIE', '', 'KOZAKI-PLASKIE', 'KOZAKI PŁASKIE', 'KOZAKI PŁASKIE', ''),
(27, 1, 1, 'SNEAKERSY', '', 'SNEAKERSY', 'SNEAKERSY', 'SNEAKERSY', ''),
(27, 1, 3, 'SNEAKERSY', '', 'SNEAKERSY', 'SNEAKERSY', 'SNEAKERSY', ''),
(28, 1, 1, 'BALERINY', '', 'BALERINY', 'BALERINY', 'BALERINY', ''),
(28, 1, 3, 'BALERINY', '', 'BALERINY', 'BALERINY', 'BALERINY', ''),
(29, 1, 1, 'OPEN TOE', '', 'OPEN-TOE', 'OPEN TOE', 'OPEN TOE', ''),
(29, 1, 3, 'OPEN TOE', '', 'OPEN-TOE', 'OPEN TOE', 'OPEN TOE', ''),
(30, 1, 1, 'KOZAKI PŁASKIE', '', 'KOZAKI-PLASKIE', 'KOZAKI PŁASKIE', 'KOZAKI PŁASKIE', ''),
(30, 1, 3, 'KOZAKI PŁASKIE', '', 'KOZAKI-PLASKIE', 'KOZAKI PŁASKIE', 'KOZAKI PŁASKIE', ''),
(31, 1, 1, 'SANDAŁY NA KOTURNIE', '', 'SANDALY-NA-KOTURNIE', 'SANDAŁY NA KOTURNIE', 'SANDAŁY NA KOTURNIE', ''),
(31, 1, 3, 'SANDAŁY NA KOTURNIE', '', 'SANDALY-NA-KOTURNIE', 'SANDAŁY NA KOTURNIE', 'SANDAŁY NA KOTURNIE', ''),
(32, 1, 1, 'SANDAŁY NA OBCASIE', '', 'SANDALY-NA-OBCASIE', 'SANDAŁY NA OBCASIE', 'SANDAŁY NA OBCASIE', ''),
(32, 1, 3, 'SANDAŁY NA OBCASIE', '', 'SANDALY-NA-OBCASIE', 'SANDAŁY NA OBCASIE', 'SANDAŁY NA OBCASIE', ''),
(33, 1, 1, 'SANDAŁY NA KOTURNIE', '', 'SANDALY-NA-KOTURNIE', 'SANDAŁY NA KOTURNIE', 'SANDAŁY NA KOTURNIE', ''),
(33, 1, 3, 'SANDAŁY NA KOTURNIE', '', 'SANDALY-NA-KOTURNIE', 'SANDAŁY NA KOTURNIE', 'SANDAŁY NA KOTURNIE', ''),
(34, 1, 1, 'SANDAŁY NA OBCASIE', '', 'SANDALY-NA-OBCASIE', 'SANDAŁY NA OBCASIE', 'SANDAŁY NA OBCASIE', ''),
(34, 1, 3, 'SANDAŁY NA OBCASIE', '', 'SANDALY-NA-OBCASIE', 'SANDAŁY NA OBCASIE', 'SANDAŁY NA OBCASIE', ''),
(35, 1, 1, 'BALERINY', '', 'BALERINY', 'BALERINY', 'BALERINY', ''),
(35, 1, 3, 'BALERINY', '', 'BALERINY', 'BALERINY', 'BALERINY', ''),
(36, 1, 1, 'BOTKI LETNIE', '', 'BOTKI-LETNIE', 'BOTKI LETNIE', 'BOTKI LETNIE', ''),
(36, 1, 3, 'BOTKI LETNIE', '', 'BOTKI-LETNIE', 'BOTKI LETNIE', 'BOTKI LETNIE', ''),
(37, 1, 1, 'AKCESORIA', '', 'AKCESORIA', 'AKCESORIA', 'AKCESORIA', ''),
(37, 1, 3, 'AKCESORIA', '', 'AKCESORIA', 'AKCESORIA', 'AKCESORIA', ''),
(38, 1, 1, 'SANDAŁY PŁASKIE', '', 'SANDALY-PLASKIE', 'SANDAŁY PŁASKIE', 'SANDAŁY PŁASKIE', ''),
(38, 1, 3, 'SANDAŁY PŁASKIE', '', 'SANDALY-PLASKIE', 'SANDAŁY PŁASKIE', 'SANDAŁY PŁASKIE', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_category_product`
--

CREATE TABLE IF NOT EXISTS `prstshp_category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_category_product`
--

INSERT INTO `prstshp_category_product` (`id_category`, `id_product`, `position`) VALUES
(2, 1, 0),
(2, 2, 1),
(2, 3, 2),
(2, 4, 3),
(19, 1, 0),
(19, 2, 1),
(19, 3, 2),
(19, 4, 31),
(19, 5, 3),
(19, 6, 4),
(19, 7, 5),
(19, 8, 6),
(19, 9, 7),
(19, 10, 8),
(19, 11, 9),
(19, 18, 10),
(19, 20, 11),
(19, 21, 12),
(19, 22, 13),
(19, 23, 14),
(19, 24, 15),
(19, 25, 16),
(19, 26, 17),
(19, 33, 18),
(19, 36, 19),
(19, 37, 20),
(19, 38, 21),
(19, 40, 22),
(19, 41, 23),
(19, 42, 24),
(19, 47, 25),
(19, 50, 26),
(19, 56, 27),
(19, 59, 28),
(19, 62, 29),
(19, 63, 30),
(20, 1, 0),
(20, 2, 1),
(20, 3, 2),
(20, 4, 16),
(20, 5, 3),
(20, 6, 4),
(20, 7, 5),
(20, 8, 6),
(20, 9, 7),
(20, 11, 8),
(20, 21, 9),
(20, 22, 10),
(20, 40, 11),
(20, 42, 12),
(20, 47, 13),
(20, 62, 14),
(20, 63, 15),
(21, 10, 0),
(21, 23, 1),
(21, 24, 2),
(21, 25, 3),
(21, 26, 4),
(21, 56, 5),
(21, 59, 6),
(22, 12, 0),
(22, 27, 1),
(22, 28, 2),
(22, 29, 3),
(22, 30, 4),
(22, 31, 5),
(22, 32, 6),
(22, 45, 7),
(23, 12, 0),
(23, 27, 1),
(23, 28, 2),
(23, 32, 3),
(24, 13, 0),
(24, 14, 1),
(24, 15, 2),
(24, 16, 3),
(24, 17, 4),
(24, 19, 5),
(24, 34, 6),
(24, 35, 7),
(24, 39, 8),
(24, 43, 9),
(24, 44, 10),
(24, 46, 11),
(24, 48, 12),
(24, 49, 13),
(24, 51, 14),
(24, 52, 15),
(24, 57, 16),
(24, 58, 17),
(24, 60, 18),
(24, 61, 19),
(25, 13, 0),
(25, 15, 1),
(26, 14, 0),
(27, 16, 0),
(27, 17, 1),
(27, 19, 2),
(27, 49, 3),
(27, 51, 4),
(27, 61, 5),
(28, 18, 0),
(28, 20, 1),
(28, 50, 2),
(29, 29, 0),
(29, 30, 1),
(29, 31, 2),
(30, 33, 0),
(30, 38, 1),
(31, 34, 0),
(31, 35, 1),
(32, 36, 0),
(32, 37, 1),
(33, 41, 0),
(34, 43, 0),
(34, 46, 1),
(34, 48, 2),
(35, 44, 0),
(35, 52, 1),
(35, 57, 2),
(35, 58, 3),
(36, 45, 0),
(37, 53, 0),
(37, 54, 1),
(37, 55, 2),
(38, 60, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_category_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_category_shop` (
  `id_category` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_category_shop`
--

INSERT INTO `prstshp_category_shop` (`id_category`, `id_shop`, `position`) VALUES
(1, 1, 1),
(2, 1, 1),
(19, 1, 1),
(20, 1, 1),
(21, 1, 2),
(22, 1, 2),
(23, 1, 1),
(24, 1, 3),
(25, 1, 1),
(26, 1, 2),
(27, 1, 3),
(28, 1, 3),
(29, 1, 2),
(30, 1, 4),
(31, 1, 4),
(32, 1, 5),
(33, 1, 6),
(34, 1, 5),
(35, 1, 6),
(36, 1, 3),
(37, 1, 4),
(38, 1, 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cms`
--

CREATE TABLE IF NOT EXISTS `prstshp_cms` (
`id_cms` int(10) unsigned NOT NULL,
  `id_cms_category` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `indexation` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `prstshp_cms`
--

INSERT INTO `prstshp_cms` (`id_cms`, `id_cms_category`, `position`, `active`, `indexation`) VALUES
(1, 1, 0, 1, 0),
(2, 1, 1, 1, 0),
(3, 1, 2, 1, 1),
(4, 1, 3, 1, 0),
(5, 1, 4, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cms_block`
--

CREATE TABLE IF NOT EXISTS `prstshp_cms_block` (
`id_cms_block` int(10) unsigned NOT NULL,
  `id_cms_category` int(10) unsigned NOT NULL,
  `location` tinyint(1) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `display_store` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_cms_block`
--

INSERT INTO `prstshp_cms_block` (`id_cms_block`, `id_cms_category`, `location`, `position`, `display_store`) VALUES
(1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cms_block_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_cms_block_lang` (
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_cms_block_lang`
--

INSERT INTO `prstshp_cms_block_lang` (`id_cms_block`, `id_lang`, `name`) VALUES
(1, 1, 'Information'),
(1, 2, 'Information'),
(1, 3, 'Information');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cms_block_page`
--

CREATE TABLE IF NOT EXISTS `prstshp_cms_block_page` (
`id_cms_block_page` int(10) unsigned NOT NULL,
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_cms` int(10) unsigned NOT NULL,
  `is_category` tinyint(1) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `prstshp_cms_block_page`
--

INSERT INTO `prstshp_cms_block_page` (`id_cms_block_page`, `id_cms_block`, `id_cms`, `is_category`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cms_block_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_cms_block_shop` (
`id_cms_block` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_cms_block_shop`
--

INSERT INTO `prstshp_cms_block_shop` (`id_cms_block`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cms_category`
--

CREATE TABLE IF NOT EXISTS `prstshp_cms_category` (
`id_cms_category` int(10) unsigned NOT NULL,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_cms_category`
--

INSERT INTO `prstshp_cms_category` (`id_cms_category`, `id_parent`, `level_depth`, `active`, `date_add`, `date_upd`, `position`) VALUES
(1, 0, 1, 1, '2014-06-21 01:13:32', '2014-06-21 01:13:32', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cms_category_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_cms_category_lang` (
  `id_cms_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_cms_category_lang`
--

INSERT INTO `prstshp_cms_category_lang` (`id_cms_category`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, '', NULL, '', NULL, NULL, NULL),
(1, 2, '', NULL, '', NULL, NULL, NULL),
(1, 3, '', NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cms_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_cms_lang` (
  `id_cms` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_cms_lang`
--

INSERT INTO `prstshp_cms_lang` (`id_cms`, `id_lang`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `link_rewrite`) VALUES
(1, 1, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 2, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 3, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(2, 1, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Online store was created using <a href="http://www.prestashop.com">Prestashop Shopping Cart Software</a>,check out PrestaShop''s <a href="http://www.prestashop.com/blog/en/">ecommerce blog</a> for news and advices about selling online and running your ecommerce website.</p>', 'legal-notice'),
(2, 2, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Online store was created using <a href="http://www.prestashop.com">Prestashop Shopping Cart Software</a>,check out PrestaShop''s <a href="http://www.prestashop.com/blog/en/">ecommerce blog</a> for news and advices about selling online and running your ecommerce website.</p>', 'legal-notice'),
(2, 3, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Online store was created using <a href="http://www.prestashop.com">Prestashop Shopping Cart Software</a>,check out PrestaShop''s <a href="http://www.prestashop.com/blog/en/">ecommerce blog</a> for news and advices about selling online and running your ecommerce website.</p>', 'legal-notice'),
(3, 1, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h1 class="page-heading">Terms and conditions of use</h1>\n<h3 class="page-subheading">Rule 1</h3>\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<h3 class="page-subheading">Rule 2</h3>\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>\n<h3 class="page-subheading">Rule 3</h3>\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>', 'terms-and-conditions-of-use'),
(3, 2, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h1 class="page-heading">Terms and conditions of use</h1>\n<h3 class="page-subheading">Rule 1</h3>\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<h3 class="page-subheading">Rule 2</h3>\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&#1102;</p>\n<h3 class="page-subheading">Rule 3</h3>\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&#1102;</p>', 'terms-and-conditions-of-use'),
(3, 3, 'Regulamin sklepu internetowego', 'Zobacz regulamin sklepu internetowego z butami eCelebrity.eu. Przeczytaj uważnie, zanim dokonasz zakupu.', 'regulamin sklepu,regulamin zakupów w eCelebrity', '<h1 class="page-heading">Terms and conditions of use</h1>\n<h3 class="page-subheading">Rule 1</h3>\n<p class="bottom-indent">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<h3 class="page-subheading">Rule 2</h3>\n<p class="bottom-indent">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>\n<h3 class="page-subheading">Rule 3</h3>\n<p class="bottom-indent">Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamю</p>', 'regulamin'),
(4, 1, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\n<div class="row">\n<div class="col-xs-12 col-sm-4">\n<div class="cms-block">\n<h3 class="page-subheading">Our company</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\n<ul class="list-1">\n<li><em class="icon-ok"></em>Top quality products</li>\n<li><em class="icon-ok"></em>Best customer service</li>\n<li><em class="icon-ok"></em>30-days money back guarantee</li>\n</ul>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Our team</h3>\n<img title="cms-img" src="../img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" />\n<p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Testimonials</h3>\n<div class="testimonials">\n<div class="inner"><span class="before">Ã¢â‚¬Å“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">Ã¢â‚¬ï¿½</span></div>\n</div>\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\n<div class="testimonials">\n<div class="inner"><span class="before">Ã¢â‚¬Å“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">Ã¢â‚¬ï¿½</span></div>\n</div>\n<p><strong class="dark">Ipsum dolor sit</strong></p>\n</div>\n</div>\n</div>', 'about-us'),
(4, 2, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\n<div class="row">\n<div class="col-xs-12 col-sm-4">\n<div class="cms-block">\n<h3 class="page-subheading">Our company</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\n<ul class="list-1">\n<li><em class="icon-ok"></em>Top quality products</li>\n<li><em class="icon-ok"></em>Best customer service</li>\n<li><em class="icon-ok"></em>30-days money back guarantee</li>\n</ul>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Our team</h3>\n<img title="cms-img" src="../img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" />\n<p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Testimonials</h3>\n<div class="testimonials">\n<div class="inner"><span class="before">Ã¢â‚¬Å“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">Ã¢â‚¬ï¿½</span></div>\n</div>\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\n<div class="testimonials">\n<div class="inner"><span class="before">Ã¢â‚¬Å“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">Ã¢â‚¬ï¿½</span></div>\n</div>\n<p><strong class="dark">Ipsum dolor sit</strong></p>\n</div>\n</div>\n</div>', 'about-us'),
(4, 3, 'About us', 'Learn more about us', 'about us, informations', '<h1 class="page-heading bottom-indent">About us</h1>\n<div class="row">\n<div class="col-xs-12 col-sm-4">\n<div class="cms-block">\n<h3 class="page-subheading">Our company</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididun.</strong></p>\n<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>\n<ul class="list-1">\n<li><em class="icon-ok"></em>Top quality products</li>\n<li><em class="icon-ok"></em>Best customer service</li>\n<li><em class="icon-ok"></em>30-days money back guarantee</li>\n</ul>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Our team</h3>\n<img title="cms-img" src="../img/cms/cms-img.jpg" alt="cms-img" width="370" height="192" />\n<p><strong class="dark">Lorem set sint occaecat cupidatat non </strong></p>\n<p>Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>\n</div>\n</div>\n<div class="col-xs-12 col-sm-4">\n<div class="cms-box">\n<h3 class="page-subheading">Testimonials</h3>\n<div class="testimonials">\n<div class="inner"><span class="before">Ã¢â‚¬Å“</span>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.<span class="after">Ã¢â‚¬ï¿½</span></div>\n</div>\n<p><strong class="dark">Lorem ipsum dolor sit</strong></p>\n<div class="testimonials">\n<div class="inner"><span class="before">Ã¢â‚¬Å“</span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet conse ctetur adipisicing elit. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.<span class="after">Ã¢â‚¬ï¿½</span></div>\n</div>\n<p><strong class="dark">Ipsum dolor sit</strong></p>\n</div>\n</div>\n</div>', 'about-us'),
(5, 1, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>', 'secure-payment'),
(5, 2, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>', 'secure-payment'),
(5, 3, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>', 'secure-payment');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_cms_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_cms_shop` (
  `id_cms` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_cms_shop`
--

INSERT INTO `prstshp_cms_shop` (`id_cms`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_compare`
--

CREATE TABLE IF NOT EXISTS `prstshp_compare` (
`id_compare` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_compare_product`
--

CREATE TABLE IF NOT EXISTS `prstshp_compare_product` (
  `id_compare` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_condition`
--

CREATE TABLE IF NOT EXISTS `prstshp_condition` (
`id_condition` int(11) NOT NULL,
  `id_ps_condition` int(11) NOT NULL,
  `type` enum('configuration','install','sql') NOT NULL,
  `request` text,
  `operator` varchar(32) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  `calculation_type` enum('hook','time') DEFAULT NULL,
  `calculation_detail` varchar(64) DEFAULT NULL,
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_condition_advice`
--

CREATE TABLE IF NOT EXISTS `prstshp_condition_advice` (
  `id_condition` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_condition_badge`
--

CREATE TABLE IF NOT EXISTS `prstshp_condition_badge` (
  `id_condition` int(11) NOT NULL,
  `id_badge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_configuration`
--

CREATE TABLE IF NOT EXISTS `prstshp_configuration` (
`id_configuration` int(10) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned DEFAULT NULL,
  `id_shop` int(11) unsigned DEFAULT NULL,
  `name` varchar(254) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=420 ;

--
-- Zrzut danych tabeli `prstshp_configuration`
--

INSERT INTO `prstshp_configuration` (`id_configuration`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, NULL, NULL, 'PS_LANG_DEFAULT', '3', '2014-08-01 00:30:54', '2014-08-26 04:21:09'),
(2, NULL, NULL, 'PS_VERSION_DB', '1.6.0.9', '2014-08-01 00:30:54', '2014-08-01 00:30:54'),
(3, NULL, NULL, 'PS_INSTALL_VERSION', '1.6.0.9', '2014-08-01 00:30:54', '2014-08-01 00:30:54'),
(4, NULL, NULL, 'PS_CARRIER_DEFAULT', '4', '2014-08-01 00:31:06', '2014-08-26 10:45:44'),
(5, NULL, NULL, 'PS_GROUP_FEATURE_ACTIVE', '1', '2014-08-01 00:31:07', '2014-08-01 00:31:07'),
(6, NULL, NULL, 'PS_SEARCH_INDEXATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, NULL, NULL, 'PS_ONE_PHONE_AT_LEAST', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, NULL, NULL, 'PS_CURRENCY_DEFAULT', '2', '0000-00-00 00:00:00', '2014-08-26 10:29:41'),
(9, NULL, NULL, 'PS_COUNTRY_DEFAULT', '14', '0000-00-00 00:00:00', '2014-08-26 04:10:43'),
(10, NULL, NULL, 'PS_REWRITING_SETTINGS', '1', '0000-00-00 00:00:00', '2014-08-28 10:00:48'),
(11, NULL, NULL, 'PS_ORDER_OUT_OF_STOCK', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, NULL, NULL, 'PS_LAST_QTIES', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, NULL, NULL, 'PS_CART_REDIRECT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, NULL, NULL, 'PS_HELPBOX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, NULL, NULL, 'PS_CONDITIONS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, NULL, NULL, 'PS_RECYCLABLE_PACK', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, NULL, NULL, 'PS_GIFT_WRAPPING', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, NULL, NULL, 'PS_GIFT_WRAPPING_PRICE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, NULL, NULL, 'PS_STOCK_MANAGEMENT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, NULL, NULL, 'PS_NAVIGATION_PIPE', '>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, NULL, NULL, 'PS_PRODUCTS_PER_PAGE', '256', '0000-00-00 00:00:00', '2014-08-26 10:38:45'),
(22, NULL, NULL, 'PS_PURCHASE_MINIMUM', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, NULL, NULL, 'PS_PRODUCTS_ORDER_WAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, NULL, NULL, 'PS_PRODUCTS_ORDER_BY', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, NULL, NULL, 'PS_DISPLAY_QTIES', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, NULL, NULL, 'PS_SHIPPING_HANDLING', '0', '0000-00-00 00:00:00', '2014-08-26 10:45:58'),
(27, NULL, NULL, 'PS_SHIPPING_FREE_PRICE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, NULL, NULL, 'PS_SHIPPING_FREE_WEIGHT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, NULL, NULL, 'PS_SHIPPING_METHOD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, NULL, NULL, 'PS_TAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, NULL, NULL, 'PS_SHOP_ENABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, NULL, NULL, 'PS_NB_DAYS_NEW_PRODUCT', '20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, NULL, NULL, 'PS_SSL_ENABLED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, NULL, NULL, 'PS_WEIGHT_UNIT', 'kg', '0000-00-00 00:00:00', '2014-08-26 04:11:12'),
(35, NULL, NULL, 'PS_BLOCK_CART_AJAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, NULL, NULL, 'PS_ORDER_RETURN', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, NULL, NULL, 'PS_ORDER_RETURN_NB_DAYS', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, NULL, NULL, 'PS_MAIL_TYPE', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, NULL, NULL, 'PS_PRODUCT_PICTURE_MAX_SIZE', '8388608', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, NULL, NULL, 'PS_PRODUCT_PICTURE_WIDTH', '64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, NULL, NULL, 'PS_PRODUCT_PICTURE_HEIGHT', '64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, NULL, NULL, 'PS_INVOICE_PREFIX', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, NULL, NULL, 'PS_INVOICE_NUMBER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, NULL, NULL, 'PS_DELIVERY_PREFIX', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, NULL, NULL, 'PS_DELIVERY_NUMBER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, NULL, NULL, 'PS_INVOICE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, NULL, NULL, 'PS_PASSWD_TIME_BACK', '360', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, NULL, NULL, 'PS_PASSWD_TIME_FRONT', '360', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, NULL, NULL, 'PS_DISP_UNAVAILABLE_ATTR', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, NULL, NULL, 'PS_SEARCH_MINWORDLEN', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, NULL, NULL, 'PS_SEARCH_BLACKLIST', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, NULL, NULL, 'PS_SEARCH_WEIGHT_PNAME', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, NULL, NULL, 'PS_SEARCH_WEIGHT_REF', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, NULL, NULL, 'PS_SEARCH_WEIGHT_SHORTDESC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, NULL, NULL, 'PS_SEARCH_WEIGHT_DESC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, NULL, NULL, 'PS_SEARCH_WEIGHT_CNAME', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, NULL, NULL, 'PS_SEARCH_WEIGHT_MNAME', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, NULL, NULL, 'PS_SEARCH_WEIGHT_TAG', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, NULL, NULL, 'PS_SEARCH_WEIGHT_ATTRIBUTE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, NULL, NULL, 'PS_SEARCH_WEIGHT_FEATURE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, NULL, NULL, 'PS_SEARCH_AJAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, NULL, NULL, 'PS_TIMEZONE', 'Europe/Warsaw', '0000-00-00 00:00:00', '2014-08-26 04:29:28'),
(63, NULL, NULL, 'PS_THEME_V11', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, NULL, NULL, 'PRESTASTORE_LIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, NULL, NULL, 'PS_TIN_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, NULL, NULL, 'PS_SHOW_ALL_MODULES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, NULL, NULL, 'PS_BACKUP_ALL', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, NULL, NULL, 'PS_1_3_UPDATE_DATE', '2011-12-27 10:20:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, NULL, NULL, 'PS_PRICE_ROUND_MODE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, NULL, NULL, 'PS_1_3_2_UPDATE_DATE', '2011-12-27 10:20:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, NULL, NULL, 'PS_CONDITIONS_CMS_ID', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, NULL, NULL, 'TRACKING_DIRECT_TRAFFIC', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, NULL, NULL, 'PS_META_KEYWORDS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, NULL, NULL, 'PS_DISPLAY_JQZOOM', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, NULL, NULL, 'PS_VOLUME_UNIT', 'L', '0000-00-00 00:00:00', '2014-08-26 04:11:12'),
(76, NULL, NULL, 'PS_CIPHER_ALGORITHM', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, NULL, NULL, 'PS_ATTRIBUTE_CATEGORY_DISPLAY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, NULL, NULL, 'PS_CUSTOMER_SERVICE_FILE_UPLOAD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, NULL, NULL, 'PS_CUSTOMER_SERVICE_SIGNATURE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, NULL, NULL, 'PS_BLOCK_BESTSELLERS_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, NULL, NULL, 'PS_BLOCK_NEWPRODUCTS_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, NULL, NULL, 'PS_BLOCK_SPECIALS_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, NULL, NULL, 'PS_STOCK_MVT_REASON_DEFAULT', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, NULL, NULL, 'PS_COMPARATOR_MAX_ITEM', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, NULL, NULL, 'PS_ORDER_PROCESS_TYPE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, NULL, NULL, 'PS_SPECIFIC_PRICE_PRIORITIES', 'id_shop;id_currency;id_country;id_group', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, NULL, NULL, 'PS_TAX_DISPLAY', '1', '0000-00-00 00:00:00', '2014-08-01 00:31:27'),
(88, NULL, NULL, 'PS_SMARTY_FORCE_COMPILE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, NULL, NULL, 'PS_DISTANCE_UNIT', 'km', '0000-00-00 00:00:00', '2014-08-26 04:11:12'),
(90, NULL, NULL, 'PS_STORES_DISPLAY_CMS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, NULL, NULL, 'PS_STORES_DISPLAY_FOOTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, NULL, NULL, 'PS_STORES_SIMPLIFIED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, NULL, NULL, 'SHOP_LOGO_WIDTH', '350', '0000-00-00 00:00:00', '2014-06-21 01:13:44'),
(94, NULL, NULL, 'SHOP_LOGO_HEIGHT', '99', '0000-00-00 00:00:00', '2014-06-21 01:13:44'),
(95, NULL, NULL, 'EDITORIAL_IMAGE_WIDTH', '530', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, NULL, NULL, 'EDITORIAL_IMAGE_HEIGHT', '228', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, NULL, NULL, 'PS_STATSDATA_CUSTOMER_PAGESVIEWS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, NULL, NULL, 'PS_STATSDATA_PAGESVIEWS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, NULL, NULL, 'PS_STATSDATA_PLUGINS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, NULL, NULL, 'PS_GEOLOCATION_ENABLED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, NULL, NULL, 'PS_ALLOWED_COUNTRIES', 'AF;ZA;AX;AL;DZ;DE;AD;AO;AI;AQ;AG;AN;SA;AR;AM;AW;AU;AT;AZ;BS;BH;BD;BB;BY;BE;BZ;BJ;BM;BT;BO;BA;BW;BV;BR;BN;BG;BF;MM;BI;KY;KH;CM;CA;CV;CF;CL;CN;CX;CY;CC;CO;KM;CG;CD;CK;KR;KP;CR;CI;HR;CU;DK;DJ;DM;EG;IE;SV;AE;EC;ER;ES;EE;ET;FK;FO;FJ;FI;FR;GA;GM;GE;GS;GH;GI;GR;GD;GL;GP;GU;GT;GG;GN;GQ;GW;GY;GF;HT;HM;HN;HK;HU;IM;MU;VG;VI;IN;ID;IR;IQ;IS;IL;IT;JM;JP;JE;JO;KZ;KE;KG;KI;KW;LA;LS;LV;LB;LR;LY;LI;LT;LU;MO;MK;MG;MY;MW;MV;ML;MT;MP;MA;MH;MQ;MR;YT;MX;FM;MD;MC;MN;ME;MS;MZ;NA;NR;NP;NI;NE;NG;NU;NF;NO;NC;NZ;IO;OM;UG;UZ;PK;PW;PS;PA;PG;PY;NL;PE;PH;PN;PL;PF;PR;PT;QA;DO;CZ;RE;RO;GB;RU;RW;EH;BL;KN;SM;MF;PM;VA;VC;LC;SB;WS;AS;ST;SN;RS;SC;SL;SG;SK;SI;SO;SD;LK;SE;CH;SR;SJ;SZ;SY;TJ;TW;TZ;TD;TF;TH;TL;TG;TK;TO;TT;TN;TM;TC;TR;TV;UA;UY;US;VU;VE;VN;WF;YE;ZM;ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, NULL, NULL, 'PS_GEOLOCATION_BEHAVIOR', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, NULL, NULL, 'PS_LOCALE_LANGUAGE', 'pl', '0000-00-00 00:00:00', '2014-08-26 04:21:09'),
(104, NULL, NULL, 'PS_LOCALE_COUNTRY', 'pl', '0000-00-00 00:00:00', '2014-08-26 04:21:10'),
(105, NULL, NULL, 'PS_ATTACHMENT_MAXIMUM_SIZE', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, NULL, NULL, 'PS_SMARTY_CACHE', '0', '0000-00-00 00:00:00', '2014-08-26 10:32:54'),
(107, NULL, NULL, 'PS_DIMENSION_UNIT', 'cm', '0000-00-00 00:00:00', '2014-08-26 04:11:12'),
(108, NULL, NULL, 'PS_GUEST_CHECKOUT_ENABLED', '1', '0000-00-00 00:00:00', '2014-08-26 10:37:44'),
(109, NULL, NULL, 'PS_DISPLAY_SUPPLIERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, NULL, NULL, 'PS_DISPLAY_BEST_SELLERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, NULL, NULL, 'PS_CATALOG_MODE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, NULL, NULL, 'PS_GEOLOCATION_WHITELIST', '127;209.185.108;209.185.253;209.85.238;209.85.238.11;209.85.238.4;216.239.33.96;216.239.33.97;216.239.33.98;216.239.33.99;216.239.37.98;216.239.37.99;216.239.39.98;216.239.39.99;216.239.41.96;216.239.41.97;216.239.41.98;216.239.41.99;216.239.45.4;216.239.46;216.239.51.96;216.239.51.97;216.239.51.98;216.239.51.99;216.239.53.98;216.239.53.99;216.239.57.96;216.239.57.97;216.239.57.98;216.239.57.99;216.239.59.98;216.239.59.99;216.33.229.163;64.233.173.193;64.233.173.194;64.233.173.195;64.233.173.196;64.233.173.197;64.233.173.198;64.233.173.199;64.233.173.200;64.233.173.201;64.233.173.202;64.233.173.203;64.233.173.204;64.233.173.205;64.233.173.206;64.233.173.207;64.233.173.208;64.233.173.209;64.233.173.210;64.233.173.211;64.233.173.212;64.233.173.213;64.233.173.214;64.233.173.215;64.233.173.216;64.233.173.217;64.233.173.218;64.233.173.219;64.233.173.220;64.233.173.221;64.233.173.222;64.233.173.223;64.233.173.224;64.233.173.225;64.233.173.226;64.233.173.227;64.233.173.228;64.233.173.229;64.233.173.230;64.233.173.231;64.233.173.232;64.233.173.233;64.233.173.234;64.233.173.235;64.233.173.236;64.233.173.237;64.233.173.238;64.233.173.239;64.233.173.240;64.233.173.241;64.233.173.242;64.233.173.243;64.233.173.244;64.233.173.245;64.233.173.246;64.233.173.247;64.233.173.248;64.233.173.249;64.233.173.250;64.233.173.251;64.233.173.252;64.233.173.253;64.233.173.254;64.233.173.255;64.68.80;64.68.81;64.68.82;64.68.83;64.68.84;64.68.85;64.68.86;64.68.87;64.68.88;64.68.89;64.68.90.1;64.68.90.10;64.68.90.11;64.68.90.12;64.68.90.129;64.68.90.13;64.68.90.130;64.68.90.131;64.68.90.132;64.68.90.133;64.68.90.134;64.68.90.135;64.68.90.136;64.68.90.137;64.68.90.138;64.68.90.139;64.68.90.14;64.68.90.140;64.68.90.141;64.68.90.142;64.68.90.143;64.68.90.144;64.68.90.145;64.68.90.146;64.68.90.147;64.68.90.148;64.68.90.149;64.68.90.15;64.68.90.150;64.68.90.151;64.68.90.152;64.68.90.153;64.68.90.154;64.68.90.155;64.68.90.156;64.68.90.157;64.68.90.158;64.68.90.159;64.68.90.16;64.68.90.160;64.68.90.161;64.68.90.162;64.68.90.163;64.68.90.164;64.68.90.165;64.68.90.166;64.68.90.167;64.68.90.168;64.68.90.169;64.68.90.17;64.68.90.170;64.68.90.171;64.68.90.172;64.68.90.173;64.68.90.174;64.68.90.175;64.68.90.176;64.68.90.177;64.68.90.178;64.68.90.179;64.68.90.18;64.68.90.180;64.68.90.181;64.68.90.182;64.68.90.183;64.68.90.184;64.68.90.185;64.68.90.186;64.68.90.187;64.68.90.188;64.68.90.189;64.68.90.19;64.68.90.190;64.68.90.191;64.68.90.192;64.68.90.193;64.68.90.194;64.68.90.195;64.68.90.196;64.68.90.197;64.68.90.198;64.68.90.199;64.68.90.2;64.68.90.20;64.68.90.200;64.68.90.201;64.68.90.202;64.68.90.203;64.68.90.204;64.68.90.205;64.68.90.206;64.68.90.207;64.68.90.208;64.68.90.21;64.68.90.22;64.68.90.23;64.68.90.24;64.68.90.25;64.68.90.26;64.68.90.27;64.68.90.28;64.68.90.29;64.68.90.3;64.68.90.30;64.68.90.31;64.68.90.32;64.68.90.33;64.68.90.34;64.68.90.35;64.68.90.36;64.68.90.37;64.68.90.38;64.68.90.39;64.68.90.4;64.68.90.40;64.68.90.41;64.68.90.42;64.68.90.43;64.68.90.44;64.68.90.45;64.68.90.46;64.68.90.47;64.68.90.48;64.68.90.49;64.68.90.5;64.68.90.50;64.68.90.51;64.68.90.52;64.68.90.53;64.68.90.54;64.68.90.55;64.68.90.56;64.68.90.57;64.68.90.58;64.68.90.59;64.68.90.6;64.68.90.60;64.68.90.61;64.68.90.62;64.68.90.63;64.68.90.64;64.68.90.65;64.68.90.66;64.68.90.67;64.68.90.68;64.68.90.69;64.68.90.7;64.68.90.70;64.68.90.71;64.68.90.72;64.68.90.73;64.68.90.74;64.68.90.75;64.68.90.76;64.68.90.77;64.68.90.78;64.68.90.79;64.68.90.8;64.68.90.80;64.68.90.9;64.68.91;64.68.92;66.249.64;66.249.65;66.249.66;66.249.67;66.249.68;66.249.69;66.249.70;66.249.71;66.249.72;66.249.73;66.249.78;66.249.79;72.14.199;8.6.48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, NULL, NULL, 'PS_LOGS_BY_EMAIL', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, NULL, NULL, 'PS_COOKIE_CHECKIP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, NULL, NULL, 'PS_STORES_CENTER_LAT', '25.948969', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, NULL, NULL, 'PS_STORES_CENTER_LONG', '-80.226439', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, NULL, NULL, 'PS_USE_ECOTAX', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, NULL, NULL, 'PS_CANONICAL_REDIRECT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, NULL, NULL, 'PS_IMG_UPDATE_TIME', '1409044391', '0000-00-00 00:00:00', '2014-08-26 11:13:11'),
(120, NULL, NULL, 'PS_BACKUP_DROP_TABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, NULL, NULL, 'PS_OS_CHEQUE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, NULL, NULL, 'PS_OS_PAYMENT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, NULL, NULL, 'PS_OS_PREPARATION', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, NULL, NULL, 'PS_OS_SHIPPING', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, NULL, NULL, 'PS_OS_DELIVERED', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, NULL, NULL, 'PS_OS_CANCELED', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, NULL, NULL, 'PS_OS_REFUND', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, NULL, NULL, 'PS_OS_ERROR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, NULL, NULL, 'PS_OS_OUTOFSTOCK', '9', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, NULL, NULL, 'PS_OS_BANKWIRE', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, NULL, NULL, 'PS_OS_PAYPAL', '11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, NULL, NULL, 'PS_OS_WS_PAYMENT', '12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, NULL, NULL, 'PS_LEGACY_IMAGES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, NULL, NULL, 'PS_IMAGE_QUALITY', 'jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, NULL, NULL, 'PS_PNG_QUALITY', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, NULL, NULL, 'PS_JPEG_QUALITY', '100', '0000-00-00 00:00:00', '2014-08-26 10:41:21'),
(137, NULL, NULL, 'PS_COOKIE_LIFETIME_FO', '480', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, NULL, NULL, 'PS_COOKIE_LIFETIME_BO', '480', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, NULL, NULL, 'PS_RESTRICT_DELIVERED_COUNTRIES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, NULL, NULL, 'PS_SHOW_NEW_ORDERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, NULL, NULL, 'PS_SHOW_NEW_CUSTOMERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, NULL, NULL, 'PS_SHOW_NEW_MESSAGES', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, NULL, NULL, 'PS_FEATURE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, NULL, NULL, 'PS_COMBINATION_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, NULL, NULL, 'PS_SPECIFIC_PRICE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, NULL, NULL, 'PS_SCENE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, NULL, NULL, 'PS_VIRTUAL_PROD_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, NULL, NULL, 'PS_CUSTOMIZATION_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, NULL, NULL, 'PS_CART_RULE_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, NULL, NULL, 'PS_PACK_FEATURE_ACTIVE', NULL, '0000-00-00 00:00:00', '2014-08-28 14:10:15'),
(151, NULL, NULL, 'PS_ALIAS_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, NULL, NULL, 'PS_TAX_ADDRESS_TYPE', 'id_address_delivery', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, NULL, NULL, 'PS_SHOP_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, NULL, NULL, 'PS_CARRIER_DEFAULT_SORT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, NULL, NULL, 'PS_STOCK_MVT_INC_REASON_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, NULL, NULL, 'PS_STOCK_MVT_DEC_REASON_DEFAULT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, NULL, NULL, 'PS_ADVANCED_STOCK_MANAGEMENT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, NULL, NULL, 'PS_ADMINREFRESH_NOTIFICATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, NULL, NULL, 'PS_STOCK_MVT_TRANSFER_TO', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, NULL, NULL, 'PS_STOCK_MVT_TRANSFER_FROM', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, NULL, NULL, 'PS_CARRIER_DEFAULT_ORDER', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, NULL, NULL, 'PS_STOCK_MVT_SUPPLY_ORDER', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, NULL, NULL, 'PS_STOCK_CUSTOMER_ORDER_REASON', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, NULL, NULL, 'PS_UNIDENTIFIED_GROUP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, NULL, NULL, 'PS_GUEST_GROUP', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, NULL, NULL, 'PS_CUSTOMER_GROUP', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, NULL, NULL, 'PS_SMARTY_CONSOLE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, NULL, NULL, 'PS_INVOICE_MODEL', 'invoice', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, NULL, NULL, 'PS_LIMIT_UPLOAD_IMAGE_VALUE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, NULL, NULL, 'PS_LIMIT_UPLOAD_FILE_VALUE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, NULL, NULL, 'MB_PAY_TO_EMAIL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, NULL, NULL, 'MB_SECRET_WORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, NULL, NULL, 'MB_HIDE_LOGIN', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, NULL, NULL, 'MB_ID_LOGO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, NULL, NULL, 'MB_ID_LOGO_WALLET', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, NULL, NULL, 'MB_PARAMETERS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, NULL, NULL, 'MB_PARAMETERS_2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, NULL, NULL, 'MB_DISPLAY_MODE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, NULL, NULL, 'MB_CANCEL_URL', 'http://www.yoursite.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, NULL, NULL, 'MB_LOCAL_METHODS', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, NULL, NULL, 'MB_INTER_METHODS', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, NULL, NULL, 'BANK_WIRE_CURRENCIES', '2,1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, NULL, NULL, 'CHEQUE_CURRENCIES', '2,1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, NULL, NULL, 'PRODUCTS_VIEWED_NBR', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, NULL, NULL, 'BLOCK_CATEG_DHTML', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, NULL, NULL, 'BLOCK_CATEG_MAX_DEPTH', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, NULL, NULL, 'MANUFACTURER_DISPLAY_FORM', '1', '0000-00-00 00:00:00', '2014-06-21 01:14:45'),
(188, NULL, NULL, 'MANUFACTURER_DISPLAY_TEXT', '1', '0000-00-00 00:00:00', '2014-06-21 01:14:45'),
(189, NULL, NULL, 'MANUFACTURER_DISPLAY_TEXT_NB', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, NULL, NULL, 'NEW_PRODUCTS_NBR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, NULL, NULL, 'PS_TOKEN_ENABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, NULL, NULL, 'PS_STATS_RENDER', 'graphnvd3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, NULL, NULL, 'PS_STATS_OLD_CONNECT_AUTO_CLEAN', 'never', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, NULL, NULL, 'PS_STATS_GRID_RENDER', 'gridhtml', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, NULL, NULL, 'BLOCKTAGS_NBR', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, NULL, NULL, 'CHECKUP_DESCRIPTIONS_LT', '100', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, NULL, NULL, 'CHECKUP_DESCRIPTIONS_GT', '400', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, NULL, NULL, 'CHECKUP_IMAGES_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, NULL, NULL, 'CHECKUP_IMAGES_GT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, NULL, NULL, 'CHECKUP_SALES_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, NULL, NULL, 'CHECKUP_SALES_GT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, NULL, NULL, 'CHECKUP_STOCK_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, NULL, NULL, 'CHECKUP_STOCK_GT', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, NULL, NULL, 'FOOTER_CMS', NULL, '0000-00-00 00:00:00', '2014-08-26 11:38:17'),
(205, NULL, NULL, 'FOOTER_BLOCK_ACTIVATION', '1', '0000-00-00 00:00:00', '2014-08-26 11:38:17'),
(206, NULL, NULL, 'FOOTER_POWEREDBY', '0', '0000-00-00 00:00:00', '2014-08-26 11:38:17'),
(207, NULL, NULL, 'BLOCKADVERT_LINK', 'http://www.prestashop.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, NULL, NULL, 'BLOCKSTORE_IMG', 'store.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, NULL, NULL, 'BLOCKADVERT_IMG_EXT', 'jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, NULL, NULL, 'MOD_BLOCKTOPMENU_ITEMS', 'CAT3,CAT8,CAT5,LNK1', '0000-00-00 00:00:00', '2014-06-21 01:14:48'),
(211, NULL, NULL, 'MOD_BLOCKTOPMENU_SEARCH', '0', '0000-00-00 00:00:00', '2014-06-21 01:14:48'),
(212, NULL, NULL, 'BLOCKSOCIAL_FACEBOOK', '#', '0000-00-00 00:00:00', '2014-08-26 11:39:30'),
(213, NULL, NULL, 'BLOCKSOCIAL_TWITTER', NULL, '0000-00-00 00:00:00', '2014-08-26 11:39:31'),
(214, NULL, NULL, 'BLOCKSOCIAL_RSS', NULL, '0000-00-00 00:00:00', '2014-08-26 11:39:31'),
(215, NULL, NULL, 'BLOCKCONTACTINFOS_COMPANY', 'My Company', '0000-00-00 00:00:00', '2014-06-21 01:14:45'),
(216, NULL, NULL, 'BLOCKCONTACTINFOS_ADDRESS', '42 avenue des Champs ElysÃ©es\n75000 Paris\nFrance', '0000-00-00 00:00:00', '2014-06-21 01:14:45'),
(217, NULL, NULL, 'BLOCKCONTACTINFOS_PHONE', '0123-456-789', '0000-00-00 00:00:00', '2014-06-21 01:14:45'),
(218, NULL, NULL, 'BLOCKCONTACTINFOS_EMAIL', 'sales@yourcompany.com', '0000-00-00 00:00:00', '2014-06-21 01:14:45'),
(219, NULL, NULL, 'BLOCKCONTACT_TELNUMBER', '0123-456-789', '0000-00-00 00:00:00', '2014-06-21 01:14:45'),
(220, NULL, NULL, 'BLOCKCONTACT_EMAIL', 'sales@yourcompany.com', '0000-00-00 00:00:00', '2014-06-21 01:14:45'),
(221, NULL, NULL, 'SUPPLIER_DISPLAY_TEXT', '1', '0000-00-00 00:00:00', '2014-06-21 01:14:48'),
(222, NULL, NULL, 'SUPPLIER_DISPLAY_TEXT_NB', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, NULL, NULL, 'SUPPLIER_DISPLAY_FORM', '1', '0000-00-00 00:00:00', '2014-06-21 01:14:48'),
(224, NULL, NULL, 'BLOCK_CATEG_NBR_COLUMN_FOOTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, NULL, NULL, 'UPGRADER_BACKUPDB_FILENAME', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, NULL, NULL, 'UPGRADER_BACKUPFILES_FILENAME', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, NULL, NULL, 'BLOCKREINSURANCE_NBBLOCKS', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, NULL, NULL, 'HOMESLIDER_WIDTH', '779', '0000-00-00 00:00:00', '2014-06-21 01:14:53'),
(229, NULL, NULL, 'HOMESLIDER_HEIGHT', '300', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, NULL, NULL, 'HOMESLIDER_SPEED', '500', '0000-00-00 00:00:00', '2014-06-21 01:14:53'),
(231, NULL, NULL, 'HOMESLIDER_PAUSE', '3000', '0000-00-00 00:00:00', '2014-06-21 01:14:53'),
(232, NULL, NULL, 'HOMESLIDER_LOOP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, NULL, NULL, 'PS_BASE_DISTANCE_UNIT', 'm', '0000-00-00 00:00:00', '2014-08-26 04:11:12'),
(234, NULL, NULL, 'PS_SHOP_DOMAIN', 'www.dev.ecelebrity.eu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, NULL, NULL, 'PS_SHOP_DOMAIN_SSL', 'www.dev.ecelebrity.eu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, NULL, NULL, 'PS_SHOP_NAME', 'Ecelebrity.eu', '0000-00-00 00:00:00', '2014-06-21 01:13:44'),
(237, NULL, NULL, 'PS_SHOP_EMAIL', 'webmaster@1plus1.pl', '0000-00-00 00:00:00', '2014-06-21 01:14:02'),
(238, NULL, NULL, 'PS_MAIL_METHOD', '2', '0000-00-00 00:00:00', '2014-08-26 10:33:27'),
(239, NULL, NULL, 'PS_SHOP_ACTIVITY', '0', '0000-00-00 00:00:00', '2014-06-21 01:13:44'),
(240, NULL, NULL, 'PS_LOGO', 'logo.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, NULL, NULL, 'PS_FAVICON', 'favicon.ico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, NULL, NULL, 'PS_STORES_ICON', 'logo_stores.gif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, NULL, NULL, 'PS_ROOT_CATEGORY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, NULL, NULL, 'PS_HOME_CATEGORY', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, NULL, NULL, 'PS_CONFIGURATION_AGREMENT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, NULL, NULL, 'PS_MAIL_SERVER', 'smtp.gmail.com', '0000-00-00 00:00:00', '2014-08-26 10:33:27'),
(247, NULL, NULL, 'PS_MAIL_USER', 'celebritybycb@gmail.com', '0000-00-00 00:00:00', '2014-08-26 10:33:27'),
(248, NULL, NULL, 'PS_MAIL_PASSWD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, NULL, NULL, 'PS_MAIL_SMTP_ENCRYPTION', 'ssl', '0000-00-00 00:00:00', '2014-08-26 10:33:27'),
(250, NULL, NULL, 'PS_MAIL_SMTP_PORT', '465', '0000-00-00 00:00:00', '2014-08-26 10:33:28'),
(251, NULL, NULL, 'PS_MAIL_COLOR', '#db3484', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, NULL, NULL, 'NW_SALT', 'tLSp9wuXXGGrApHQ', '0000-00-00 00:00:00', '2014-08-01 00:32:28'),
(253, NULL, NULL, 'PS_PAYMENT_LOGO_CMS_ID', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, NULL, NULL, 'HOME_FEATURED_NBR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, NULL, NULL, 'SEK_MIN_OCCURENCES', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, NULL, NULL, 'SEK_FILTER_KW', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, NULL, NULL, 'PS_ALLOW_MOBILE_DEVICE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, NULL, NULL, 'PS_CUSTOMER_CREATION_EMAIL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, NULL, NULL, 'PS_SMARTY_CONSOLE_KEY', 'SMARTY_DEBUG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, NULL, NULL, 'PS_DASHBOARD_USE_PUSH', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, NULL, NULL, 'PS_ATTRIBUTE_ANCHOR_SEPARATOR', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, NULL, NULL, 'CONF_AVERAGE_PRODUCT_MARGIN', '40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, NULL, NULL, 'PS_DASHBOARD_SIMULATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, NULL, NULL, 'PS_QUICK_VIEW', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, NULL, NULL, 'PS_USE_HTMLPURIFIER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, NULL, NULL, 'PS_SC_TWITTER', '1', '2014-06-21 01:14:37', '2014-06-21 01:14:37'),
(267, NULL, NULL, 'PS_SC_FACEBOOK', '1', '2014-06-21 01:14:37', '2014-06-21 01:14:37'),
(268, NULL, NULL, 'PS_SC_GOOGLE', '1', '2014-06-21 01:14:37', '2014-06-21 01:14:37'),
(269, NULL, NULL, 'PS_SC_PINTEREST', '1', '2014-06-21 01:14:37', '2014-06-21 01:14:37'),
(270, NULL, NULL, 'BLOCKBANNER_IMG', NULL, '2014-06-21 01:14:38', '2014-06-21 01:14:38'),
(271, NULL, NULL, 'BLOCKBANNER_LINK', NULL, '2014-06-21 01:14:38', '2014-06-21 01:14:38'),
(272, NULL, NULL, 'BLOCKBANNER_DESC', NULL, '2014-06-21 01:14:38', '2014-06-21 01:14:38'),
(273, NULL, NULL, 'CONF_BANKWIRE_FIXED', '0.2', '2014-06-21 01:14:38', '2014-06-21 01:14:38'),
(274, NULL, NULL, 'CONF_BANKWIRE_VAR', '2', '2014-06-21 01:14:38', '2014-06-21 01:14:38'),
(275, NULL, NULL, 'CONF_BANKWIRE_FIXED_FOREIGN', '0.2', '2014-06-21 01:14:38', '2014-06-21 01:14:38'),
(276, NULL, NULL, 'CONF_BANKWIRE_VAR_FOREIGN', '2', '2014-06-21 01:14:38', '2014-06-21 01:14:38'),
(277, NULL, NULL, 'PS_BLOCK_CART_XSELL_LIMIT', '12', '2014-06-21 01:14:39', '2014-06-21 01:14:39'),
(278, NULL, NULL, 'BLOCKSOCIAL_YOUTUBE', '#', '2014-06-21 01:14:39', '2014-08-26 11:39:31'),
(279, NULL, NULL, 'BLOCKSOCIAL_GOOGLE_PLUS', NULL, '2014-06-21 01:14:39', '2014-08-26 11:39:31'),
(280, NULL, NULL, 'BLOCKSOCIAL_PINTEREST', NULL, '2014-06-21 01:14:39', '2014-08-26 11:39:31'),
(281, NULL, NULL, 'BLOCK_CATEG_ROOT_CATEGORY', '1', '2014-06-21 01:14:40', '2014-06-21 01:14:40'),
(282, NULL, NULL, 'blockfacebook_url', 'https://www.facebook.com/prestashop', '2014-06-21 01:14:40', '2014-06-21 01:14:40'),
(283, NULL, NULL, 'PS_LAYERED_HIDE_0_VALUES', '1', '2014-06-21 01:14:40', '2014-06-21 01:14:40'),
(284, NULL, NULL, 'PS_LAYERED_SHOW_QTIES', '0', '2014-06-21 01:14:41', '2014-08-28 13:22:44'),
(285, NULL, NULL, 'PS_LAYERED_FULL_TREE', '1', '2014-06-21 01:14:41', '2014-06-21 01:14:41'),
(286, NULL, NULL, 'PS_LAYERED_FILTER_PRICE_USETAX', '1', '2014-06-21 01:14:41', '2014-06-21 01:14:41'),
(287, NULL, NULL, 'PS_LAYERED_FILTER_CATEGORY_DEPTH', '0', '2014-06-21 01:14:41', '2014-08-28 13:22:44'),
(288, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_QTY', '0', '2014-06-21 01:14:41', '2014-06-21 01:14:41'),
(289, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_CDT', '0', '2014-06-21 01:14:41', '2014-06-21 01:14:41'),
(290, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_MNF', '0', '2014-06-21 01:14:41', '2014-06-21 01:14:41'),
(291, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_CAT', '0', '2014-06-21 01:14:41', '2014-06-21 01:14:41'),
(292, NULL, NULL, 'PS_LAYERED_INDEXED', '1', '2014-06-21 01:14:42', '2014-06-21 01:14:42'),
(293, NULL, NULL, 'FOOTER_PRICE-DROP', '0', '2014-06-21 01:14:44', '2014-08-26 11:38:17'),
(294, NULL, NULL, 'FOOTER_NEW-PRODUCTS', '0', '2014-06-21 01:14:44', '2014-08-26 11:38:18'),
(295, NULL, NULL, 'FOOTER_BEST-SALES', '0', '2014-06-21 01:14:44', '2014-08-26 11:38:18'),
(296, NULL, NULL, 'FOOTER_CONTACT', '0', '2014-06-21 01:14:44', '2014-08-26 11:38:18'),
(297, NULL, NULL, 'FOOTER_SITEMAP', '0', '2014-06-21 01:14:44', '2014-08-26 11:38:18'),
(298, NULL, NULL, 'BLOCKCMSINFO_NBBLOCKS', '2', '2014-06-21 01:14:45', '2014-06-21 01:14:45'),
(299, NULL, NULL, 'BLOCKSPECIALS_NB_CACHES', '20', '2014-06-21 01:14:47', '2014-06-21 01:14:47'),
(300, NULL, NULL, 'CONF_CHEQUE_FIXED', '0.2', '2014-06-21 01:14:50', '2014-06-21 01:14:50'),
(301, NULL, NULL, 'CONF_CHEQUE_VAR', '2', '2014-06-21 01:14:50', '2014-06-21 01:14:50'),
(302, NULL, NULL, 'CONF_CHEQUE_FIXED_FOREIGN', '0.2', '2014-06-21 01:14:50', '2014-06-21 01:14:50'),
(303, NULL, NULL, 'CONF_CHEQUE_VAR_FOREIGN', '2', '2014-06-21 01:14:50', '2014-06-21 01:14:50'),
(304, NULL, NULL, 'DASHACTIVITY_CART_ACTIVE', '30', '2014-06-21 01:14:50', '2014-06-21 01:14:50'),
(305, NULL, NULL, 'DASHACTIVITY_CART_ABANDONED_MIN', '24', '2014-06-21 01:14:50', '2014-06-21 01:14:50'),
(306, NULL, NULL, 'DASHACTIVITY_CART_ABANDONED_MAX', '48', '2014-06-21 01:14:50', '2014-06-21 01:14:50'),
(307, NULL, NULL, 'DASHACTIVITY_VISITOR_ONLINE', '30', '2014-06-21 01:14:50', '2014-06-21 01:14:50'),
(308, NULL, NULL, 'PS_DASHGOALS_CURRENT_YEAR', '2014', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(309, NULL, NULL, 'DASHGOALS_TRAFFIC_01_2014', '600', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(310, NULL, NULL, 'DASHGOALS_CONVERSION_01_2014', '2', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(311, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_01_2014', '80', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(312, NULL, NULL, 'DASHGOALS_TRAFFIC_02_2014', '600', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(313, NULL, NULL, 'DASHGOALS_CONVERSION_02_2014', '2', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(314, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_02_2014', '80', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(315, NULL, NULL, 'DASHGOALS_TRAFFIC_03_2014', '600', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(316, NULL, NULL, 'DASHGOALS_CONVERSION_03_2014', '2', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(317, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_03_2014', '80', '2014-06-21 01:14:51', '2014-06-21 01:14:51'),
(318, NULL, NULL, 'DASHGOALS_TRAFFIC_04_2014', '600', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(319, NULL, NULL, 'DASHGOALS_CONVERSION_04_2014', '2', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(320, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_04_2014', '80', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(321, NULL, NULL, 'DASHGOALS_TRAFFIC_05_2014', '600', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(322, NULL, NULL, 'DASHGOALS_CONVERSION_05_2014', '2', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(323, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_05_2014', '80', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(324, NULL, NULL, 'DASHGOALS_TRAFFIC_06_2014', '600', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(325, NULL, NULL, 'DASHGOALS_CONVERSION_06_2014', '2', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(326, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_06_2014', '80', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(327, NULL, NULL, 'DASHGOALS_TRAFFIC_07_2014', '600', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(328, NULL, NULL, 'DASHGOALS_CONVERSION_07_2014', '2', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(329, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_07_2014', '80', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(330, NULL, NULL, 'DASHGOALS_TRAFFIC_08_2014', '600', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(331, NULL, NULL, 'DASHGOALS_CONVERSION_08_2014', '2', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(332, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_08_2014', '80', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(333, NULL, NULL, 'DASHGOALS_TRAFFIC_09_2014', '600', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(334, NULL, NULL, 'DASHGOALS_CONVERSION_09_2014', '2', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(335, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_09_2014', '80', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(336, NULL, NULL, 'DASHGOALS_TRAFFIC_10_2014', '600', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(337, NULL, NULL, 'DASHGOALS_CONVERSION_10_2014', '2', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(338, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_10_2014', '80', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(339, NULL, NULL, 'DASHGOALS_TRAFFIC_11_2014', '600', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(340, NULL, NULL, 'DASHGOALS_CONVERSION_11_2014', '2', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(341, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_11_2014', '80', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(342, NULL, NULL, 'DASHGOALS_TRAFFIC_12_2014', '600', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(343, NULL, NULL, 'DASHGOALS_CONVERSION_12_2014', '2', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(344, NULL, NULL, 'DASHGOALS_AVG_CART_VALUE_12_2014', '80', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(345, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_LAST_ORDER', '10', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(346, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_BEST_SELLER', '10', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(347, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_MOST_VIEWED', '10', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(348, NULL, NULL, 'DASHPRODUCT_NBR_SHOW_TOP_SEARCH', '10', '2014-06-21 01:14:52', '2014-06-21 01:14:52'),
(349, NULL, NULL, 'PRODUCTPAYMENTLOGOS_IMG', 'payment-logo.png', '2014-06-21 01:14:54', '2014-06-21 01:14:54'),
(350, NULL, NULL, 'PRODUCTPAYMENTLOGOS_LINK', NULL, '2014-06-21 01:14:54', '2014-06-21 01:14:54'),
(351, NULL, NULL, 'PRODUCTPAYMENTLOGOS_TITLE', NULL, '2014-06-21 01:14:54', '2014-06-21 01:14:54'),
(352, NULL, NULL, 'PS_TC_THEMES', 'a:9:{i:0;s:6:"theme1";i:1;s:6:"theme2";i:2;s:6:"theme3";i:3;s:6:"theme4";i:4;s:6:"theme5";i:5;s:6:"theme6";i:6;s:6:"theme7";i:7;s:6:"theme8";i:8;s:6:"theme9";}', '2014-06-21 01:14:59', '2014-06-21 01:14:59'),
(353, NULL, NULL, 'PS_TC_FONTS', 'a:10:{s:5:"font1";s:9:"Open Sans";s:5:"font2";s:12:"Josefin Slab";s:5:"font3";s:4:"Arvo";s:5:"font4";s:4:"Lato";s:5:"font5";s:7:"Volkorn";s:5:"font6";s:13:"Abril Fatface";s:5:"font7";s:6:"Ubuntu";s:5:"font8";s:7:"PT Sans";s:5:"font9";s:15:"Old Standard TT";s:6:"font10";s:10:"Droid Sans";}', '2014-06-21 01:14:59', '2014-06-21 01:14:59'),
(354, NULL, NULL, 'PS_TC_THEME', NULL, '2014-06-21 01:14:59', '2014-06-21 01:14:59'),
(355, NULL, NULL, 'PS_TC_FONT', NULL, '2014-06-21 01:14:59', '2014-06-21 01:14:59'),
(356, NULL, NULL, 'PS_TC_ACTIVE', '1', '2014-06-21 01:14:59', '2014-06-21 01:14:59'),
(357, NULL, NULL, 'GF_INSTALL_CALC', '1', '2014-06-21 01:15:18', '2014-06-21 01:20:13'),
(358, NULL, NULL, 'GF_CURRENT_LEVEL', '1', '2014-06-21 01:15:18', '2014-06-21 01:15:18'),
(359, NULL, NULL, 'GF_CURRENT_LEVEL_PERCENT', '25', '2014-06-21 01:15:18', '2014-06-21 01:20:15'),
(360, NULL, NULL, 'GF_NOTIFICATION', '4', '2014-06-21 01:15:18', '2014-06-21 01:20:14'),
(361, NULL, NULL, 'PRODUCT_COMMENTS_MINIMAL_TIME', '30', '2014-06-21 01:15:19', '2014-06-21 01:15:19'),
(362, NULL, NULL, 'PRODUCT_COMMENTS_ALLOW_GUESTS', '0', '2014-06-21 01:15:19', '2014-06-21 01:15:19'),
(363, NULL, NULL, 'PRODUCT_COMMENTS_MODERATE', '1', '2014-06-21 01:15:19', '2014-06-21 01:15:19'),
(364, NULL, NULL, 'PRICE_DISPLAY_METHOD', '1', '2014-08-01 00:31:39', '2014-08-01 00:31:39'),
(365, NULL, NULL, 'PS_CSS_THEME_CACHE', '0', '2014-08-26 10:32:54', '2014-08-26 10:32:54'),
(366, NULL, NULL, 'PS_JS_THEME_CACHE', '0', '2014-08-26 10:32:54', '2014-08-26 10:32:54'),
(367, NULL, NULL, 'PS_HTML_THEME_COMPRESSION', '0', '2014-08-26 10:32:54', '2014-08-26 10:32:54'),
(368, NULL, NULL, 'PS_JS_HTML_THEME_COMPRESSION', '0', '2014-08-26 10:32:54', '2014-08-26 10:32:54'),
(369, NULL, NULL, 'PS_JS_DEFER', '0', '2014-08-26 10:32:54', '2014-08-26 10:32:54'),
(370, NULL, NULL, 'PS_HTACCESS_CACHE_CONTROL', '0', '2014-08-26 10:32:54', '2014-08-26 10:32:54'),
(371, NULL, NULL, 'PS_DISABLE_NON_NATIVE_MODULE', '0', '2014-08-26 10:32:54', '2014-08-26 10:32:54'),
(372, NULL, NULL, 'PS_DISABLE_OVERRIDES', '0', '2014-08-26 10:32:54', '2014-08-26 10:32:54'),
(373, NULL, NULL, 'PS_MAIL_EMAIL_MESSAGE', '2', '2014-08-26 10:33:27', '2014-08-26 10:33:27'),
(374, NULL, NULL, 'PS_MAIL_DOMAIN', 'piotr.krawczyk@1plus1.pl', '2014-08-26 10:33:27', '2014-08-26 10:33:27'),
(375, NULL, NULL, 'PS_WEBSERVICE', '1', '2014-08-26 10:33:57', '2014-08-26 10:33:57'),
(376, NULL, NULL, 'PS_WEBSERVICE_CGI_HOST', '1', '2014-08-26 10:33:57', '2014-08-26 10:33:57'),
(377, NULL, NULL, 'PS_DISALLOW_HISTORY_REORDERING', '0', '2014-08-26 10:37:44', '2014-08-26 10:37:44'),
(378, NULL, NULL, 'PS_SHIP_WHEN_AVAILABLE', '0', '2014-08-26 10:37:44', '2014-08-26 10:37:44'),
(379, NULL, NULL, 'PS_GIFT_WRAPPING_TAX_RULES_GROUP', '0', '2014-08-26 10:37:44', '2014-08-26 10:37:44'),
(380, NULL, NULL, 'PS_CCCJS_VERSION', '1', '2014-08-26 10:38:44', '2014-08-26 10:38:44'),
(381, NULL, NULL, 'PS_CCCCSS_VERSION', '1', '2014-08-26 10:38:44', '2014-08-26 10:38:44'),
(382, NULL, NULL, 'PS_PRODUCT_SHORT_DESC_LIMIT', '0', '2014-08-26 10:38:44', '2014-08-26 10:38:44'),
(383, NULL, NULL, 'PS_QTY_DISCOUNT_ON_COMBINATION', '0', '2014-08-26 10:38:45', '2014-08-26 10:38:45'),
(384, NULL, NULL, 'PS_FORCE_FRIENDLY_PRODUCT', '1', '2014-08-26 10:38:45', '2014-08-26 10:38:45'),
(385, NULL, NULL, 'PS_DISPLAY_DISCOUNT_PRICE', '0', '2014-08-26 10:38:45', '2014-08-26 10:38:45'),
(386, NULL, NULL, 'PS_FORCE_ASM_NEW_PRODUCT', '0', '2014-08-26 10:38:45', '2014-08-26 10:38:45'),
(387, NULL, NULL, 'PS_REGISTRATION_PROCESS_TYPE', '0', '2014-08-26 10:39:00', '2014-08-26 10:39:00'),
(388, NULL, NULL, 'PS_CART_FOLLOWING', '0', '2014-08-26 10:39:00', '2014-08-26 10:39:00'),
(389, NULL, NULL, 'PS_B2B_ENABLE', '1', '2014-08-26 10:39:00', '2014-08-26 10:39:00'),
(390, NULL, NULL, 'PS_IMAGE_GENERATION_METHOD', '0', '2014-08-26 10:41:21', '2014-08-26 10:41:21'),
(391, NULL, NULL, 'PS_SHOW_TYPE_MODULES_1', 'allModules', '2014-08-26 10:46:12', '2014-08-26 10:46:12'),
(392, NULL, NULL, 'PS_SHOW_INSTALLED_MODULES_1', 'installedUninstalled', '2014-08-26 10:46:12', '2014-08-26 10:50:53'),
(393, NULL, NULL, 'PS_SHOW_ENABLED_MODULES_1', 'enabledDisabled', '2014-08-26 10:46:12', '2014-08-26 10:50:56'),
(394, NULL, NULL, 'MA_MERCHANT_ORDER', '1', '2014-08-26 10:47:04', '2014-08-26 10:47:04'),
(395, NULL, NULL, 'MA_MERCHANT_OOS', '0', '2014-08-26 10:47:04', '2014-08-26 10:47:34'),
(396, NULL, NULL, 'MA_CUSTOMER_QTY', '1', '2014-08-26 10:47:04', '2014-08-26 10:47:04'),
(397, NULL, NULL, 'MA_MERCHANT_MAILS', 'webmaster@1plus1.pl', '2014-08-26 10:47:04', '2014-08-26 10:47:04'),
(398, NULL, NULL, 'MA_LAST_QTIES', '0', '2014-08-26 10:47:04', '2014-08-26 10:47:34'),
(399, NULL, NULL, 'MA_MERCHANT_COVERAGE', '0', '2014-08-26 10:47:04', '2014-08-26 10:47:04'),
(400, NULL, NULL, 'MA_PRODUCT_COVERAGE', '0', '2014-08-26 10:47:04', '2014-08-26 10:47:04'),
(401, NULL, NULL, 'PS_BLOCK_BESTSELLERS_TO_DISPLAY', '10', '2014-08-26 10:49:25', '2014-08-26 10:49:25'),
(402, NULL, NULL, 'PS_GRID_PRODUCT', '0', '2014-08-26 11:16:40', '2014-08-26 11:16:40'),
(403, NULL, NULL, 'PS_SET_DISPLAY_SUBCATEGORIES', '1', '2014-08-26 11:16:40', '2014-08-26 11:16:40'),
(404, NULL, NULL, 'FOOTER_CMS_TEXT_1', NULL, '2014-08-26 11:38:17', '2014-08-26 11:38:17'),
(405, NULL, NULL, 'FOOTER_CMS_TEXT_3', NULL, '2014-08-26 11:38:17', '2014-08-26 11:38:17'),
(406, NULL, NULL, 'BLOCKSOCIAL_VIMEO', NULL, '2014-08-26 11:39:31', '2014-08-26 11:39:31'),
(407, NULL, NULL, 'PS_ALLOW_ACCENTED_CHARS_URL', '0', '2014-08-28 10:00:48', '2014-08-28 10:00:48'),
(408, NULL, NULL, 'PS_HTACCESS_DISABLE_MULTIVIEWS', '0', '2014-08-28 10:00:48', '2014-08-28 10:00:48'),
(409, NULL, NULL, 'PS_HTACCESS_DISABLE_MODSEC', '0', '2014-08-28 10:00:48', '2014-08-28 10:00:48'),
(410, NULL, NULL, 'PS_ROUTE_product_rule', NULL, '2014-08-28 10:14:01', '2014-08-28 10:17:46'),
(411, NULL, NULL, 'PS_ROUTE_category_rule', NULL, '2014-08-28 10:14:01', '2014-08-28 10:17:46'),
(412, NULL, NULL, 'PS_ROUTE_layered_rule', NULL, '2014-08-28 10:14:01', '2014-08-28 10:17:46'),
(413, NULL, NULL, 'PS_ROUTE_supplier_rule', NULL, '2014-08-28 10:14:02', '2014-08-28 10:17:46'),
(414, NULL, NULL, 'PS_ROUTE_manufacturer_rule', NULL, '2014-08-28 10:14:02', '2014-08-28 10:17:46'),
(415, NULL, NULL, 'PS_ROUTE_cms_rule', NULL, '2014-08-28 10:14:02', '2014-08-28 10:17:46'),
(416, NULL, NULL, 'PS_ROUTE_cms_category_rule', NULL, '2014-08-28 10:14:02', '2014-08-28 10:17:46'),
(417, NULL, NULL, 'PS_ROUTE_module', 'module/{module}{/:controller}', '2014-08-28 10:14:02', '2014-08-28 10:14:02'),
(418, 1, 1, 'MOD_BLOCKTOPMENU_ITEMS', 'LNK1,CAT19,CAT22,CAT24,CAT37', '2014-08-28 13:06:30', '2014-08-28 13:06:30'),
(419, 1, 1, 'MOD_BLOCKTOPMENU_SEARCH', NULL, '2014-08-28 13:06:30', '2014-08-28 13:06:30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_configuration_kpi`
--

CREATE TABLE IF NOT EXISTS `prstshp_configuration_kpi` (
`id_configuration_kpi` int(10) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned DEFAULT NULL,
  `id_shop` int(11) unsigned DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Zrzut danych tabeli `prstshp_configuration_kpi`
--

INSERT INTO `prstshp_configuration_kpi` (`id_configuration_kpi`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, NULL, NULL, 'CONVERSION_RATE', '0%', '2014-08-26 04:19:22', '2014-08-26 04:19:22'),
(2, NULL, NULL, 'ABANDONED_CARTS', '0', '2014-08-26 04:19:22', '2014-08-26 04:19:22'),
(3, NULL, NULL, 'NETPROFIT_VISIT', '$0.00', '2014-08-26 04:19:22', '2014-08-26 04:19:22'),
(4, NULL, NULL, 'AVG_ORDER_VALUE', '$0.00', '2014-08-26 04:19:22', '2014-08-26 04:19:22'),
(5, NULL, NULL, 'CONVERSION_RATE_EXPIRE', '1409112000', '2014-08-26 04:19:22', '2014-08-26 04:19:22'),
(6, NULL, NULL, 'AVG_ORDER_VALUE_EXPIRE', '1409112000', '2014-08-26 04:19:22', '2014-08-26 04:19:22'),
(7, NULL, NULL, 'ABANDONED_CARTS_EXPIRE', '1409044762', '2014-08-26 04:19:22', '2014-08-26 04:19:22'),
(8, NULL, NULL, 'NETPROFIT_VISIT_EXPIRE', '1409112000', '2014-08-26 04:19:22', '2014-08-26 04:19:22'),
(9, NULL, NULL, 'ENABLED_LANGUAGES', '2', '2014-08-26 04:25:11', '2014-08-26 04:25:11'),
(10, NULL, NULL, 'MAIN_COUNTRY', NULL, '2014-08-26 04:25:11', '2014-08-26 04:25:11'),
(11, NULL, NULL, 'FRONTOFFICE_TRANSLATIONS', '0%', '2014-08-26 04:25:11', '2014-08-26 04:25:11'),
(12, NULL, NULL, 'ENABLED_LANGUAGES_EXPIRE', '1409042715', '2014-08-26 04:25:11', '2014-08-26 10:44:15'),
(13, NULL, NULL, 'FRONTOFFICE_TRANSLATIONS_EXPIRE', '1409042775', '2014-08-26 04:25:11', '2014-08-26 10:44:15'),
(14, NULL, NULL, 'MAIN_COUNTRY_EXPIRE', NULL, '2014-08-26 04:25:11', '2014-08-26 04:25:11'),
(15, NULL, NULL, 'UPDATE_MODULES', '0', '2014-08-26 10:46:02', '2014-08-26 10:49:53'),
(16, NULL, NULL, 'INSTALLED_MODULES', '69', '2014-08-26 10:46:03', '2014-08-26 11:10:27'),
(17, NULL, NULL, 'DISABLED_MODULES', '0', '2014-08-26 10:46:03', '2014-08-26 10:46:03'),
(18, NULL, NULL, 'INSTALLED_MODULES_EXPIRE', '1409228965', '2014-08-26 10:46:03', '2014-08-28 14:27:25'),
(19, NULL, NULL, 'DISABLED_MODULES_EXPIRE', '1409228965', '2014-08-26 10:46:03', '2014-08-28 14:27:25'),
(20, NULL, NULL, 'UPDATE_MODULES_EXPIRE', '1409228965', '2014-08-26 10:46:03', '2014-08-28 14:27:25'),
(21, NULL, NULL, 'PRODUCT_AVG_GROSS_MARGIN', '0%', '2014-08-26 10:55:03', '2014-08-28 09:35:05'),
(22, NULL, NULL, 'PERCENT_PRODUCT_STOCK', '63.6%', '2014-08-26 10:55:03', '2014-08-28 14:07:21'),
(23, NULL, NULL, '8020_SALES_CATALOG', '0% Twojego Katalogu', '2014-08-26 10:55:03', '2014-08-26 10:55:03'),
(24, NULL, NULL, 'DISABLED_PRODUCTS', '0', '2014-08-26 10:55:03', '2014-08-26 10:55:03'),
(25, NULL, NULL, 'PRODUCT_AVG_GROSS_MARGIN_EXPIRE', '1409232905', '2014-08-26 10:55:03', '2014-08-28 09:35:05'),
(26, NULL, NULL, '8020_SALES_CATALOG_EXPIRE', '1409254505', '2014-08-26 10:55:03', '2014-08-28 09:35:05'),
(27, NULL, NULL, 'PERCENT_PRODUCT_STOCK_EXPIRE', '1409242041', '2014-08-26 10:55:03', '2014-08-28 14:07:21'),
(28, NULL, NULL, 'DISABLED_PRODUCTS_EXPIRE', '1409234841', '2014-08-26 10:55:03', '2014-08-28 14:07:21'),
(29, NULL, NULL, 'DISABLED_CATEGORIES', '0', '2014-08-28 10:10:24', '2014-08-28 10:10:24'),
(30, NULL, NULL, 'EMPTY_CATEGORIES', '0', '2014-08-28 10:10:24', '2014-08-28 10:10:24'),
(31, NULL, NULL, 'TOP_CATEGORY', NULL, '2014-08-28 10:10:24', '2014-08-28 10:10:24'),
(32, NULL, NULL, 'DISABLED_CATEGORIES_EXPIRE', '1409220625', '2014-08-28 10:10:25', '2014-08-28 10:10:25'),
(33, NULL, NULL, 'EMPTY_CATEGORIES_EXPIRE', '1409220625', '2014-08-28 10:10:25', '2014-08-28 10:10:25'),
(34, NULL, NULL, 'TOP_CATEGORY_EXPIRE', NULL, '2014-08-28 10:10:25', '2014-08-28 10:10:25'),
(35, NULL, NULL, 'PRODUCTS_PER_CATEGORY', '3', '2014-08-28 10:10:25', '2014-08-28 10:10:25'),
(36, NULL, NULL, 'PRODUCTS_PER_CATEGORY_EXPIRE', '1409217025', '2014-08-28 10:10:25', '2014-08-28 10:10:25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_configuration_kpi_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_configuration_kpi_lang` (
  `id_configuration_kpi` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_configuration_kpi_lang`
--

INSERT INTO `prstshp_configuration_kpi_lang` (`id_configuration_kpi`, `id_lang`, `value`, `date_upd`) VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL),
(2, 1, NULL, NULL),
(2, 3, NULL, NULL),
(3, 1, NULL, NULL),
(3, 3, NULL, NULL),
(4, 1, NULL, NULL),
(4, 3, NULL, NULL),
(5, 1, NULL, NULL),
(5, 3, NULL, NULL),
(6, 1, NULL, NULL),
(6, 3, NULL, NULL),
(7, 1, NULL, NULL),
(7, 3, NULL, NULL),
(8, 1, NULL, NULL),
(8, 3, NULL, NULL),
(10, 1, 'No orders', '2014-08-26 04:25:11'),
(10, 3, 'Brak zamówień', '2014-08-26 10:44:15'),
(14, 1, '1409127911', '2014-08-26 04:25:11'),
(14, 3, '1409129055', '2014-08-26 10:44:15'),
(31, 3, 'KOZAKI PŁASKIE', '2014-08-28 10:10:25'),
(34, 3, '1409299825', '2014-08-28 10:10:25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_configuration_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_configuration_lang`
--

INSERT INTO `prstshp_configuration_lang` (`id_configuration`, `id_lang`, `value`, `date_upd`) VALUES
(42, 1, 'IN', NULL),
(44, 1, 'DE', NULL),
(51, 1, 'a|the|of|on|in|and|to', NULL),
(73, 1, '0', NULL),
(79, 1, 'Dear Customer,\r\n\r\nRegards,\r\nCustomer service', NULL),
(270, 1, 'sale70.png', '2014-06-21 01:14:38'),
(270, 2, 'sale70.png', '2014-08-26 03:59:52'),
(270, 3, 'sale70.png', '2014-08-26 04:20:06'),
(271, 1, '', '2014-06-21 01:14:38'),
(271, 2, '', '2014-08-26 03:59:52'),
(271, 3, '', '2014-08-26 04:20:06'),
(272, 1, '', '2014-06-21 01:14:38'),
(272, 2, '', '2014-08-26 03:59:52'),
(272, 3, '', '2014-08-26 04:20:06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_connections`
--

CREATE TABLE IF NOT EXISTS `prstshp_connections` (
`id_connections` int(10) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_connections_page`
--

CREATE TABLE IF NOT EXISTS `prstshp_connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_connections_source`
--

CREATE TABLE IF NOT EXISTS `prstshp_connections_source` (
`id_connections_source` int(10) unsigned NOT NULL,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_contact`
--

CREATE TABLE IF NOT EXISTS `prstshp_contact` (
`id_contact` int(10) unsigned NOT NULL,
  `email` varchar(128) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `prstshp_contact`
--

INSERT INTO `prstshp_contact` (`id_contact`, `email`, `customer_service`, `position`) VALUES
(1, 'webmaster@1plus1.pl', 1, 0),
(2, 'webmaster@1plus1.pl', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_contact_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_contact_lang`
--

INSERT INTO `prstshp_contact_lang` (`id_contact`, `id_lang`, `name`, `description`) VALUES
(1, 1, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 2, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 3, 'Webmaster', 'If a technical problem occurs on this website'),
(2, 1, 'Customer service', 'For any question about a product, an order'),
(2, 2, 'Customer service', 'For any question about a product, an order'),
(2, 3, 'Customer service', 'For any question about a product, an order');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_contact_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_contact_shop` (
  `id_contact` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_contact_shop`
--

INSERT INTO `prstshp_contact_shop` (`id_contact`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_country`
--

CREATE TABLE IF NOT EXISTS `prstshp_country` (
`id_country` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Zrzut danych tabeli `prstshp_country`
--

INSERT INTO `prstshp_country` (`id_country`, `id_zone`, `id_currency`, `iso_code`, `call_prefix`, `active`, `contains_states`, `need_identification_number`, `need_zip_code`, `zip_code_format`, `display_tax_label`) VALUES
(1, 1, 0, 'DE', 49, 0, 0, 0, 1, 'NNNNN', 1),
(2, 1, 0, 'AT', 43, 0, 0, 0, 1, 'NNNN', 1),
(3, 1, 0, 'BE', 32, 0, 0, 0, 1, 'NNNN', 1),
(4, 2, 0, 'CA', 1, 0, 1, 0, 1, 'LNL NLN', 0),
(5, 3, 0, 'CN', 86, 0, 0, 0, 1, 'NNNNNN', 1),
(6, 1, 0, 'ES', 34, 0, 0, 1, 1, 'NNNNN', 1),
(7, 1, 0, 'FI', 358, 0, 0, 0, 1, 'NNNNN', 1),
(8, 1, 0, 'FR', 33, 0, 0, 0, 1, 'NNNNN', 1),
(9, 1, 0, 'GR', 30, 0, 0, 0, 1, 'NNNNN', 1),
(10, 1, 0, 'IT', 39, 0, 1, 0, 1, 'NNNNN', 1),
(11, 3, 0, 'JP', 81, 0, 1, 0, 1, 'NNN-NNNN', 1),
(12, 1, 0, 'LU', 352, 0, 0, 0, 1, 'NNNN', 1),
(13, 1, 0, 'NL', 31, 0, 0, 0, 1, 'NNNN LL', 1),
(14, 1, 0, 'PL', 48, 1, 0, 0, 1, 'NN-NNN', 1),
(15, 1, 0, 'PT', 351, 0, 0, 0, 1, 'NNNN-NNN', 1),
(16, 1, 0, 'CZ', 420, 0, 0, 0, 1, 'NNN NN', 1),
(17, 1, 0, 'GB', 44, 0, 0, 0, 1, '', 1),
(18, 1, 0, 'SE', 46, 0, 0, 0, 1, 'NNN NN', 1),
(19, 7, 0, 'CH', 41, 0, 0, 0, 1, 'NNNN', 1),
(20, 1, 0, 'DK', 45, 0, 0, 0, 1, 'NNNN', 1),
(21, 2, 0, 'US', 1, 1, 1, 0, 1, 'NNNNN', 0),
(22, 3, 0, 'HK', 852, 0, 0, 0, 0, '', 1),
(23, 7, 0, 'NO', 47, 0, 0, 0, 1, 'NNNN', 1),
(24, 5, 0, 'AU', 61, 0, 0, 0, 1, 'NNNN', 1),
(25, 3, 0, 'SG', 65, 0, 0, 0, 1, 'NNNNNN', 1),
(26, 1, 0, 'IE', 353, 0, 0, 0, 0, '', 1),
(27, 5, 0, 'NZ', 64, 0, 0, 0, 1, 'NNNN', 1),
(28, 3, 0, 'KR', 82, 0, 0, 0, 1, 'NNN-NNN', 1),
(29, 3, 0, 'IL', 972, 0, 0, 0, 1, 'NNNNNNN', 1),
(30, 4, 0, 'ZA', 27, 0, 0, 0, 1, 'NNNN', 1),
(31, 4, 0, 'NG', 234, 0, 0, 0, 1, '', 1),
(32, 4, 0, 'CI', 225, 0, 0, 0, 1, '', 1),
(33, 4, 0, 'TG', 228, 0, 0, 0, 1, '', 1),
(34, 6, 0, 'BO', 591, 0, 0, 0, 1, '', 1),
(35, 4, 0, 'MU', 230, 0, 0, 0, 1, '', 1),
(36, 1, 0, 'RO', 40, 0, 0, 0, 1, 'NNNNNN', 1),
(37, 1, 0, 'SK', 421, 0, 0, 0, 1, 'NNN NN', 1),
(38, 4, 0, 'DZ', 213, 0, 0, 0, 1, 'NNNNN', 1),
(39, 2, 0, 'AS', 0, 0, 0, 0, 1, '', 1),
(40, 7, 0, 'AD', 376, 0, 0, 0, 1, 'CNNN', 1),
(41, 4, 0, 'AO', 244, 0, 0, 0, 0, '', 1),
(42, 8, 0, 'AI', 0, 0, 0, 0, 1, '', 1),
(43, 2, 0, 'AG', 0, 0, 0, 0, 1, '', 1),
(44, 6, 0, 'AR', 54, 0, 1, 0, 1, 'LNNNN', 1),
(45, 3, 0, 'AM', 374, 0, 0, 0, 1, 'NNNN', 1),
(46, 8, 0, 'AW', 297, 0, 0, 0, 1, '', 1),
(47, 3, 0, 'AZ', 994, 0, 0, 0, 1, 'CNNNN', 1),
(48, 2, 0, 'BS', 0, 0, 0, 0, 1, '', 1),
(49, 3, 0, 'BH', 973, 0, 0, 0, 1, '', 1),
(50, 3, 0, 'BD', 880, 0, 0, 0, 1, 'NNNN', 1),
(51, 2, 0, 'BB', 0, 0, 0, 0, 1, 'CNNNNN', 1),
(52, 7, 0, 'BY', 0, 0, 0, 0, 1, 'NNNNNN', 1),
(53, 8, 0, 'BZ', 501, 0, 0, 0, 0, '', 1),
(54, 4, 0, 'BJ', 229, 0, 0, 0, 0, '', 1),
(55, 2, 0, 'BM', 0, 0, 0, 0, 1, '', 1),
(56, 3, 0, 'BT', 975, 0, 0, 0, 1, '', 1),
(57, 4, 0, 'BW', 267, 0, 0, 0, 1, '', 1),
(58, 6, 0, 'BR', 55, 0, 0, 0, 1, 'NNNNN-NNN', 1),
(59, 3, 0, 'BN', 673, 0, 0, 0, 1, 'LLNNNN', 1),
(60, 4, 0, 'BF', 226, 0, 0, 0, 1, '', 1),
(61, 3, 0, 'MM', 95, 0, 0, 0, 1, '', 1),
(62, 4, 0, 'BI', 257, 0, 0, 0, 1, '', 1),
(63, 3, 0, 'KH', 855, 0, 0, 0, 1, 'NNNNN', 1),
(64, 4, 0, 'CM', 237, 0, 0, 0, 1, '', 1),
(65, 4, 0, 'CV', 238, 0, 0, 0, 1, 'NNNN', 1),
(66, 4, 0, 'CF', 236, 0, 0, 0, 1, '', 1),
(67, 4, 0, 'TD', 235, 0, 0, 0, 1, '', 1),
(68, 6, 0, 'CL', 56, 0, 0, 0, 1, 'NNN-NNNN', 1),
(69, 6, 0, 'CO', 57, 0, 0, 0, 1, 'NNNNNN', 1),
(70, 4, 0, 'KM', 269, 0, 0, 0, 1, '', 1),
(71, 4, 0, 'CD', 242, 0, 0, 0, 1, '', 1),
(72, 4, 0, 'CG', 243, 0, 0, 0, 1, '', 1),
(73, 8, 0, 'CR', 506, 0, 0, 0, 1, 'NNNNN', 1),
(74, 7, 0, 'HR', 385, 0, 0, 0, 1, 'NNNNN', 1),
(75, 8, 0, 'CU', 53, 0, 0, 0, 1, '', 1),
(76, 1, 0, 'CY', 357, 0, 0, 0, 1, 'NNNN', 1),
(77, 4, 0, 'DJ', 253, 0, 0, 0, 1, '', 1),
(78, 8, 0, 'DM', 0, 0, 0, 0, 1, '', 1),
(79, 8, 0, 'DO', 0, 0, 0, 0, 1, '', 1),
(80, 3, 0, 'TL', 670, 0, 0, 0, 1, '', 1),
(81, 6, 0, 'EC', 593, 0, 0, 0, 1, 'CNNNNNN', 1),
(82, 4, 0, 'EG', 20, 0, 0, 0, 0, '', 1),
(83, 8, 0, 'SV', 503, 0, 0, 0, 1, '', 1),
(84, 4, 0, 'GQ', 240, 0, 0, 0, 1, '', 1),
(85, 4, 0, 'ER', 291, 0, 0, 0, 1, '', 1),
(86, 1, 0, 'EE', 372, 0, 0, 0, 1, 'NNNNN', 1),
(87, 4, 0, 'ET', 251, 0, 0, 0, 1, '', 1),
(88, 8, 0, 'FK', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(89, 7, 0, 'FO', 298, 0, 0, 0, 1, '', 1),
(90, 5, 0, 'FJ', 679, 0, 0, 0, 1, '', 1),
(91, 4, 0, 'GA', 241, 0, 0, 0, 1, '', 1),
(92, 4, 0, 'GM', 220, 0, 0, 0, 1, '', 1),
(93, 3, 0, 'GE', 995, 0, 0, 0, 1, 'NNNN', 1),
(94, 4, 0, 'GH', 233, 0, 0, 0, 1, '', 1),
(95, 8, 0, 'GD', 0, 0, 0, 0, 1, '', 1),
(96, 7, 0, 'GL', 299, 0, 0, 0, 1, '', 1),
(97, 7, 0, 'GI', 350, 0, 0, 0, 1, '', 1),
(98, 8, 0, 'GP', 590, 0, 0, 0, 1, '', 1),
(99, 5, 0, 'GU', 0, 0, 0, 0, 1, '', 1),
(100, 8, 0, 'GT', 502, 0, 0, 0, 1, '', 1),
(101, 7, 0, 'GG', 0, 0, 0, 0, 1, 'LLN NLL', 1),
(102, 4, 0, 'GN', 224, 0, 0, 0, 1, '', 1),
(103, 4, 0, 'GW', 245, 0, 0, 0, 1, '', 1),
(104, 6, 0, 'GY', 592, 0, 0, 0, 1, '', 1),
(105, 8, 0, 'HT', 509, 0, 0, 0, 1, '', 1),
(106, 5, 0, 'HM', 0, 0, 0, 0, 1, '', 1),
(107, 7, 0, 'VA', 379, 0, 0, 0, 1, 'NNNNN', 1),
(108, 8, 0, 'HN', 504, 0, 0, 0, 1, '', 1),
(109, 7, 0, 'IS', 354, 0, 0, 0, 1, 'NNN', 1),
(110, 3, 0, 'IN', 91, 0, 0, 0, 1, 'NNN NNN', 1),
(111, 3, 0, 'ID', 62, 0, 1, 0, 1, 'NNNNN', 1),
(112, 3, 0, 'IR', 98, 0, 0, 0, 1, 'NNNNN-NNNNN', 1),
(113, 3, 0, 'IQ', 964, 0, 0, 0, 1, 'NNNNN', 1),
(114, 7, 0, 'IM', 0, 0, 0, 0, 1, 'CN NLL', 1),
(115, 8, 0, 'JM', 0, 0, 0, 0, 1, '', 1),
(116, 7, 0, 'JE', 0, 0, 0, 0, 1, 'CN NLL', 1),
(117, 3, 0, 'JO', 962, 0, 0, 0, 1, '', 1),
(118, 3, 0, 'KZ', 7, 0, 0, 0, 1, 'NNNNNN', 1),
(119, 4, 0, 'KE', 254, 0, 0, 0, 1, '', 1),
(120, 5, 0, 'KI', 686, 0, 0, 0, 1, '', 1),
(121, 3, 0, 'KP', 850, 0, 0, 0, 1, '', 1),
(122, 3, 0, 'KW', 965, 0, 0, 0, 1, '', 1),
(123, 3, 0, 'KG', 996, 0, 0, 0, 1, '', 1),
(124, 3, 0, 'LA', 856, 0, 0, 0, 1, '', 1),
(125, 1, 0, 'LV', 371, 0, 0, 0, 1, 'C-NNNN', 1),
(126, 3, 0, 'LB', 961, 0, 0, 0, 1, '', 1),
(127, 4, 0, 'LS', 266, 0, 0, 0, 1, '', 1),
(128, 4, 0, 'LR', 231, 0, 0, 0, 1, '', 1),
(129, 4, 0, 'LY', 218, 0, 0, 0, 1, '', 1),
(130, 1, 0, 'LI', 423, 0, 0, 0, 1, 'NNNN', 1),
(131, 1, 0, 'LT', 370, 0, 0, 0, 1, 'NNNNN', 1),
(132, 3, 0, 'MO', 853, 0, 0, 0, 0, '', 1),
(133, 7, 0, 'MK', 389, 0, 0, 0, 1, '', 1),
(134, 4, 0, 'MG', 261, 0, 0, 0, 1, '', 1),
(135, 4, 0, 'MW', 265, 0, 0, 0, 1, '', 1),
(136, 3, 0, 'MY', 60, 0, 0, 0, 1, 'NNNNN', 1),
(137, 3, 0, 'MV', 960, 0, 0, 0, 1, '', 1),
(138, 4, 0, 'ML', 223, 0, 0, 0, 1, '', 1),
(139, 1, 0, 'MT', 356, 0, 0, 0, 1, 'LLL NNNN', 1),
(140, 5, 0, 'MH', 692, 0, 0, 0, 1, '', 1),
(141, 8, 0, 'MQ', 596, 0, 0, 0, 1, '', 1),
(142, 4, 0, 'MR', 222, 0, 0, 0, 1, '', 1),
(143, 1, 0, 'HU', 36, 0, 0, 0, 1, 'NNNN', 1),
(144, 4, 0, 'YT', 262, 0, 0, 0, 1, '', 1),
(145, 2, 0, 'MX', 52, 0, 1, 1, 1, 'NNNNN', 1),
(146, 5, 0, 'FM', 691, 0, 0, 0, 1, '', 1),
(147, 7, 0, 'MD', 373, 0, 0, 0, 1, 'C-NNNN', 1),
(148, 7, 0, 'MC', 377, 0, 0, 0, 1, '980NN', 1),
(149, 3, 0, 'MN', 976, 0, 0, 0, 1, '', 1),
(150, 7, 0, 'ME', 382, 0, 0, 0, 1, 'NNNNN', 1),
(151, 8, 0, 'MS', 0, 0, 0, 0, 1, '', 1),
(152, 4, 0, 'MA', 212, 0, 0, 0, 1, 'NNNNN', 1),
(153, 4, 0, 'MZ', 258, 0, 0, 0, 1, '', 1),
(154, 4, 0, 'NA', 264, 0, 0, 0, 1, '', 1),
(155, 5, 0, 'NR', 674, 0, 0, 0, 1, '', 1),
(156, 3, 0, 'NP', 977, 0, 0, 0, 1, '', 1),
(157, 8, 0, 'AN', 599, 0, 0, 0, 1, '', 1),
(158, 5, 0, 'NC', 687, 0, 0, 0, 1, '', 1),
(159, 8, 0, 'NI', 505, 0, 0, 0, 1, 'NNNNNN', 1),
(160, 4, 0, 'NE', 227, 0, 0, 0, 1, '', 1),
(161, 5, 0, 'NU', 683, 0, 0, 0, 1, '', 1),
(162, 5, 0, 'NF', 0, 0, 0, 0, 1, '', 1),
(163, 5, 0, 'MP', 0, 0, 0, 0, 1, '', 1),
(164, 3, 0, 'OM', 968, 0, 0, 0, 1, '', 1),
(165, 3, 0, 'PK', 92, 0, 0, 0, 1, '', 1),
(166, 5, 0, 'PW', 680, 0, 0, 0, 1, '', 1),
(167, 3, 0, 'PS', 0, 0, 0, 0, 1, '', 1),
(168, 8, 0, 'PA', 507, 0, 0, 0, 1, 'NNNNNN', 1),
(169, 5, 0, 'PG', 675, 0, 0, 0, 1, '', 1),
(170, 6, 0, 'PY', 595, 0, 0, 0, 1, '', 1),
(171, 6, 0, 'PE', 51, 0, 0, 0, 1, '', 1),
(172, 3, 0, 'PH', 63, 0, 0, 0, 1, 'NNNN', 1),
(173, 5, 0, 'PN', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(174, 8, 0, 'PR', 0, 0, 0, 0, 1, 'NNNNN', 1),
(175, 3, 0, 'QA', 974, 0, 0, 0, 1, '', 1),
(176, 4, 0, 'RE', 262, 0, 0, 0, 1, '', 1),
(177, 7, 0, 'RU', 7, 0, 0, 0, 1, 'NNNNNN', 1),
(178, 4, 0, 'RW', 250, 0, 0, 0, 1, '', 1),
(179, 8, 0, 'BL', 0, 0, 0, 0, 1, '', 1),
(180, 8, 0, 'KN', 0, 0, 0, 0, 1, '', 1),
(181, 8, 0, 'LC', 0, 0, 0, 0, 1, '', 1),
(182, 8, 0, 'MF', 0, 0, 0, 0, 1, '', 1),
(183, 8, 0, 'PM', 508, 0, 0, 0, 1, '', 1),
(184, 8, 0, 'VC', 0, 0, 0, 0, 1, '', 1),
(185, 5, 0, 'WS', 685, 0, 0, 0, 1, '', 1),
(186, 7, 0, 'SM', 378, 0, 0, 0, 1, 'NNNNN', 1),
(187, 4, 0, 'ST', 239, 0, 0, 0, 1, '', 1),
(188, 3, 0, 'SA', 966, 0, 0, 0, 1, '', 1),
(189, 4, 0, 'SN', 221, 0, 0, 0, 1, '', 1),
(190, 7, 0, 'RS', 381, 0, 0, 0, 1, 'NNNNN', 1),
(191, 4, 0, 'SC', 248, 0, 0, 0, 1, '', 1),
(192, 4, 0, 'SL', 232, 0, 0, 0, 1, '', 1),
(193, 1, 0, 'SI', 386, 0, 0, 0, 1, 'C-NNNN', 1),
(194, 5, 0, 'SB', 677, 0, 0, 0, 1, '', 1),
(195, 4, 0, 'SO', 252, 0, 0, 0, 1, '', 1),
(196, 8, 0, 'GS', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(197, 3, 0, 'LK', 94, 0, 0, 0, 1, 'NNNNN', 1),
(198, 4, 0, 'SD', 249, 0, 0, 0, 1, '', 1),
(199, 8, 0, 'SR', 597, 0, 0, 0, 1, '', 1),
(200, 7, 0, 'SJ', 0, 0, 0, 0, 1, '', 1),
(201, 4, 0, 'SZ', 268, 0, 0, 0, 1, '', 1),
(202, 3, 0, 'SY', 963, 0, 0, 0, 1, '', 1),
(203, 3, 0, 'TW', 886, 0, 0, 0, 1, 'NNNNN', 1),
(204, 3, 0, 'TJ', 992, 0, 0, 0, 1, '', 1),
(205, 4, 0, 'TZ', 255, 0, 0, 0, 1, '', 1),
(206, 3, 0, 'TH', 66, 0, 0, 0, 1, 'NNNNN', 1),
(207, 5, 0, 'TK', 690, 0, 0, 0, 1, '', 1),
(208, 5, 0, 'TO', 676, 0, 0, 0, 1, '', 1),
(209, 6, 0, 'TT', 0, 0, 0, 0, 1, '', 1),
(210, 4, 0, 'TN', 216, 0, 0, 0, 1, '', 1),
(211, 7, 0, 'TR', 90, 0, 0, 0, 1, 'NNNNN', 1),
(212, 3, 0, 'TM', 993, 0, 0, 0, 1, '', 1),
(213, 8, 0, 'TC', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(214, 5, 0, 'TV', 688, 0, 0, 0, 1, '', 1),
(215, 4, 0, 'UG', 256, 0, 0, 0, 1, '', 1),
(216, 1, 0, 'UA', 380, 0, 0, 0, 1, 'NNNNN', 1),
(217, 3, 0, 'AE', 971, 0, 0, 0, 1, '', 1),
(218, 6, 0, 'UY', 598, 0, 0, 0, 1, '', 1),
(219, 3, 0, 'UZ', 998, 0, 0, 0, 1, '', 1),
(220, 5, 0, 'VU', 678, 0, 0, 0, 1, '', 1),
(221, 6, 0, 'VE', 58, 0, 0, 0, 1, '', 1),
(222, 3, 0, 'VN', 84, 0, 0, 0, 1, 'NNNNNN', 1),
(223, 2, 0, 'VG', 0, 0, 0, 0, 1, 'CNNNN', 1),
(224, 2, 0, 'VI', 0, 0, 0, 0, 1, '', 1),
(225, 5, 0, 'WF', 681, 0, 0, 0, 1, '', 1),
(226, 4, 0, 'EH', 0, 0, 0, 0, 1, '', 1),
(227, 3, 0, 'YE', 967, 0, 0, 0, 1, '', 1),
(228, 4, 0, 'ZM', 260, 0, 0, 0, 1, '', 1),
(229, 4, 0, 'ZW', 263, 0, 0, 0, 1, '', 1),
(230, 7, 0, 'AL', 355, 0, 0, 0, 1, 'NNNN', 1),
(231, 3, 0, 'AF', 93, 0, 0, 0, 0, '', 1),
(232, 5, 0, 'AQ', 0, 0, 0, 0, 1, '', 1),
(233, 1, 0, 'BA', 387, 0, 0, 0, 1, '', 1),
(234, 5, 0, 'BV', 0, 0, 0, 0, 1, '', 1),
(235, 5, 0, 'IO', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(236, 1, 0, 'BG', 359, 0, 0, 0, 1, 'NNNN', 1),
(237, 8, 0, 'KY', 0, 0, 0, 0, 1, '', 1),
(238, 3, 0, 'CX', 0, 0, 0, 0, 1, '', 1),
(239, 3, 0, 'CC', 0, 0, 0, 0, 1, '', 1),
(240, 5, 0, 'CK', 682, 0, 0, 0, 1, '', 1),
(241, 6, 0, 'GF', 594, 0, 0, 0, 1, '', 1),
(242, 5, 0, 'PF', 689, 0, 0, 0, 1, '', 1),
(243, 5, 0, 'TF', 0, 0, 0, 0, 1, '', 1),
(244, 7, 0, 'AX', 0, 0, 0, 0, 1, 'NNNNN', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_country_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_country_lang`
--

INSERT INTO `prstshp_country_lang` (`id_country`, `id_lang`, `name`) VALUES
(1, 1, 'Germany'),
(1, 2, 'Germany'),
(1, 3, 'Germany'),
(2, 1, 'Austria'),
(2, 2, 'Austria'),
(2, 3, 'Austria'),
(3, 1, 'Belgium'),
(3, 2, 'Belgium'),
(3, 3, 'Belgium'),
(4, 1, 'Canada'),
(4, 2, 'Canada'),
(4, 3, 'Canada'),
(5, 1, 'China'),
(5, 2, 'China'),
(5, 3, 'China'),
(6, 1, 'Spain'),
(6, 2, 'Spain'),
(6, 3, 'Spain'),
(7, 1, 'Finland'),
(7, 2, 'Finland'),
(7, 3, 'Finland'),
(8, 1, 'France'),
(8, 2, 'France'),
(8, 3, 'France'),
(9, 1, 'Greece'),
(9, 2, 'Greece'),
(9, 3, 'Greece'),
(10, 1, 'Italy'),
(10, 2, 'Italy'),
(10, 3, 'Italy'),
(11, 1, 'Japan'),
(11, 2, 'Japan'),
(11, 3, 'Japan'),
(12, 1, 'Luxemburg'),
(12, 2, 'Luxemburg'),
(12, 3, 'Luxemburg'),
(13, 1, 'Netherlands'),
(13, 2, 'Netherlands'),
(13, 3, 'Netherlands'),
(14, 1, 'Poland'),
(14, 2, 'Poland'),
(14, 3, 'Poland'),
(15, 1, 'Portugal'),
(15, 2, 'Portugal'),
(15, 3, 'Portugal'),
(16, 1, 'Czech Republic'),
(16, 2, 'Czech Republic'),
(16, 3, 'Czech Republic'),
(17, 1, 'United Kingdom'),
(17, 2, 'United Kingdom'),
(17, 3, 'United Kingdom'),
(18, 1, 'Sweden'),
(18, 2, 'Sweden'),
(18, 3, 'Sweden'),
(19, 1, 'Switzerland'),
(19, 2, 'Switzerland'),
(19, 3, 'Switzerland'),
(20, 1, 'Denmark'),
(20, 2, 'Denmark'),
(20, 3, 'Denmark'),
(21, 1, 'United States'),
(21, 2, 'United States'),
(21, 3, 'United States'),
(22, 1, 'HongKong'),
(22, 2, 'HongKong'),
(22, 3, 'HongKong'),
(23, 1, 'Norway'),
(23, 2, 'Norway'),
(23, 3, 'Norway'),
(24, 1, 'Australia'),
(24, 2, 'Australia'),
(24, 3, 'Australia'),
(25, 1, 'Singapore'),
(25, 2, 'Singapore'),
(25, 3, 'Singapore'),
(26, 1, 'Ireland'),
(26, 2, 'Ireland'),
(26, 3, 'Ireland'),
(27, 1, 'New Zealand'),
(27, 2, 'New Zealand'),
(27, 3, 'New Zealand'),
(28, 1, 'South Korea'),
(28, 2, 'South Korea'),
(28, 3, 'South Korea'),
(29, 1, 'Israel'),
(29, 2, 'Israel'),
(29, 3, 'Israel'),
(30, 1, 'South Africa'),
(30, 2, 'South Africa'),
(30, 3, 'South Africa'),
(31, 1, 'Nigeria'),
(31, 2, 'Nigeria'),
(31, 3, 'Nigeria'),
(32, 1, 'Ivory Coast'),
(32, 2, 'Ivory Coast'),
(32, 3, 'Ivory Coast'),
(33, 1, 'Togo'),
(33, 2, 'Togo'),
(33, 3, 'Togo'),
(34, 1, 'Bolivia'),
(34, 2, 'Bolivia'),
(34, 3, 'Bolivia'),
(35, 1, 'Mauritius'),
(35, 2, 'Mauritius'),
(35, 3, 'Mauritius'),
(36, 1, 'Romania'),
(36, 2, 'Romania'),
(36, 3, 'Romania'),
(37, 1, 'Slovakia'),
(37, 2, 'Slovakia'),
(37, 3, 'Slovakia'),
(38, 1, 'Algeria'),
(38, 2, 'Algeria'),
(38, 3, 'Algeria'),
(39, 1, 'American Samoa'),
(39, 2, 'American Samoa'),
(39, 3, 'American Samoa'),
(40, 1, 'Andorra'),
(40, 2, 'Andorra'),
(40, 3, 'Andorra'),
(41, 1, 'Angola'),
(41, 2, 'Angola'),
(41, 3, 'Angola'),
(42, 1, 'Anguilla'),
(42, 2, 'Anguilla'),
(42, 3, 'Anguilla'),
(43, 1, 'Antigua and Barbuda'),
(43, 2, 'Antigua and Barbuda'),
(43, 3, 'Antigua and Barbuda'),
(44, 1, 'Argentina'),
(44, 2, 'Argentina'),
(44, 3, 'Argentina'),
(45, 1, 'Armenia'),
(45, 2, 'Armenia'),
(45, 3, 'Armenia'),
(46, 1, 'Aruba'),
(46, 2, 'Aruba'),
(46, 3, 'Aruba'),
(47, 1, 'Azerbaijan'),
(47, 2, 'Azerbaijan'),
(47, 3, 'Azerbaijan'),
(48, 1, 'Bahamas'),
(48, 2, 'Bahamas'),
(48, 3, 'Bahamas'),
(49, 1, 'Bahrain'),
(49, 2, 'Bahrain'),
(49, 3, 'Bahrain'),
(50, 1, 'Bangladesh'),
(50, 2, 'Bangladesh'),
(50, 3, 'Bangladesh'),
(51, 1, 'Barbados'),
(51, 2, 'Barbados'),
(51, 3, 'Barbados'),
(52, 1, 'Belarus'),
(52, 2, 'Belarus'),
(52, 3, 'Belarus'),
(53, 1, 'Belize'),
(53, 2, 'Belize'),
(53, 3, 'Belize'),
(54, 1, 'Benin'),
(54, 2, 'Benin'),
(54, 3, 'Benin'),
(55, 1, 'Bermuda'),
(55, 2, 'Bermuda'),
(55, 3, 'Bermuda'),
(56, 1, 'Bhutan'),
(56, 2, 'Bhutan'),
(56, 3, 'Bhutan'),
(57, 1, 'Botswana'),
(57, 2, 'Botswana'),
(57, 3, 'Botswana'),
(58, 1, 'Brazil'),
(58, 2, 'Brazil'),
(58, 3, 'Brazil'),
(59, 1, 'Brunei'),
(59, 2, 'Brunei'),
(59, 3, 'Brunei'),
(60, 1, 'Burkina Faso'),
(60, 2, 'Burkina Faso'),
(60, 3, 'Burkina Faso'),
(61, 1, 'Burma (Myanmar)'),
(61, 2, 'Burma (Myanmar)'),
(61, 3, 'Burma (Myanmar)'),
(62, 1, 'Burundi'),
(62, 2, 'Burundi'),
(62, 3, 'Burundi'),
(63, 1, 'Cambodia'),
(63, 2, 'Cambodia'),
(63, 3, 'Cambodia'),
(64, 1, 'Cameroon'),
(64, 2, 'Cameroon'),
(64, 3, 'Cameroon'),
(65, 1, 'Cape Verde'),
(65, 2, 'Cape Verde'),
(65, 3, 'Cape Verde'),
(66, 1, 'Central African Republic'),
(66, 2, 'Central African Republic'),
(66, 3, 'Central African Republic'),
(67, 1, 'Chad'),
(67, 2, 'Chad'),
(67, 3, 'Chad'),
(68, 1, 'Chile'),
(68, 2, 'Chile'),
(68, 3, 'Chile'),
(69, 1, 'Colombia'),
(69, 2, 'Colombia'),
(69, 3, 'Colombia'),
(70, 1, 'Comoros'),
(70, 2, 'Comoros'),
(70, 3, 'Comoros'),
(71, 1, 'Congo, Dem. Republic'),
(71, 2, 'Congo, Dem. Republic'),
(71, 3, 'Congo, Dem. Republic'),
(72, 1, 'Congo, Republic'),
(72, 2, 'Congo, Republic'),
(72, 3, 'Congo, Republic'),
(73, 1, 'Costa Rica'),
(73, 2, 'Costa Rica'),
(73, 3, 'Costa Rica'),
(74, 1, 'Croatia'),
(74, 2, 'Croatia'),
(74, 3, 'Croatia'),
(75, 1, 'Cuba'),
(75, 2, 'Cuba'),
(75, 3, 'Cuba'),
(76, 1, 'Cyprus'),
(76, 2, 'Cyprus'),
(76, 3, 'Cyprus'),
(77, 1, 'Djibouti'),
(77, 2, 'Djibouti'),
(77, 3, 'Djibouti'),
(78, 1, 'Dominica'),
(78, 2, 'Dominica'),
(78, 3, 'Dominica'),
(79, 1, 'Dominican Republic'),
(79, 2, 'Dominican Republic'),
(79, 3, 'Dominican Republic'),
(80, 1, 'East Timor'),
(80, 2, 'East Timor'),
(80, 3, 'East Timor'),
(81, 1, 'Ecuador'),
(81, 2, 'Ecuador'),
(81, 3, 'Ecuador'),
(82, 1, 'Egypt'),
(82, 2, 'Egypt'),
(82, 3, 'Egypt'),
(83, 1, 'El Salvador'),
(83, 2, 'El Salvador'),
(83, 3, 'El Salvador'),
(84, 1, 'Equatorial Guinea'),
(84, 2, 'Equatorial Guinea'),
(84, 3, 'Equatorial Guinea'),
(85, 1, 'Eritrea'),
(85, 2, 'Eritrea'),
(85, 3, 'Eritrea'),
(86, 1, 'Estonia'),
(86, 2, 'Estonia'),
(86, 3, 'Estonia'),
(87, 1, 'Ethiopia'),
(87, 2, 'Ethiopia'),
(87, 3, 'Ethiopia'),
(88, 1, 'Falkland Islands'),
(88, 2, 'Falkland Islands'),
(88, 3, 'Falkland Islands'),
(89, 1, 'Faroe Islands'),
(89, 2, 'Faroe Islands'),
(89, 3, 'Faroe Islands'),
(90, 1, 'Fiji'),
(90, 2, 'Fiji'),
(90, 3, 'Fiji'),
(91, 1, 'Gabon'),
(91, 2, 'Gabon'),
(91, 3, 'Gabon'),
(92, 1, 'Gambia'),
(92, 2, 'Gambia'),
(92, 3, 'Gambia'),
(93, 1, 'Georgia'),
(93, 2, 'Georgia'),
(93, 3, 'Georgia'),
(94, 1, 'Ghana'),
(94, 2, 'Ghana'),
(94, 3, 'Ghana'),
(95, 1, 'Grenada'),
(95, 2, 'Grenada'),
(95, 3, 'Grenada'),
(96, 1, 'Greenland'),
(96, 2, 'Greenland'),
(96, 3, 'Greenland'),
(97, 1, 'Gibraltar'),
(97, 2, 'Gibraltar'),
(97, 3, 'Gibraltar'),
(98, 1, 'Guadeloupe'),
(98, 2, 'Guadeloupe'),
(98, 3, 'Guadeloupe'),
(99, 1, 'Guam'),
(99, 2, 'Guam'),
(99, 3, 'Guam'),
(100, 1, 'Guatemala'),
(100, 2, 'Guatemala'),
(100, 3, 'Guatemala'),
(101, 1, 'Guernsey'),
(101, 2, 'Guernsey'),
(101, 3, 'Guernsey'),
(102, 1, 'Guinea'),
(102, 2, 'Guinea'),
(102, 3, 'Guinea'),
(103, 1, 'Guinea-Bissau'),
(103, 2, 'Guinea-Bissau'),
(103, 3, 'Guinea-Bissau'),
(104, 1, 'Guyana'),
(104, 2, 'Guyana'),
(104, 3, 'Guyana'),
(105, 1, 'Haiti'),
(105, 2, 'Haiti'),
(105, 3, 'Haiti'),
(106, 1, 'Heard Island and McDonald Islands'),
(106, 2, 'Heard Island and McDonald Islands'),
(106, 3, 'Heard Island and McDonald Islands'),
(107, 1, 'Vatican City State'),
(107, 2, 'Vatican City State'),
(107, 3, 'Vatican City State'),
(108, 1, 'Honduras'),
(108, 2, 'Honduras'),
(108, 3, 'Honduras'),
(109, 1, 'Iceland'),
(109, 2, 'Iceland'),
(109, 3, 'Iceland'),
(110, 1, 'India'),
(110, 2, 'India'),
(110, 3, 'India'),
(111, 1, 'Indonesia'),
(111, 2, 'Indonesia'),
(111, 3, 'Indonesia'),
(112, 1, 'Iran'),
(112, 2, 'Iran'),
(112, 3, 'Iran'),
(113, 1, 'Iraq'),
(113, 2, 'Iraq'),
(113, 3, 'Iraq'),
(114, 1, 'Man Island'),
(114, 2, 'Man Island'),
(114, 3, 'Man Island'),
(115, 1, 'Jamaica'),
(115, 2, 'Jamaica'),
(115, 3, 'Jamaica'),
(116, 1, 'Jersey'),
(116, 2, 'Jersey'),
(116, 3, 'Jersey'),
(117, 1, 'Jordan'),
(117, 2, 'Jordan'),
(117, 3, 'Jordan'),
(118, 1, 'Kazakhstan'),
(118, 2, 'Kazakhstan'),
(118, 3, 'Kazakhstan'),
(119, 1, 'Kenya'),
(119, 2, 'Kenya'),
(119, 3, 'Kenya'),
(120, 1, 'Kiribati'),
(120, 2, 'Kiribati'),
(120, 3, 'Kiribati'),
(121, 1, 'Korea, Dem. Republic of'),
(121, 2, 'Korea, Dem. Republic of'),
(121, 3, 'Korea, Dem. Republic of'),
(122, 1, 'Kuwait'),
(122, 2, 'Kuwait'),
(122, 3, 'Kuwait'),
(123, 1, 'Kyrgyzstan'),
(123, 2, 'Kyrgyzstan'),
(123, 3, 'Kyrgyzstan'),
(124, 1, 'Laos'),
(124, 2, 'Laos'),
(124, 3, 'Laos'),
(125, 1, 'Latvia'),
(125, 2, 'Latvia'),
(125, 3, 'Latvia'),
(126, 1, 'Lebanon'),
(126, 2, 'Lebanon'),
(126, 3, 'Lebanon'),
(127, 1, 'Lesotho'),
(127, 2, 'Lesotho'),
(127, 3, 'Lesotho'),
(128, 1, 'Liberia'),
(128, 2, 'Liberia'),
(128, 3, 'Liberia'),
(129, 1, 'Libya'),
(129, 2, 'Libya'),
(129, 3, 'Libya'),
(130, 1, 'Liechtenstein'),
(130, 2, 'Liechtenstein'),
(130, 3, 'Liechtenstein'),
(131, 1, 'Lithuania'),
(131, 2, 'Lithuania'),
(131, 3, 'Lithuania'),
(132, 1, 'Macau'),
(132, 2, 'Macau'),
(132, 3, 'Macau'),
(133, 1, 'Macedonia'),
(133, 2, 'Macedonia'),
(133, 3, 'Macedonia'),
(134, 1, 'Madagascar'),
(134, 2, 'Madagascar'),
(134, 3, 'Madagascar'),
(135, 1, 'Malawi'),
(135, 2, 'Malawi'),
(135, 3, 'Malawi'),
(136, 1, 'Malaysia'),
(136, 2, 'Malaysia'),
(136, 3, 'Malaysia'),
(137, 1, 'Maldives'),
(137, 2, 'Maldives'),
(137, 3, 'Maldives'),
(138, 1, 'Mali'),
(138, 2, 'Mali'),
(138, 3, 'Mali'),
(139, 1, 'Malta'),
(139, 2, 'Malta'),
(139, 3, 'Malta'),
(140, 1, 'Marshall Islands'),
(140, 2, 'Marshall Islands'),
(140, 3, 'Marshall Islands'),
(141, 1, 'Martinique'),
(141, 2, 'Martinique'),
(141, 3, 'Martinique'),
(142, 1, 'Mauritania'),
(142, 2, 'Mauritania'),
(142, 3, 'Mauritania'),
(143, 1, 'Hungary'),
(143, 2, 'Hungary'),
(143, 3, 'Hungary'),
(144, 1, 'Mayotte'),
(144, 2, 'Mayotte'),
(144, 3, 'Mayotte'),
(145, 1, 'Mexico'),
(145, 2, 'Mexico'),
(145, 3, 'Mexico'),
(146, 1, 'Micronesia'),
(146, 2, 'Micronesia'),
(146, 3, 'Micronesia'),
(147, 1, 'Moldova'),
(147, 2, 'Moldova'),
(147, 3, 'Moldova'),
(148, 1, 'Monaco'),
(148, 2, 'Monaco'),
(148, 3, 'Monaco'),
(149, 1, 'Mongolia'),
(149, 2, 'Mongolia'),
(149, 3, 'Mongolia'),
(150, 1, 'Montenegro'),
(150, 2, 'Montenegro'),
(150, 3, 'Montenegro'),
(151, 1, 'Montserrat'),
(151, 2, 'Montserrat'),
(151, 3, 'Montserrat'),
(152, 1, 'Morocco'),
(152, 2, 'Morocco'),
(152, 3, 'Morocco'),
(153, 1, 'Mozambique'),
(153, 2, 'Mozambique'),
(153, 3, 'Mozambique'),
(154, 1, 'Namibia'),
(154, 2, 'Namibia'),
(154, 3, 'Namibia'),
(155, 1, 'Nauru'),
(155, 2, 'Nauru'),
(155, 3, 'Nauru'),
(156, 1, 'Nepal'),
(156, 2, 'Nepal'),
(156, 3, 'Nepal'),
(157, 1, 'Netherlands Antilles'),
(157, 2, 'Netherlands Antilles'),
(157, 3, 'Netherlands Antilles'),
(158, 1, 'New Caledonia'),
(158, 2, 'New Caledonia'),
(158, 3, 'New Caledonia'),
(159, 1, 'Nicaragua'),
(159, 2, 'Nicaragua'),
(159, 3, 'Nicaragua'),
(160, 1, 'Niger'),
(160, 2, 'Niger'),
(160, 3, 'Niger'),
(161, 1, 'Niue'),
(161, 2, 'Niue'),
(161, 3, 'Niue'),
(162, 1, 'Norfolk Island'),
(162, 2, 'Norfolk Island'),
(162, 3, 'Norfolk Island'),
(163, 1, 'Northern Mariana Islands'),
(163, 2, 'Northern Mariana Islands'),
(163, 3, 'Northern Mariana Islands'),
(164, 1, 'Oman'),
(164, 2, 'Oman'),
(164, 3, 'Oman'),
(165, 1, 'Pakistan'),
(165, 2, 'Pakistan'),
(165, 3, 'Pakistan'),
(166, 1, 'Palau'),
(166, 2, 'Palau'),
(166, 3, 'Palau'),
(167, 1, 'Palestinian Territories'),
(167, 2, 'Palestinian Territories'),
(167, 3, 'Palestinian Territories'),
(168, 1, 'Panama'),
(168, 2, 'Panama'),
(168, 3, 'Panama'),
(169, 1, 'Papua New Guinea'),
(169, 2, 'Papua New Guinea'),
(169, 3, 'Papua New Guinea'),
(170, 1, 'Paraguay'),
(170, 2, 'Paraguay'),
(170, 3, 'Paraguay'),
(171, 1, 'Peru'),
(171, 2, 'Peru'),
(171, 3, 'Peru'),
(172, 1, 'Philippines'),
(172, 2, 'Philippines'),
(172, 3, 'Philippines'),
(173, 1, 'Pitcairn'),
(173, 2, 'Pitcairn'),
(173, 3, 'Pitcairn'),
(174, 1, 'Puerto Rico'),
(174, 2, 'Puerto Rico'),
(174, 3, 'Puerto Rico'),
(175, 1, 'Qatar'),
(175, 2, 'Qatar'),
(175, 3, 'Qatar'),
(176, 1, 'Reunion Island'),
(176, 2, 'Reunion Island'),
(176, 3, 'Reunion Island'),
(177, 1, 'Russian Federation'),
(177, 2, 'Russian Federation'),
(177, 3, 'Russian Federation'),
(178, 1, 'Rwanda'),
(178, 2, 'Rwanda'),
(178, 3, 'Rwanda'),
(179, 1, 'Saint Barthelemy'),
(179, 2, 'Saint Barthelemy'),
(179, 3, 'Saint Barthelemy'),
(180, 1, 'Saint Kitts and Nevis'),
(180, 2, 'Saint Kitts and Nevis'),
(180, 3, 'Saint Kitts and Nevis'),
(181, 1, 'Saint Lucia'),
(181, 2, 'Saint Lucia'),
(181, 3, 'Saint Lucia'),
(182, 1, 'Saint Martin'),
(182, 2, 'Saint Martin'),
(182, 3, 'Saint Martin'),
(183, 1, 'Saint Pierre and Miquelon'),
(183, 2, 'Saint Pierre and Miquelon'),
(183, 3, 'Saint Pierre and Miquelon'),
(184, 1, 'Saint Vincent and the Grenadines'),
(184, 2, 'Saint Vincent and the Grenadines'),
(184, 3, 'Saint Vincent and the Grenadines'),
(185, 1, 'Samoa'),
(185, 2, 'Samoa'),
(185, 3, 'Samoa'),
(186, 1, 'San Marino'),
(186, 2, 'San Marino'),
(186, 3, 'San Marino'),
(187, 1, 'São Tomé and Príncipe'),
(187, 2, 'São Tomé and Príncipe'),
(187, 3, 'São Tomé and Príncipe'),
(188, 1, 'Saudi Arabia'),
(188, 2, 'Saudi Arabia'),
(188, 3, 'Saudi Arabia'),
(189, 1, 'Senegal'),
(189, 2, 'Senegal'),
(189, 3, 'Senegal'),
(190, 1, 'Serbia'),
(190, 2, 'Serbia'),
(190, 3, 'Serbia'),
(191, 1, 'Seychelles'),
(191, 2, 'Seychelles'),
(191, 3, 'Seychelles'),
(192, 1, 'Sierra Leone'),
(192, 2, 'Sierra Leone'),
(192, 3, 'Sierra Leone'),
(193, 1, 'Slovenia'),
(193, 2, 'Slovenia'),
(193, 3, 'Slovenia'),
(194, 1, 'Solomon Islands'),
(194, 2, 'Solomon Islands'),
(194, 3, 'Solomon Islands'),
(195, 1, 'Somalia'),
(195, 2, 'Somalia'),
(195, 3, 'Somalia'),
(196, 1, 'South Georgia and the South Sandwich Islands'),
(196, 2, 'South Georgia and the South Sandwich Islands'),
(196, 3, 'South Georgia and the South Sandwich Islands'),
(197, 1, 'Sri Lanka'),
(197, 2, 'Sri Lanka'),
(197, 3, 'Sri Lanka'),
(198, 1, 'Sudan'),
(198, 2, 'Sudan'),
(198, 3, 'Sudan'),
(199, 1, 'Suriname'),
(199, 2, 'Suriname'),
(199, 3, 'Suriname'),
(200, 1, 'Svalbard and Jan Mayen'),
(200, 2, 'Svalbard and Jan Mayen'),
(200, 3, 'Svalbard and Jan Mayen'),
(201, 1, 'Swaziland'),
(201, 2, 'Swaziland'),
(201, 3, 'Swaziland'),
(202, 1, 'Syria'),
(202, 2, 'Syria'),
(202, 3, 'Syria'),
(203, 1, 'Taiwan'),
(203, 2, 'Taiwan'),
(203, 3, 'Taiwan'),
(204, 1, 'Tajikistan'),
(204, 2, 'Tajikistan'),
(204, 3, 'Tajikistan'),
(205, 1, 'Tanzania'),
(205, 2, 'Tanzania'),
(205, 3, 'Tanzania'),
(206, 1, 'Thailand'),
(206, 2, 'Thailand'),
(206, 3, 'Thailand'),
(207, 1, 'Tokelau'),
(207, 2, 'Tokelau'),
(207, 3, 'Tokelau'),
(208, 1, 'Tonga'),
(208, 2, 'Tonga'),
(208, 3, 'Tonga'),
(209, 1, 'Trinidad and Tobago'),
(209, 2, 'Trinidad and Tobago'),
(209, 3, 'Trinidad and Tobago'),
(210, 1, 'Tunisia'),
(210, 2, 'Tunisia'),
(210, 3, 'Tunisia'),
(211, 1, 'Turkey'),
(211, 2, 'Turkey'),
(211, 3, 'Turkey'),
(212, 1, 'Turkmenistan'),
(212, 2, 'Turkmenistan'),
(212, 3, 'Turkmenistan'),
(213, 1, 'Turks and Caicos Islands'),
(213, 2, 'Turks and Caicos Islands'),
(213, 3, 'Turks and Caicos Islands'),
(214, 1, 'Tuvalu'),
(214, 2, 'Tuvalu'),
(214, 3, 'Tuvalu'),
(215, 1, 'Uganda'),
(215, 2, 'Uganda'),
(215, 3, 'Uganda'),
(216, 1, 'Ukraine'),
(216, 2, 'Ukraine'),
(216, 3, 'Ukraine'),
(217, 1, 'United Arab Emirates'),
(217, 2, 'United Arab Emirates'),
(217, 3, 'United Arab Emirates'),
(218, 1, 'Uruguay'),
(218, 2, 'Uruguay'),
(218, 3, 'Uruguay'),
(219, 1, 'Uzbekistan'),
(219, 2, 'Uzbekistan'),
(219, 3, 'Uzbekistan'),
(220, 1, 'Vanuatu'),
(220, 2, 'Vanuatu'),
(220, 3, 'Vanuatu'),
(221, 1, 'Venezuela'),
(221, 2, 'Venezuela'),
(221, 3, 'Venezuela'),
(222, 1, 'Vietnam'),
(222, 2, 'Vietnam'),
(222, 3, 'Vietnam'),
(223, 1, 'Virgin Islands (British)'),
(223, 2, 'Virgin Islands (British)'),
(223, 3, 'Virgin Islands (British)'),
(224, 1, 'Virgin Islands (U.S.)'),
(224, 2, 'Virgin Islands (U.S.)'),
(224, 3, 'Virgin Islands (U.S.)'),
(225, 1, 'Wallis and Futuna'),
(225, 2, 'Wallis and Futuna'),
(225, 3, 'Wallis and Futuna'),
(226, 1, 'Western Sahara'),
(226, 2, 'Western Sahara'),
(226, 3, 'Western Sahara'),
(227, 1, 'Yemen'),
(227, 2, 'Yemen'),
(227, 3, 'Yemen'),
(228, 1, 'Zambia'),
(228, 2, 'Zambia'),
(228, 3, 'Zambia'),
(229, 1, 'Zimbabwe'),
(229, 2, 'Zimbabwe'),
(229, 3, 'Zimbabwe'),
(230, 1, 'Albania'),
(230, 2, 'Albania'),
(230, 3, 'Albania'),
(231, 1, 'Afghanistan'),
(231, 2, 'Afghanistan'),
(231, 3, 'Afghanistan'),
(232, 1, 'Antarctica'),
(232, 2, 'Antarctica'),
(232, 3, 'Antarctica'),
(233, 1, 'Bosnia and Herzegovina'),
(233, 2, 'Bosnia and Herzegovina'),
(233, 3, 'Bosnia and Herzegovina'),
(234, 1, 'Bouvet Island'),
(234, 2, 'Bouvet Island'),
(234, 3, 'Bouvet Island'),
(235, 1, 'British Indian Ocean Territory'),
(235, 2, 'British Indian Ocean Territory'),
(235, 3, 'British Indian Ocean Territory'),
(236, 1, 'Bulgaria'),
(236, 2, 'Bulgaria'),
(236, 3, 'Bulgaria'),
(237, 1, 'Cayman Islands'),
(237, 2, 'Cayman Islands'),
(237, 3, 'Cayman Islands'),
(238, 1, 'Christmas Island'),
(238, 2, 'Christmas Island'),
(238, 3, 'Christmas Island'),
(239, 1, 'Cocos (Keeling) Islands'),
(239, 2, 'Cocos (Keeling) Islands'),
(239, 3, 'Cocos (Keeling) Islands'),
(240, 1, 'Cook Islands'),
(240, 2, 'Cook Islands'),
(240, 3, 'Cook Islands'),
(241, 1, 'French Guiana'),
(241, 2, 'French Guiana'),
(241, 3, 'French Guiana'),
(242, 1, 'French Polynesia'),
(242, 2, 'French Polynesia'),
(242, 3, 'French Polynesia'),
(243, 1, 'French Southern Territories'),
(243, 2, 'French Southern Territories'),
(243, 3, 'French Southern Territories'),
(244, 1, 'Åland Islands'),
(244, 2, 'Åland Islands'),
(244, 3, 'Åland Islands');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_country_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_country_shop` (
  `id_country` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_country_shop`
--

INSERT INTO `prstshp_country_shop` (`id_country`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_currency`
--

CREATE TABLE IF NOT EXISTS `prstshp_currency` (
`id_currency` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `iso_code_num` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `prstshp_currency`
--

INSERT INTO `prstshp_currency` (`id_currency`, `name`, `iso_code`, `iso_code_num`, `sign`, `blank`, `format`, `decimals`, `conversion_rate`, `deleted`, `active`) VALUES
(1, 'Dollar', 'USD', '840', '$', 0, 1, 1, '0.315774', 0, 0),
(2, 'Złoty', 'PLN', '985', 'zł', 1, 2, 1, '1.000000', 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_currency_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_currency_shop` (
  `id_currency` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_currency_shop`
--

INSERT INTO `prstshp_currency_shop` (`id_currency`, `id_shop`, `conversion_rate`) VALUES
(1, 1, '0.315774'),
(2, 1, '1.000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_customer`
--

CREATE TABLE IF NOT EXISTS `prstshp_customer` (
`id_customer` int(10) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned DEFAULT NULL,
  `id_risk` int(10) unsigned NOT NULL DEFAULT '1',
  `company` varchar(64) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `max_payment_days` int(10) unsigned NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_customer_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_customer_message`
--

CREATE TABLE IF NOT EXISTS `prstshp_customer_message` (
`id_customer_message` int(10) unsigned NOT NULL,
  `id_customer_thread` int(11) DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `message` text NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_customer_message_sync_imap`
--

CREATE TABLE IF NOT EXISTS `prstshp_customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_customer_thread`
--

CREATE TABLE IF NOT EXISTS `prstshp_customer_thread` (
`id_customer_thread` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `id_contact` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned DEFAULT NULL,
  `id_product` int(10) unsigned DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(128) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_customization`
--

CREATE TABLE IF NOT EXISTS `prstshp_customization` (
`id_customization` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_address_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  `in_cart` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_customization_field`
--

CREATE TABLE IF NOT EXISTS `prstshp_customization_field` (
`id_customization_field` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_customization_field_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_customized_data`
--

CREATE TABLE IF NOT EXISTS `prstshp_customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_date_range`
--

CREATE TABLE IF NOT EXISTS `prstshp_date_range` (
`id_date_range` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_delivery`
--

CREATE TABLE IF NOT EXISTS `prstshp_delivery` (
`id_delivery` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned DEFAULT NULL,
  `id_shop_group` int(10) unsigned DEFAULT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned DEFAULT NULL,
  `id_range_weight` int(10) unsigned DEFAULT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Zrzut danych tabeli `prstshp_delivery`
--

INSERT INTO `prstshp_delivery` (`id_delivery`, `id_shop`, `id_shop_group`, `id_carrier`, `id_range_price`, `id_range_weight`, `id_zone`, `price`) VALUES
(1, 1, 1, 2, 1, 0, 1, '0.000000'),
(2, 1, 1, 2, 1, 0, 2, '0.000000'),
(3, 1, 1, 2, 0, 1, 1, '0.000000'),
(4, 1, 1, 2, 0, 1, 2, '0.000000'),
(5, NULL, NULL, 2, 0, 1, 1, '5.000000'),
(6, NULL, NULL, 2, 0, 1, 2, '5.000000'),
(7, NULL, NULL, 2, 1, 0, 1, '5.000000'),
(8, NULL, NULL, 2, 1, 0, 2, '5.000000'),
(9, NULL, NULL, 3, 0, 2, 0, '5.000000'),
(10, NULL, NULL, 3, 0, 2, 0, '5.000000'),
(11, NULL, NULL, 3, 2, 0, 0, '5.000000'),
(12, NULL, NULL, 3, 2, 0, 0, '5.000000'),
(14, NULL, NULL, 4, NULL, 3, 1, '0.000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_employee`
--

CREATE TABLE IF NOT EXISTS `prstshp_employee` (
`id_employee` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `stats_compare_from` date DEFAULT NULL,
  `stats_compare_to` date DEFAULT NULL,
  `stats_compare_option` int(1) unsigned NOT NULL DEFAULT '1',
  `preselect_date_range` varchar(32) DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `bo_css` varchar(64) DEFAULT NULL,
  `default_tab` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_width` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_menu` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `id_last_order` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer_message` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_employee`
--

INSERT INTO `prstshp_employee` (`id_employee`, `id_profile`, `id_lang`, `lastname`, `firstname`, `email`, `passwd`, `last_passwd_gen`, `stats_date_from`, `stats_date_to`, `stats_compare_from`, `stats_compare_to`, `stats_compare_option`, `preselect_date_range`, `bo_color`, `bo_theme`, `bo_css`, `default_tab`, `bo_width`, `bo_menu`, `active`, `optin`, `id_last_order`, `id_last_customer_message`, `id_last_customer`) VALUES
(1, 1, 3, 'A', 'Piotr Krawczyk', 'webmaster@1plus1.pl', '6efd8453416538b95d4f8e3a1349d101', '2014-08-25 14:43:16', '2014-08-25', '2014-08-25', '0000-00-00', '0000-00-00', 1, '', '', 'default', 'admin-theme.css', 1, 0, 1, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_employee_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_employee_shop` (
  `id_employee` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_employee_shop`
--

INSERT INTO `prstshp_employee_shop` (`id_employee`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_feature`
--

CREATE TABLE IF NOT EXISTS `prstshp_feature` (
`id_feature` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_feature`
--

INSERT INTO `prstshp_feature` (`id_feature`, `position`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_feature_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_feature_lang`
--

INSERT INTO `prstshp_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
(1, 1, 'KOLEKCJA'),
(1, 3, 'KOLEKCJA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_feature_product`
--

CREATE TABLE IF NOT EXISTS `prstshp_feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_feature_product`
--

INSERT INTO `prstshp_feature_product` (`id_feature`, `id_product`, `id_feature_value`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(1, 11, 1),
(1, 12, 1),
(1, 13, 1),
(1, 14, 1),
(1, 15, 1),
(1, 16, 1),
(1, 17, 1),
(1, 18, 1),
(1, 19, 1),
(1, 20, 1),
(1, 21, 1),
(1, 22, 1),
(1, 23, 1),
(1, 24, 1),
(1, 25, 1),
(1, 26, 1),
(1, 27, 1),
(1, 28, 1),
(1, 29, 1),
(1, 30, 1),
(1, 31, 1),
(1, 32, 1),
(1, 33, 1),
(1, 34, 1),
(1, 35, 1),
(1, 36, 1),
(1, 37, 1),
(1, 38, 1),
(1, 39, 1),
(1, 40, 1),
(1, 41, 1),
(1, 42, 1),
(1, 43, 1),
(1, 44, 1),
(1, 45, 1),
(1, 46, 1),
(1, 47, 1),
(1, 48, 1),
(1, 49, 1),
(1, 50, 1),
(1, 51, 1),
(1, 52, 1),
(1, 53, 1),
(1, 54, 1),
(1, 55, 1),
(1, 56, 1),
(1, 57, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_feature_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_feature_shop` (
  `id_feature` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_feature_shop`
--

INSERT INTO `prstshp_feature_shop` (`id_feature`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_feature_value`
--

CREATE TABLE IF NOT EXISTS `prstshp_feature_value` (
`id_feature_value` int(10) unsigned NOT NULL,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_feature_value`
--

INSERT INTO `prstshp_feature_value` (`id_feature_value`, `id_feature`, `custom`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_feature_value_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_feature_value_lang`
--

INSERT INTO `prstshp_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES
(1, 1, '2014'),
(1, 3, '2014');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_gender`
--

CREATE TABLE IF NOT EXISTS `prstshp_gender` (
`id_gender` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `prstshp_gender`
--

INSERT INTO `prstshp_gender` (`id_gender`, `type`) VALUES
(1, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_gender_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_gender_lang` (
  `id_gender` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_gender_lang`
--

INSERT INTO `prstshp_gender_lang` (`id_gender`, `id_lang`, `name`) VALUES
(1, 1, 'Mr.'),
(1, 2, 'Mr.'),
(1, 3, 'Mr.'),
(2, 1, 'Mrs.'),
(2, 2, 'Mrs.'),
(2, 3, 'Mrs.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_group` (
`id_group` int(10) unsigned NOT NULL,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `show_prices` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `prstshp_group`
--

INSERT INTO `prstshp_group` (`id_group`, `reduction`, `price_display_method`, `show_prices`, `date_add`, `date_upd`) VALUES
(1, '0.00', 1, 1, '2014-06-21 01:13:31', '2014-06-21 01:14:01'),
(2, '0.00', 1, 1, '2014-06-21 01:13:31', '2014-06-21 01:14:01'),
(3, '0.00', 1, 1, '2014-06-21 01:13:31', '2014-06-21 01:14:01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_group_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_group_lang`
--

INSERT INTO `prstshp_group_lang` (`id_group`, `id_lang`, `name`) VALUES
(1, 1, 'Visitor'),
(1, 2, 'Visitor'),
(1, 3, 'Visitor'),
(2, 1, 'Guest'),
(2, 2, 'Guest'),
(2, 3, 'Guest'),
(3, 1, 'Customer'),
(3, 2, 'Customer'),
(3, 3, 'Customer');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_group_reduction`
--

CREATE TABLE IF NOT EXISTS `prstshp_group_reduction` (
`id_group_reduction` mediumint(8) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_group_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_group_shop` (
  `id_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_group_shop`
--

INSERT INTO `prstshp_group_shop` (`id_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_guest`
--

CREATE TABLE IF NOT EXISTS `prstshp_guest` (
`id_guest` int(10) unsigned NOT NULL,
  `id_operating_system` int(10) unsigned DEFAULT NULL,
  `id_web_browser` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) unsigned DEFAULT NULL,
  `screen_resolution_y` smallint(5) unsigned DEFAULT NULL,
  `screen_color` tinyint(3) unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_homeslider`
--

CREATE TABLE IF NOT EXISTS `prstshp_homeslider` (
`id_homeslider_slides` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `prstshp_homeslider`
--

INSERT INTO `prstshp_homeslider` (`id_homeslider_slides`, `id_shop`) VALUES
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_homeslider_slides`
--

CREATE TABLE IF NOT EXISTS `prstshp_homeslider_slides` (
`id_homeslider_slides` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `prstshp_homeslider_slides`
--

INSERT INTO `prstshp_homeslider_slides` (`id_homeslider_slides`, `position`, `active`) VALUES
(4, 0, 1),
(5, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_homeslider_slides_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_homeslider_slides_lang` (
  `id_homeslider_slides` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `legend` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_homeslider_slides_lang`
--

INSERT INTO `prstshp_homeslider_slides_lang` (`id_homeslider_slides`, `id_lang`, `title`, `description`, `legend`, `url`, `image`) VALUES
(4, 1, 'Ekran 1', '', 'Ekran 1', '#', ''),
(4, 3, 'Ekran 1', '', 'Ekran 1', '#', '527b51bdb5be1748b0db1fdf262a371b4f0c8373_ekran1.jpg'),
(5, 1, 'Ekran 2', '', 'Ekran 2', '#', ''),
(5, 3, 'Ekran 2', '', 'Ekran 2', '#', '1d2f02cb8fa4b3e75698413333050d1e330aeae2_ekran2.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_hook`
--

CREATE TABLE IF NOT EXISTS `prstshp_hook` (
`id_hook` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `live_edit` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Zrzut danych tabeli `prstshp_hook`
--

INSERT INTO `prstshp_hook` (`id_hook`, `name`, `title`, `description`, `position`, `live_edit`) VALUES
(1, 'displayPayment', 'Payment', 'This hook displays new elements on the payment page', 1, 1),
(2, 'actionValidateOrder', 'New orders', '', 1, 0),
(3, 'displayMaintenance', 'Maintenance Page', 'This hook displays new elements on the maintenance page', 1, 0),
(4, 'actionPaymentConfirmation', 'Payment confirmation', 'This hook displays new elements after the payment is validated', 1, 0),
(5, 'displayPaymentReturn', 'Payment return', '', 1, 0),
(6, 'actionUpdateQuantity', 'Quantity update', 'Quantity is updated only when a customer effectively places their order', 1, 0),
(7, 'displayRightColumn', 'Right column blocks', 'This hook displays new elements in the right-hand column', 1, 1),
(8, 'displayLeftColumn', 'Left column blocks', 'This hook displays new elements in the left-hand column', 1, 1),
(9, 'displayHome', 'Homepage content', 'This hook displays new elements on the homepage', 1, 1),
(10, 'displayHeader', 'Pages header', 'This hook displays additional elements in the header of your pages', 1, 0),
(11, 'actionCartSave', 'Cart creation and update', 'This hook is displayed when a product is added to the cart or if the cart''s content is modified', 1, 0),
(12, 'actionAuthentication', 'Successful customer authentication', 'This hook is displayed after a customer successfully signs in', 1, 0),
(13, 'actionProductAdd', 'Product creation', 'This hook is displayed after a product is created', 1, 0),
(14, 'actionProductUpdate', 'Product update', 'This hook is displayed after a product has been updated', 1, 0),
(15, 'displayTop', 'Top of pages', 'This hook displays  additional elements at the top of your pages', 1, 0),
(16, 'displayRightColumnProduct', 'New elements on the product page (right column)', 'This hook displays new elements in the right-hand column of the product page', 1, 0),
(17, 'actionProductDelete', 'Product deletion', 'This hook is called when a product is deleted', 1, 0),
(18, 'displayFooterProduct', 'Product footer', 'This hook adds new blocks under the product''s description', 1, 1),
(19, 'displayInvoice', 'Invoice', 'This hook displays new blocks on the invoice (order)', 1, 0),
(20, 'actionOrderStatusUpdate', 'Order status update - Event', 'This hook launches modules when the status of an order changes.', 1, 0),
(21, 'displayAdminOrder', 'Display new elements in the Back Office, tab AdminOrder', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office', 1, 0),
(22, 'displayAdminOrderTabOrder', 'Display new elements in Back Office, AdminOrder, panel Order', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel tabs', 1, 0),
(23, 'displayAdminOrderTabShip', 'Display new elements in Back Office, AdminOrder, panel Shipping', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel tabs', 1, 0),
(24, 'displayAdminOrderContentOrder', 'Display new elements in Back Office, AdminOrder, panel Order', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel content', 1, 0),
(25, 'displayAdminOrderContentShip', 'Display new elements in Back Office, AdminOrder, panel Shipping', 'This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel content', 1, 0),
(26, 'displayFooter', 'Footer', 'This hook displays new blocks in the footer', 1, 0),
(27, 'displayPDFInvoice', 'PDF Invoice', 'This hook allows you to display additional information on PDF invoices', 1, 0),
(28, 'displayAdminCustomers', 'Display new elements in the Back Office, tab AdminCustomers', 'This hook launches modules when the AdminCustomers tab is displayed in the Back Office', 1, 0),
(29, 'displayOrderConfirmation', 'Order confirmation page', 'This hook is called within an order''s confirmation page', 1, 0),
(30, 'actionCustomerAccountAdd', 'Successful customer account creation', 'This hook is called when a new customer creates an account successfully', 1, 0),
(31, 'displayCustomerAccount', 'Customer account displayed in Front Office', 'This hook displays new elements on the customer account page', 1, 0),
(32, 'actionOrderSlipAdd', 'Order slip creation', 'This hook is called when a new credit slip is added regarding client order', 1, 0),
(33, 'displayProductTab', 'Tabs on product page', 'This hook is called on the product page''s tab', 1, 0),
(34, 'displayProductTabContent', 'Tabs content on the product page', 'This hook is called on the product page''s tab', 1, 0),
(35, 'displayShoppingCartFooter', 'Shopping cart footer', 'This hook displays some specific information on the shopping cart''s page', 1, 0),
(36, 'displayCustomerAccountForm', 'Customer account creation form', 'This hook displays some information on the form to create a customer account', 1, 0),
(37, 'displayAdminStatsModules', 'Stats - Modules', '', 1, 0),
(38, 'displayAdminStatsGraphEngine', 'Graph engines', '', 1, 0),
(39, 'actionOrderReturn', 'Returned product', 'This hook is displayed when a customer returns a product ', 1, 0),
(40, 'displayProductButtons', 'Product page actions', 'This hook adds new action buttons on the product page', 1, 0),
(41, 'displayBackOfficeHome', 'Administration panel homepage', 'This hook is displayed on the admin panel''s homepage', 1, 0),
(42, 'displayAdminStatsGridEngine', 'Grid engines', '', 1, 0),
(43, 'actionWatermark', 'Watermark', '', 1, 0),
(44, 'actionProductCancel', 'Product cancelled', 'This hook is called when you cancel a product in an order', 1, 0),
(45, 'displayLeftColumnProduct', 'New elements on the product page (left column)', 'This hook displays new elements in the left-hand column of the product page', 1, 0),
(46, 'actionProductOutOfStock', 'Out-of-stock product', 'This hook displays new action buttons if a product is out of stock', 1, 0),
(47, 'actionProductAttributeUpdate', 'Product attribute update', 'This hook is displayed when a product''s attribute is updated', 1, 0),
(48, 'displayCarrierList', 'Extra carrier (module mode)', '', 1, 0),
(49, 'displayShoppingCart', 'Shopping cart - Additional button', 'This hook displays new action buttons within the shopping cart', 1, 0),
(50, 'actionSearch', 'Search', '', 1, 0),
(51, 'displayBeforePayment', 'Redirect during the order process', 'This hook redirects the user to the module instead of displaying payment modules', 1, 0),
(52, 'actionCarrierUpdate', 'Carrier Update', 'This hook is called when a carrier is updated', 1, 0),
(53, 'actionOrderStatusPostUpdate', 'Post update of order status', '', 1, 0),
(54, 'displayCustomerAccountFormTop', 'Block above the form for create an account', 'This hook is displayed above the customer''s account creation form', 1, 0),
(55, 'displayBackOfficeHeader', 'Administration panel header', 'This hook is displayed in the header of the admin panel', 1, 0),
(56, 'displayBackOfficeTop', 'Administration panel hover the tabs', 'This hook is displayed on the roll hover of the tabs within the admin panel', 1, 0),
(57, 'displayBackOfficeFooter', 'Administration panel footer', 'This hook is displayed within the admin panel''s footer', 1, 0),
(58, 'actionProductAttributeDelete', 'Product attribute deletion', 'This hook is displayed when a product''s attribute is deleted', 1, 0),
(59, 'actionCarrierProcess', 'Carrier process', '', 1, 0),
(60, 'actionOrderDetail', 'Order detail', 'This hook is used to set the follow-up in Smarty when an order''s detail is called', 1, 0),
(61, 'displayBeforeCarrier', 'Before carriers list', 'This hook is displayed before the carrier list in Front Office', 1, 0),
(62, 'displayOrderDetail', 'Order detail', 'This hook is displayed within the order''s details in Front Office', 1, 0),
(63, 'actionPaymentCCAdd', 'Payment CC added', '', 1, 0),
(64, 'displayProductComparison', 'Extra product comparison', '', 1, 0),
(65, 'actionCategoryAdd', 'Category creation', 'This hook is displayed when a category is created', 1, 0),
(66, 'actionCategoryUpdate', 'Category modification', 'This hook is displayed when a category is modified', 1, 0),
(67, 'actionCategoryDelete', 'Category deletion', 'This hook is displayed when a category is deleted', 1, 0),
(68, 'actionBeforeAuthentication', 'Before authentication', 'This hook is displayed before the customer''s authentication', 1, 0),
(69, 'displayPaymentTop', 'Top of payment page', 'This hook is displayed at the top of the payment page', 1, 0),
(70, 'actionHtaccessCreate', 'After htaccess creation', 'This hook is displayed after the htaccess creation', 1, 0),
(71, 'actionAdminMetaSave', 'After saving the configuration in AdminMeta', 'This hook is displayed after saving the configuration in AdminMeta', 1, 0),
(72, 'displayAttributeGroupForm', 'Add fields to the form ''attribute group''', 'This hook adds fields to the form ''attribute group''', 1, 0),
(73, 'actionAttributeGroupSave', 'Saving an attribute group', 'This hook is called while saving an attributes group', 1, 0),
(74, 'actionAttributeGroupDelete', 'Deleting attribute group', 'This hook is called while deleting an attributes  group', 1, 0),
(75, 'displayFeatureForm', 'Add fields to the form ''feature''', 'This hook adds fields to the form ''feature''', 1, 0),
(76, 'actionFeatureSave', 'Saving attributes'' features', 'This hook is called while saving an attributes features', 1, 0),
(77, 'actionFeatureDelete', 'Deleting attributes'' features', 'This hook is called while deleting an attributes features', 1, 0),
(78, 'actionProductSave', 'Saving products', 'This hook is called while saving products', 1, 0),
(79, 'actionProductListOverride', 'Assign a products list to a category', 'This hook assigns a products list to a category', 1, 0),
(80, 'displayAttributeGroupPostProcess', 'On post-process in admin attribute group', 'This hook is called on post-process in admin attribute group', 1, 0),
(81, 'displayFeaturePostProcess', 'On post-process in admin feature', 'This hook is called on post-process in admin feature', 1, 0),
(82, 'displayFeatureValueForm', 'Add fields to the form ''feature value''', 'This hook adds fields to the form ''feature value''', 1, 0),
(83, 'displayFeatureValuePostProcess', 'On post-process in admin feature value', 'This hook is called on post-process in admin feature value', 1, 0),
(84, 'actionFeatureValueDelete', 'Deleting attributes'' features'' values', 'This hook is called while deleting an attributes features value', 1, 0),
(85, 'actionFeatureValueSave', 'Saving an attributes features value', 'This hook is called while saving an attributes features value', 1, 0),
(86, 'displayAttributeForm', 'Add fields to the form ''attribute value''', 'This hook adds fields to the form ''attribute value''', 1, 0),
(87, 'actionAttributePostProcess', 'On post-process in admin feature value', 'This hook is called on post-process in admin feature value', 1, 0),
(88, 'actionAttributeDelete', 'Deleting an attributes features value', 'This hook is called while deleting an attributes features value', 1, 0),
(89, 'actionAttributeSave', 'Saving an attributes features value', 'This hook is called while saving an attributes features value', 1, 0),
(90, 'actionTaxManager', 'Tax Manager Factory', '', 1, 0),
(91, 'displayMyAccountBlock', 'My account block', 'This hook displays extra information within the ''my account'' block"', 1, 0),
(92, 'actionModuleInstallBefore', 'actionModuleInstallBefore', '', 1, 0),
(93, 'actionModuleInstallAfter', 'actionModuleInstallAfter', '', 1, 0),
(94, 'displayHomeTab', 'Home Page Tabs', 'This hook displays new elements on the homepage tabs', 1, 1),
(95, 'displayHomeTabContent', 'Home Page Tabs Content', 'This hook displays new elements on the homepage tabs content', 1, 1),
(96, 'displayTopColumn', 'Top column blocks', 'This hook displays new elements in the top of columns', 1, 1),
(97, 'displayBackOfficeCategory', 'Display new elements in the Back Office, tab AdminCategories', 'This hook launches modules when the AdminCategories tab is displayed in the Back Office', 1, 0),
(98, 'displayProductListFunctionalButtons', 'Display new elements in the Front Office, products list', 'This hook launches modules when the products list is displayed in the Front Office', 1, 0),
(99, 'displayNav', 'Navigation', '', 1, 1),
(100, 'displayOverrideTemplate', 'Change the default template of current controller', '', 1, 0),
(101, 'actionObjectProductUpdateAfter', 'actionObjectProductUpdateAfter', '', 0, 0),
(102, 'actionObjectProductDeleteAfter', 'actionObjectProductDeleteAfter', '', 0, 0),
(103, 'displayCompareExtraInformation', 'displayCompareExtraInformation', '', 1, 1),
(104, 'displayBanner', 'displayBanner', '', 1, 1),
(105, 'actionObjectLanguageAddAfter', 'actionObjectLanguageAddAfter', '', 0, 0),
(106, 'actionCartListOverride', 'actionCartListOverride', '', 0, 0),
(107, 'actionAdminMetaControllerUpdate_optionsBefore', 'actionAdminMetaControllerUpdate_optionsBefore', '', 0, 0),
(108, 'actionAdminLanguagesControllerStatusBefore', 'actionAdminLanguagesControllerStatusBefore', '', 0, 0),
(109, 'actionObjectCmsUpdateAfter', 'actionObjectCmsUpdateAfter', '', 0, 0),
(110, 'actionObjectCmsDeleteAfter', 'actionObjectCmsDeleteAfter', '', 0, 0),
(111, 'actionShopDataDuplication', 'actionShopDataDuplication', '', 0, 0),
(112, 'actionAdminStoresControllerUpdate_optionsAfter', 'actionAdminStoresControllerUpdate_optionsAfter', '', 0, 0),
(113, 'actionObjectManufacturerDeleteAfter', 'actionObjectManufacturerDeleteAfter', '', 0, 0),
(114, 'actionObjectManufacturerAddAfter', 'actionObjectManufacturerAddAfter', '', 0, 0),
(115, 'actionObjectManufacturerUpdateAfter', 'actionObjectManufacturerUpdateAfter', '', 0, 0),
(117, 'actionModuleRegisterHookAfter', 'actionModuleRegisterHookAfter', '', 0, 0),
(118, 'actionModuleUnRegisterHookAfter', 'actionModuleUnRegisterHookAfter', '', 0, 0),
(119, 'displayMyAccountBlockfooter', 'My account block', 'Display extra informations inside the "my account" block', 1, 0),
(120, 'displayMobileTopSiteMap', 'displayMobileTopSiteMap', '', 1, 1),
(121, 'actionObjectSupplierDeleteAfter', 'actionObjectSupplierDeleteAfter', '', 0, 0),
(122, 'actionObjectSupplierAddAfter', 'actionObjectSupplierAddAfter', '', 0, 0),
(123, 'actionObjectSupplierUpdateAfter', 'actionObjectSupplierUpdateAfter', '', 0, 0),
(124, 'actionObjectCategoryUpdateAfter', 'actionObjectCategoryUpdateAfter', '', 0, 0),
(125, 'actionObjectCategoryDeleteAfter', 'actionObjectCategoryDeleteAfter', '', 0, 0),
(126, 'actionObjectCategoryAddAfter', 'actionObjectCategoryAddAfter', '', 0, 0),
(127, 'actionObjectCmsAddAfter', 'actionObjectCmsAddAfter', '', 0, 0),
(128, 'actionObjectProductAddAfter', 'actionObjectProductAddAfter', '', 0, 0),
(129, 'dashboardZoneOne', 'dashboardZoneOne', '', 0, 0),
(130, 'dashboardData', 'dashboardData', '', 0, 0),
(131, 'actionObjectOrderAddAfter', 'actionObjectOrderAddAfter', '', 0, 0),
(132, 'actionObjectCustomerAddAfter', 'actionObjectCustomerAddAfter', '', 0, 0),
(133, 'actionObjectCustomerMessageAddAfter', 'actionObjectCustomerMessageAddAfter', '', 0, 0),
(134, 'actionObjectCustomerThreadAddAfter', 'actionObjectCustomerThreadAddAfter', '', 0, 0),
(135, 'actionObjectOrderReturnAddAfter', 'actionObjectOrderReturnAddAfter', '', 0, 0),
(136, 'actionAdminControllerSetMedia', 'actionAdminControllerSetMedia', '', 0, 0),
(137, 'dashboardZoneTwo', 'dashboardZoneTwo', '', 0, 0),
(138, 'displayProductListReviews', 'displayProductListReviews', '', 1, 1),
(149, 'actionProductCoverage', 'actionProductCoverage', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_hook_alias`
--

CREATE TABLE IF NOT EXISTS `prstshp_hook_alias` (
`id_hook_alias` int(10) unsigned NOT NULL,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Zrzut danych tabeli `prstshp_hook_alias`
--

INSERT INTO `prstshp_hook_alias` (`id_hook_alias`, `alias`, `name`) VALUES
(1, 'payment', 'displayPayment'),
(2, 'newOrder', 'actionValidateOrder'),
(3, 'paymentConfirm', 'actionPaymentConfirmation'),
(4, 'paymentReturn', 'displayPaymentReturn'),
(5, 'updateQuantity', 'actionUpdateQuantity'),
(6, 'rightColumn', 'displayRightColumn'),
(7, 'leftColumn', 'displayLeftColumn'),
(8, 'home', 'displayHome'),
(9, 'header', 'displayHeader'),
(10, 'cart', 'actionCartSave'),
(11, 'authentication', 'actionAuthentication'),
(12, 'addproduct', 'actionProductAdd'),
(13, 'updateproduct', 'actionProductUpdate'),
(14, 'top', 'displayTop'),
(15, 'extraRight', 'displayRightColumnProduct'),
(16, 'deleteproduct', 'actionProductDelete'),
(17, 'productfooter', 'displayFooterProduct'),
(18, 'invoice', 'displayInvoice'),
(19, 'updateOrderStatus', 'actionOrderStatusUpdate'),
(20, 'adminOrder', 'displayAdminOrder'),
(21, 'footer', 'displayFooter'),
(22, 'PDFInvoice', 'displayPDFInvoice'),
(23, 'adminCustomers', 'displayAdminCustomers'),
(24, 'orderConfirmation', 'displayOrderConfirmation'),
(25, 'createAccount', 'actionCustomerAccountAdd'),
(26, 'customerAccount', 'displayCustomerAccount'),
(27, 'orderSlip', 'actionOrderSlipAdd'),
(28, 'productTab', 'displayProductTab'),
(29, 'productTabContent', 'displayProductTabContent'),
(30, 'shoppingCart', 'displayShoppingCartFooter'),
(31, 'createAccountForm', 'displayCustomerAccountForm'),
(32, 'AdminStatsModules', 'displayAdminStatsModules'),
(33, 'GraphEngine', 'displayAdminStatsGraphEngine'),
(34, 'orderReturn', 'actionOrderReturn'),
(35, 'productActions', 'displayProductButtons'),
(36, 'backOfficeHome', 'displayBackOfficeHome'),
(37, 'GridEngine', 'displayAdminStatsGridEngine'),
(38, 'watermark', 'actionWatermark'),
(39, 'cancelProduct', 'actionProductCancel'),
(40, 'extraLeft', 'displayLeftColumnProduct'),
(41, 'productOutOfStock', 'actionProductOutOfStock'),
(42, 'updateProductAttribute', 'actionProductAttributeUpdate'),
(43, 'extraCarrier', 'displayCarrierList'),
(44, 'shoppingCartExtra', 'displayShoppingCart'),
(45, 'search', 'actionSearch'),
(46, 'backBeforePayment', 'displayBeforePayment'),
(47, 'updateCarrier', 'actionCarrierUpdate'),
(48, 'postUpdateOrderStatus', 'actionOrderStatusPostUpdate'),
(49, 'createAccountTop', 'displayCustomerAccountFormTop'),
(50, 'backOfficeHeader', 'displayBackOfficeHeader'),
(51, 'backOfficeTop', 'displayBackOfficeTop'),
(52, 'backOfficeFooter', 'displayBackOfficeFooter'),
(53, 'deleteProductAttribute', 'actionProductAttributeDelete'),
(54, 'processCarrier', 'actionCarrierProcess'),
(55, 'orderDetail', 'actionOrderDetail'),
(56, 'beforeCarrier', 'displayBeforeCarrier'),
(57, 'orderDetailDisplayed', 'displayOrderDetail'),
(58, 'paymentCCAdded', 'actionPaymentCCAdd'),
(59, 'extraProductComparison', 'displayProductComparison'),
(60, 'categoryAddition', 'actionCategoryAdd'),
(61, 'categoryUpdate', 'actionCategoryUpdate'),
(62, 'categoryDeletion', 'actionCategoryDelete'),
(63, 'beforeAuthentication', 'actionBeforeAuthentication'),
(64, 'paymentTop', 'displayPaymentTop'),
(65, 'afterCreateHtaccess', 'actionHtaccessCreate'),
(66, 'afterSaveAdminMeta', 'actionAdminMetaSave'),
(67, 'attributeGroupForm', 'displayAttributeGroupForm'),
(68, 'afterSaveAttributeGroup', 'actionAttributeGroupSave'),
(69, 'afterDeleteAttributeGroup', 'actionAttributeGroupDelete'),
(70, 'featureForm', 'displayFeatureForm'),
(71, 'afterSaveFeature', 'actionFeatureSave'),
(72, 'afterDeleteFeature', 'actionFeatureDelete'),
(73, 'afterSaveProduct', 'actionProductSave'),
(74, 'productListAssign', 'actionProductListOverride'),
(75, 'postProcessAttributeGroup', 'displayAttributeGroupPostProcess'),
(76, 'postProcessFeature', 'displayFeaturePostProcess'),
(77, 'featureValueForm', 'displayFeatureValueForm'),
(78, 'postProcessFeatureValue', 'displayFeatureValuePostProcess'),
(79, 'afterDeleteFeatureValue', 'actionFeatureValueDelete'),
(80, 'afterSaveFeatureValue', 'actionFeatureValueSave'),
(81, 'attributeForm', 'displayAttributeForm'),
(82, 'postProcessAttribute', 'actionAttributePostProcess'),
(83, 'afterDeleteAttribute', 'actionAttributeDelete'),
(84, 'afterSaveAttribute', 'actionAttributeSave'),
(85, 'taxManager', 'actionTaxManager'),
(86, 'myAccountBlock', 'displayMyAccountBlock');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_hook_module`
--

CREATE TABLE IF NOT EXISTS `prstshp_hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_hook_module`
--

INSERT INTO `prstshp_hook_module` (`id_module`, `id_shop`, `id_hook`, `position`) VALUES
(1, 1, 10, 1),
(1, 1, 16, 1),
(1, 1, 101, 1),
(1, 1, 102, 1),
(1, 1, 103, 1),
(2, 1, 104, 1),
(2, 1, 105, 1),
(3, 1, 1, 1),
(3, 1, 5, 1),
(4, 1, 13, 1),
(4, 1, 14, 1),
(4, 1, 17, 1),
(4, 1, 53, 1),
(5, 1, 15, 1),
(5, 1, 106, 1),
(7, 1, 26, 1),
(7, 1, 65, 1),
(7, 1, 66, 1),
(7, 1, 67, 1),
(7, 1, 97, 1),
(7, 1, 107, 1),
(7, 1, 108, 1),
(11, 1, 8, 1),
(11, 1, 72, 1),
(11, 1, 73, 1),
(11, 1, 74, 1),
(11, 1, 75, 1),
(11, 1, 76, 1),
(11, 1, 77, 1),
(11, 1, 78, 1),
(11, 1, 79, 1),
(11, 1, 80, 1),
(11, 1, 81, 1),
(11, 1, 82, 1),
(11, 1, 83, 1),
(11, 1, 84, 1),
(11, 1, 85, 1),
(11, 1, 86, 1),
(11, 1, 87, 1),
(11, 1, 88, 1),
(11, 1, 89, 1),
(12, 1, 109, 1),
(12, 1, 110, 1),
(12, 1, 111, 1),
(12, 1, 112, 1),
(16, 1, 113, 1),
(16, 1, 114, 1),
(16, 1, 115, 1),
(17, 1, 117, 1),
(17, 1, 118, 1),
(20, 1, 30, 1),
(22, 1, 120, 1),
(25, 1, 121, 1),
(25, 1, 122, 1),
(25, 1, 123, 1),
(27, 1, 124, 1),
(27, 1, 125, 1),
(27, 1, 126, 1),
(27, 1, 127, 1),
(27, 1, 128, 1),
(28, 1, 99, 1),
(31, 1, 129, 1),
(31, 1, 130, 1),
(31, 1, 131, 1),
(31, 1, 132, 1),
(31, 1, 133, 1),
(31, 1, 134, 1),
(31, 1, 135, 1),
(31, 1, 136, 1),
(32, 1, 137, 1),
(34, 1, 50, 1),
(35, 1, 38, 1),
(36, 1, 42, 1),
(37, 1, 96, 1),
(38, 1, 94, 1),
(38, 1, 95, 1),
(40, 1, 37, 1),
(50, 1, 12, 1),
(63, 1, 9, 1),
(63, 1, 55, 1),
(65, 1, 11, 1),
(65, 1, 28, 1),
(65, 1, 31, 1),
(65, 1, 40, 1),
(65, 1, 91, 1),
(65, 1, 98, 1),
(66, 1, 33, 1),
(66, 1, 34, 1),
(66, 1, 64, 1),
(66, 1, 138, 1),
(67, 1, 45, 1),
(68, 1, 2, 1),
(68, 1, 6, 1),
(68, 1, 46, 1),
(68, 1, 47, 1),
(68, 1, 58, 1),
(68, 1, 149, 1),
(2, 1, 10, 2),
(8, 1, 99, 2),
(9, 1, 9, 2),
(11, 1, 65, 2),
(11, 1, 66, 2),
(11, 1, 67, 2),
(18, 1, 117, 2),
(18, 1, 118, 2),
(19, 1, 13, 2),
(19, 1, 14, 2),
(19, 1, 17, 2),
(20, 1, 26, 2),
(27, 1, 15, 2),
(27, 1, 101, 2),
(27, 1, 102, 2),
(27, 1, 109, 2),
(27, 1, 110, 2),
(27, 1, 111, 2),
(27, 1, 113, 2),
(27, 1, 114, 2),
(27, 1, 115, 2),
(27, 1, 121, 2),
(27, 1, 122, 2),
(27, 1, 123, 2),
(30, 1, 1, 2),
(30, 1, 5, 2),
(32, 1, 53, 2),
(32, 1, 130, 2),
(32, 1, 136, 2),
(33, 1, 137, 2),
(34, 1, 131, 2),
(39, 1, 40, 2),
(41, 1, 37, 2),
(50, 1, 30, 2),
(60, 1, 50, 2),
(63, 1, 96, 2),
(63, 1, 105, 2),
(64, 1, 55, 2),
(66, 1, 16, 2),
(68, 1, 31, 2),
(68, 1, 91, 2),
(4, 1, 10, 3),
(6, 1, 26, 3),
(10, 1, 99, 3),
(13, 1, 9, 3),
(23, 1, 13, 3),
(23, 1, 14, 3),
(23, 1, 17, 3),
(27, 1, 66, 3),
(33, 1, 130, 3),
(33, 1, 136, 3),
(34, 1, 137, 3),
(37, 1, 111, 3),
(42, 1, 37, 3),
(65, 1, 15, 3),
(5, 1, 10, 4),
(12, 1, 26, 4),
(14, 1, 99, 4),
(34, 1, 130, 4),
(35, 1, 136, 4),
(38, 1, 13, 4),
(38, 1, 14, 4),
(38, 1, 17, 4),
(38, 1, 66, 4),
(43, 1, 37, 4),
(6, 1, 10, 5),
(44, 1, 37, 5),
(68, 1, 17, 5),
(7, 1, 10, 6),
(45, 1, 37, 6),
(8, 1, 10, 7),
(46, 1, 37, 7),
(9, 1, 10, 8),
(47, 1, 37, 8),
(10, 1, 10, 9),
(48, 1, 37, 9),
(11, 1, 10, 10),
(49, 1, 37, 10),
(12, 1, 10, 11),
(51, 1, 37, 11),
(14, 1, 10, 12),
(52, 1, 37, 12),
(15, 1, 10, 13),
(53, 1, 37, 13),
(16, 1, 10, 14),
(54, 1, 37, 14),
(17, 1, 10, 15),
(55, 1, 37, 15),
(18, 1, 10, 16),
(56, 1, 37, 16),
(19, 1, 10, 17),
(57, 1, 37, 17),
(20, 1, 10, 18),
(58, 1, 37, 18),
(21, 1, 10, 19),
(59, 1, 37, 19),
(22, 1, 10, 20),
(60, 1, 37, 20),
(23, 1, 10, 21),
(61, 1, 37, 21),
(24, 1, 10, 22),
(62, 1, 37, 22),
(25, 1, 10, 23),
(26, 1, 10, 24),
(28, 1, 10, 25),
(29, 1, 10, 26),
(37, 1, 10, 27),
(38, 1, 10, 28),
(39, 1, 10, 29),
(63, 1, 10, 30),
(65, 1, 10, 31),
(66, 1, 10, 32),
(67, 1, 10, 33),
(68, 1, 10, 34);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_hook_module_exceptions`
--

CREATE TABLE IF NOT EXISTS `prstshp_hook_module_exceptions` (
`id_hook_module_exceptions` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_image`
--

CREATE TABLE IF NOT EXISTS `prstshp_image` (
`id_image` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` smallint(2) unsigned NOT NULL DEFAULT '0',
  `cover` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Zrzut danych tabeli `prstshp_image`
--

INSERT INTO `prstshp_image` (`id_image`, `id_product`, `position`, `cover`) VALUES
(1, 4, 1, 1),
(2, 1, 1, 1),
(3, 2, 1, 1),
(4, 3, 1, 1),
(5, 62, 1, 1),
(6, 2, 2, 0),
(7, 2, 3, 0),
(8, 44, 1, 1),
(9, 52, 1, 1),
(10, 57, 1, 1),
(11, 58, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_image_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_image_lang`
--

INSERT INTO `prstshp_image_lang` (`id_image`, `id_lang`, `legend`) VALUES
(1, 1, 'B2272 PERŁOWY'),
(1, 3, 'B2272 PERŁOWY'),
(2, 1, 'B2272 CZEWRWONY'),
(2, 3, 'B2272 CZEWRWONY'),
(3, 1, 'B2272 CZERWONY'),
(3, 3, 'B2272 CZERWONY'),
(4, 1, 'B2272 ŻÓŁTY'),
(4, 3, 'B2272 ŻÓŁTY'),
(5, 1, 'B2272 PUDROWY RÓŻ'),
(5, 3, 'B2272 PUDROWY RÓŻ'),
(6, 1, 'B2272 CZERWONY'),
(6, 3, 'B2272 CZERWONY'),
(7, 1, 'B2272 CZERWONY'),
(7, 3, 'B2272 CZERWONY'),
(8, 1, 'V2586'),
(8, 3, 'V2586'),
(9, 1, 'V2001'),
(9, 3, 'V2001'),
(10, 1, 'V2451'),
(10, 3, 'V2451'),
(11, 1, 'V2008'),
(11, 3, 'V2008');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_image_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_image_shop` (
  `id_image` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `cover` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_image_shop`
--

INSERT INTO `prstshp_image_shop` (`id_image`, `id_shop`, `cover`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 0),
(7, 1, 0),
(8, 1, 1),
(9, 1, 1),
(10, 1, 1),
(11, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_image_type`
--

CREATE TABLE IF NOT EXISTS `prstshp_image_type` (
`id_image_type` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Zrzut danych tabeli `prstshp_image_type`
--

INSERT INTO `prstshp_image_type` (`id_image_type`, `name`, `width`, `height`, `products`, `categories`, `manufacturers`, `suppliers`, `scenes`, `stores`) VALUES
(1, 'cart_default', 80, 80, 1, 0, 0, 0, 0, 0),
(2, 'small_default', 98, 98, 1, 0, 1, 1, 0, 0),
(3, 'medium_default', 125, 125, 1, 1, 1, 1, 0, 1),
(4, 'home_default', 250, 250, 1, 0, 0, 0, 0, 0),
(5, 'large_default', 458, 458, 1, 0, 1, 1, 0, 0),
(6, 'thickbox_default', 800, 800, 1, 0, 0, 0, 0, 0),
(7, 'category_default', 870, 217, 0, 1, 0, 0, 0, 0),
(8, 'scene_default', 870, 270, 0, 0, 0, 0, 1, 0),
(9, 'm_scene_default', 161, 58, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_import_match`
--

CREATE TABLE IF NOT EXISTS `prstshp_import_match` (
`id_import_match` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_info`
--

CREATE TABLE IF NOT EXISTS `prstshp_info` (
`id_info` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `prstshp_info`
--

INSERT INTO `prstshp_info` (`id_info`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_info_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_info_lang` (
`id_info` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `prstshp_info_lang`
--

INSERT INTO `prstshp_info_lang` (`id_info`, `id_lang`, `text`) VALUES
(1, 1, '<ul>\n<li><em class="icon-truck" id="icon-truck"></em>\n<div class="type-text">\n<h3>Lorem Ipsum</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-phone" id="icon-phone"></em>\n<div class="type-text">\n<h3>Dolor Sit Amet</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-credit-card" id="icon-credit-card"></em>\n<div class="type-text">\n<h3>Ctetur Voluptate</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n</ul>'),
(1, 2, '<ul>\n<li><em class="icon-truck" id="icon-truck"></em>\n<div class="type-text">\n<h3>Lorem Ipsum</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-phone" id="icon-phone"></em>\n<div class="type-text">\n<h3>Dolor Sit Amet</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-credit-card" id="icon-credit-card"></em>\n<div class="type-text">\n<h3>Ctetur Voluptate</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n</ul>'),
(1, 3, '<ul>\n<li><em class="icon-truck" id="icon-truck"></em>\n<div class="type-text">\n<h3>Lorem Ipsum</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-phone" id="icon-phone"></em>\n<div class="type-text">\n<h3>Dolor Sit Amet</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n<li><em class="icon-credit-card" id="icon-credit-card"></em>\n<div class="type-text">\n<h3>Ctetur Voluptate</h3>\n<p>Lorem ipsum dolor sit amet conse ctetur voluptate velit esse cillum dolore eu</p>\n</div>\n</li>\n</ul>'),
(2, 1, '<h3>Custom Block</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetu</strong></p>\n<p>Sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>'),
(2, 2, '<h3>Custom Block</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetu</strong></p>\n<p>Sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>'),
(2, 3, '<h3>Custom Block</h3>\n<p><strong class="dark">Lorem ipsum dolor sit amet conse ctetu</strong></p>\n<p>Sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_lang` (
`id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  `language_code` char(5) NOT NULL,
  `date_format_lite` char(32) NOT NULL DEFAULT 'Y-m-d',
  `date_format_full` char(32) NOT NULL DEFAULT 'Y-m-d H:i:s',
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `prstshp_lang`
--

INSERT INTO `prstshp_lang` (`id_lang`, `name`, `active`, `iso_code`, `language_code`, `date_format_lite`, `date_format_full`, `is_rtl`) VALUES
(1, 'English (English)', 0, 'en', 'en-us', 'm/d/Y', 'm/d/Y H:i:s', 0),
(3, 'Polish', 1, 'pl', 'pl-pl', 'Y-m-d', 'Y-m-d H:i:s', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_lang_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_lang_shop` (
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_lang_shop`
--

INSERT INTO `prstshp_lang_shop` (`id_lang`, `id_shop`) VALUES
(1, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_category`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_category` (
`id_layered_category` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `id_value` int(10) unsigned DEFAULT '0',
  `type` enum('category','id_feature','id_attribute_group','quantity','condition','manufacturer','weight','price') NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `filter_type` int(10) unsigned NOT NULL DEFAULT '0',
  `filter_show_limit` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Zrzut danych tabeli `prstshp_layered_category`
--

INSERT INTO `prstshp_layered_category` (`id_layered_category`, `id_shop`, `id_category`, `id_value`, `type`, `position`, `filter_type`, `filter_show_limit`) VALUES
(1, 1, 2, NULL, 'category', 1, 2, 0),
(2, 1, 2, NULL, 'price', 2, 2, 0),
(3, 1, 2, 2, 'id_attribute_group', 3, 2, 0),
(4, 1, 2, 3, 'id_attribute_group', 4, 2, 0),
(5, 1, 2, 1, 'id_feature', 5, 2, 0),
(6, 1, 19, NULL, 'category', 1, 2, 0),
(7, 1, 19, NULL, 'price', 2, 2, 0),
(8, 1, 19, 2, 'id_attribute_group', 3, 2, 0),
(9, 1, 19, 3, 'id_attribute_group', 4, 2, 0),
(10, 1, 19, 1, 'id_feature', 5, 2, 0),
(11, 1, 20, NULL, 'category', 1, 2, 0),
(12, 1, 20, NULL, 'price', 2, 2, 0),
(13, 1, 20, 2, 'id_attribute_group', 3, 2, 0),
(14, 1, 20, 3, 'id_attribute_group', 4, 2, 0),
(15, 1, 20, 1, 'id_feature', 5, 2, 0),
(16, 1, 21, NULL, 'category', 1, 2, 0),
(17, 1, 21, NULL, 'price', 2, 2, 0),
(18, 1, 21, 2, 'id_attribute_group', 3, 2, 0),
(19, 1, 21, 3, 'id_attribute_group', 4, 2, 0),
(20, 1, 21, 1, 'id_feature', 5, 2, 0),
(21, 1, 28, NULL, 'category', 1, 2, 0),
(22, 1, 28, NULL, 'price', 2, 2, 0),
(23, 1, 28, 2, 'id_attribute_group', 3, 2, 0),
(24, 1, 28, 3, 'id_attribute_group', 4, 2, 0),
(25, 1, 28, 1, 'id_feature', 5, 2, 0),
(26, 1, 30, NULL, 'category', 1, 2, 0),
(27, 1, 30, NULL, 'price', 2, 2, 0),
(28, 1, 30, 2, 'id_attribute_group', 3, 2, 0),
(29, 1, 30, 3, 'id_attribute_group', 4, 2, 0),
(30, 1, 30, 1, 'id_feature', 5, 2, 0),
(31, 1, 32, NULL, 'category', 1, 2, 0),
(32, 1, 32, NULL, 'price', 2, 2, 0),
(33, 1, 32, 2, 'id_attribute_group', 3, 2, 0),
(34, 1, 32, 3, 'id_attribute_group', 4, 2, 0),
(35, 1, 32, 1, 'id_feature', 5, 2, 0),
(36, 1, 33, NULL, 'category', 1, 2, 0),
(37, 1, 33, NULL, 'price', 2, 2, 0),
(38, 1, 33, 2, 'id_attribute_group', 3, 2, 0),
(39, 1, 33, 3, 'id_attribute_group', 4, 2, 0),
(40, 1, 33, 1, 'id_feature', 5, 2, 0),
(41, 1, 22, NULL, 'category', 1, 2, 0),
(42, 1, 22, NULL, 'price', 2, 2, 0),
(43, 1, 22, 2, 'id_attribute_group', 3, 2, 0),
(44, 1, 22, 3, 'id_attribute_group', 4, 2, 0),
(45, 1, 22, 1, 'id_feature', 5, 2, 0),
(46, 1, 23, NULL, 'category', 1, 2, 0),
(47, 1, 23, NULL, 'price', 2, 2, 0),
(48, 1, 23, 2, 'id_attribute_group', 3, 2, 0),
(49, 1, 23, 3, 'id_attribute_group', 4, 2, 0),
(50, 1, 23, 1, 'id_feature', 5, 2, 0),
(51, 1, 29, NULL, 'category', 1, 2, 0),
(52, 1, 29, NULL, 'price', 2, 2, 0),
(53, 1, 29, 2, 'id_attribute_group', 3, 2, 0),
(54, 1, 29, 3, 'id_attribute_group', 4, 2, 0),
(55, 1, 29, 1, 'id_feature', 5, 2, 0),
(56, 1, 36, NULL, 'category', 1, 2, 0),
(57, 1, 36, NULL, 'price', 2, 2, 0),
(58, 1, 36, 2, 'id_attribute_group', 3, 2, 0),
(59, 1, 36, 3, 'id_attribute_group', 4, 2, 0),
(60, 1, 36, 1, 'id_feature', 5, 2, 0),
(61, 1, 24, NULL, 'category', 1, 2, 0),
(62, 1, 24, NULL, 'price', 2, 2, 0),
(63, 1, 24, 2, 'id_attribute_group', 3, 2, 0),
(64, 1, 24, 3, 'id_attribute_group', 4, 2, 0),
(65, 1, 24, 1, 'id_feature', 5, 2, 0),
(66, 1, 25, NULL, 'category', 1, 2, 0),
(67, 1, 25, NULL, 'price', 2, 2, 0),
(68, 1, 25, 2, 'id_attribute_group', 3, 2, 0),
(69, 1, 25, 3, 'id_attribute_group', 4, 2, 0),
(70, 1, 25, 1, 'id_feature', 5, 2, 0),
(71, 1, 26, NULL, 'category', 1, 2, 0),
(72, 1, 26, NULL, 'price', 2, 2, 0),
(73, 1, 26, 2, 'id_attribute_group', 3, 2, 0),
(74, 1, 26, 3, 'id_attribute_group', 4, 2, 0),
(75, 1, 26, 1, 'id_feature', 5, 2, 0),
(76, 1, 27, NULL, 'category', 1, 2, 0),
(77, 1, 27, NULL, 'price', 2, 2, 0),
(78, 1, 27, 2, 'id_attribute_group', 3, 2, 0),
(79, 1, 27, 3, 'id_attribute_group', 4, 2, 0),
(80, 1, 27, 1, 'id_feature', 5, 2, 0),
(81, 1, 31, NULL, 'category', 1, 2, 0),
(82, 1, 31, NULL, 'price', 2, 2, 0),
(83, 1, 31, 2, 'id_attribute_group', 3, 2, 0),
(84, 1, 31, 3, 'id_attribute_group', 4, 2, 0),
(85, 1, 31, 1, 'id_feature', 5, 2, 0),
(86, 1, 34, NULL, 'category', 1, 2, 0),
(87, 1, 34, NULL, 'price', 2, 2, 0),
(88, 1, 34, 2, 'id_attribute_group', 3, 2, 0),
(89, 1, 34, 3, 'id_attribute_group', 4, 2, 0),
(90, 1, 34, 1, 'id_feature', 5, 2, 0),
(91, 1, 35, NULL, 'category', 1, 2, 0),
(92, 1, 35, NULL, 'price', 2, 2, 0),
(93, 1, 35, 2, 'id_attribute_group', 3, 2, 0),
(94, 1, 35, 3, 'id_attribute_group', 4, 2, 0),
(95, 1, 35, 1, 'id_feature', 5, 2, 0),
(96, 1, 38, NULL, 'category', 1, 2, 0),
(97, 1, 38, NULL, 'price', 2, 2, 0),
(98, 1, 38, 2, 'id_attribute_group', 3, 2, 0),
(99, 1, 38, 3, 'id_attribute_group', 4, 2, 0),
(100, 1, 38, 1, 'id_feature', 5, 2, 0),
(101, 1, 37, NULL, 'category', 1, 2, 0),
(102, 1, 37, NULL, 'price', 2, 2, 0),
(103, 1, 37, 2, 'id_attribute_group', 3, 2, 0),
(104, 1, 37, 3, 'id_attribute_group', 4, 2, 0),
(105, 1, 37, 1, 'id_feature', 5, 2, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_filter`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_filter` (
`id_layered_filter` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `filters` text,
  `n_categories` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_layered_filter`
--

INSERT INTO `prstshp_layered_filter` (`id_layered_filter`, `name`, `filters`, `n_categories`, `date_add`) VALUES
(1, 'My template 2014-08-01', 'a:7:{s:10:"categories";a:21:{i:0;i:2;i:1;i:19;i:2;i:20;i:3;i:21;i:4;i:28;i:5;i:30;i:6;i:32;i:7;i:33;i:8;i:22;i:9;i:23;i:10;i:29;i:11;i:36;i:12;i:24;i:13;i:25;i:14;i:26;i:15;i:27;i:16;i:31;i:17;i:34;i:18;i:35;i:19;i:38;i:20;i:37;}s:9:"shop_list";a:1:{i:0;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:2;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:2;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_2";a:2:{s:11:"filter_type";i:2;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:2;s:17:"filter_show_limit";i:0;}s:24:"layered_selection_feat_1";a:2:{s:11:"filter_type";i:2;s:17:"filter_show_limit";i:0;}}', 21, '2014-08-28 14:27:49');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_filter_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_filter_shop` (
  `id_layered_filter` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_friendly_url`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_friendly_url` (
`id_layered_friendly_url` int(11) NOT NULL,
  `url_key` varchar(32) NOT NULL,
  `data` varchar(200) NOT NULL,
  `id_lang` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Zrzut danych tabeli `prstshp_layered_friendly_url`
--

INSERT INTO `prstshp_layered_friendly_url` (`id_layered_friendly_url`, `url_key`, `data`, `id_lang`) VALUES
(1, '3f1005f8be7881795fc5feddfdba756f', 'a:1:{s:8:"category";a:1:{i:1;s:1:"1";}}', 1),
(2, 'e22ad4e9f8f445df1283ec3383c55ed8', 'a:1:{s:8:"category";a:1:{i:2;s:1:"2";}}', 1),
(3, '929674e49248753da273092629bb45ec', 'a:1:{s:8:"category";a:1:{i:3;s:1:"3";}}', 1),
(4, 'c66ef06ef2ca8b06dd3d19b70727adb7', 'a:1:{s:8:"category";a:1:{i:4;s:1:"4";}}', 1),
(5, 'eaaa28d2b62b097bb8706dd014c8203b', 'a:1:{s:8:"category";a:1:{i:8;s:1:"8";}}', 1),
(6, '6fc253242f3fe98946ecdd26762e95eb', 'a:1:{s:8:"category";a:1:{i:5;s:1:"5";}}', 1),
(7, '03c8c4cf29ea8a405778f138021df5df', 'a:1:{s:8:"category";a:1:{i:7;s:1:"7";}}', 1),
(8, '2def08957abfc829e80d5279c5086b73', 'a:1:{s:8:"category";a:1:{i:9;s:1:"9";}}', 1),
(9, '84ce4d36b2b77bb85d2a7aebd27c8a67', 'a:1:{s:8:"category";a:1:{i:10;s:2:"10";}}', 1),
(10, '3f9036e3dcf0507782e3d6a1d3ca1fe1', 'a:1:{s:8:"category";a:1:{i:11;s:2:"11";}}', 1),
(11, 'c4d7335317f2f1ba381e038fb625d918', 'a:1:{s:10:"id_feature";a:1:{i:1;s:3:"5_1";}}', 1),
(12, '18f41c9cab1c150e429f1b670cae3bc1', 'a:1:{s:10:"id_feature";a:1:{i:2;s:3:"5_2";}}', 1),
(13, '823192a052e44927f06b39b32bcef002', 'a:1:{s:10:"id_feature";a:1:{i:3;s:3:"5_3";}}', 1),
(14, '905fe5b57eb2e1353911171da4ee7706', 'a:1:{s:10:"id_feature";a:1:{i:4;s:3:"5_4";}}', 1),
(15, 'ebb42f1bbf0d25b40049c14f1860b952', 'a:1:{s:10:"id_feature";a:1:{i:5;s:3:"5_5";}}', 1),
(16, 'f9a71edd8befbb99baceadc2b2fbe793', 'a:1:{s:10:"id_feature";a:1:{i:6;s:3:"5_6";}}', 1),
(17, 'e195459fb3d97a32e94673db75dcf299', 'a:1:{s:10:"id_feature";a:1:{i:7;s:3:"5_7";}}', 1),
(18, 'b7783cae5eeefc81ff4a69f4ea712ea7', 'a:1:{s:10:"id_feature";a:1:{i:8;s:3:"5_8";}}', 1),
(19, '45f1d9162a9fe2ffcf9f365eace9eeec', 'a:1:{s:10:"id_feature";a:1:{i:9;s:3:"5_9";}}', 1),
(20, '7a04872959f09781f3b883a91c5332c7', 'a:1:{s:10:"id_feature";a:1:{i:10;s:4:"6_10";}}', 1),
(21, '025d11eb379709c8e409a7d712d8e362', 'a:1:{s:10:"id_feature";a:1:{i:11;s:4:"6_11";}}', 1),
(22, 'e224c427b75f7805c14e8b63ca9e4e0c', 'a:1:{s:10:"id_feature";a:1:{i:12;s:4:"6_12";}}', 1),
(23, '677717092975926de02151dd9227864e', 'a:1:{s:10:"id_feature";a:1:{i:13;s:4:"6_13";}}', 1),
(24, '00dff7b63b6f7ddb4b341a9308422730', 'a:1:{s:10:"id_feature";a:1:{i:14;s:4:"6_14";}}', 1),
(25, 'ff721a9727728b15cd4654a462aaeea0', 'a:1:{s:10:"id_feature";a:1:{i:15;s:4:"6_15";}}', 1),
(26, '0327a5c6fbcd99ae1fa8ef01f1e7e100', 'a:1:{s:10:"id_feature";a:1:{i:16;s:4:"6_16";}}', 1),
(27, '58ddd7a988c042c25121ffeb149f3ac7', 'a:1:{s:10:"id_feature";a:1:{i:17;s:4:"7_17";}}', 1),
(28, 'b7248af6c62c1e54b6f13739739e2d17', 'a:1:{s:10:"id_feature";a:1:{i:18;s:4:"7_18";}}', 1),
(29, 'b97d201e9d169f46c2a9e6fa356e40d2', 'a:1:{s:10:"id_feature";a:1:{i:19;s:4:"7_19";}}', 1),
(30, 'de50b73f078d5cde7cc9d8efc61c9e55', 'a:1:{s:10:"id_feature";a:1:{i:20;s:4:"7_20";}}', 1),
(31, '85a3c64761151fe72e5d027e729072a3', 'a:1:{s:10:"id_feature";a:1:{i:21;s:4:"7_21";}}', 1),
(32, '97d9dd08827238b39342d37e16ee7fc3', 'a:1:{s:18:"id_attribute_group";a:1:{i:1;s:3:"1_1";}}', 1),
(33, '2f3d5048a6335cac20241e0f8cb5294e', 'a:1:{s:18:"id_attribute_group";a:1:{i:2;s:3:"1_2";}}', 1),
(34, '19819345209f29bb2865355fa2cdb800', 'a:1:{s:18:"id_attribute_group";a:1:{i:3;s:3:"1_3";}}', 1),
(35, '27dd5799da96500f9e0ab61387a556b5', 'a:1:{s:18:"id_attribute_group";a:1:{i:4;s:3:"1_4";}}', 1),
(36, '6a73ce72468db97129f092fa3d9a0b2e', 'a:1:{s:18:"id_attribute_group";a:1:{i:5;s:3:"3_5";}}', 1),
(37, 'f1fc935c7d64dfac606eb814dcc6c4a7', 'a:1:{s:18:"id_attribute_group";a:1:{i:6;s:3:"3_6";}}', 1),
(38, 'f036e061c6e0e9cd6b3c463f72f524a5', 'a:1:{s:18:"id_attribute_group";a:1:{i:7;s:3:"3_7";}}', 1),
(39, '468a278b79ece55c0ed0d3bd1b2dd01f', 'a:1:{s:18:"id_attribute_group";a:1:{i:8;s:3:"3_8";}}', 1),
(40, '8996dbd99c9d2240f117ba0d26b39b10', 'a:1:{s:18:"id_attribute_group";a:1:{i:9;s:3:"3_9";}}', 1),
(41, '601a4dd13077730810f102b18680b537', 'a:1:{s:18:"id_attribute_group";a:1:{i:10;s:4:"3_10";}}', 1),
(42, '0a68b3ba0819d7126935f51335ef9503', 'a:1:{s:18:"id_attribute_group";a:1:{i:11;s:4:"3_11";}}', 1),
(43, '5f556205d67d7c26c2726dba638c2d95', 'a:1:{s:18:"id_attribute_group";a:1:{i:12;s:4:"3_12";}}', 1),
(44, '4b4bb79b20455e8047c972f9ca69cd72', 'a:1:{s:18:"id_attribute_group";a:1:{i:13;s:4:"3_13";}}', 1),
(45, '54dd539ce8bbf02b44485941f2d8d80b', 'a:1:{s:18:"id_attribute_group";a:1:{i:14;s:4:"3_14";}}', 1),
(46, '73b845a28e9ced9709fa414f9b97dae9', 'a:1:{s:18:"id_attribute_group";a:1:{i:15;s:4:"3_15";}}', 1),
(47, 'be50cfae4c360fdb124af017a4e80905', 'a:1:{s:18:"id_attribute_group";a:1:{i:16;s:4:"3_16";}}', 1),
(48, '4c4550abfc4eec4c91e558fa9b5171c9', 'a:1:{s:18:"id_attribute_group";a:1:{i:17;s:4:"3_17";}}', 1),
(49, 'ab223cc0ca7ebf34af71e067556ee2aa', 'a:1:{s:18:"id_attribute_group";a:1:{i:24;s:4:"3_24";}}', 1),
(50, '14ef3952eddf958ec1f628065f6c7689', 'a:1:{s:8:"quantity";a:1:{i:0;i:0;}}', 1),
(51, '19e5bdea58716c8f3ff52345d1b5a442', 'a:1:{s:8:"quantity";a:1:{i:0;i:1;}}', 1),
(52, '11c2881845b925423888cd329d0c4953', 'a:1:{s:9:"condition";a:1:{s:3:"new";s:3:"new";}}', 1),
(53, '074755ccbf623ca666bd866203d0dec7', 'a:1:{s:9:"condition";a:1:{s:4:"used";s:4:"used";}}', 1),
(54, '70b63b881a45f66c86ea78ace4cfb6a7', 'a:1:{s:9:"condition";a:1:{s:11:"refurbished";s:11:"refurbished";}}', 1),
(55, '7b51d2594a28b8f82cfe82b0c3f161e7', 'a:1:{s:12:"manufacturer";a:1:{i:1;s:1:"1";}}', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_indexable_attribute_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_indexable_attribute_group` (
  `id_attribute_group` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_layered_indexable_attribute_group`
--

INSERT INTO `prstshp_layered_indexable_attribute_group` (`id_attribute_group`, `indexable`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_indexable_attribute_group_lang_value`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_indexable_attribute_group_lang_value` (
  `id_attribute_group` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) DEFAULT NULL,
  `meta_title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_layered_indexable_attribute_group_lang_value`
--

INSERT INTO `prstshp_layered_indexable_attribute_group_lang_value` (`id_attribute_group`, `id_lang`, `url_name`, `meta_title`) VALUES
(3, 1, 'rozmiar', ''),
(3, 3, 'rozmiar', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_indexable_attribute_lang_value`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_indexable_attribute_lang_value` (
  `id_attribute` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) DEFAULT NULL,
  `meta_title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_layered_indexable_attribute_lang_value`
--

INSERT INTO `prstshp_layered_indexable_attribute_lang_value` (`id_attribute`, `id_lang`, `url_name`, `meta_title`) VALUES
(25, 1, '', ''),
(26, 1, '', ''),
(27, 1, '', ''),
(28, 1, '', ''),
(29, 1, '', ''),
(30, 1, '', ''),
(31, 1, '', ''),
(32, 1, '', ''),
(33, 1, '', ''),
(34, 1, '', ''),
(35, 1, '', ''),
(36, 1, '', ''),
(37, 1, '', ''),
(38, 1, '', ''),
(39, 1, '', ''),
(40, 1, '', ''),
(41, 1, '', ''),
(42, 1, '', ''),
(43, 1, '', ''),
(44, 1, '', ''),
(45, 1, '', ''),
(46, 1, '', ''),
(47, 1, '', ''),
(48, 1, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_indexable_feature`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_indexable_feature` (
  `id_feature` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_layered_indexable_feature`
--

INSERT INTO `prstshp_layered_indexable_feature` (`id_feature`, `indexable`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_indexable_feature_lang_value`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_indexable_feature_lang_value` (
  `id_feature` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) NOT NULL,
  `meta_title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_indexable_feature_value_lang_value`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_indexable_feature_value_lang_value` (
  `id_feature_value` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) DEFAULT NULL,
  `meta_title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_layered_indexable_feature_value_lang_value`
--

INSERT INTO `prstshp_layered_indexable_feature_value_lang_value` (`id_feature_value`, `id_lang`, `url_name`, `meta_title`) VALUES
(34, 1, '', ''),
(35, 1, '', ''),
(36, 1, '', ''),
(37, 1, '', ''),
(38, 1, '', ''),
(39, 1, '', ''),
(40, 1, '', ''),
(41, 1, '', ''),
(42, 1, '', ''),
(43, 1, '', ''),
(44, 1, '', ''),
(45, 1, '', ''),
(46, 1, '', ''),
(47, 1, '', ''),
(48, 1, '', ''),
(49, 1, '', ''),
(50, 1, '', ''),
(51, 1, '', ''),
(52, 1, '', ''),
(53, 1, '', ''),
(54, 1, '', ''),
(55, 1, '', ''),
(56, 1, '', ''),
(57, 1, '', ''),
(58, 1, '', ''),
(59, 1, '', ''),
(60, 1, '', ''),
(61, 1, '', ''),
(62, 1, '', ''),
(63, 1, '', ''),
(64, 1, '', ''),
(65, 1, '', ''),
(66, 1, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_price_index`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_price_index` (
  `id_product` int(11) NOT NULL,
  `id_currency` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `price_min` int(11) NOT NULL,
  `price_max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_layered_price_index`
--

INSERT INTO `prstshp_layered_price_index` (`id_product`, `id_currency`, `id_shop`, `price_min`, `price_max`) VALUES
(1, 2, 1, 186, 229),
(2, 2, 1, 186, 229),
(3, 2, 1, 186, 229),
(4, 2, 1, 186, 229),
(5, 2, 1, 186, 229),
(6, 2, 1, 186, 229),
(7, 2, 1, 243, 299),
(8, 2, 1, 243, 299),
(9, 2, 1, 243, 299),
(10, 2, 1, 243, 299),
(11, 2, 1, 194, 239),
(12, 2, 1, 0, 0),
(13, 2, 1, 430, 529),
(14, 2, 1, 397, 489),
(15, 2, 1, 527, 649),
(16, 2, 1, 267, 329),
(17, 2, 1, 267, 329),
(18, 2, 1, 283, 349),
(19, 2, 1, 267, 329),
(20, 2, 1, 283, 349),
(21, 2, 1, 243, 299),
(22, 2, 1, 243, 299),
(23, 2, 1, 291, 359),
(24, 2, 1, 324, 399),
(25, 2, 1, 291, 359),
(26, 2, 1, 291, 359),
(27, 2, 1, 324, 399),
(28, 2, 1, 324, 399),
(29, 2, 1, 324, 399),
(30, 2, 1, 324, 399),
(31, 2, 1, 324, 399),
(32, 2, 1, 308, 379),
(33, 2, 1, 405, 499),
(34, 2, 1, 186, 229),
(35, 2, 1, 186, 229),
(36, 2, 1, 186, 229),
(37, 2, 1, 186, 229),
(38, 2, 1, 470, 579),
(39, 2, 1, 430, 529),
(40, 2, 1, 186, 229),
(41, 2, 1, 145, 179),
(42, 2, 1, 194, 239),
(43, 2, 1, 226, 279),
(44, 2, 1, 0, 0),
(45, 2, 1, 486, 599),
(46, 2, 1, 243, 299),
(47, 2, 1, 186, 229),
(48, 2, 1, 243, 299),
(49, 2, 1, 267, 329),
(50, 2, 1, 283, 349),
(51, 2, 1, 267, 329),
(52, 2, 1, 161, 199),
(53, 2, 1, 0, 0),
(54, 2, 1, 0, 0),
(55, 2, 1, 0, 0),
(56, 2, 1, 324, 399),
(57, 2, 1, 161, 199),
(58, 2, 1, 161, 199),
(59, 2, 1, 308, 379),
(60, 2, 1, 153, 189),
(61, 2, 1, 267, 329),
(62, 2, 1, 186, 229),
(63, 2, 1, 186, 229);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_layered_product_attribute`
--

CREATE TABLE IF NOT EXISTS `prstshp_layered_product_attribute` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_attribute_group` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_layered_product_attribute`
--

INSERT INTO `prstshp_layered_product_attribute` (`id_attribute`, `id_product`, `id_attribute_group`, `id_shop`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(2, 2, 2, 1),
(2, 47, 2, 1),
(3, 1, 3, 1),
(3, 4, 3, 1),
(3, 6, 3, 1),
(3, 7, 3, 1),
(3, 9, 3, 1),
(3, 10, 3, 1),
(3, 12, 3, 1),
(3, 13, 3, 1),
(3, 14, 3, 1),
(3, 15, 3, 1),
(3, 16, 3, 1),
(3, 17, 3, 1),
(3, 18, 3, 1),
(3, 19, 3, 1),
(3, 21, 3, 1),
(3, 23, 3, 1),
(3, 24, 3, 1),
(3, 25, 3, 1),
(3, 26, 3, 1),
(3, 27, 3, 1),
(3, 28, 3, 1),
(3, 29, 3, 1),
(3, 30, 3, 1),
(3, 31, 3, 1),
(3, 32, 3, 1),
(3, 33, 3, 1),
(3, 36, 3, 1),
(3, 38, 3, 1),
(3, 39, 3, 1),
(3, 40, 3, 1),
(3, 41, 3, 1),
(3, 42, 3, 1),
(3, 47, 3, 1),
(3, 51, 3, 1),
(3, 63, 3, 1),
(4, 2, 1, 1),
(5, 2, 3, 1),
(5, 4, 3, 1),
(5, 5, 3, 1),
(5, 7, 3, 1),
(5, 9, 3, 1),
(5, 10, 3, 1),
(5, 11, 3, 1),
(5, 12, 3, 1),
(5, 13, 3, 1),
(5, 14, 3, 1),
(5, 16, 3, 1),
(5, 17, 3, 1),
(5, 18, 3, 1),
(5, 20, 3, 1),
(5, 21, 3, 1),
(5, 22, 3, 1),
(5, 23, 3, 1),
(5, 24, 3, 1),
(5, 25, 3, 1),
(5, 26, 3, 1),
(5, 27, 3, 1),
(5, 28, 3, 1),
(5, 29, 3, 1),
(5, 30, 3, 1),
(5, 31, 3, 1),
(5, 32, 3, 1),
(5, 33, 3, 1),
(5, 35, 3, 1),
(5, 36, 3, 1),
(5, 38, 3, 1),
(5, 39, 3, 1),
(5, 40, 3, 1),
(5, 41, 3, 1),
(5, 45, 3, 1),
(5, 47, 3, 1),
(5, 48, 3, 1),
(5, 49, 3, 1),
(5, 51, 3, 1),
(5, 59, 3, 1),
(5, 60, 3, 1),
(5, 63, 3, 1),
(6, 3, 1, 1),
(7, 3, 2, 1),
(7, 47, 2, 1),
(8, 2, 3, 1),
(8, 3, 3, 1),
(8, 4, 3, 1),
(8, 7, 3, 1),
(8, 8, 3, 1),
(8, 9, 3, 1),
(8, 10, 3, 1),
(8, 14, 3, 1),
(8, 15, 3, 1),
(8, 18, 3, 1),
(8, 19, 3, 1),
(8, 21, 3, 1),
(8, 22, 3, 1),
(8, 23, 3, 1),
(8, 25, 3, 1),
(8, 26, 3, 1),
(8, 33, 3, 1),
(8, 34, 3, 1),
(8, 38, 3, 1),
(8, 42, 3, 1),
(8, 48, 3, 1),
(8, 49, 3, 1),
(8, 50, 3, 1),
(8, 56, 3, 1),
(8, 59, 3, 1),
(8, 62, 3, 1),
(8, 63, 3, 1),
(9, 4, 1, 1),
(10, 4, 2, 1),
(10, 47, 2, 1),
(11, 4, 3, 1),
(11, 5, 3, 1),
(11, 6, 3, 1),
(11, 7, 3, 1),
(11, 10, 3, 1),
(11, 11, 3, 1),
(11, 13, 3, 1),
(11, 14, 3, 1),
(11, 15, 3, 1),
(11, 17, 3, 1),
(11, 18, 3, 1),
(11, 19, 3, 1),
(11, 20, 3, 1),
(11, 21, 3, 1),
(11, 22, 3, 1),
(11, 23, 3, 1),
(11, 24, 3, 1),
(11, 25, 3, 1),
(11, 26, 3, 1),
(11, 27, 3, 1),
(11, 30, 3, 1),
(11, 33, 3, 1),
(11, 34, 3, 1),
(11, 38, 3, 1),
(11, 39, 3, 1),
(11, 40, 3, 1),
(11, 43, 3, 1),
(11, 47, 3, 1),
(11, 48, 3, 1),
(11, 51, 3, 1),
(11, 59, 3, 1),
(11, 61, 3, 1),
(11, 63, 3, 1),
(12, 5, 1, 1),
(13, 5, 2, 1),
(13, 19, 2, 1),
(13, 40, 2, 1),
(13, 49, 2, 1),
(14, 2, 3, 1),
(14, 4, 3, 1),
(14, 5, 3, 1),
(14, 7, 3, 1),
(14, 8, 3, 1),
(14, 10, 3, 1),
(14, 12, 3, 1),
(14, 13, 3, 1),
(14, 14, 3, 1),
(14, 15, 3, 1),
(14, 16, 3, 1),
(14, 17, 3, 1),
(14, 18, 3, 1),
(14, 19, 3, 1),
(14, 20, 3, 1),
(14, 21, 3, 1),
(14, 22, 3, 1),
(14, 23, 3, 1),
(14, 24, 3, 1),
(14, 25, 3, 1),
(14, 26, 3, 1),
(14, 27, 3, 1),
(14, 28, 3, 1),
(14, 29, 3, 1),
(14, 30, 3, 1),
(14, 31, 3, 1),
(14, 32, 3, 1),
(14, 33, 3, 1),
(14, 34, 3, 1),
(14, 37, 3, 1),
(14, 38, 3, 1),
(14, 39, 3, 1),
(14, 40, 3, 1),
(14, 41, 3, 1),
(14, 42, 3, 1),
(14, 45, 3, 1),
(14, 47, 3, 1),
(14, 49, 3, 1),
(14, 51, 3, 1),
(14, 59, 3, 1),
(14, 63, 3, 1),
(15, 6, 2, 1),
(15, 29, 2, 1),
(15, 40, 2, 1),
(15, 41, 2, 1),
(15, 43, 2, 1),
(15, 48, 2, 1),
(15, 60, 2, 1),
(16, 6, 1, 1),
(17, 7, 1, 1),
(18, 7, 2, 1),
(19, 8, 1, 1),
(20, 8, 2, 1),
(20, 11, 2, 1),
(20, 18, 2, 1),
(20, 21, 2, 1),
(20, 26, 2, 1),
(20, 28, 2, 1),
(20, 34, 2, 1),
(20, 35, 2, 1),
(20, 40, 2, 1),
(20, 42, 2, 1),
(20, 51, 2, 1),
(20, 59, 2, 1),
(20, 63, 2, 1),
(21, 9, 1, 1),
(22, 9, 2, 1),
(22, 14, 2, 1),
(22, 17, 2, 1),
(22, 40, 2, 1),
(22, 49, 2, 1),
(23, 10, 1, 1),
(24, 10, 2, 1),
(24, 22, 2, 1),
(24, 25, 2, 1),
(24, 32, 2, 1),
(24, 59, 2, 1),
(25, 11, 1, 1),
(26, 12, 1, 1),
(27, 12, 2, 1),
(28, 13, 2, 1),
(28, 15, 2, 1),
(28, 20, 2, 1),
(28, 23, 2, 1),
(28, 24, 2, 1),
(28, 27, 2, 1),
(28, 33, 2, 1),
(28, 38, 2, 1),
(28, 39, 2, 1),
(28, 41, 2, 1),
(28, 45, 2, 1),
(28, 46, 2, 1),
(28, 48, 2, 1),
(28, 50, 2, 1),
(28, 56, 2, 1),
(29, 13, 1, 1),
(30, 14, 1, 1),
(31, 15, 1, 1),
(32, 16, 1, 1),
(33, 16, 2, 1),
(33, 30, 2, 1),
(33, 51, 2, 1),
(33, 54, 2, 1),
(33, 55, 2, 1),
(34, 17, 1, 1),
(35, 18, 1, 1),
(36, 19, 1, 1),
(37, 7, 3, 1),
(37, 9, 3, 1),
(37, 19, 3, 1),
(37, 25, 3, 1),
(37, 26, 3, 1),
(37, 27, 3, 1),
(37, 35, 3, 1),
(37, 36, 3, 1),
(37, 40, 3, 1),
(37, 43, 3, 1),
(37, 46, 3, 1),
(37, 47, 3, 1),
(37, 48, 3, 1),
(38, 20, 1, 1),
(39, 21, 1, 1),
(40, 22, 1, 1),
(41, 7, 2, 1),
(42, 23, 1, 1),
(43, 24, 1, 1),
(44, 25, 1, 1),
(45, 26, 1, 1),
(46, 27, 1, 1),
(47, 28, 1, 1),
(48, 29, 1, 1),
(49, 30, 1, 1),
(50, 31, 1, 1),
(51, 31, 2, 1),
(51, 53, 2, 1),
(51, 54, 2, 1),
(51, 55, 2, 1),
(52, 32, 1, 1),
(53, 33, 1, 1),
(54, 34, 1, 1),
(55, 34, 2, 1),
(56, 35, 1, 1),
(57, 35, 2, 1),
(58, 36, 1, 1),
(59, 36, 2, 1),
(60, 37, 1, 1),
(61, 37, 2, 1),
(62, 33, 3, 1),
(62, 38, 3, 1),
(63, 38, 1, 1),
(64, 39, 1, 1),
(65, 40, 1, 1),
(66, 40, 2, 1),
(67, 9, 2, 1),
(67, 40, 2, 1),
(68, 41, 1, 1),
(69, 42, 1, 1),
(70, 43, 1, 1),
(71, 45, 1, 1),
(72, 46, 1, 1),
(73, 47, 1, 1),
(74, 47, 2, 1),
(74, 62, 2, 1),
(75, 48, 1, 1),
(76, 49, 1, 1),
(77, 50, 1, 1),
(78, 51, 1, 1),
(81, 53, 1, 1),
(82, 54, 1, 1),
(83, 55, 1, 1),
(84, 49, 2, 1),
(85, 56, 1, 1),
(89, 59, 1, 1),
(90, 60, 1, 1),
(91, 61, 1, 1),
(92, 61, 2, 1),
(93, 62, 1, 1),
(94, 63, 1, 1),
(8, 52, 3, 1),
(62, 52, 3, 1),
(79, 52, 2, 1),
(80, 52, 1, 1),
(11, 57, 3, 1),
(33, 57, 2, 1),
(62, 57, 3, 1),
(86, 57, 1, 1),
(5, 58, 3, 1),
(8, 58, 3, 1),
(37, 58, 3, 1),
(87, 58, 2, 1),
(88, 58, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_linksmenutop`
--

CREATE TABLE IF NOT EXISTS `prstshp_linksmenutop` (
`id_linksmenutop` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `new_window` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_linksmenutop`
--

INSERT INTO `prstshp_linksmenutop` (`id_linksmenutop`, `id_shop`, `new_window`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_linksmenutop_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_linksmenutop_lang` (
  `id_linksmenutop` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `label` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_linksmenutop_lang`
--

INSERT INTO `prstshp_linksmenutop_lang` (`id_linksmenutop`, `id_lang`, `id_shop`, `label`, `link`) VALUES
(1, 1, 1, 'Blog', 'http://www.prestashop.com/blog/'),
(1, 1, 1, 'Blog', 'http://www.prestashop.com/blog/'),
(1, 2, 1, 'Blog', 'http://www.prestashop.com/blog/'),
(1, 1, 0, '', ''),
(1, 3, 0, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_log`
--

CREATE TABLE IF NOT EXISTS `prstshp_log` (
`id_log` int(10) unsigned NOT NULL,
  `severity` tinyint(1) NOT NULL,
  `error_code` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Zrzut danych tabeli `prstshp_log`
--

INSERT INTO `prstshp_log` (`id_log`, `severity`, `error_code`, `message`, `object_type`, `object_id`, `id_employee`, `date_add`, `date_upd`) VALUES
(1, 1, 0, 'Language edition', 'Language', 2, 1, '2014-08-26 04:02:59', '2014-08-26 04:02:59'),
(2, 1, 0, 'Language edition', 'Language', 2, 1, '2014-08-26 04:03:51', '2014-08-26 04:03:51'),
(3, 1, 0, 'Language edition', 'Language', 2, 1, '2014-08-26 04:05:08', '2014-08-26 04:05:08'),
(4, 1, 0, 'Language edition', 'Language', 2, 1, '2014-08-26 04:06:10', '2014-08-26 04:06:10'),
(5, 1, 0, 'Language edition', 'Language', 2, 1, '2014-08-26 04:06:39', '2014-08-26 04:06:39'),
(6, 1, 0, 'Language edition', 'Language', 2, 1, '2014-08-26 04:09:57', '2014-08-26 04:09:57'),
(7, 1, 0, 'Language edition', 'Language', 1, 1, '2014-08-26 04:12:43', '2014-08-26 04:12:43'),
(8, 1, 0, 'Language edition', 'Language', 1, 1, '2014-08-26 04:18:00', '2014-08-26 04:18:00'),
(9, 1, 0, 'Language edition', 'Language', 2, 1, '2014-08-26 04:19:49', '2014-08-26 04:19:49'),
(10, 1, 0, 'Language deletion', 'Language', 2, 1, '2014-08-26 04:19:54', '2014-08-26 04:19:54'),
(11, 1, 0, 'Employee edition', 'Employee', 1, 1, '2014-08-26 10:30:25', '2014-08-26 10:30:25'),
(12, 1, 0, 'dodanie WebserviceKey', 'WebserviceKey', 1, 1, '2014-08-26 10:36:16', '2014-08-26 10:36:16'),
(13, 1, 0, 'usunięcie Carrier', 'Carrier', 1, 1, '2014-08-26 10:44:44', '2014-08-26 10:44:44'),
(14, 1, 0, 'usunięcie Carrier', 'Carrier', 2, 1, '2014-08-26 10:44:44', '2014-08-26 10:44:44'),
(15, 1, 0, 'usunięcie Carrier', 'Carrier', 3, 1, '2014-08-26 10:44:44', '2014-08-26 10:44:44'),
(16, 1, 0, 'edycja Language', 'Language', 1, 1, '2014-08-26 10:55:53', '2014-08-26 10:55:53'),
(17, 1, 0, 'edycja Currency', 'Currency', 1, 1, '2014-08-26 10:56:09', '2014-08-26 10:56:09'),
(18, 1, 0, 'edycja Product', 'Product', 4, 1, '2014-08-28 10:11:04', '2014-08-28 10:11:04'),
(19, 1, 0, 'edycja Category', 'Category', 37, 1, '2014-08-28 10:21:14', '2014-08-28 10:21:14'),
(20, 1, 0, 'edycja Product', 'Product', 4, 1, '2014-08-28 10:21:58', '2014-08-28 10:21:58'),
(21, 1, 0, 'edycja Product', 'Product', 4, 1, '2014-08-28 10:30:14', '2014-08-28 10:30:14'),
(22, 1, 0, 'edycja Product', 'Product', 4, 1, '2014-08-28 10:30:26', '2014-08-28 10:30:26'),
(23, 1, 0, 'edycja Product', 'Product', 4, 1, '2014-08-28 10:30:41', '2014-08-28 10:30:41'),
(24, 1, 0, 'edycja AttributeGroup', 'AttributeGroup', 3, 1, '2014-08-28 11:09:59', '2014-08-28 11:09:59'),
(25, 1, 0, 'edycja Product', 'Product', 4, 1, '2014-08-28 12:03:57', '2014-08-28 12:03:57'),
(26, 1, 0, 'edycja Product', 'Product', 1, 1, '2014-08-28 12:04:27', '2014-08-28 12:04:27'),
(27, 1, 0, 'edycja Product', 'Product', 1, 1, '2014-08-28 12:04:42', '2014-08-28 12:04:42'),
(28, 1, 0, 'edycja Product', 'Product', 2, 1, '2014-08-28 12:05:08', '2014-08-28 12:05:08'),
(29, 1, 0, 'edycja Product', 'Product', 3, 1, '2014-08-28 12:06:07', '2014-08-28 12:06:07'),
(30, 1, 0, 'edycja Product', 'Product', 62, 1, '2014-08-28 12:07:44', '2014-08-28 12:07:44'),
(31, 1, 0, 'edycja Product', 'Product', 62, 1, '2014-08-28 12:07:59', '2014-08-28 12:07:59'),
(32, 1, 0, 'edycja Product', 'Product', 1, 1, '2014-08-28 13:03:41', '2014-08-28 13:03:41'),
(33, 1, 0, 'edycja Product', 'Product', 2, 1, '2014-08-28 13:03:50', '2014-08-28 13:03:50'),
(34, 1, 0, 'edycja Product', 'Product', 3, 1, '2014-08-28 13:03:58', '2014-08-28 13:03:58'),
(35, 1, 0, 'edycja Product', 'Product', 4, 1, '2014-08-28 13:04:06', '2014-08-28 13:04:06'),
(36, 1, 0, 'edycja Product', 'Product', 2, 1, '2014-08-28 13:05:08', '2014-08-28 13:05:08'),
(37, 1, 0, 'edycja Product', 'Product', 44, 1, '2014-08-28 14:08:54', '2014-08-28 14:08:54'),
(38, 1, 0, 'edycja Product', 'Product', 44, 1, '2014-08-28 14:09:09', '2014-08-28 14:09:09'),
(39, 1, 0, 'edycja Product', 'Product', 52, 1, '2014-08-28 14:10:08', '2014-08-28 14:10:08'),
(40, 1, 0, 'edycja Product', 'Product', 57, 1, '2014-08-28 14:10:13', '2014-08-28 14:10:13'),
(41, 1, 0, 'edycja Product', 'Product', 58, 1, '2014-08-28 14:10:15', '2014-08-28 14:10:15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_mailalert_customer_oos`
--

CREATE TABLE IF NOT EXISTS `prstshp_mailalert_customer_oos` (
  `id_customer` int(10) unsigned NOT NULL,
  `customer_email` varchar(128) NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_manufacturer`
--

CREATE TABLE IF NOT EXISTS `prstshp_manufacturer` (
`id_manufacturer` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_manufacturer_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_manufacturer_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_manufacturer_shop` (
  `id_manufacturer` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_memcached_servers`
--

CREATE TABLE IF NOT EXISTS `prstshp_memcached_servers` (
`id_memcached_server` int(11) unsigned NOT NULL,
  `ip` varchar(254) NOT NULL,
  `port` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_message`
--

CREATE TABLE IF NOT EXISTS `prstshp_message` (
`id_message` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_message_readed`
--

CREATE TABLE IF NOT EXISTS `prstshp_message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_meta`
--

CREATE TABLE IF NOT EXISTS `prstshp_meta` (
`id_meta` int(10) unsigned NOT NULL,
  `page` varchar(64) NOT NULL,
  `configurable` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Zrzut danych tabeli `prstshp_meta`
--

INSERT INTO `prstshp_meta` (`id_meta`, `page`, `configurable`) VALUES
(1, '404', 1),
(2, 'best-sales', 1),
(3, 'contact', 1),
(4, 'index', 1),
(5, 'manufacturer', 1),
(6, 'new-products', 1),
(7, 'password', 1),
(8, 'prices-drop', 1),
(9, 'sitemap', 1),
(10, 'supplier', 1),
(11, 'address', 1),
(12, 'addresses', 1),
(13, 'authentication', 1),
(14, 'cart', 1),
(15, 'discount', 1),
(16, 'history', 1),
(17, 'identity', 1),
(18, 'my-account', 1),
(19, 'order-follow', 1),
(20, 'order-slip', 1),
(21, 'order', 1),
(22, 'search', 1),
(23, 'stores', 1),
(24, 'order-opc', 1),
(25, 'guest-tracking', 1),
(26, 'order-confirmation', 1),
(27, 'product', 0),
(28, 'category', 0),
(29, 'cms', 0),
(30, 'module-cheque-payment', 0),
(31, 'module-cheque-validation', 0),
(32, 'module-bankwire-validation', 0),
(33, 'module-bankwire-payment', 0),
(34, 'products-comparison', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_meta_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_meta_lang`
--

INSERT INTO `prstshp_meta_lang` (`id_meta`, `id_shop`, `id_lang`, `title`, `description`, `keywords`, `url_rewrite`) VALUES
(1, 1, 1, '404 error', 'This page cannot be found', '', 'page-not-found'),
(1, 1, 2, '404 error', 'This page cannot be found', '', 'page-not-found'),
(1, 1, 3, '404 error', 'This page cannot be found', '', 'page-not-found'),
(2, 1, 1, 'Best sales', 'Our best sales', '', 'best-sales'),
(2, 1, 2, 'Best sales', 'Our best sales', '', 'best-sales'),
(2, 1, 3, 'Best sales', 'Our best sales', '', 'best-sales'),
(3, 1, 1, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(3, 1, 2, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(3, 1, 3, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(4, 1, 1, '', 'Shop powered by PrestaShop', '', ''),
(4, 1, 2, '', 'Shop powered by PrestaShop', '', ''),
(4, 1, 3, '', 'Shop powered by PrestaShop', '', ''),
(5, 1, 1, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(5, 1, 2, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(5, 1, 3, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(6, 1, 1, 'New products', 'Our new products', '', 'new-products'),
(6, 1, 2, 'New products', 'Our new products', '', 'new-products'),
(6, 1, 3, 'New products', 'Our new products', '', 'new-products'),
(7, 1, 1, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', '', 'password-recovery'),
(7, 1, 2, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', '', 'password-recovery'),
(7, 1, 3, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', '', 'password-recovery'),
(8, 1, 1, 'Prices drop', 'Our special products', '', 'prices-drop'),
(8, 1, 2, 'Prices drop', 'Our special products', '', 'prices-drop'),
(8, 1, 3, 'Prices drop', 'Our special products', '', 'prices-drop'),
(9, 1, 1, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(9, 1, 2, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(9, 1, 3, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(10, 1, 1, 'Suppliers', 'Suppliers list', '', 'supplier'),
(10, 1, 2, 'Suppliers', 'Suppliers list', '', 'supplier'),
(10, 1, 3, 'Suppliers', 'Suppliers list', '', 'supplier'),
(11, 1, 1, 'Address', '', '', 'address'),
(11, 1, 2, 'Address', '', '', 'address'),
(11, 1, 3, 'Address', '', '', 'address'),
(12, 1, 1, 'Addresses', '', '', 'addresses'),
(12, 1, 2, 'Addresses', '', '', 'addresses'),
(12, 1, 3, 'Addresses', '', '', 'addresses'),
(13, 1, 1, 'Login', '', '', 'login'),
(13, 1, 2, 'Login', '', '', 'login'),
(13, 1, 3, 'Login', '', '', 'login'),
(14, 1, 1, 'Cart', '', '', 'cart'),
(14, 1, 2, 'Cart', '', '', 'cart'),
(14, 1, 3, 'Cart', '', '', 'cart'),
(15, 1, 1, 'Discount', '', '', 'discount'),
(15, 1, 2, 'Discount', '', '', 'discount'),
(15, 1, 3, 'Discount', '', '', 'discount'),
(16, 1, 1, 'Order history', '', '', 'order-history'),
(16, 1, 2, 'Order history', '', '', 'order-history'),
(16, 1, 3, 'Order history', '', '', 'order-history'),
(17, 1, 1, 'Identity', '', '', 'identity'),
(17, 1, 2, 'Identity', '', '', 'identity'),
(17, 1, 3, 'Identity', '', '', 'identity'),
(18, 1, 1, 'My account', '', '', 'my-account'),
(18, 1, 2, 'My account', '', '', 'my-account'),
(18, 1, 3, 'My account', '', '', 'my-account'),
(19, 1, 1, 'Order follow', '', '', 'order-follow'),
(19, 1, 2, 'Order follow', '', '', 'order-follow'),
(19, 1, 3, 'Order follow', '', '', 'order-follow'),
(20, 1, 1, 'Order slip', '', '', 'order-slip'),
(20, 1, 2, 'Order slip', '', '', 'order-slip'),
(20, 1, 3, 'Order slip', '', '', 'order-slip'),
(21, 1, 1, 'Order', '', '', 'order'),
(21, 1, 2, 'Order', '', '', 'order'),
(21, 1, 3, 'Order', '', '', 'order'),
(22, 1, 1, 'Search', '', '', 'search'),
(22, 1, 2, 'Search', '', '', 'search'),
(22, 1, 3, 'Search', '', '', 'search'),
(23, 1, 1, 'Stores', '', '', 'stores'),
(23, 1, 2, 'Stores', '', '', 'stores'),
(23, 1, 3, 'Stores', '', '', 'stores'),
(24, 1, 1, 'Order', '', '', 'quick-order'),
(24, 1, 2, 'Order', '', '', 'quick-order'),
(24, 1, 3, 'Order', '', '', 'quick-order'),
(25, 1, 1, 'Guest tracking', '', '', 'guest-tracking'),
(25, 1, 2, 'Guest tracking', '', '', 'guest-tracking'),
(25, 1, 3, 'Guest tracking', '', '', 'guest-tracking'),
(26, 1, 1, 'Order confirmation', '', '', 'order-confirmation'),
(26, 1, 2, 'Order confirmation', '', '', 'order-confirmation'),
(26, 1, 3, 'Order confirmation', '', '', 'order-confirmation'),
(27, 0, 1, NULL, NULL, NULL, ''),
(27, 0, 2, NULL, NULL, NULL, ''),
(27, 0, 3, NULL, NULL, NULL, ''),
(28, 0, 1, NULL, NULL, NULL, ''),
(28, 0, 2, NULL, NULL, NULL, ''),
(28, 0, 3, NULL, NULL, NULL, ''),
(29, 0, 1, NULL, NULL, NULL, ''),
(29, 0, 2, NULL, NULL, NULL, ''),
(29, 0, 3, NULL, NULL, NULL, ''),
(30, 0, 1, NULL, NULL, NULL, ''),
(30, 0, 2, NULL, NULL, NULL, ''),
(30, 0, 3, NULL, NULL, NULL, ''),
(31, 0, 1, NULL, NULL, NULL, ''),
(31, 0, 2, NULL, NULL, NULL, ''),
(31, 0, 3, NULL, NULL, NULL, ''),
(32, 0, 1, NULL, NULL, NULL, ''),
(32, 0, 2, NULL, NULL, NULL, ''),
(32, 0, 3, NULL, NULL, NULL, ''),
(33, 0, 1, NULL, NULL, NULL, ''),
(33, 0, 2, NULL, NULL, NULL, ''),
(33, 0, 3, NULL, NULL, NULL, ''),
(34, 1, 1, 'Products Comparison', '', '', 'products-comparison'),
(34, 1, 2, 'Products Comparison', '', '', 'products-comparison'),
(34, 1, 3, 'Products Comparison', '', '', 'products-comparison');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_module`
--

CREATE TABLE IF NOT EXISTS `prstshp_module` (
`id_module` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Zrzut danych tabeli `prstshp_module`
--

INSERT INTO `prstshp_module` (`id_module`, `name`, `active`, `version`) VALUES
(1, 'socialsharing', 1, '1.2.7'),
(2, 'blockbanner', 1, '1.3.2'),
(3, 'bankwire', 1, '1.0.1'),
(4, 'blockbestsellers', 1, '1.5.7'),
(5, 'blockcart', 1, '1.5.1'),
(6, 'blocksocial', 1, '1.1.3'),
(7, 'blockcategories', 1, '2.8.2'),
(8, 'blockcurrencies', 1, '0.3.1'),
(9, 'blockfacebook', 1, '1.3.2'),
(10, 'blocklanguages', 1, '1.3.2'),
(11, 'blocklayered', 1, '2.0.1'),
(12, 'blockcms', 1, '2.0.0'),
(13, 'blockcmsinfo', 1, '1.5.2'),
(14, 'blockcontact', 1, '1.3.1'),
(15, 'blockcontactinfos', 1, '1.1.1'),
(16, 'blockmanufacturer', 1, '1.2.1'),
(17, 'blockmyaccount', 1, '1.3.1'),
(18, 'blockmyaccountfooter', 1, '1.5.1'),
(19, 'blocknewproducts', 1, '1.9.1'),
(20, 'blocknewsletter', 1, '2.0'),
(21, 'blockpaymentlogo', 1, '0.3.2'),
(22, 'blocksearch', 1, '1.5.1'),
(23, 'blockspecials', 1, '1.1.1'),
(24, 'blockstore', 1, '1.2.1'),
(25, 'blocksupplier', 1, '1.1.1'),
(26, 'blocktags', 1, '1.2.1'),
(27, 'blocktopmenu', 1, '2.0.2'),
(28, 'blockuserinfo', 1, '0.3.1'),
(29, 'blockviewed', 1, '1.2'),
(30, 'cheque', 1, '2.5.1'),
(31, 'dashactivity', 1, '0.4.1'),
(32, 'dashtrends', 1, '0.6'),
(33, 'dashgoals', 1, '0.6.0'),
(34, 'dashproducts', 1, '0.3.1'),
(35, 'graphnvd3', 1, '1.3'),
(36, 'gridhtml', 1, '1.2.2'),
(37, 'homeslider', 1, '1.4.1'),
(38, 'homefeatured', 1, '1.5'),
(39, 'productpaymentlogos', 1, '1.3.6'),
(40, 'pagesnotfound', 1, '1.3.3'),
(41, 'sekeywords', 1, '1.2.3'),
(42, 'statsbestcategories', 1, '1.4.1'),
(43, 'statsbestcustomers', 1, '1.4.1'),
(44, 'statsbestproducts', 1, '1.4.1'),
(45, 'statsbestsuppliers', 1, '1.3.1'),
(46, 'statsbestvouchers', 1, '1.4.1'),
(47, 'statscarrier', 1, '1.3.1'),
(48, 'statscatalog', 1, '1.2.3'),
(49, 'statscheckup', 1, '1.3.1'),
(50, 'statsdata', 1, '1.4.1'),
(51, 'statsequipment', 1, '1.2.2'),
(52, 'statsforecast', 1, '1.3.3'),
(53, 'statslive', 1, '1.2.2'),
(54, 'statsnewsletter', 1, '1.3.1'),
(55, 'statsorigin', 1, '1.3.1'),
(56, 'statspersonalinfos', 1, '1.3.1'),
(57, 'statsproduct', 1, '1.3.1'),
(58, 'statsregistrations', 1, '1.3.1'),
(59, 'statssales', 1, '1.2.2'),
(60, 'statssearch', 1, '1.3.2'),
(61, 'statsstock', 1, '1.4.1'),
(62, 'statsvisits', 1, '1.5.1'),
(63, 'themeconfigurator', 1, '1.1.2'),
(64, 'gamification', 1, '1.9.6'),
(65, 'blockwishlist', 1, '1.0'),
(66, 'productcomments', 1, '3.3.6'),
(67, 'sendtoafriend', 1, '1.7.2'),
(68, 'mailalerts', 1, '3.4.1'),
(69, 'pscleaner', 1, '1.8.2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_module_access`
--

CREATE TABLE IF NOT EXISTS `prstshp_module_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_module` int(10) unsigned NOT NULL,
  `view` tinyint(1) NOT NULL,
  `configure` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_module_access`
--

INSERT INTO `prstshp_module_access` (`id_profile`, `id_module`, `view`, `configure`) VALUES
(2, 1, 1, 1),
(2, 2, 1, 1),
(2, 3, 1, 1),
(2, 4, 1, 1),
(2, 5, 1, 1),
(2, 6, 1, 1),
(2, 7, 1, 1),
(2, 8, 1, 1),
(2, 9, 1, 1),
(2, 10, 1, 1),
(2, 11, 1, 1),
(2, 12, 1, 1),
(2, 13, 1, 1),
(2, 14, 1, 1),
(2, 15, 1, 1),
(2, 16, 1, 1),
(2, 17, 1, 1),
(2, 18, 1, 1),
(2, 19, 1, 1),
(2, 20, 1, 1),
(2, 21, 1, 1),
(2, 22, 1, 1),
(2, 23, 1, 1),
(2, 24, 1, 1),
(2, 25, 1, 1),
(2, 26, 1, 1),
(2, 27, 1, 1),
(2, 28, 1, 1),
(2, 29, 1, 1),
(2, 30, 1, 1),
(2, 31, 1, 1),
(2, 32, 1, 1),
(2, 33, 1, 1),
(2, 34, 1, 1),
(2, 35, 1, 1),
(2, 36, 1, 1),
(2, 37, 1, 1),
(2, 38, 1, 1),
(2, 39, 1, 1),
(2, 40, 1, 1),
(2, 41, 1, 1),
(2, 42, 1, 1),
(2, 43, 1, 1),
(2, 44, 1, 1),
(2, 45, 1, 1),
(2, 46, 1, 1),
(2, 47, 1, 1),
(2, 48, 1, 1),
(2, 49, 1, 1),
(2, 50, 1, 1),
(2, 51, 1, 1),
(2, 52, 1, 1),
(2, 53, 1, 1),
(2, 54, 1, 1),
(2, 55, 1, 1),
(2, 56, 1, 1),
(2, 57, 1, 1),
(2, 58, 1, 1),
(2, 59, 1, 1),
(2, 60, 1, 1),
(2, 61, 1, 1),
(2, 62, 1, 1),
(2, 63, 1, 1),
(2, 64, 1, 1),
(2, 65, 1, 1),
(2, 66, 1, 1),
(2, 67, 1, 1),
(2, 68, 1, 1),
(2, 69, 1, 1),
(3, 1, 1, 0),
(3, 2, 1, 0),
(3, 3, 1, 0),
(3, 4, 1, 0),
(3, 5, 1, 0),
(3, 6, 1, 0),
(3, 7, 1, 0),
(3, 8, 1, 0),
(3, 9, 1, 0),
(3, 10, 1, 0),
(3, 11, 1, 0),
(3, 12, 1, 0),
(3, 13, 1, 0),
(3, 14, 1, 0),
(3, 15, 1, 0),
(3, 16, 1, 0),
(3, 17, 1, 0),
(3, 18, 1, 0),
(3, 19, 1, 0),
(3, 20, 1, 0),
(3, 21, 1, 0),
(3, 22, 1, 0),
(3, 23, 1, 0),
(3, 24, 1, 0),
(3, 25, 1, 0),
(3, 26, 1, 0),
(3, 27, 1, 0),
(3, 28, 1, 0),
(3, 29, 1, 0),
(3, 30, 1, 0),
(3, 31, 1, 0),
(3, 32, 1, 0),
(3, 33, 1, 0),
(3, 34, 1, 0),
(3, 35, 1, 0),
(3, 36, 1, 0),
(3, 37, 1, 0),
(3, 38, 1, 0),
(3, 39, 1, 0),
(3, 40, 1, 0),
(3, 41, 1, 0),
(3, 42, 1, 0),
(3, 43, 1, 0),
(3, 44, 1, 0),
(3, 45, 1, 0),
(3, 46, 1, 0),
(3, 47, 1, 0),
(3, 48, 1, 0),
(3, 49, 1, 0),
(3, 50, 1, 0),
(3, 51, 1, 0),
(3, 52, 1, 0),
(3, 53, 1, 0),
(3, 54, 1, 0),
(3, 55, 1, 0),
(3, 56, 1, 0),
(3, 57, 1, 0),
(3, 58, 1, 0),
(3, 59, 1, 0),
(3, 60, 1, 0),
(3, 61, 1, 0),
(3, 62, 1, 0),
(3, 63, 1, 0),
(3, 64, 1, 0),
(3, 65, 1, 0),
(3, 66, 1, 0),
(3, 67, 1, 0),
(3, 68, 1, 0),
(3, 69, 1, 0),
(4, 1, 1, 1),
(4, 2, 1, 1),
(4, 3, 1, 1),
(4, 4, 1, 1),
(4, 5, 1, 1),
(4, 6, 1, 1),
(4, 7, 1, 1),
(4, 8, 1, 1),
(4, 9, 1, 1),
(4, 10, 1, 1),
(4, 11, 1, 1),
(4, 12, 1, 1),
(4, 13, 1, 1),
(4, 14, 1, 1),
(4, 15, 1, 1),
(4, 16, 1, 1),
(4, 17, 1, 1),
(4, 18, 1, 1),
(4, 19, 1, 1),
(4, 20, 1, 1),
(4, 21, 1, 1),
(4, 22, 1, 1),
(4, 23, 1, 1),
(4, 24, 1, 1),
(4, 25, 1, 1),
(4, 26, 1, 1),
(4, 27, 1, 1),
(4, 28, 1, 1),
(4, 29, 1, 1),
(4, 30, 1, 1),
(4, 31, 1, 1),
(4, 32, 1, 1),
(4, 33, 1, 1),
(4, 34, 1, 1),
(4, 35, 1, 1),
(4, 36, 1, 1),
(4, 37, 1, 1),
(4, 38, 1, 1),
(4, 39, 1, 1),
(4, 40, 1, 1),
(4, 41, 1, 1),
(4, 42, 1, 1),
(4, 43, 1, 1),
(4, 44, 1, 1),
(4, 45, 1, 1),
(4, 46, 1, 1),
(4, 47, 1, 1),
(4, 48, 1, 1),
(4, 49, 1, 1),
(4, 50, 1, 1),
(4, 51, 1, 1),
(4, 52, 1, 1),
(4, 53, 1, 1),
(4, 54, 1, 1),
(4, 55, 1, 1),
(4, 56, 1, 1),
(4, 57, 1, 1),
(4, 58, 1, 1),
(4, 59, 1, 1),
(4, 60, 1, 1),
(4, 61, 1, 1),
(4, 62, 1, 1),
(4, 63, 1, 1),
(4, 64, 1, 1),
(4, 65, 1, 1),
(4, 66, 1, 1),
(4, 67, 1, 1),
(4, 68, 1, 1),
(4, 69, 1, 1),
(5, 1, 1, 0),
(5, 2, 1, 0),
(5, 3, 1, 0),
(5, 4, 1, 0),
(5, 5, 1, 0),
(5, 6, 1, 0),
(5, 7, 1, 0),
(5, 8, 1, 0),
(5, 9, 1, 0),
(5, 10, 1, 0),
(5, 11, 1, 0),
(5, 12, 1, 0),
(5, 13, 1, 0),
(5, 14, 1, 0),
(5, 15, 1, 0),
(5, 16, 1, 0),
(5, 17, 1, 0),
(5, 18, 1, 0),
(5, 19, 1, 0),
(5, 20, 1, 0),
(5, 21, 1, 0),
(5, 22, 1, 0),
(5, 23, 1, 0),
(5, 24, 1, 0),
(5, 25, 1, 0),
(5, 26, 1, 0),
(5, 27, 1, 0),
(5, 28, 1, 0),
(5, 29, 1, 0),
(5, 30, 1, 0),
(5, 31, 1, 0),
(5, 32, 1, 0),
(5, 33, 1, 0),
(5, 34, 1, 0),
(5, 35, 1, 0),
(5, 36, 1, 0),
(5, 37, 1, 0),
(5, 38, 1, 0),
(5, 39, 1, 0),
(5, 40, 1, 0),
(5, 41, 1, 0),
(5, 42, 1, 0),
(5, 43, 1, 0),
(5, 44, 1, 0),
(5, 45, 1, 0),
(5, 46, 1, 0),
(5, 47, 1, 0),
(5, 48, 1, 0),
(5, 49, 1, 0),
(5, 50, 1, 0),
(5, 51, 1, 0),
(5, 52, 1, 0),
(5, 53, 1, 0),
(5, 54, 1, 0),
(5, 55, 1, 0),
(5, 56, 1, 0),
(5, 57, 1, 0),
(5, 58, 1, 0),
(5, 59, 1, 0),
(5, 60, 1, 0),
(5, 61, 1, 0),
(5, 62, 1, 0),
(5, 63, 1, 0),
(5, 64, 1, 0),
(5, 65, 1, 0),
(5, 66, 1, 0),
(5, 67, 1, 0),
(5, 68, 1, 0),
(5, 69, 1, 0),
(6, 1, 1, 0),
(6, 2, 1, 0),
(6, 3, 1, 0),
(6, 4, 1, 0),
(6, 5, 1, 0),
(6, 6, 1, 0),
(6, 7, 1, 0),
(6, 8, 1, 0),
(6, 9, 1, 0),
(6, 10, 1, 0),
(6, 11, 1, 0),
(6, 12, 1, 0),
(6, 13, 1, 0),
(6, 14, 1, 0),
(6, 15, 1, 0),
(6, 16, 1, 0),
(6, 17, 1, 0),
(6, 18, 1, 0),
(6, 19, 1, 0),
(6, 20, 1, 0),
(6, 21, 1, 0),
(6, 22, 1, 0),
(6, 23, 1, 0),
(6, 24, 1, 0),
(6, 25, 1, 0),
(6, 26, 1, 0),
(6, 27, 1, 0),
(6, 28, 1, 0),
(6, 29, 1, 0),
(6, 30, 1, 0),
(6, 31, 1, 0),
(6, 32, 1, 0),
(6, 33, 1, 0),
(6, 34, 1, 0),
(6, 35, 1, 0),
(6, 36, 1, 0),
(6, 37, 1, 0),
(6, 38, 1, 0),
(6, 39, 1, 0),
(6, 40, 1, 0),
(6, 41, 1, 0),
(6, 42, 1, 0),
(6, 43, 1, 0),
(6, 44, 1, 0),
(6, 45, 1, 0),
(6, 46, 1, 0),
(6, 47, 1, 0),
(6, 48, 1, 0),
(6, 49, 1, 0),
(6, 50, 1, 0),
(6, 51, 1, 0),
(6, 52, 1, 0),
(6, 53, 1, 0),
(6, 54, 1, 0),
(6, 55, 1, 0),
(6, 56, 1, 0),
(6, 57, 1, 0),
(6, 58, 1, 0),
(6, 59, 1, 0),
(6, 60, 1, 0),
(6, 61, 1, 0),
(6, 62, 1, 0),
(6, 63, 1, 0),
(6, 64, 1, 0),
(6, 65, 1, 0),
(6, 66, 1, 0),
(6, 67, 1, 0),
(6, 68, 1, 0),
(6, 69, 1, 0),
(7, 1, 1, 0),
(7, 2, 1, 0),
(7, 3, 1, 0),
(7, 4, 1, 0),
(7, 5, 1, 0),
(7, 6, 1, 0),
(7, 7, 1, 0),
(7, 8, 1, 0),
(7, 9, 1, 0),
(7, 10, 1, 0),
(7, 11, 1, 0),
(7, 12, 1, 0),
(7, 13, 1, 0),
(7, 14, 1, 0),
(7, 15, 1, 0),
(7, 16, 1, 0),
(7, 17, 1, 0),
(7, 18, 1, 0),
(7, 19, 1, 0),
(7, 20, 1, 0),
(7, 21, 1, 0),
(7, 22, 1, 0),
(7, 23, 1, 0),
(7, 24, 1, 0),
(7, 25, 1, 0),
(7, 26, 1, 0),
(7, 27, 1, 0),
(7, 28, 1, 0),
(7, 29, 1, 0),
(7, 30, 1, 0),
(7, 31, 1, 0),
(7, 32, 1, 0),
(7, 33, 1, 0),
(7, 34, 1, 0),
(7, 35, 1, 0),
(7, 36, 1, 0),
(7, 37, 1, 0),
(7, 38, 1, 0),
(7, 39, 1, 0),
(7, 40, 1, 0),
(7, 41, 1, 0),
(7, 42, 1, 0),
(7, 43, 1, 0),
(7, 44, 1, 0),
(7, 45, 1, 0),
(7, 46, 1, 0),
(7, 47, 1, 0),
(7, 48, 1, 0),
(7, 49, 1, 0),
(7, 50, 1, 0),
(7, 51, 1, 0),
(7, 52, 1, 0),
(7, 53, 1, 0),
(7, 54, 1, 0),
(7, 55, 1, 0),
(7, 56, 1, 0),
(7, 57, 1, 0),
(7, 58, 1, 0),
(7, 59, 1, 0),
(7, 60, 1, 0),
(7, 61, 1, 0),
(7, 62, 1, 0),
(7, 63, 1, 0),
(7, 64, 1, 0),
(7, 65, 1, 0),
(7, 66, 1, 0),
(7, 67, 1, 0),
(7, 68, 1, 0),
(7, 69, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_module_country`
--

CREATE TABLE IF NOT EXISTS `prstshp_module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_country` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_module_country`
--

INSERT INTO `prstshp_module_country` (`id_module`, `id_shop`, `id_country`) VALUES
(3, 1, 21),
(30, 1, 21);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_module_currency`
--

CREATE TABLE IF NOT EXISTS `prstshp_module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_module_currency`
--

INSERT INTO `prstshp_module_currency` (`id_module`, `id_shop`, `id_currency`) VALUES
(3, 1, 1),
(3, 1, 2),
(30, 1, 1),
(30, 1, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_module_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_group` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_module_group`
--

INSERT INTO `prstshp_module_group` (`id_module`, `id_shop`, `id_group`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(2, 1, 1),
(2, 1, 2),
(2, 1, 3),
(3, 1, 1),
(3, 1, 2),
(3, 1, 3),
(4, 1, 1),
(4, 1, 2),
(4, 1, 3),
(5, 1, 1),
(5, 1, 2),
(5, 1, 3),
(6, 1, 1),
(6, 1, 2),
(6, 1, 3),
(7, 1, 1),
(7, 1, 2),
(7, 1, 3),
(8, 1, 1),
(8, 1, 2),
(8, 1, 3),
(9, 1, 1),
(9, 1, 2),
(9, 1, 3),
(10, 1, 1),
(10, 1, 2),
(10, 1, 3),
(11, 1, 1),
(11, 1, 2),
(11, 1, 3),
(12, 1, 1),
(12, 1, 2),
(12, 1, 3),
(13, 1, 1),
(13, 1, 2),
(13, 1, 3),
(14, 1, 1),
(14, 1, 2),
(14, 1, 3),
(15, 1, 1),
(15, 1, 2),
(15, 1, 3),
(16, 1, 1),
(16, 1, 2),
(16, 1, 3),
(17, 1, 1),
(17, 1, 2),
(17, 1, 3),
(18, 1, 1),
(18, 1, 2),
(18, 1, 3),
(19, 1, 1),
(19, 1, 2),
(19, 1, 3),
(20, 1, 1),
(20, 1, 2),
(20, 1, 3),
(21, 1, 1),
(21, 1, 2),
(21, 1, 3),
(22, 1, 1),
(22, 1, 2),
(22, 1, 3),
(23, 1, 1),
(23, 1, 2),
(23, 1, 3),
(24, 1, 1),
(24, 1, 2),
(24, 1, 3),
(25, 1, 1),
(25, 1, 2),
(25, 1, 3),
(26, 1, 1),
(26, 1, 2),
(26, 1, 3),
(27, 1, 1),
(27, 1, 2),
(27, 1, 3),
(28, 1, 1),
(28, 1, 2),
(28, 1, 3),
(29, 1, 1),
(29, 1, 2),
(29, 1, 3),
(30, 1, 1),
(30, 1, 2),
(30, 1, 3),
(31, 1, 1),
(31, 1, 2),
(31, 1, 3),
(32, 1, 1),
(32, 1, 2),
(32, 1, 3),
(33, 1, 1),
(33, 1, 2),
(33, 1, 3),
(34, 1, 1),
(34, 1, 2),
(34, 1, 3),
(35, 1, 1),
(35, 1, 2),
(35, 1, 3),
(36, 1, 1),
(36, 1, 2),
(36, 1, 3),
(37, 1, 1),
(37, 1, 2),
(37, 1, 3),
(38, 1, 1),
(38, 1, 2),
(38, 1, 3),
(39, 1, 1),
(39, 1, 2),
(39, 1, 3),
(40, 1, 1),
(40, 1, 2),
(40, 1, 3),
(41, 1, 1),
(41, 1, 2),
(41, 1, 3),
(42, 1, 1),
(42, 1, 2),
(42, 1, 3),
(43, 1, 1),
(43, 1, 2),
(43, 1, 3),
(44, 1, 1),
(44, 1, 2),
(44, 1, 3),
(45, 1, 1),
(45, 1, 2),
(45, 1, 3),
(46, 1, 1),
(46, 1, 2),
(46, 1, 3),
(47, 1, 1),
(47, 1, 2),
(47, 1, 3),
(48, 1, 1),
(48, 1, 2),
(48, 1, 3),
(49, 1, 1),
(49, 1, 2),
(49, 1, 3),
(50, 1, 1),
(50, 1, 2),
(50, 1, 3),
(51, 1, 1),
(51, 1, 2),
(51, 1, 3),
(52, 1, 1),
(52, 1, 2),
(52, 1, 3),
(53, 1, 1),
(53, 1, 2),
(53, 1, 3),
(54, 1, 1),
(54, 1, 2),
(54, 1, 3),
(55, 1, 1),
(55, 1, 2),
(55, 1, 3),
(56, 1, 1),
(56, 1, 2),
(56, 1, 3),
(57, 1, 1),
(57, 1, 2),
(57, 1, 3),
(58, 1, 1),
(58, 1, 2),
(58, 1, 3),
(59, 1, 1),
(59, 1, 2),
(59, 1, 3),
(60, 1, 1),
(60, 1, 2),
(60, 1, 3),
(61, 1, 1),
(61, 1, 2),
(61, 1, 3),
(62, 1, 1),
(62, 1, 2),
(62, 1, 3),
(63, 1, 1),
(63, 1, 2),
(63, 1, 3),
(64, 1, 1),
(64, 1, 2),
(64, 1, 3),
(65, 1, 1),
(65, 1, 2),
(65, 1, 3),
(66, 1, 1),
(66, 1, 2),
(66, 1, 3),
(67, 1, 1),
(67, 1, 2),
(67, 1, 3),
(68, 1, 1),
(68, 1, 2),
(68, 1, 3),
(69, 1, 1),
(69, 1, 2),
(69, 1, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_module_preference`
--

CREATE TABLE IF NOT EXISTS `prstshp_module_preference` (
`id_module_preference` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_module_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_module_shop` (
  `id_module` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `enable_device` tinyint(1) NOT NULL DEFAULT '7'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_module_shop`
--

INSERT INTO `prstshp_module_shop` (`id_module`, `id_shop`, `enable_device`) VALUES
(1, 1, 7),
(2, 1, 3),
(3, 1, 7),
(4, 1, 7),
(5, 1, 7),
(6, 1, 7),
(7, 1, 7),
(8, 1, 7),
(9, 1, 7),
(10, 1, 7),
(11, 1, 7),
(12, 1, 7),
(13, 1, 1),
(14, 1, 7),
(15, 1, 7),
(16, 1, 7),
(17, 1, 7),
(18, 1, 7),
(19, 1, 7),
(20, 1, 7),
(21, 1, 7),
(22, 1, 7),
(23, 1, 7),
(24, 1, 7),
(25, 1, 7),
(26, 1, 7),
(27, 1, 7),
(28, 1, 7),
(29, 1, 7),
(30, 1, 7),
(31, 1, 7),
(32, 1, 7),
(33, 1, 7),
(34, 1, 7),
(35, 1, 7),
(36, 1, 7),
(37, 1, 3),
(38, 1, 7),
(39, 1, 7),
(40, 1, 7),
(41, 1, 7),
(42, 1, 7),
(43, 1, 7),
(44, 1, 7),
(45, 1, 7),
(46, 1, 7),
(47, 1, 7),
(48, 1, 7),
(49, 1, 7),
(50, 1, 7),
(51, 1, 7),
(52, 1, 7),
(53, 1, 7),
(54, 1, 7),
(55, 1, 7),
(56, 1, 7),
(57, 1, 7),
(58, 1, 7),
(59, 1, 7),
(60, 1, 7),
(61, 1, 7),
(62, 1, 7),
(63, 1, 7),
(64, 1, 7),
(65, 1, 7),
(66, 1, 7),
(67, 1, 7),
(68, 1, 7),
(69, 1, 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_newsletter`
--

CREATE TABLE IF NOT EXISTS `prstshp_newsletter` (
`id` int(6) NOT NULL,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_operating_system`
--

CREATE TABLE IF NOT EXISTS `prstshp_operating_system` (
`id_operating_system` int(10) unsigned NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Zrzut danych tabeli `prstshp_operating_system`
--

INSERT INTO `prstshp_operating_system` (`id_operating_system`, `name`) VALUES
(1, 'Windows XP'),
(2, 'Windows Vista'),
(3, 'Windows 7'),
(4, 'Windows 8'),
(5, 'MacOsX'),
(6, 'Linux'),
(7, 'Android');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_orders`
--

CREATE TABLE IF NOT EXISTS `prstshp_orders` (
`id_order` int(10) unsigned NOT NULL,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `current_state` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_number` varchar(32) DEFAULT NULL,
  `total_discounts` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discounts_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discounts_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_real` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `invoice_number` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_number` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_carrier`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_carrier` (
`id_order_carrier` int(11) NOT NULL,
  `id_order` int(11) unsigned NOT NULL,
  `id_carrier` int(11) unsigned NOT NULL,
  `id_order_invoice` int(11) unsigned DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_cart_rule`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_cart_rule` (
`id_order_cart_rule` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_order_invoice` int(10) unsigned DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_detail`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_detail` (
`id_order_detail` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_invoice` int(11) DEFAULT NULL,
  `id_warehouse` int(10) unsigned DEFAULT '0',
  `id_shop` int(11) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `tax_computation_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_detail_tax`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_detail_tax` (
  `id_order_detail` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_history`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_history` (
`id_order_history` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_invoice`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_invoice` (
`id_order_invoice` int(11) unsigned NOT NULL,
  `id_order` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `delivery_number` int(11) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discount_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `shipping_tax_computation_method` int(10) unsigned NOT NULL,
  `total_wrapping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `note` text,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_invoice_payment`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_invoice_payment` (
  `id_order_invoice` int(11) unsigned NOT NULL,
  `id_order_payment` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_invoice_tax`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_invoice_tax` (
  `id_order_invoice` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_message`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_message` (
`id_order_message` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `prstshp_order_message`
--

INSERT INTO `prstshp_order_message` (`id_order_message`, `date_add`) VALUES
(2, '2014-08-25 21:44:31');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_message_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_order_message_lang`
--

INSERT INTO `prstshp_order_message_lang` (`id_order_message`, `id_lang`, `name`, `message`) VALUES
(1, 1, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(2, 1, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(2, 2, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(2, 3, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_payment`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_payment` (
`id_order_payment` int(11) NOT NULL,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_return`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_return` (
`id_order_return` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_return_detail`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_return_state`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_return_state` (
`id_order_return_state` int(10) unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `prstshp_order_return_state`
--

INSERT INTO `prstshp_order_return_state` (`id_order_return_state`, `color`) VALUES
(1, '#4169E1'),
(2, '#8A2BE2'),
(3, '#32CD32'),
(4, '#DC143C'),
(5, '#108510');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_return_state_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_order_return_state_lang`
--

INSERT INTO `prstshp_order_return_state_lang` (`id_order_return_state`, `id_lang`, `name`) VALUES
(1, 1, 'Waiting for confirmation'),
(1, 2, 'Waiting for confirmation'),
(1, 3, 'Waiting for confirmation'),
(2, 1, 'Waiting for package'),
(2, 2, 'Waiting for package'),
(2, 3, 'Waiting for package'),
(3, 1, 'Package received'),
(3, 2, 'Package received'),
(3, 3, 'Package received'),
(4, 1, 'Return denied'),
(4, 2, 'Return denied'),
(4, 3, 'Return denied'),
(5, 1, 'Return completed'),
(5, 2, 'Return completed'),
(5, 3, 'Return completed');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_slip`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_slip` (
`id_order_slip` int(10) unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_slip_detail`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `amount_tax_excl` decimal(10,2) DEFAULT NULL,
  `amount_tax_incl` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_state`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_state` (
`id_order_state` int(10) unsigned NOT NULL,
  `invoice` tinyint(1) unsigned DEFAULT '0',
  `send_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `prstshp_order_state`
--

INSERT INTO `prstshp_order_state` (`id_order_state`, `invoice`, `send_email`, `module_name`, `color`, `unremovable`, `hidden`, `logable`, `delivery`, `shipped`, `paid`, `deleted`) VALUES
(1, 0, 1, 'cheque', '#4169E1', 1, 0, 0, 0, 0, 0, 0),
(2, 1, 1, '', '#32CD32', 1, 0, 1, 0, 0, 1, 0),
(3, 1, 1, '', '#FF8C00', 1, 0, 1, 1, 0, 1, 0),
(4, 1, 1, '', '#8A2BE2', 1, 0, 1, 1, 1, 1, 0),
(5, 1, 0, '', '#108510', 1, 0, 1, 1, 1, 1, 0),
(6, 0, 1, '', '#DC143C', 1, 0, 0, 0, 0, 0, 0),
(7, 1, 1, '', '#ec2e15', 1, 0, 0, 0, 0, 0, 0),
(8, 0, 1, '', '#8f0621', 1, 0, 0, 0, 0, 0, 0),
(9, 1, 1, '', '#FF69B4', 1, 0, 0, 0, 0, 1, 0),
(10, 0, 1, 'bankwire', '#4169E1', 1, 0, 0, 0, 0, 0, 0),
(11, 0, 0, '', '#4169E1', 1, 0, 0, 0, 0, 0, 0),
(12, 1, 1, '', '#32CD32', 1, 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_order_state_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_order_state_lang`
--

INSERT INTO `prstshp_order_state_lang` (`id_order_state`, `id_lang`, `name`, `template`) VALUES
(1, 1, 'Awaiting cheque payment', 'cheque'),
(1, 2, 'Awaiting cheque payment', 'cheque'),
(1, 3, 'Awaiting cheque payment', 'cheque'),
(2, 1, 'Payment accepted', 'payment'),
(2, 2, 'Payment accepted', 'payment'),
(2, 3, 'Payment accepted', 'payment'),
(3, 1, 'Preparation in progress', 'preparation'),
(3, 2, 'Preparation in progress', 'preparation'),
(3, 3, 'Preparation in progress', 'preparation'),
(4, 1, 'Shipped', 'shipped'),
(4, 2, 'Shipped', 'shipped'),
(4, 3, 'Shipped', 'shipped'),
(5, 1, 'Delivered', ''),
(5, 2, 'Delivered', ''),
(5, 3, 'Delivered', ''),
(6, 1, 'Canceled', 'order_canceled'),
(6, 2, 'Canceled', 'order_canceled'),
(6, 3, 'Canceled', 'order_canceled'),
(7, 1, 'Refund', 'refund'),
(7, 2, 'Refund', 'refund'),
(7, 3, 'Refund', 'refund'),
(8, 1, 'Payment error', 'payment_error'),
(8, 2, 'Payment error', 'payment_error'),
(8, 3, 'Payment error', 'payment_error'),
(9, 1, 'On backorder', 'outofstock'),
(9, 2, 'On backorder', 'outofstock'),
(9, 3, 'On backorder', 'outofstock'),
(10, 1, 'Awaiting bank wire payment', 'bankwire'),
(10, 2, 'Awaiting bank wire payment', 'bankwire'),
(10, 3, 'Awaiting bank wire payment', 'bankwire'),
(11, 1, 'Awaiting PayPal payment', ''),
(11, 2, 'Awaiting PayPal payment', ''),
(11, 3, 'Awaiting PayPal payment', ''),
(12, 1, 'Remote payment accepted', 'payment'),
(12, 2, 'Remote payment accepted', 'payment'),
(12, 3, 'Remote payment accepted', 'payment');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_pack`
--

CREATE TABLE IF NOT EXISTS `prstshp_pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_page`
--

CREATE TABLE IF NOT EXISTS `prstshp_page` (
`id_page` int(10) unsigned NOT NULL,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_pagenotfound`
--

CREATE TABLE IF NOT EXISTS `prstshp_pagenotfound` (
`id_pagenotfound` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_page_type`
--

CREATE TABLE IF NOT EXISTS `prstshp_page_type` (
`id_page_type` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_page_viewed`
--

CREATE TABLE IF NOT EXISTS `prstshp_page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product`
--

CREATE TABLE IF NOT EXISTS `prstshp_product` (
`id_product` int(10) unsigned NOT NULL,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Zrzut danych tabeli `prstshp_product`
--

INSERT INTO `prstshp_product` (`id_product`, `id_supplier`, `id_manufacturer`, `id_category_default`, `id_shop_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ean13`, `upc`, `ecotax`, `quantity`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `reference`, `supplier_reference`, `location`, `width`, `height`, `depth`, `weight`, `out_of_stock`, `quantity_discount`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_is_pack`, `cache_has_attachments`, `is_virtual`, `cache_default_attribute`, `date_add`, `date_upd`, `advanced_stock_management`) VALUES
(1, 0, 0, 19, 1, 53, 0, 0, '2016535500364', '', '0.000000', 1, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2272ROSSO/1106/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 1, '2014-08-28 09:37:45', '2014-08-28 13:03:41', 0),
(2, 0, 0, 19, 1, 53, 0, 0, '2016535500371', '', '0.000000', 1, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2272ROSSO/1106/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 2, '2014-08-28 09:37:48', '2014-08-28 13:05:08', 0),
(3, 0, 0, 19, 1, 53, 0, 0, '2016535300407', '', '0.000000', 1, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2272ŻÓŁTYMIX/40', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 3, '2014-08-28 09:37:50', '2014-08-28 13:03:58', 0),
(4, 0, 0, 19, 1, 53, 0, 0, '2016535600378', '', '0.000000', 1, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2272PERLATO/1227/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 4, '2014-08-28 09:37:51', '2014-08-28 13:04:06', 0),
(5, 0, 0, 19, 1, 53, 0, 0, '2016555600372', '', '0.000000', 1, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2426PINK1343/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 6, '2014-08-28 09:37:54', '2014-08-28 09:37:54', 0),
(6, 0, 0, 19, 1, 53, 0, 0, '2016555700362', '', '0.000000', 1, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2426BIANCO1337/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 8, '2014-08-28 09:37:57', '2014-08-28 09:37:57', 0),
(7, 0, 0, 19, 1, 53, 0, 0, '2016555200374', '', '0.000000', 2, 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 'B2426ROSSOMIX/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 9, '2014-08-28 09:37:58', '2014-08-28 09:37:58', 0),
(8, 0, 0, 19, 1, 53, 0, 0, '2016555400385', '', '0.000000', 1, 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 'B2426BEIGE692/38', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 10, '2014-08-28 09:38:00', '2014-08-28 09:38:00', 0),
(9, 0, 0, 19, 1, 53, 0, 0, '2016555300401', '', '0.000000', 1, 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 'B2426BLU721/40', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 11, '2014-08-28 09:38:02', '2014-08-28 09:38:02', 0),
(10, 0, 0, 19, 1, 53, 0, 0, '2016558500372', '', '0.000000', 1, 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 'B2387F/PANNA639/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 12, '2014-08-28 09:38:04', '2014-08-28 09:38:04', 0),
(11, 0, 0, 19, 1, 53, 0, 0, '2016561900374', '', '0.000000', 1, 1, '194.310000', '0.000000', 'para', '1.000000', '0.00', 'B2330S/PECORA1315ORO/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 14, '2014-08-28 09:38:07', '2014-08-28 09:38:07', 0),
(12, 0, 0, 22, 1, 53, 0, 0, '2016557700360', '', '0.000000', 1, 1, '0.000000', '0.000000', 'para', '1.000000', '0.00', 'C2265NAVY/1394/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 15, '2014-08-28 09:38:09', '2014-08-28 09:38:09', 0),
(13, 0, 0, 24, 1, 53, 0, 0, '2016618000361', '', '0.000000', 1, 1, '430.080000', '0.000000', 'para', '1.000000', '0.00', 'V24482V/NERO191/CDF/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 17, '2014-08-28 09:38:13', '2014-08-28 09:38:13', 0),
(14, 0, 0, 24, 1, 53, 0, 0, '2016617900365', '', '0.000000', 1, 1, '397.560000', '0.000000', 'para', '1.000000', '0.00', 'V24469/1V/BLU1418/721/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 20, '2014-08-28 09:38:19', '2014-08-28 09:38:19', 0),
(15, 0, 0, 24, 1, 53, 0, 0, '2016619600362', '', '0.000000', 1, 1, '527.640000', '0.000000', 'para', '1.000000', '0.00', 'V25421V/NERO89/ORO/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 23, '2014-08-28 09:38:23', '2014-08-28 09:38:23', 0),
(16, 0, 0, 24, 1, 53, 0, 0, '2016534100367', '', '0.000000', 1, 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 'V2334SOROCRACK/1284/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 26, '2014-08-28 09:38:33', '2014-08-28 09:38:33', 0),
(17, 0, 0, 24, 1, 53, 0, 0, '2016533900371', '', '0.000000', 1, 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 'V2334SBLUCRACK/1326/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 29, '2014-08-28 09:38:38', '2014-08-28 09:38:38', 0),
(18, 0, 0, 19, 1, 53, 0, 0, '2016393000365', '', '0.000000', 1, 1, '283.740000', '0.000000', 'para', '1.000000', '0.00', 'B2379PECORA/1315/ORO/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 32, '2014-08-28 09:38:41', '2014-08-28 09:38:41', 0),
(19, 0, 0, 24, 1, 53, 0, 0, '2016382600354', '', '0.000000', 1, 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 'V2334SROSA/1348/1326/35', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 37, '2014-08-28 09:38:45', '2014-08-28 09:38:45', 0),
(20, 0, 0, 19, 1, 53, 0, 0, '2016407200378', '', '0.000000', 1, 1, '283.740000', '0.000000', 'para', '1.000000', '0.00', 'B2379(LAMB)NERO/27/ORO/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 41, '2014-08-28 09:38:50', '2014-08-28 09:38:50', 0),
(21, 0, 0, 19, 1, 53, 0, 0, '2016560800392', '', '0.000000', 1, 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 'B2561BEIGE/692/39', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 45, '2014-08-28 09:38:54', '2014-08-28 09:38:54', 0),
(22, 0, 0, 19, 1, 53, 0, 0, '2016561000388', '', '0.000000', 1, 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 'B2561S/BEIGE1393/38', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 47, '2014-08-28 09:38:57', '2014-08-28 09:38:57', 0),
(23, 0, 0, 19, 1, 53, 0, 0, '2016432100377', '', '0.000000', 1, 1, '291.870000', '0.000000', 'para', '1.000000', '0.00', 'B2427S/M1/EŚNERO/89/ORO/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 51, '2014-08-28 09:39:12', '2014-08-28 09:39:12', 0),
(24, 0, 0, 19, 1, 53, 0, 0, '2016394600380', '', '0.000000', 1, 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 'B2387FNERO/776/38', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 54, '2014-08-28 09:39:17', '2014-08-28 09:39:17', 0),
(25, 0, 0, 19, 1, 53, 0, 0, '2016533800367', '', '0.000000', 2, 1, '291.870000', '0.000000', 'para', '1.000000', '0.00', 'B2427/M1/EŚBE/SKIMIX/OR/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 55, '2014-08-28 09:39:19', '2014-08-28 09:39:19', 0),
(26, 0, 0, 19, 1, 53, 0, 0, '2016448300402', '', '0.000000', 1, 1, '291.870000', '0.000000', 'para', '1.000000', '0.00', 'B2427S/M1/EŚBE/1366/ORO/40', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 57, '2014-08-28 09:39:23', '2014-08-28 09:39:23', 0),
(27, 0, 0, 22, 1, 53, 0, 0, '2016330300367', '', '0.000000', 1, 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 'C2265/1NERO/89/ORO/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 58, '2014-08-28 09:39:25', '2014-08-28 09:39:25', 0),
(28, 0, 0, 22, 1, 53, 0, 0, '2016557500373', '', '0.000000', 2, 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 'C2265/1NUDE/793ORO/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 59, '2014-08-28 09:39:27', '2014-08-28 09:39:27', 0),
(29, 0, 0, 22, 1, 53, 0, 0, '2016372000362', '', '0.000000', 2, 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 'C2303BIANCO/307/1336/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 61, '2014-08-28 09:39:29', '2014-08-28 09:39:29', 0),
(30, 0, 0, 22, 1, 53, 0, 0, '2016372100369', '', '0.000000', 1, 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 'C2303/ORO/M15/1331/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 64, '2014-08-28 09:39:33', '2014-08-28 09:39:33', 0),
(31, 0, 0, 22, 1, 53, 0, 0, '2016371900366', '', '0.000000', 1, 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 'C2303ARGENTO/1328/1332/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 67, '2014-08-28 09:39:36', '2014-08-28 09:39:36', 0),
(32, 0, 0, 22, 1, 53, 0, 0, '2016557600370', '', '0.000000', 2, 1, '308.130000', '0.000000', 'para', '1.000000', '0.00', 'C2265/BEIGE/704/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 71, '2014-08-28 09:39:41', '2014-08-28 09:39:41', 0),
(33, 0, 0, 19, 1, 53, 0, 0, '2016619200371', '', '0.000000', 2, 1, '405.690000', '0.000000', 'para', '1.000000', '0.00', 'B24456V/NERO948/89/ORO/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 72, '2014-08-28 09:39:44', '2014-08-28 09:39:44', 0),
(34, 0, 0, 24, 1, 53, 0, 0, '2016121300385', '', '0.000000', 0, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'V1985JEANS/570/149/38', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 76, '2014-08-28 09:39:56', '2014-08-28 09:39:56', 0),
(35, 0, 0, 24, 1, 53, 0, 0, '2016586200350', '', '0.000000', 0, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'V1666/3AMARILL/1233/NIK/35', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 81, '2014-08-28 09:40:04', '2014-08-28 09:40:04', 0),
(36, 0, 0, 19, 1, 53, 0, 0, '2015956700353', '', '0.000000', 0, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B1910/795FUXIA/35', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 83, '2014-08-28 09:40:08', '2014-08-28 09:40:08', 0),
(37, 0, 0, 19, 1, 53, 0, 0, '2016146800389', '', '0.000000', 0, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B1929BEIGE692/1158/38', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 86, '2014-08-28 09:40:12', '2014-08-28 09:40:12', 0),
(38, 0, 0, 19, 1, 53, 0, 0, '2016619300378', '', '0.000000', 2, 1, '470.730000', '0.000000', 'para', '1.000000', '0.00', 'B24419V/NERO1380/89/ORO/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 91, '2014-08-28 09:40:19', '2014-08-28 09:40:19', 0),
(39, 0, 0, 24, 1, 53, 0, 0, '2016618700360', '', '0.000000', 1, 1, '430.080000', '0.000000', 'para', '1.000000', '0.00', 'V24444V/NERO948/712/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 97, '2014-08-28 09:40:25', '2014-08-28 09:40:25', 0),
(40, 0, 0, 19, 1, 53, 0, 0, '2016555500399', '', '0.000000', 0, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2426CDF/1338/39', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 101, '2014-08-28 09:40:37', '2014-08-28 09:40:37', 0),
(41, 0, 0, 19, 1, 53, 0, 0, '2016373900371', '', '0.000000', 0, 1, '145.530000', '0.000000', 'para', '1.000000', '0.00', 'B2065BIANCO/1118/1311/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 114, '2014-08-28 09:40:54', '2014-08-28 09:40:54', 0),
(42, 0, 0, 19, 1, 53, 0, 0, '2016561900367', '', '0.000000', 0, 1, '194.310000', '0.000000', 'para', '1.000000', '0.00', 'B2330S/PECORA1315ORO/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 116, '2014-08-28 09:40:58', '2014-08-28 09:40:58', 0),
(43, 0, 0, 24, 1, 53, 0, 0, '2016393400356', '', '0.000000', 0, 1, '226.830000', '0.000000', 'para', '1.000000', '0.00', 'V2389/1BIANCO/307/ORO/35', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 119, '2014-08-28 09:41:01', '2014-08-28 09:41:01', 0),
(44, 0, 0, 24, 1, 53, 0, 0, '2016566300377', '', '0.000000', 0, 1, '0.000000', '0.000000', 'para', '0.000000', '0.00', 'V2586ORO/209/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-08-28 09:41:04', '2014-08-28 14:09:09', 0),
(45, 0, 0, 22, 1, 53, 0, 0, '2016557900371', '', '0.000000', 0, 1, '486.990000', '0.000000', 'para', '1.000000', '0.00', 'C2373NERO/1380/OROCHIAR/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 121, '2014-08-28 09:41:06', '2014-08-28 09:41:06', 0),
(46, 0, 0, 24, 1, 53, 0, 0, '2016391900353', '', '0.000000', 0, 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 'V2375/1/NERO/27/NIKIEL/35', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 124, '2014-08-28 09:41:11', '2014-08-28 09:41:11', 0),
(47, 0, 0, 19, 1, 53, 0, 0, '2016535400381', '', '0.000000', 0, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2272PINK/1403/38', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 125, '2014-08-28 09:41:18', '2014-08-28 09:41:18', 0),
(48, 0, 0, 24, 1, 53, 0, 0, '2016535100359', '', '0.000000', 0, 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 'V2391/1BIANCO/307/M15/35', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 128, '2014-08-28 09:41:22', '2014-08-28 09:41:22', 0),
(49, 0, 0, 24, 1, 53, 0, 0, '2016382600378', '', '0.000000', 0, 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 'V2334SROSA/1348/1326/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 131, '2014-08-28 09:41:27', '2014-08-28 09:41:27', 0),
(50, 0, 0, 19, 1, 53, 0, 0, '', '', '0.000000', 0, 1, '283.740000', '0.000000', 'para', '1.000000', '0.00', 'B2379(LAMB)NERO/27/ORO/40', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 132, '2014-08-28 09:41:29', '2014-08-28 09:41:29', 0),
(51, 0, 0, 24, 1, 53, 0, 0, '2016546600367', '', '0.000000', 0, 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 'V2335/R4BEIGE/PLA/MIX/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 133, '2014-08-28 09:41:31', '2014-08-28 09:41:31', 0),
(52, 0, 0, 24, 1, 53, 0, 0, '2016546300403', '', '0.000000', 0, 1, '161.790000', '0.000000', 'para', '1.000000', '0.00', 'V2001/M1CORA/1233/BEIB1/40', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 138, '2014-08-28 09:41:37', '2014-08-28 14:10:08', 0),
(53, 0, 0, 37, 1, 53, 0, 0, '', '', '0.000000', 2, 1, '0.000000', '0.000000', 'szt', '1.000000', '0.00', 'BIJOUX/CB/0157/NIK', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 140, '2014-08-28 09:41:40', '2014-08-28 09:41:40', 0),
(54, 0, 0, 37, 1, 53, 0, 0, '', '', '0.000000', 1, 1, '0.000000', '0.000000', 'szt', '1.000000', '0.00', 'BIJOUX/CB/0159/NIK', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 141, '2014-08-28 09:41:43', '2014-08-28 09:41:43', 0),
(55, 0, 0, 37, 1, 53, 0, 0, '', '', '0.000000', 1, 1, '0.000000', '0.000000', 'szt', '1.000000', '0.00', 'BIJOUX/CB/0156/ORO', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 143, '2014-08-28 09:41:45', '2014-08-28 09:41:45', 0),
(56, 0, 0, 19, 1, 53, 0, 0, '2016394600403', '', '0.000000', 0, 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 'B2387FNERO/776/40', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 156, '2014-08-28 09:42:07', '2014-08-28 09:42:07', 0),
(57, 0, 0, 24, 1, 53, 0, 0, '2016546800392', '', '0.000000', 0, 1, '161.790000', '0.000000', 'para', '1.000000', '0.00', 'V2451/M1OROMIX/B1/39', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 159, '2014-08-28 09:42:11', '2014-08-28 14:10:13', 0),
(58, 0, 0, 24, 1, 53, 0, 0, '2016534200357', '', '0.000000', 0, 1, '161.790000', '0.000000', 'para', '1.000000', '0.00', 'V2008/M2CIPOLLA/BEIGEB1/35', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 161, '2014-08-28 09:42:15', '2014-08-28 14:10:15', 0),
(59, 0, 0, 19, 1, 53, 0, 0, '2016534700376', '', '0.000000', 0, 1, '308.130000', '0.000000', 'para', '1.000000', '0.00', 'B2348/1/EŚ/R4OROMIX/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 175, '2014-08-28 09:42:40', '2014-08-28 09:42:40', 0),
(60, 0, 0, 24, 1, 53, 0, 0, '2016392000373', '', '0.000000', 0, 1, '153.660000', '0.000000', 'para', '1.000000', '0.00', 'V2385BIANCO/307/ORO/37', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 179, '2014-08-28 09:42:44', '2014-08-28 09:42:44', 0),
(61, 0, 0, 24, 1, 53, 0, 0, '2016379400394', '', '0.000000', 1, 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 'V2334SMETNTA/1342/1326/39', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 187, '2014-08-28 09:42:54', '2014-08-28 09:42:54', 0),
(62, 0, 0, 19, 1, 53, 0, 0, '2016535400404', '', '0.000000', 1, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2272PINK/1403/40', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 203, '2014-08-28 09:43:21', '2014-08-28 12:07:59', 0),
(63, 0, 0, 19, 1, 53, 0, 0, '2016560900368', '', '0.000000', 0, 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 'B2561NUDE/330/36', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, 0, 212, '2014-08-28 09:43:30', '2014-08-28 09:43:30', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_attachment`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_attribute`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_attribute` (
`id_product_attribute` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(17,2) NOT NULL DEFAULT '0.00',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=239 ;

--
-- Zrzut danych tabeli `prstshp_product_attribute`
--

INSERT INTO `prstshp_product_attribute` (`id_product_attribute`, `id_product`, `reference`, `supplier_reference`, `location`, `ean13`, `upc`, `wholesale_price`, `price`, `ecotax`, `quantity`, `weight`, `unit_price_impact`, `default_on`, `minimal_quantity`, `available_date`) VALUES
(1, 1, 'B2272ROSSO/1106/36', '', '', '2016535500364', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(2, 2, 'B2272ROSSO/1106/37', '', '', '2016535500371', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(3, 3, 'B2272ŻÓŁTYMIX/40', '', '', '2016535300407', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(4, 4, 'B2272PERLATO/1227/37', '', '', '2016535600378', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(5, 4, 'B2272PERLATO/1227/39', '', '', '2016535600392', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(6, 5, 'B2426PINK1343/37', '', '', '2016555600372', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(7, 5, 'B2426PINK1343/38', '', '', '2016555600389', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(8, 6, 'B2426BIANCO1337/36', '', '', '2016555700362', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(9, 7, 'B2426ROSSOMIX/37', '', '', '2016555200374', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 1, 0, '2014-08-28'),
(10, 8, 'B2426BEIGE692/38', '', '', '2016555400385', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(11, 9, 'B2426BLU721/40', '', '', '2016555300401', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(12, 10, 'B2387F/PANNA639/37', '', '', '2016558500372', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(13, 10, 'B2387F/PANNA639/39', '', '', '2016558500396', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(14, 11, 'B2330S/PECORA1315ORO/37', '', '', '2016561900374', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(15, 12, 'C2265NAVY/1394/36', '', '', '2016557700360', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(16, 12, 'C2265NAVY/1394/38', '', '', '2016557700384', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(17, 13, 'V24482V/NERO191/CDF/36', '', '', '2016618000361', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(18, 13, 'V24482V/NERO191/CDF/37', '', '', '2016618000378', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(19, 13, 'V24482V/NERO191/CDF/39', '', '', '2016618000392', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(20, 14, 'V24469/1V/BLU1418/721/36', '', '', '2016617900365', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(21, 14, 'V24469/1V/BLU1418/721/39', '', '', '2016617900396', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(22, 14, 'V24469/1V/BLU1418/721/40', '', '', '2016617900402', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(23, 15, 'V25421V/NERO89/ORO/36', '', '', '2016619600362', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(24, 15, 'V25421V/NERO89/ORO/37', '', '', '2016619600379', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(25, 15, 'V25421V/NERO89/ORO/38', '', '', '2016619600386', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(26, 16, 'V2334SOROCRACK/1284/36', '', '', '2016534100367', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(27, 16, 'V2334SOROCRACK/1284/37', '', '', '2016534100374', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(28, 16, 'V2334SOROCRACK/1284/38', '', '', '2016534100381', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(29, 17, 'V2334SBLUCRACK/1326/37', '', '', '2016533900371', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(30, 17, 'V2334SBLUCRACK/1326/38', '', '', '2016533900388', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(31, 17, 'V2334SBLUCRACK/1326/39', '', '', '2016533900395', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(32, 18, 'B2379PECORA/1315/ORO/36', '', '', '2016393000365', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(33, 18, 'B2379PECORA/1315/ORO/37', '', '', '2016393000372', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(34, 18, 'B2379PECORA/1315/ORO/38', '', '', '2016393000389', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(35, 18, 'B2379PECORA/1315/ORO/39', '', '', '2016393000396', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(36, 18, 'B2379PECORA/1315/ORO/40', '', '', '2016393000402', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(37, 19, 'V2334SROSA/1348/1326/35', '', '', '2016382600354', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(38, 19, 'V2334SROSA/1348/1326/38', '', '', '2016382600385', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(39, 19, 'V2334SROSA/1348/1326/40', '', '', '2016382600408', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(40, 19, 'V2334SROSA/1348/1326/39', '', '', '2016382600392', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(41, 20, 'B2379(LAMB)NERO/27/ORO/37', '', '', '2016407200378', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(42, 20, 'B2379(LAMB)NERO/27/ORO/38', '', '', '2016407200385', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(43, 7, 'B2426ROSSOMIX/38', '', '', '2016555200381', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(44, 7, 'B2426ROSSOMIX/40', '', '', '2016555200404', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(45, 21, 'B2561BEIGE/692/39', '', '', '2016560800392', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(46, 21, 'B2561BEIGE/692/40', '', '', '2016560800408', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(47, 22, 'B2561S/BEIGE1393/38', '', '', '2016561000388', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(48, 7, 'B2426/1ROSSO/1381/36', '', '', '2016565700369', '', '0.000000', '48.780000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(49, 7, 'B2426/1ROSSO/1381/39', '', '', '2016565700390', '', '0.000000', '48.780000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(50, 7, 'B2426/1ROSSO/1381/40', '', '', '2016565700406', '', '0.000000', '48.780000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(51, 23, 'B2427S/M1/EŚNERO/89/ORO/37', '', '', '2016432100377', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(52, 23, 'B2427S/M1/EŚNERO/89/ORO/38', '', '', '2016432100384', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(53, 23, 'B2427S/M1/EŚNERO/89/ORO/40', '', '', '2016423200406', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(54, 24, 'B2387FNERO/776/38', '', '', '2016394600380', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(55, 25, 'B2427/M1/EŚBE/SKIMIX/OR/36', '', '', '2016533800367', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 1, 0, '2014-08-28'),
(56, 25, 'B2427/M1/EŚBE/SKIMIX/OR/40', '', '', '2016533800404', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(57, 26, 'B2427S/M1/EŚBE/1366/ORO/40', '', '', '2016448300402', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(58, 27, 'C2265/1NERO/89/ORO/36', '', '', '2016330300367', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(59, 28, 'C2265/1NUDE/793ORO/37', '', '', '2016557500373', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 1, 0, '2014-08-28'),
(60, 28, 'C2265/1NUDE/793ORO/38', '', '', '2016557500380', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(61, 29, 'C2303BIANCO/307/1336/36', '', '', '2016372000362', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 1, 0, '2014-08-28'),
(62, 29, 'C2303BIANCO/307/1336/37', '', '', '2016372000379', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(63, 29, 'C2303BIANCO/307/1336/38', '', '', '2016372000386', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(64, 30, 'C2303/ORO/M15/1331/36', '', '', '2016372100369', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(65, 30, 'C2303/ORO/M15/1331/38', '', '', '2016372100383', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(66, 30, 'C2303/ORO/M15/1331/39', '', '', '2016372100390', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(67, 31, 'C2303ARGENTO/1328/1332/36', '', '', '2016371900366', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(68, 31, 'C2303ARGENTO/1328/1332/37', '', '', '2016371900373', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(69, 28, 'C2265/BEIGE/1393/36', '', '', '2016557800367', '', '0.000000', '-16.260000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(70, 28, 'C2265/BEIGE/1393/37', '', '', '2016557800374', '', '0.000000', '-16.260000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(71, 32, 'C2265/BEIGE/704/37', '', '', '2016557600370', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 1, 0, '2014-08-28'),
(72, 33, 'B24456V/NERO948/89/ORO/37', '', '', '2016619200371', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 1, 0, '2014-08-28'),
(73, 33, 'B24456V/NERO948/89/ORO/38', '', '', '2016619200388', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(74, 33, 'B24456V/NERO948/89/ORO/39', '', '', '2016619200395', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(75, 33, 'B24456V/NERO948/89/ORO/40', '', '', '2016619200401', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(76, 34, 'V1985JEANS/570/149/38', '', '', '2016121300385', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(77, 34, 'V1985JEANS/570/149/39', '', '', '2016121300392', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(78, 34, 'V1985BEIGE/519/149/38', '', '', '2016134600380', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(79, 34, 'V1985BEIGE/519/149/39', '', '', '2016134600397', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(80, 34, 'V1985BEIGE/519/149/40', '', '', '2016134600403', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(81, 35, 'V1666/3AMARILL/1233/NIK/35', '', '', '2016586200350', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(82, 35, 'V1666/3AMARILL/1233/NIK/37', '', '', '2016586200374', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(83, 36, 'B1910/795FUXIA/35', '', '', '2015956700353', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(84, 36, 'B1910/795FUXIA/36', '', '', '2015956700360', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(85, 36, 'B1910/795FUXIA/37', '', '', '2015956700377', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(86, 37, 'B1929BEIGE692/1158/38', '', '', '2016146800389', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(87, 35, 'V1666/2SBEIGE/1423/ORO/35', '', '', '2016586300357', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(88, 35, 'V1666/2SBEIGE/1423/ORO/37', '', '', '2016586300371', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(89, 33, 'B24456V/NERO948/89/ORO/41', '', '', '2016619200418', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(90, 33, 'B24456V/NERO948/89/ORO/36', '', '', '2016619200364', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(91, 38, 'B24419V/NERO1380/89/ORO/37', '', '', '2016619300378', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 1, 0, '2014-08-28'),
(92, 38, 'B24419V/NERO1380/89/ORO/38', '', '', '2016619300385', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(93, 38, 'B24419V/NERO1380/89/ORO/39', '', '', '2016619300392', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(94, 38, 'B24419V/NERO1380/89/ORO/40', '', '', '2016619300408', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(95, 38, 'B24419V/NERO1380/89/ORO/41', '', '', '2016619300415', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(96, 38, 'B24419V/NERO1380/89/ORO/36', '', '', '2016619300361', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(97, 39, 'V24444V/NERO948/712/36', '', '', '2016618700360', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(98, 39, 'V24444V/NERO948/712/37', '', '', '2016618700377', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(99, 39, 'V24444V/NERO948/712/38', '', '', '2016618700384', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(100, 39, 'V24444V/NERO948/712/39', '', '', '2016618700391', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(101, 40, 'B2426CDF/1338/39', '', '', '2016555500399', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(102, 40, 'B2426BLUMIX/37', '', '', '2016555800376', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(103, 40, 'B2426BLUMIX/38', '', '', '2016555800383', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(104, 40, 'B2426BLUMIX/39', '', '', '2016555800390', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(105, 40, 'B2426PINK1343/36', '', '', '2016555600365', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(106, 40, 'B2426BIANCO1337/37', '', '', '2016555700379', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(107, 40, 'B2426BIANCO1337/38', '', '', '2016555700386', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(108, 40, 'B2426BEIGE692/35', '', '', '2016555400354', '', '0.000000', '56.910000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(109, 40, 'B2426BEIGE692/36', '', '', '2016555400361', '', '0.000000', '56.910000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(110, 40, 'B2426BEIGE692/39', '', '', '2016555400392', '', '0.000000', '56.910000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(111, 40, 'B2426BLU721/36', '', '', '2016555300364', '', '0.000000', '56.910000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(112, 40, 'B2426BLU721/38', '', '', '2016555300388', '', '0.000000', '56.910000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(113, 40, 'B2426BLU721/39', '', '', '2016555300395', '', '0.000000', '56.910000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(114, 41, 'B2065BIANCO/1118/1311/37', '', '', '2016373900371', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(115, 41, 'B2065BIANCO/1118/1311/38', '', '', '2016373900388', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(116, 42, 'B2330S/PECORA1315ORO/36', '', '', '2016561900367', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(117, 42, 'B2330S/PECORA1315ORO/38', '', '', '2016561900381', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(118, 42, 'B2330S/PECORA1315ORO/40', '', '', '2016561900404', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(119, 43, 'V2389/1BIANCO/307/ORO/35', '', '', '2016393400356', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(120, 43, 'V2389/1BIANCO/307/ORO/39', '', '', '2016393400394', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(121, 45, 'C2373NERO/1380/OROCHIAR/37', '', '', '2016557900371', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(122, 45, 'C2373NERO/1380/OROCHIAR/38', '', '', '2016557900388', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(123, 41, 'B2065/NERO/776/36', '', '', '2016458400369', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(124, 46, 'V2375/1/NERO/27/NIKIEL/35', '', '', '2016391900353', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(125, 47, 'B2272PINK/1403/38', '', '', '2016535400381', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(126, 47, 'B2272PINK/1403/39', '', '', '2016535400398', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(127, 47, 'B2272PERLATO/1227/35', '', '', '2016535600354', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(128, 48, 'V2391/1BIANCO/307/M15/35', '', '', '2016535100359', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(129, 48, 'V2391/1BIANCO/307/M15/37', '', '', '2016535100373', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(130, 48, 'V2391/1BIANCO/307/M15/40', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(131, 49, 'V2334SROSA/1348/1326/37', '', '', '2016382600378', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(132, 50, 'B2379(LAMB)NERO/27/ORO/40', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(133, 51, 'V2335/R4BEIGE/PLA/MIX/36', '', '', '2016546600367', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(134, 51, 'V2335/R4BEIGE/PLA/MIX/38', '', '', '2016546600381', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(135, 51, 'V2335/R4BEIGE/PLA/MIX/39', '', '', '2016546600398', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(136, 51, 'V2335/R4OROMIX/307/37', '', '', '2016546700371', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(137, 51, 'V2335/R4OROMIX/307/38', '', '', '2016546700388', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(138, 52, 'V2001/M1CORA/1233/BEIB1/40', '', '', '2016546300403', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(139, 52, 'V2001/M1CORA/1233/BEIB1/41', '', '', '2016546300410', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(140, 53, 'BIJOUX/CB/0157/NIK', '', '', '', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 1, 0, '2014-08-28'),
(141, 54, 'BIJOUX/CB/0159/NIK', '', '', '', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(142, 54, 'BIJOUX/CB/0159/ORO', '', '', '', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(143, 55, 'BIJOUX/CB/0156/ORO', '', '', '', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(144, 55, 'BIJOUX/CB/0156/NIK', '', '', '', '', '0.000000', '0.000000', '0.000000', 6, '0.000000', '0.00', 0, 0, '2014-08-28'),
(145, 49, 'V2334SMETNTA/1342/1326/38', '', '', '2016379400387', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(146, 49, 'V2334SMETNTA/1342/1326/40', '', '', '2016379400400', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(147, 40, 'B2426CDF/1338/36', '', '', '2016555500368', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(148, 40, 'B2426CDF/1338/37', '', '', '2016555500375', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(149, 40, 'B2426CDF/1338/38', '', '', '2016555500382', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(150, 2, 'B2272ROSSO/1106/38', '', '', '2016535500388', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(151, 2, 'B2272ROSSO/1106/40', '', '', '2016535500401', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(152, 47, 'B2272ŻÓŁTYMIX/38', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(153, 47, 'B2272ŻÓŁTYMIX/39', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(154, 49, 'V2334SBLUCRACK/1326/40', '', '', '2016533900401', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(155, 24, 'B2387FNERO/776/37', '', '', '2016394600373', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(156, 56, 'B2387FNERO/776/40', '', '', '2016394600403', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(157, 48, 'V2391/1NERO/27/M15/37', '', '', '2016394300372', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(158, 48, 'V2391/1NERO/27/M15/39', '', '', '2016394300396', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(159, 57, 'V2451/M1OROMIX/B1/39', '', '', '2016546800392', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(160, 57, 'V2451/M1OROMIX/B1/41', '', '', '2016546800415', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(161, 58, 'V2008/M2CIPOLLA/BEIGEB1/35', '', '', '2016534200357', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(162, 58, 'V2008/M2CIPOLLA/BEIGEB1/37', '', '', '2016534200371', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(163, 58, 'V2008/M2CIPOLLA/BEIGEB1/40', '', '', '2016534200401', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(164, 47, 'B2272PINK/1403/35', '', '', '2016535400350', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(165, 47, 'B2272PINK/1403/36', '', '', '2016535400367', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(166, 47, 'B2272PINK/1403/37', '', '', '2016535400374', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(167, 25, 'B2427/M1/EŚBE/SKIMIX/OR/38', '', '', '2016533800381', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(168, 4, 'B2272PERLATO/1227/38', '', '', '2016535600385', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(169, 26, 'B2427S/M1/EŚBE/1366/ORO/36', '', '', '2016448300365', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(170, 26, 'B2427S/M1/EŚBE/1366/ORO/38', '', '', '2016448300389', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(171, 9, 'B2426BLUMIX/36', '', '', '2016555800369', '', '0.000000', '-56.910000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(172, 11, 'B2330S/PECORA1315ORO/39', '', '', '2016561900398', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(173, 32, 'C2265/BEIGE/704/38', '', '', '2016557600387', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(174, 7, 'B2426/1ROSSO/1381/38', '', '', '2016565700383', '', '0.000000', '48.780000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(175, 59, 'B2348/1/EŚ/R4OROMIX/37', '', '', '2016534700376', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(176, 59, 'B2348/1/EŚ/R4OROMIX/38', '', '', '2016534700383', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(177, 59, 'B2348/1/EŚ/R4OROMIX/39', '', '', '2016534700390', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(178, 59, 'B2348/1/EŚ/R4OROMIX/40', '', '', '2016534700406', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(179, 60, 'V2385BIANCO/307/ORO/37', '', '', '2016392000373', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(180, 47, 'B2272ROSSO/1106/35', '', '', '2016535500357', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(181, 47, 'B2272ROSSO/1106/39', '', '', '2016535500395', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(182, 47, 'B2272ŻÓŁTYMIX/36', '', '', '2016535300360', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(183, 47, 'B2272ŻÓŁTYMIX/37', '', '', '2016535300377', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(184, 4, 'B2272PERLATO/1227/36', '', '', '2016535600361', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(185, 4, 'B2272PERLATO/1227/40', '', '', '2016535600408', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(186, 20, 'B2379(LAMB)NERO/27/ORO/39', '', '', '2016407200392', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(187, 61, 'V2334SMETNTA/1342/1326/39', '', '', '2016379400394', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(188, 5, 'B2426PINK1343/39', '', '', '2016555600396', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(189, 6, 'B2426BIANCO1337/39', '', '', '2016555700393', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(190, 9, 'B2426BLU721/35', '', '', '2016555300357', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(191, 27, 'C2265/1NERO/89/ORO/35', '', '', '2016330300350', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(192, 27, 'C2265/1NERO/89/ORO/38', '', '', '2016330300381', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(193, 10, 'B2387F/PANNA639/36', '', '', '2016558500365', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(194, 10, 'B2387F/PANNA639/38', '', '', '2016558500389', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(195, 10, 'B2387F/PANNA639/40', '', '', '2016558500402', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(196, 21, 'B2561BEIGE/692/36', '', '', '2016560800361', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(197, 21, 'B2561BEIGE/692/37', '', '', '2016560800378', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(198, 22, 'B2561S/BEIGE1393/40', '', '', '2016561000401', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(199, 14, 'V24469/1V/BLU1418/721/37', '', '', '2016617900372', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(200, 23, 'B2427S/M1/EŚNERO/89/ORO/36', '', '', '2016432100360', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(201, 17, 'V2334SBLUCRACK/1326/36', '', '', '2016533900364', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(202, 24, 'B2387FNERO/776/36', '', '', '2016394600366', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(203, 62, 'B2272PINK/1403/40', '', '', '2016535400404', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 1, 0, '2014-08-28'),
(204, 25, 'B2427/M1/EŚBE/SKIMIX/OR/35', '', '', '2016533800350', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(205, 25, 'B2427/M1/EŚBE/SKIMIX/OR/39', '', '', '2016533800398', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(206, 19, 'V2334SROSA/1348/1326/36', '', '', '2016382600361', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(207, 26, 'B2427S/M1/EŚBE/1366/ORO/35', '', '', '2016448300358', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(208, 26, 'B2427S/M1/EŚBE/1366/ORO/39', '', '', '2016448300396', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(209, 7, 'B2426ROSSOMIX/39', '', '', '2016555200398', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(210, 27, 'C2265/1NERO/89/ORO/37', '', '', '2016330300374', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(211, 27, 'C2265/1NERO/89/ORO/39', '', '', '2016330300398', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(212, 63, 'B2561NUDE/330/36', '', '', '2016560900368', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 0, '2014-08-28'),
(213, 63, 'B2561NUDE/330/37', '', '', '2016560900375', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(214, 63, 'B2561NUDE/330/38', '', '', '2016560900382', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(215, 63, 'B2561NUDE/330/39', '', '', '2016560900399', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(216, 63, 'B2561NUDE/330/40', '', '', '2016560900405', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(217, 22, 'B2561S/BEIGE1393/37', '', '', '2016561000371', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(218, 22, 'B2561S/BEIGE1393/39', '', '', '2016561000395', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(219, 30, 'C2303/ORO/M15/1331/37', '', '', '2016372100376', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(220, 59, 'B2348/1/EŚ/R4CAMELLOMIX/38', '', '', '2016534600386', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 0, '2014-08-28'),
(221, 31, 'C2303ARGENTO/1328/1332/38', '', '', '2016371900380', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(222, 28, 'C2265/BEIGE/1393/38', '', '', '2016557800381', '', '0.000000', '-16.260000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(223, 14, 'V24469/1V/BLU1418/721/38', '', '', '2016617900389', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(224, 15, 'V25421V/NERO89/ORO/39', '', '', '2016619600393', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(225, 23, 'B2427S/M1/EŚNERO/89/ORO/39', '', '', '2016432100391', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(226, 24, 'B2387FNERO/776/39', '', '', '2016394600397', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(227, 25, 'B2427/M1/EŚBE/SKIMIX/OR/37', '', '', '2016533800374', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(228, 26, 'B2427S/M1/EŚBE/1366/ORO/37', '', '', '2016448300372', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(229, 7, 'B2426ROSSOMIX/35', '', '', '2016555200350', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(230, 7, 'B2426ROSSOMIX/36', '', '', '2016555200367', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(231, 8, 'B2426BEIGE692/40', '', '', '2016555400408', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(232, 9, 'B2426BLU721/37', '', '', '2016555300371', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(233, 21, 'B2561BEIGE/692/38', '', '', '2016560800385', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(234, 28, 'C2265/1NUDE/793ORO/36', '', '', '2016557500366', '', '0.000000', '0.000000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(235, 32, 'C2265/BEIGE/704/36', '', '', '2016557600363', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(236, 7, 'B2426/1ROSSO/1381/37', '', '', '2016565700376', '', '0.000000', '48.780000', '0.000000', 1, '0.000000', '0.00', 0, 0, '2014-08-28'),
(237, 12, 'C2265NAVY/1394/37', '', '', '2016557700377', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28'),
(238, 13, 'V24482V/NERO191/CDF/38', '', '', '2016618000385', '', '0.000000', '0.000000', '0.000000', 2, '0.000000', '0.00', 0, 0, '2014-08-28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_attribute_combination`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_product_attribute_combination`
--

INSERT INTO `prstshp_product_attribute_combination` (`id_attribute`, `id_product_attribute`) VALUES
(1, 1),
(2, 1),
(3, 1),
(2, 2),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(5, 4),
(9, 4),
(10, 4),
(9, 5),
(10, 5),
(11, 5),
(5, 6),
(12, 6),
(13, 6),
(12, 7),
(13, 7),
(14, 7),
(3, 8),
(15, 8),
(16, 8),
(5, 9),
(17, 9),
(18, 9),
(14, 10),
(19, 10),
(20, 10),
(8, 11),
(21, 11),
(22, 11),
(5, 12),
(23, 12),
(24, 12),
(11, 13),
(23, 13),
(24, 13),
(5, 14),
(20, 14),
(25, 14),
(3, 15),
(26, 15),
(27, 15),
(14, 16),
(26, 16),
(27, 16),
(3, 17),
(28, 17),
(29, 17),
(5, 18),
(28, 18),
(29, 18),
(11, 19),
(28, 19),
(29, 19),
(3, 20),
(22, 20),
(30, 20),
(11, 21),
(22, 21),
(30, 21),
(8, 22),
(22, 22),
(30, 22),
(3, 23),
(28, 23),
(31, 23),
(8, 24),
(28, 24),
(31, 24),
(14, 25),
(28, 25),
(31, 25),
(3, 26),
(32, 26),
(33, 26),
(5, 27),
(32, 27),
(33, 27),
(14, 28),
(32, 28),
(33, 28),
(5, 29),
(22, 29),
(34, 29),
(14, 30),
(22, 30),
(34, 30),
(11, 31),
(22, 31),
(34, 31),
(3, 32),
(20, 32),
(35, 32),
(5, 33),
(20, 33),
(35, 33),
(14, 34),
(20, 34),
(35, 34),
(11, 35),
(20, 35),
(35, 35),
(8, 36),
(20, 36),
(35, 36),
(13, 37),
(36, 37),
(37, 37),
(13, 38),
(14, 38),
(36, 38),
(8, 39),
(13, 39),
(36, 39),
(11, 40),
(13, 40),
(36, 40),
(5, 41),
(28, 41),
(38, 41),
(14, 42),
(28, 42),
(38, 42),
(14, 43),
(17, 43),
(18, 43),
(8, 44),
(17, 44),
(18, 44),
(11, 45),
(20, 45),
(39, 45),
(8, 46),
(20, 46),
(39, 46),
(14, 47),
(24, 47),
(40, 47),
(3, 48),
(17, 48),
(41, 48),
(11, 49),
(17, 49),
(41, 49),
(8, 50),
(17, 50),
(41, 50),
(5, 51),
(28, 51),
(42, 51),
(14, 52),
(28, 52),
(42, 52),
(8, 53),
(28, 53),
(42, 53),
(14, 54),
(28, 54),
(43, 54),
(3, 55),
(24, 55),
(44, 55),
(8, 56),
(24, 56),
(44, 56),
(8, 57),
(20, 57),
(45, 57),
(3, 58),
(28, 58),
(46, 58),
(5, 59),
(20, 59),
(47, 59),
(14, 60),
(20, 60),
(47, 60),
(3, 61),
(15, 61),
(48, 61),
(5, 62),
(15, 62),
(48, 62),
(14, 63),
(15, 63),
(48, 63),
(3, 64),
(33, 64),
(49, 64),
(14, 65),
(33, 65),
(49, 65),
(11, 66),
(33, 66),
(49, 66),
(3, 67),
(50, 67),
(51, 67),
(5, 68),
(50, 68),
(51, 68),
(3, 69),
(20, 69),
(47, 69),
(5, 70),
(20, 70),
(47, 70),
(5, 71),
(24, 71),
(52, 71),
(5, 72),
(28, 72),
(53, 72),
(14, 73),
(28, 73),
(53, 73),
(11, 74),
(28, 74),
(53, 74),
(8, 75),
(28, 75),
(53, 75),
(14, 76),
(54, 76),
(55, 76),
(11, 77),
(54, 77),
(55, 77),
(14, 78),
(20, 78),
(54, 78),
(11, 79),
(20, 79),
(54, 79),
(8, 80),
(20, 80),
(54, 80),
(37, 81),
(56, 81),
(57, 81),
(5, 82),
(56, 82),
(57, 82),
(37, 83),
(58, 83),
(59, 83),
(3, 84),
(58, 84),
(59, 84),
(5, 85),
(58, 85),
(59, 85),
(14, 86),
(60, 86),
(61, 86),
(20, 87),
(37, 87),
(56, 87),
(5, 88),
(20, 88),
(56, 88),
(28, 89),
(53, 89),
(62, 89),
(3, 90),
(28, 90),
(53, 90),
(5, 91),
(28, 91),
(63, 91),
(14, 92),
(28, 92),
(63, 92),
(11, 93),
(28, 93),
(63, 93),
(8, 94),
(28, 94),
(63, 94),
(28, 95),
(62, 95),
(63, 95),
(3, 96),
(28, 96),
(63, 96),
(3, 97),
(28, 97),
(64, 97),
(5, 98),
(28, 98),
(64, 98),
(14, 99),
(28, 99),
(64, 99),
(11, 100),
(28, 100),
(64, 100),
(11, 101),
(65, 101),
(66, 101),
(5, 102),
(65, 102),
(67, 102),
(14, 103),
(65, 103),
(67, 103),
(11, 104),
(65, 104),
(67, 104),
(3, 105),
(13, 105),
(65, 105),
(5, 106),
(15, 106),
(65, 106),
(14, 107),
(15, 107),
(65, 107),
(20, 108),
(37, 108),
(65, 108),
(3, 109),
(20, 109),
(65, 109),
(11, 110),
(20, 110),
(65, 110),
(3, 111),
(22, 111),
(65, 111),
(14, 112),
(22, 112),
(65, 112),
(11, 113),
(22, 113),
(65, 113),
(5, 114),
(15, 114),
(68, 114),
(14, 115),
(15, 115),
(68, 115),
(3, 116),
(20, 116),
(69, 116),
(14, 117),
(20, 117),
(69, 117),
(8, 118),
(20, 118),
(69, 118),
(15, 119),
(37, 119),
(70, 119),
(11, 120),
(15, 120),
(70, 120),
(5, 121),
(28, 121),
(71, 121),
(14, 122),
(28, 122),
(71, 122),
(3, 123),
(28, 123),
(68, 123),
(28, 124),
(37, 124),
(72, 124),
(14, 125),
(73, 125),
(74, 125),
(11, 126),
(73, 126),
(74, 126),
(10, 127),
(37, 127),
(73, 127),
(15, 128),
(37, 128),
(75, 128),
(5, 129),
(15, 129),
(75, 129),
(8, 130),
(15, 130),
(75, 130),
(5, 131),
(13, 131),
(76, 131),
(8, 132),
(28, 132),
(77, 132),
(3, 133),
(20, 133),
(78, 133),
(14, 134),
(20, 134),
(78, 134),
(11, 135),
(20, 135),
(78, 135),
(5, 136),
(33, 136),
(78, 136),
(14, 137),
(33, 137),
(78, 137),
(8, 138),
(79, 138),
(80, 138),
(62, 139),
(79, 139),
(80, 139),
(51, 140),
(81, 140),
(51, 141),
(82, 141),
(33, 142),
(82, 142),
(33, 143),
(83, 143),
(51, 144),
(83, 144),
(14, 145),
(76, 145),
(84, 145),
(8, 146),
(76, 146),
(84, 146),
(3, 147),
(65, 147),
(66, 147),
(5, 148),
(65, 148),
(66, 148),
(14, 149),
(65, 149),
(66, 149),
(2, 150),
(4, 150),
(14, 150),
(2, 151),
(4, 151),
(8, 151),
(7, 152),
(14, 152),
(73, 152),
(7, 153),
(11, 153),
(73, 153),
(8, 154),
(22, 154),
(76, 154),
(5, 155),
(28, 155),
(43, 155),
(8, 156),
(28, 156),
(85, 156),
(5, 157),
(28, 157),
(75, 157),
(11, 158),
(28, 158),
(75, 158),
(11, 159),
(33, 159),
(86, 159),
(33, 160),
(62, 160),
(86, 160),
(37, 161),
(87, 161),
(88, 161),
(5, 162),
(87, 162),
(88, 162),
(8, 163),
(87, 163),
(88, 163),
(37, 164),
(73, 164),
(74, 164),
(3, 165),
(73, 165),
(74, 165),
(5, 166),
(73, 166),
(74, 166),
(14, 167),
(24, 167),
(44, 167),
(9, 168),
(10, 168),
(14, 168),
(3, 169),
(20, 169),
(45, 169),
(14, 170),
(20, 170),
(45, 170),
(3, 171),
(21, 171),
(67, 171),
(11, 172),
(20, 172),
(25, 172),
(14, 173),
(24, 173),
(52, 173),
(14, 174),
(17, 174),
(41, 174),
(5, 175),
(24, 175),
(89, 175),
(14, 176),
(24, 176),
(89, 176),
(11, 177),
(24, 177),
(89, 177),
(8, 178),
(24, 178),
(89, 178),
(5, 179),
(15, 179),
(90, 179),
(2, 180),
(37, 180),
(73, 180),
(2, 181),
(11, 181),
(73, 181),
(3, 182),
(7, 182),
(73, 182),
(5, 183),
(7, 183),
(73, 183),
(3, 184),
(9, 184),
(10, 184),
(8, 185),
(9, 185),
(10, 185),
(11, 186),
(28, 186),
(38, 186),
(11, 187),
(91, 187),
(92, 187),
(11, 188),
(12, 188),
(13, 188),
(11, 189),
(15, 189),
(16, 189),
(21, 190),
(22, 190),
(37, 190),
(28, 191),
(37, 191),
(46, 191),
(14, 192),
(28, 192),
(46, 192),
(3, 193),
(23, 193),
(24, 193),
(14, 194),
(23, 194),
(24, 194),
(8, 195),
(23, 195),
(24, 195),
(3, 196),
(20, 196),
(39, 196),
(5, 197),
(20, 197),
(39, 197),
(8, 198),
(24, 198),
(40, 198),
(5, 199),
(22, 199),
(30, 199),
(3, 200),
(28, 200),
(42, 200),
(3, 201),
(22, 201),
(34, 201),
(3, 202),
(28, 202),
(43, 202),
(8, 203),
(74, 203),
(93, 203),
(24, 204),
(37, 204),
(44, 204),
(11, 205),
(24, 205),
(44, 205),
(3, 206),
(13, 206),
(36, 206),
(20, 207),
(37, 207),
(45, 207),
(11, 208),
(20, 208),
(45, 208),
(11, 209),
(17, 209),
(18, 209),
(5, 210),
(28, 210),
(46, 210),
(11, 211),
(28, 211),
(46, 211),
(3, 212),
(20, 212),
(94, 212),
(5, 213),
(20, 213),
(94, 213),
(14, 214),
(20, 214),
(94, 214),
(11, 215),
(20, 215),
(94, 215),
(8, 216),
(20, 216),
(94, 216),
(5, 217),
(24, 217),
(40, 217),
(11, 218),
(24, 218),
(40, 218),
(5, 219),
(33, 219),
(49, 219),
(14, 220),
(20, 220),
(89, 220),
(14, 221),
(50, 221),
(51, 221),
(14, 222),
(20, 222),
(47, 222),
(14, 223),
(22, 223),
(30, 223),
(11, 224),
(28, 224),
(31, 224),
(11, 225),
(28, 225),
(42, 225),
(11, 226),
(28, 226),
(43, 226),
(5, 227),
(24, 227),
(44, 227),
(5, 228),
(20, 228),
(45, 228),
(17, 229),
(18, 229),
(37, 229),
(3, 230),
(17, 230),
(18, 230),
(8, 231),
(19, 231),
(20, 231),
(5, 232),
(21, 232),
(22, 232),
(14, 233),
(20, 233),
(39, 233),
(3, 234),
(20, 234),
(47, 234),
(3, 235),
(24, 235),
(52, 235),
(5, 236),
(17, 236),
(41, 236),
(5, 237),
(26, 237),
(27, 237),
(14, 238),
(28, 238),
(29, 238);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_attribute_image`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_attribute_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_attribute_shop` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(17,2) NOT NULL DEFAULT '0.00',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_product_attribute_shop`
--

INSERT INTO `prstshp_product_attribute_shop` (`id_product_attribute`, `id_shop`, `wholesale_price`, `price`, `ecotax`, `weight`, `unit_price_impact`, `default_on`, `minimal_quantity`, `available_date`) VALUES
(1, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(2, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(3, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(4, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(5, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(6, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(7, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(8, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(9, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(10, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(11, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(12, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(13, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(14, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(15, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(16, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(17, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(18, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(19, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(20, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(21, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(22, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(23, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(24, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(25, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(26, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(27, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(28, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(29, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(30, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(31, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(32, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(33, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(34, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(35, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(36, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(37, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(38, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(39, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(40, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(41, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(42, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(43, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(44, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(45, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(46, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(47, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(48, 1, '0.000000', '48.780000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(49, 1, '0.000000', '48.780000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(50, 1, '0.000000', '48.780000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(51, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(52, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(53, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(54, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(55, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(56, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(57, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(58, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(59, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(60, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(61, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(62, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(63, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(64, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(65, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(66, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(67, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(68, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(69, 1, '0.000000', '-16.260000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(70, 1, '0.000000', '-16.260000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(71, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(72, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(73, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(74, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(75, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(76, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(77, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(78, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(79, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(80, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(81, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(82, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(83, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(84, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(85, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(86, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(87, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(88, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(89, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(90, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(91, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(92, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(93, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(94, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(95, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(96, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(97, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(98, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(99, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(100, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(101, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(102, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(103, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(104, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(105, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(106, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(107, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(108, 1, '0.000000', '56.910000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(109, 1, '0.000000', '56.910000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(110, 1, '0.000000', '56.910000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(111, 1, '0.000000', '56.910000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(112, 1, '0.000000', '56.910000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(113, 1, '0.000000', '56.910000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(114, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(115, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(116, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(117, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(118, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(119, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(120, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(121, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(122, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(123, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(124, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(125, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(126, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(127, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(128, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(129, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(130, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(131, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(132, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(133, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(134, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(135, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(136, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(137, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(138, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(139, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(140, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(141, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(142, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(143, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(144, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(145, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(146, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(147, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(148, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(149, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(150, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(151, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(152, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(153, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(154, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(155, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(156, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(157, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(158, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(159, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(160, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(161, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(162, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(163, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(164, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(165, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(166, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(167, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(168, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(169, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(170, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(171, 1, '0.000000', '-56.910000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(172, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(173, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(174, 1, '0.000000', '48.780000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(175, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(176, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(177, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(178, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(179, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(180, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(181, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(182, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(183, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(184, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(185, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(186, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(187, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(188, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(189, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(190, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(191, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(192, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(193, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(194, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(195, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(196, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(197, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(198, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(199, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(200, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(201, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(202, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(203, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(204, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(205, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(206, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(207, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(208, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(209, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(210, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(211, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(212, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 0, '2014-08-28'),
(213, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(214, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(215, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(216, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(217, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(218, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(219, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(220, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(221, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(222, 1, '0.000000', '-16.260000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(223, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(224, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(225, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(226, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(227, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(228, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(229, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(230, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(231, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(232, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(233, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(234, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(235, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(236, 1, '0.000000', '48.780000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(237, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28'),
(238, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 0, '2014-08-28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_carrier`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_carrier` (
  `id_product` int(10) unsigned NOT NULL,
  `id_carrier_reference` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_comment`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_comment` (
`id_product_comment` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `content` text NOT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  `grade` float unsigned NOT NULL,
  `validate` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_comment_criterion`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_comment_criterion` (
`id_product_comment_criterion` int(10) unsigned NOT NULL,
  `id_product_comment_criterion_type` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_comment_criterion_category`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_comment_criterion_category` (
  `id_product_comment_criterion` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_comment_criterion_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_comment_criterion_lang` (
  `id_product_comment_criterion` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_comment_criterion_product`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_comment_criterion_product` (
  `id_product` int(10) unsigned NOT NULL,
  `id_product_comment_criterion` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_comment_grade`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_comment_grade` (
  `id_product_comment` int(10) unsigned NOT NULL,
  `id_product_comment_criterion` int(10) unsigned NOT NULL,
  `grade` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_comment_report`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_comment_report` (
  `id_product_comment` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_comment_usefulness`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_comment_usefulness` (
  `id_product_comment` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `usefulness` tinyint(1) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_country_tax`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_download`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_download` (
`id_product_download` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shareable` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_group_reduction_cache`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_group_reduction_cache` (
  `id_product` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_product_lang`
--

INSERT INTO `prstshp_product_lang` (`id_product`, `id_shop`, `id_lang`, `description`, `description_short`, `link_rewrite`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `available_now`, `available_later`) VALUES
(1, 1, 1, '', '', 'B2272-CZEWRWONY', '', '', 'B2272 CZEWRWONY', 'B2272 CZEWRWONY', '', ''),
(1, 1, 3, '', '', 'B2272-CZEWRWONY', '', '', 'B2272 CZEWRWONY', 'B2272 CZEWRWONY', '', ''),
(2, 1, 1, '', '', 'B2272-CZERWONY', '', '', 'B2272 CZERWONY', 'B2272 CZERWONY', '', ''),
(2, 1, 3, '', '', 'B2272-CZERWONY', '', '', 'B2272 CZERWONY', 'B2272 CZERWONY', '', ''),
(3, 1, 1, '', '', 'B2272-ZOLTY', '', '', 'B2272 ŻÓŁTY', 'B2272 ŻÓŁTY', '', ''),
(3, 1, 3, '', '', 'B2272-ZOLTY', '', '', 'B2272 ŻÓŁTY', 'B2272 ŻÓŁTY', '', ''),
(4, 1, 1, '', '', 'B2272-PERLOWY', '', '', 'B2272 PERŁOWY', 'B2272 PERŁOWY', '', ''),
(4, 1, 3, '', '', 'B2272-PERLOWY', '', '', 'B2272 PERŁOWY', 'B2272 PERŁOWY', '', ''),
(5, 1, 1, '', '', 'B2426-ROZOWY', '', '', 'B2426 RÓŻOWY', 'B2426 RÓŻOWY', '', ''),
(5, 1, 3, '', '<p></p>', 'B2426-ROZOWY', '', '', 'B2426 RÓŻOWY', 'B2426 RÓŻOWY', '', ''),
(6, 1, 1, '', '', 'B2426-BIALE', '', '', 'B2426 BIAŁE', 'B2426 BIAŁE', '', ''),
(6, 1, 3, '', '<p></p>', 'B2426-BIALE', '', '', 'B2426 BIAŁE', 'B2426 BIAŁE', '', ''),
(7, 1, 1, '', '', 'B2426-CZERWONY', '', '', 'B2426 CZERWONY', 'B2426 CZERWONY', '', ''),
(7, 1, 3, '', '<p></p>', 'B2426-CZERWONY', '', '', 'B2426 CZERWONY', 'B2426 CZERWONY', '', ''),
(8, 1, 1, '', '', 'B2426-BEZOWY', '', '', 'B2426 BEŻOWY', 'B2426 BEŻOWY', '', ''),
(8, 1, 3, '', '<p></p>', 'B2426-BEZOWY', '', '', 'B2426 BEŻOWY', 'B2426 BEŻOWY', '', ''),
(9, 1, 1, '', '', 'B2426-NIEBIESKI', '', '', 'B2426 NIEBIESKI', 'B2426 NIEBIESKI', '', ''),
(9, 1, 3, '', '<p></p>', 'B2426-NIEBIESKI', '', '', 'B2426 NIEBIESKI', 'B2426 NIEBIESKI', '', ''),
(10, 1, 1, '', '', 'B2387F-JASNY-BEZ', '', '', 'B2387F JASNY BEŻ', 'B2387F JASNY BEŻ', '', ''),
(10, 1, 3, '', '<p></p>', 'B2387F-JASNY-BEZ', '', '', 'B2387F JASNY BEŻ', 'B2387F JASNY BEŻ', '', ''),
(11, 1, 1, '', '', 'B2330S-BEZOWY', '', '', 'B2330S BEŻOWY', 'B2330S BEŻOWY', '', ''),
(11, 1, 3, '', '<p></p>', 'B2330S-BEZOWY', '', '', 'B2330S BEŻOWY', 'B2330S BEŻOWY', '', ''),
(12, 1, 1, '', '', 'C2265-GRANAT', '', '', 'C2265 GRANAT', 'C2265 GRANAT', '', ''),
(12, 1, 3, '', '<p></p>', 'C2265-GRANAT', '', '', 'C2265 GRANAT', 'C2265 GRANAT', '', ''),
(13, 1, 1, '', '', 'V24482-CZARNY', '', '', 'V24482 CZARNY', 'V24482 CZARNY', '', ''),
(13, 1, 3, '', '<p></p>', 'V24482-CZARNY', '', '', 'V24482 CZARNY', 'V24482 CZARNY', '', ''),
(14, 1, 1, '', '', 'V24469-NIEBIESKI', '', '', 'V24469 NIEBIESKI', 'V24469 NIEBIESKI', '', ''),
(14, 1, 3, '', '<p></p>', 'V24469-NIEBIESKI', '', '', 'V24469 NIEBIESKI', 'V24469 NIEBIESKI', '', ''),
(15, 1, 1, '', '', 'V25421-CZARNY', '', '', 'V25421 CZARNY', 'V25421 CZARNY', '', ''),
(15, 1, 3, '', '<p></p>', 'V25421-CZARNY', '', '', 'V25421 CZARNY', 'V25421 CZARNY', '', ''),
(16, 1, 1, '', '', 'V2334S-ZLOTY', '', '', 'V2334S ZŁOTY', 'V2334S ZŁOTY', '', ''),
(16, 1, 3, '', '<p></p>', 'V2334S-ZLOTY', '', '', 'V2334S ZŁOTY', 'V2334S ZŁOTY', '', ''),
(17, 1, 1, '', '', 'V2334S-NIEBIESKI', '', '', 'V2334S NIEBIESKI', 'V2334S NIEBIESKI', '', ''),
(17, 1, 3, '', '<p></p>', 'V2334S-NIEBIESKI', '', '', 'V2334S NIEBIESKI', 'V2334S NIEBIESKI', '', ''),
(18, 1, 1, '', '', 'B2379-BEZOWY', '', '', 'B2379 BEŻOWY', 'B2379 BEŻOWY', '', ''),
(18, 1, 3, '', '<p></p>', 'B2379-BEZOWY', '', '', 'B2379 BEŻOWY', 'B2379 BEŻOWY', '', ''),
(19, 1, 1, '', '', 'V2334S-ROZOWY', '', '', 'V2334S RÓŻOWY', 'V2334S RÓŻOWY', '', ''),
(19, 1, 3, '', '<p></p>', 'V2334S-ROZOWY', '', '', 'V2334S RÓŻOWY', 'V2334S RÓŻOWY', '', ''),
(20, 1, 1, '', '', 'B2379-CZARNY', '', '', 'B2379 CZARNY', 'B2379 CZARNY', '', ''),
(20, 1, 3, '', '<p></p>', 'B2379-CZARNY', '', '', 'B2379 CZARNY', 'B2379 CZARNY', '', ''),
(21, 1, 1, '', '', 'B2561-BEZOWY', '', '', 'B2561 BEŻOWY', 'B2561 BEŻOWY', '', ''),
(21, 1, 3, '', '<p></p>', 'B2561-BEZOWY', '', '', 'B2561 BEŻOWY', 'B2561 BEŻOWY', '', ''),
(22, 1, 1, '', '', 'B2561-JASNY-BEZ', '', '', 'B2561 JASNY BEŻ', 'B2561 JASNY BEŻ', '', ''),
(22, 1, 3, '', '<p></p>', 'B2561-JASNY-BEZ', '', '', 'B2561 JASNY BEŻ', 'B2561 JASNY BEŻ', '', ''),
(23, 1, 1, '', '', 'B2427S-CZARNY', '', '', 'B2427S CZARNY', 'B2427S CZARNY', '', ''),
(23, 1, 3, '', '<p></p>', 'B2427S-CZARNY', '', '', 'B2427S CZARNY', 'B2427S CZARNY', '', ''),
(24, 1, 1, '', '', 'B2387F-CZARNY', '', '', 'B2387F CZARNY', 'B2387F CZARNY', '', ''),
(24, 1, 3, '', '<p></p>', 'B2387F-CZARNY', '', '', 'B2387F CZARNY', 'B2387F CZARNY', '', ''),
(25, 1, 1, '', '', 'B2427S-JASNY-BEZ', '', '', 'B2427S JASNY BEŻ', 'B2427S JASNY BEŻ', '', ''),
(25, 1, 3, '', '<p></p>', 'B2427S-JASNY-BEZ', '', '', 'B2427S JASNY BEŻ', 'B2427S JASNY BEŻ', '', ''),
(26, 1, 1, '', '', 'B2427S-BEZOWY', '', '', 'B2427S BEŻOWY', 'B2427S BEŻOWY', '', ''),
(26, 1, 3, '', '<p></p>', 'B2427S-BEZOWY', '', '', 'B2427S BEŻOWY', 'B2427S BEŻOWY', '', ''),
(27, 1, 1, '', '', 'C2265-CZARNY', '', '', 'C2265 CZARNY', 'C2265 CZARNY', '', ''),
(27, 1, 3, '', '<p></p>', 'C2265-CZARNY', '', '', 'C2265 CZARNY', 'C2265 CZARNY', '', ''),
(28, 1, 1, '', '', 'C2265-BEZOWY', '', '', 'C2265 BEŻOWY', 'C2265 BEŻOWY', '', ''),
(28, 1, 3, '', '<p></p>', 'C2265-BEZOWY', '', '', 'C2265 BEŻOWY', 'C2265 BEŻOWY', '', ''),
(29, 1, 1, '', '', 'C2303-BIALY', '', '', 'C2303 BIAŁY', 'C2303 BIAŁY', '', ''),
(29, 1, 3, '', '<p></p>', 'C2303-BIALY', '', '', 'C2303 BIAŁY', 'C2303 BIAŁY', '', ''),
(30, 1, 1, '', '', 'C2303-ZLOTY', '', '', 'C2303 ZŁOTY', 'C2303 ZŁOTY', '', ''),
(30, 1, 3, '', '<p></p>', 'C2303-ZLOTY', '', '', 'C2303 ZŁOTY', 'C2303 ZŁOTY', '', ''),
(31, 1, 1, '', '', 'C2303-SREBRNY', '', '', 'C2303 SREBRNY', 'C2303 SREBRNY', '', ''),
(31, 1, 3, '', '<p></p>', 'C2303-SREBRNY', '', '', 'C2303 SREBRNY', 'C2303 SREBRNY', '', ''),
(32, 1, 1, '', '', 'C2265-JASNY-BEZ', '', '', 'C2265 JASNY BEŻ', 'C2265 JASNY BEŻ', '', ''),
(32, 1, 3, '', '<p></p>', 'C2265-JASNY-BEZ', '', '', 'C2265 JASNY BEŻ', 'C2265 JASNY BEŻ', '', ''),
(33, 1, 1, '', '', 'B24456-CZARNY', '', '', 'B24456 CZARNY', 'B24456 CZARNY', '', ''),
(33, 1, 3, '', '<p></p>', 'B24456-CZARNY', '', '', 'B24456 CZARNY', 'B24456 CZARNY', '', ''),
(34, 1, 1, '', '', 'V1985', '', '', 'V1985', 'V1985', '', ''),
(34, 1, 3, '', '<p></p>', 'V1985', '', '', 'V1985', 'V1985', '', ''),
(35, 1, 1, '', '', '1666', '', '', '1666', '1666', '', ''),
(35, 1, 3, '', '<p></p>', '1666', '', '', '1666', '1666', '', ''),
(36, 1, 1, '', '', 'B1910', '', '', 'B1910', 'B1910', '', ''),
(36, 1, 3, '', '<p></p>', 'B1910', '', '', 'B1910', 'B1910', '', ''),
(37, 1, 1, '', '', 'B1929', '', '', 'B1929', 'B1929', '', ''),
(37, 1, 3, '', '<p></p>', 'B1929', '', '', 'B1929', 'B1929', '', ''),
(38, 1, 1, '', '', 'B24419-CZARNY', '', '', 'B24419 CZARNY', 'B24419 CZARNY', '', ''),
(38, 1, 3, '', '<p></p>', 'B24419-CZARNY', '', '', 'B24419 CZARNY', 'B24419 CZARNY', '', ''),
(39, 1, 1, '', '', 'V24444-CZARNY', '', '', 'V24444 CZARNY', 'V24444 CZARNY', '', ''),
(39, 1, 3, '', '<p></p>', 'V24444-CZARNY', '', '', 'V24444 CZARNY', 'V24444 CZARNY', '', ''),
(40, 1, 1, '', '', 'B2426', '', '', 'B2426', 'B2426', '', ''),
(40, 1, 3, '', '<p></p>', 'B2426', '', '', 'B2426', 'B2426', '', ''),
(41, 1, 1, '', '', 'B2065', '', '', 'B2065', 'B2065', '', ''),
(41, 1, 3, '', '<p></p>', 'B2065', '', '', 'B2065', 'B2065', '', ''),
(42, 1, 1, '', '', 'B2330S', '', '', 'B2330S', 'B2330S', '', ''),
(42, 1, 3, '', '<p></p>', 'B2330S', '', '', 'B2330S', 'B2330S', '', ''),
(43, 1, 1, '', '', 'B2389', '', '', 'B2389', 'B2389', '', ''),
(43, 1, 3, '', '<p></p>', 'B2389', '', '', 'B2389', 'B2389', '', ''),
(44, 1, 1, '', '', 'v2586', '', '', '', 'V2586', '', ''),
(44, 1, 3, '', '', 'v2586', '', '', '', 'V2586', '', ''),
(45, 1, 1, '', '', 'C2373', '', '', 'C2373', 'C2373', '', ''),
(45, 1, 3, '', '<p></p>', 'C2373', '', '', 'C2373', 'C2373', '', ''),
(46, 1, 1, '', '', 'V2375', '', '', 'V2375', 'V2375', '', ''),
(46, 1, 3, '', '<p></p>', 'V2375', '', '', 'V2375', 'V2375', '', ''),
(47, 1, 1, '', '', 'B2272', '', '', 'B2272', 'B2272', '', ''),
(47, 1, 3, '', '<p></p>', 'B2272', '', '', 'B2272', 'B2272', '', ''),
(48, 1, 1, '', '', 'V2391-1', '', '', 'V2391/1', 'V2391/1', '', ''),
(48, 1, 3, '', '<p></p>', 'V2391-1', '', '', 'V2391/1', 'V2391/1', '', ''),
(49, 1, 1, '', '', 'V2334S', '', '', 'V2334S', 'V2334S', '', ''),
(49, 1, 3, '', '<p></p>', 'V2334S', '', '', 'V2334S', 'V2334S', '', ''),
(50, 1, 1, '', '', 'B2379', '', '', 'B2379', 'B2379', '', ''),
(50, 1, 3, '', '<p></p>', 'B2379', '', '', 'B2379', 'B2379', '', ''),
(51, 1, 1, '', '', 'V2335-R4', '', '', 'V2335/R4', 'V2335/R4', '', ''),
(51, 1, 3, '', '<p></p>', 'V2335-R4', '', '', 'V2335/R4', 'V2335/R4', '', ''),
(52, 1, 1, '', '', 'V2001', '', '', 'V2001', 'V2001', '', ''),
(52, 1, 3, '', '', 'V2001', '', '', 'V2001', 'V2001', '', ''),
(53, 1, 1, '', '', 'BIJOUX157', '', '', 'BIJOUX157', 'BIJOUX157', '', ''),
(53, 1, 3, '', '<p></p>', 'BIJOUX157', '', '', 'BIJOUX157', 'BIJOUX157', '', ''),
(54, 1, 1, '', '', 'BIJOUX159', '', '', 'BIJOUX159', 'BIJOUX159', '', ''),
(54, 1, 3, '', '<p></p>', 'BIJOUX159', '', '', 'BIJOUX159', 'BIJOUX159', '', ''),
(55, 1, 1, '', '', 'BIJOUX156', '', '', 'BIJOUX156', 'BIJOUX156', '', ''),
(55, 1, 3, '', '<p></p>', 'BIJOUX156', '', '', 'BIJOUX156', 'BIJOUX156', '', ''),
(56, 1, 1, '', '', 'B2387F', '', '', 'B2387F', 'B2387F', '', ''),
(56, 1, 3, '', '<p></p>', 'B2387F', '', '', 'B2387F', 'B2387F', '', ''),
(57, 1, 1, '', '', 'V2451', '', '', 'V2451', 'V2451', '', ''),
(57, 1, 3, '', '', 'V2451', '', '', 'V2451', 'V2451', '', ''),
(58, 1, 1, '', '', 'V2008', '', '', 'V2008', 'V2008', '', ''),
(58, 1, 3, '', '', 'V2008', '', '', 'V2008', 'V2008', '', ''),
(59, 1, 1, '', '', 'B2348', '', '', 'B2348', 'B2348', '', ''),
(59, 1, 3, '', '<p></p>', 'B2348', '', '', 'B2348', 'B2348', '', ''),
(60, 1, 1, '', '', 'V2385', '', '', 'V2385', 'V2385', '', ''),
(60, 1, 3, '', '<p></p>', 'V2385', '', '', 'V2385', 'V2385', '', ''),
(61, 1, 1, '', '', 'V2334S-ZIELONY', '', '', 'V2334S ZIELONY', 'V2334S ZIELONY', '', ''),
(61, 1, 3, '', '<p></p>', 'V2334S-ZIELONY', '', '', 'V2334S ZIELONY', 'V2334S ZIELONY', '', ''),
(62, 1, 1, '', '', 'B2272-PUDROWY-ROZ', '', '', 'B2272 PUDROWY RÓŻ', 'B2272 PUDROWY RÓŻ', '', ''),
(62, 1, 3, '', '', 'B2272-PUDROWY-ROZ', '', '', 'B2272 PUDROWY RÓŻ', 'B2272 PUDROWY RÓŻ', '', ''),
(63, 1, 1, '', '', 'B2561', '', '', 'B2561', 'B2561', '', ''),
(63, 1, 3, '', '<p></p>', 'B2561', '', '', 'B2561', 'B2561', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_sale`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_product_shop`
--

INSERT INTO `prstshp_product_shop` (`id_product`, `id_shop`, `id_category_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ecotax`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_default_attribute`, `advanced_stock_management`, `date_add`, `date_upd`) VALUES
(1, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 1, 0, '2014-08-28 09:37:45', '2014-08-28 13:03:41'),
(2, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 2, 0, '2014-08-28 09:37:48', '2014-08-28 13:05:08'),
(3, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 3, 0, '2014-08-28 09:37:50', '2014-08-28 13:03:58'),
(4, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 4, 0, '2014-08-28 09:37:51', '2014-08-28 13:04:06'),
(5, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 6, 0, '2014-08-28 09:37:54', '2014-08-28 09:37:54'),
(6, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 8, 0, '2014-08-28 09:37:57', '2014-08-28 09:37:57'),
(7, 1, 19, 53, 0, 0, '0.000000', 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 9, 0, '2014-08-28 09:37:58', '2014-08-28 09:37:58'),
(8, 1, 19, 53, 0, 0, '0.000000', 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 10, 0, '2014-08-28 09:38:00', '2014-08-28 09:38:00'),
(9, 1, 19, 53, 0, 0, '0.000000', 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 11, 0, '2014-08-28 09:38:02', '2014-08-28 09:38:02'),
(10, 1, 19, 53, 0, 0, '0.000000', 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 12, 0, '2014-08-28 09:38:04', '2014-08-28 09:38:04'),
(11, 1, 19, 53, 0, 0, '0.000000', 1, '194.310000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 14, 0, '2014-08-28 09:38:07', '2014-08-28 09:38:07'),
(12, 1, 22, 53, 0, 0, '0.000000', 1, '0.000000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 15, 0, '2014-08-28 09:38:09', '2014-08-28 09:38:09'),
(13, 1, 24, 53, 0, 0, '0.000000', 1, '430.080000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 17, 0, '2014-08-28 09:38:13', '2014-08-28 09:38:13'),
(14, 1, 24, 53, 0, 0, '0.000000', 1, '397.560000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 20, 0, '2014-08-28 09:38:19', '2014-08-28 09:38:19'),
(15, 1, 24, 53, 0, 0, '0.000000', 1, '527.640000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 23, 0, '2014-08-28 09:38:23', '2014-08-28 09:38:23'),
(16, 1, 24, 53, 0, 0, '0.000000', 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 26, 0, '2014-08-28 09:38:33', '2014-08-28 09:38:33'),
(17, 1, 24, 53, 0, 0, '0.000000', 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 29, 0, '2014-08-28 09:38:38', '2014-08-28 09:38:38'),
(18, 1, 19, 53, 0, 0, '0.000000', 1, '283.740000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 32, 0, '2014-08-28 09:38:41', '2014-08-28 09:38:41'),
(19, 1, 24, 53, 0, 0, '0.000000', 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 37, 0, '2014-08-28 09:38:45', '2014-08-28 09:38:45'),
(20, 1, 19, 53, 0, 0, '0.000000', 1, '283.740000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 41, 0, '2014-08-28 09:38:50', '2014-08-28 09:38:50'),
(21, 1, 19, 53, 0, 0, '0.000000', 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 45, 0, '2014-08-28 09:38:54', '2014-08-28 09:38:54'),
(22, 1, 19, 53, 0, 0, '0.000000', 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 47, 0, '2014-08-28 09:38:58', '2014-08-28 09:38:58'),
(23, 1, 19, 53, 0, 0, '0.000000', 1, '291.870000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 51, 0, '2014-08-28 09:39:12', '2014-08-28 09:39:12'),
(24, 1, 19, 53, 0, 0, '0.000000', 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 54, 0, '2014-08-28 09:39:17', '2014-08-28 09:39:17'),
(25, 1, 19, 53, 0, 0, '0.000000', 1, '291.870000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 55, 0, '2014-08-28 09:39:19', '2014-08-28 09:39:19'),
(26, 1, 19, 53, 0, 0, '0.000000', 1, '291.870000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 57, 0, '2014-08-28 09:39:23', '2014-08-28 09:39:23'),
(27, 1, 22, 53, 0, 0, '0.000000', 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 58, 0, '2014-08-28 09:39:25', '2014-08-28 09:39:25'),
(28, 1, 22, 53, 0, 0, '0.000000', 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 59, 0, '2014-08-28 09:39:27', '2014-08-28 09:39:27'),
(29, 1, 22, 53, 0, 0, '0.000000', 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 61, 0, '2014-08-28 09:39:29', '2014-08-28 09:39:29'),
(30, 1, 22, 53, 0, 0, '0.000000', 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 64, 0, '2014-08-28 09:39:33', '2014-08-28 09:39:33'),
(31, 1, 22, 53, 0, 0, '0.000000', 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 67, 0, '2014-08-28 09:39:36', '2014-08-28 09:39:36'),
(32, 1, 22, 53, 0, 0, '0.000000', 1, '308.130000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 71, 0, '2014-08-28 09:39:41', '2014-08-28 09:39:41'),
(33, 1, 19, 53, 0, 0, '0.000000', 1, '405.690000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 72, 0, '2014-08-28 09:39:44', '2014-08-28 09:39:44'),
(34, 1, 24, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 76, 0, '2014-08-28 09:39:56', '2014-08-28 09:39:56'),
(35, 1, 24, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 81, 0, '2014-08-28 09:40:05', '2014-08-28 09:40:05'),
(36, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 83, 0, '2014-08-28 09:40:08', '2014-08-28 09:40:08'),
(37, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 86, 0, '2014-08-28 09:40:12', '2014-08-28 09:40:12'),
(38, 1, 19, 53, 0, 0, '0.000000', 1, '470.730000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 91, 0, '2014-08-28 09:40:19', '2014-08-28 09:40:19'),
(39, 1, 24, 53, 0, 0, '0.000000', 1, '430.080000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 97, 0, '2014-08-28 09:40:25', '2014-08-28 09:40:25'),
(40, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 101, 0, '2014-08-28 09:40:37', '2014-08-28 09:40:37'),
(41, 1, 19, 53, 0, 0, '0.000000', 1, '145.530000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 114, 0, '2014-08-28 09:40:54', '2014-08-28 09:40:54'),
(42, 1, 19, 53, 0, 0, '0.000000', 1, '194.310000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 116, 0, '2014-08-28 09:40:58', '2014-08-28 09:40:58'),
(43, 1, 24, 53, 0, 0, '0.000000', 1, '226.830000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 119, 0, '2014-08-28 09:41:01', '2014-08-28 09:41:01'),
(44, 1, 24, 53, 0, 0, '0.000000', 1, '0.000000', '0.000000', 'para', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 0, 0, '2014-08-28 09:41:04', '2014-08-28 14:09:09'),
(45, 1, 22, 53, 0, 0, '0.000000', 1, '486.990000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 121, 0, '2014-08-28 09:41:06', '2014-08-28 09:41:06'),
(46, 1, 24, 53, 0, 0, '0.000000', 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 124, 0, '2014-08-28 09:41:11', '2014-08-28 09:41:11'),
(47, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 125, 0, '2014-08-28 09:41:18', '2014-08-28 09:41:18'),
(48, 1, 24, 53, 0, 0, '0.000000', 1, '243.090000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 128, 0, '2014-08-28 09:41:22', '2014-08-28 09:41:22'),
(49, 1, 24, 53, 0, 0, '0.000000', 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 131, 0, '2014-08-28 09:41:27', '2014-08-28 09:41:27'),
(50, 1, 19, 53, 0, 0, '0.000000', 1, '283.740000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 132, 0, '2014-08-28 09:41:29', '2014-08-28 09:41:29'),
(51, 1, 24, 53, 0, 0, '0.000000', 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 133, 0, '2014-08-28 09:41:31', '2014-08-28 09:41:31'),
(52, 1, 24, 53, 0, 0, '0.000000', 1, '161.790000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 138, 0, '2014-08-28 09:41:37', '2014-08-28 14:10:08'),
(53, 1, 37, 53, 0, 0, '0.000000', 1, '0.000000', '0.000000', 'szt', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 140, 0, '2014-08-28 09:41:40', '2014-08-28 09:41:40'),
(54, 1, 37, 53, 0, 0, '0.000000', 1, '0.000000', '0.000000', 'szt', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 141, 0, '2014-08-28 09:41:43', '2014-08-28 09:41:43'),
(55, 1, 37, 53, 0, 0, '0.000000', 1, '0.000000', '0.000000', 'szt', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 143, 0, '2014-08-28 09:41:45', '2014-08-28 09:41:45'),
(56, 1, 19, 53, 0, 0, '0.000000', 1, '324.390000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 156, 0, '2014-08-28 09:42:07', '2014-08-28 09:42:07'),
(57, 1, 24, 53, 0, 0, '0.000000', 1, '161.790000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 159, 0, '2014-08-28 09:42:11', '2014-08-28 14:10:13'),
(58, 1, 24, 53, 0, 0, '0.000000', 1, '161.790000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 161, 0, '2014-08-28 09:42:15', '2014-08-28 14:10:15'),
(59, 1, 19, 53, 0, 0, '0.000000', 1, '308.130000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 175, 0, '2014-08-28 09:42:40', '2014-08-28 09:42:40'),
(60, 1, 24, 53, 0, 0, '0.000000', 1, '153.660000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 179, 0, '2014-08-28 09:42:44', '2014-08-28 09:42:44'),
(61, 1, 24, 53, 0, 0, '0.000000', 1, '267.480000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 187, 0, '2014-08-28 09:42:54', '2014-08-28 09:42:54'),
(62, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 203, 0, '2014-08-28 09:43:21', '2014-08-28 12:07:59'),
(63, 1, 19, 53, 0, 0, '0.000000', 1, '186.180000', '0.000000', 'para', '1.000000', '0.00', 0, 0, 0, 1, '', 0, 1, '2014-08-28', 'new', 1, 1, 'both', 212, 0, '2014-08-28 09:43:30', '2014-08-28 09:43:30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_supplier`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_supplier` (
`id_product_supplier` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(11) unsigned NOT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_product_tag`
--

CREATE TABLE IF NOT EXISTS `prstshp_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_profile`
--

CREATE TABLE IF NOT EXISTS `prstshp_profile` (
`id_profile` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Zrzut danych tabeli `prstshp_profile`
--

INSERT INTO `prstshp_profile` (`id_profile`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_profile_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_profile_lang`
--

INSERT INTO `prstshp_profile_lang` (`id_lang`, `id_profile`, `name`) VALUES
(1, 1, 'SuperAdmin'),
(2, 1, 'SuperAdmin'),
(3, 1, 'SuperAdmin'),
(1, 2, 'Logistician'),
(2, 2, 'Logistician'),
(3, 2, 'Logistician'),
(1, 3, 'Translator'),
(2, 3, 'Translator'),
(3, 3, 'Translator'),
(1, 4, 'Salesman'),
(2, 4, 'Salesman'),
(3, 4, 'Salesman'),
(1, 5, 'Logistician'),
(2, 5, 'Logistician'),
(3, 5, 'Logistician'),
(1, 6, 'Translator'),
(2, 6, 'Translator'),
(3, 6, 'Translator'),
(1, 7, 'Salesman'),
(2, 7, 'Salesman'),
(3, 7, 'Salesman');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_quick_access`
--

CREATE TABLE IF NOT EXISTS `prstshp_quick_access` (
`id_quick_access` int(10) unsigned NOT NULL,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(128) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `prstshp_quick_access`
--

INSERT INTO `prstshp_quick_access` (`id_quick_access`, `new_window`, `link`) VALUES
(1, 0, 'index.php?controller=AdminCategories&addcategory'),
(2, 0, 'index.php?controller=AdminProducts&addproduct'),
(3, 0, 'index.php?controller=AdminCartRules&addcart_rule');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_quick_access_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_quick_access_lang`
--

INSERT INTO `prstshp_quick_access_lang` (`id_quick_access`, `id_lang`, `name`) VALUES
(1, 1, 'New category'),
(1, 2, 'New category'),
(1, 3, 'New category'),
(2, 1, 'New product'),
(2, 2, 'New product'),
(2, 3, 'New product'),
(3, 1, 'New voucher'),
(3, 2, 'New voucher'),
(3, 3, 'New voucher');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_range_price`
--

CREATE TABLE IF NOT EXISTS `prstshp_range_price` (
`id_range_price` int(10) unsigned NOT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `prstshp_range_price`
--

INSERT INTO `prstshp_range_price` (`id_range_price`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES
(1, 2, '0.000000', '10000.000000'),
(2, 3, '0.000000', '10000.000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_range_weight`
--

CREATE TABLE IF NOT EXISTS `prstshp_range_weight` (
`id_range_weight` int(10) unsigned NOT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `prstshp_range_weight`
--

INSERT INTO `prstshp_range_weight` (`id_range_weight`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES
(1, 2, '0.000000', '10000.000000'),
(2, 3, '0.000000', '10000.000000'),
(3, 4, '0.000000', '1.000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_referrer`
--

CREATE TABLE IF NOT EXISTS `prstshp_referrer` (
`id_referrer` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_referrer_cache`
--

CREATE TABLE IF NOT EXISTS `prstshp_referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_referrer_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_referrer_shop` (
`id_referrer` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_request_sql`
--

CREATE TABLE IF NOT EXISTS `prstshp_request_sql` (
`id_request_sql` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_required_field`
--

CREATE TABLE IF NOT EXISTS `prstshp_required_field` (
`id_required_field` int(11) NOT NULL,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_risk`
--

CREATE TABLE IF NOT EXISTS `prstshp_risk` (
`id_risk` int(11) unsigned NOT NULL,
  `percent` tinyint(3) NOT NULL,
  `color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `prstshp_risk`
--

INSERT INTO `prstshp_risk` (`id_risk`, `percent`, `color`) VALUES
(1, 0, '#32CD32'),
(2, 35, '#FF8C00'),
(3, 75, '#DC143C'),
(4, 100, '#ec2e15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_risk_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_risk_lang` (
  `id_risk` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_risk_lang`
--

INSERT INTO `prstshp_risk_lang` (`id_risk`, `id_lang`, `name`) VALUES
(1, 1, 'None'),
(1, 2, 'None'),
(1, 3, 'None'),
(2, 1, 'Low'),
(2, 2, 'Low'),
(2, 3, 'Low'),
(3, 1, 'Medium'),
(3, 2, 'Medium'),
(3, 3, 'Medium'),
(4, 1, 'High'),
(4, 2, 'High'),
(4, 3, 'High');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_scene`
--

CREATE TABLE IF NOT EXISTS `prstshp_scene` (
`id_scene` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_scene_category`
--

CREATE TABLE IF NOT EXISTS `prstshp_scene_category` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_scene_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_scene_lang` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_scene_products`
--

CREATE TABLE IF NOT EXISTS `prstshp_scene_products` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_scene_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_scene_shop` (
  `id_scene` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_search_engine`
--

CREATE TABLE IF NOT EXISTS `prstshp_search_engine` (
`id_search_engine` int(10) unsigned NOT NULL,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Zrzut danych tabeli `prstshp_search_engine`
--

INSERT INTO `prstshp_search_engine` (`id_search_engine`, `server`, `getvar`) VALUES
(1, 'google', 'q'),
(2, 'aol', 'q'),
(3, 'yandex', 'text'),
(4, 'ask.com', 'q'),
(5, 'nhl.com', 'q'),
(6, 'yahoo', 'p'),
(7, 'baidu', 'wd'),
(8, 'lycos', 'query'),
(9, 'exalead', 'q'),
(10, 'search.live', 'q'),
(11, 'voila', 'rdata'),
(12, 'altavista', 'q'),
(13, 'bing', 'q'),
(14, 'daum', 'q'),
(15, 'eniro', 'search_word'),
(16, 'naver', 'query'),
(17, 'msn', 'q'),
(18, 'netscape', 'query'),
(19, 'cnn', 'query'),
(20, 'about', 'terms'),
(21, 'mamma', 'query'),
(22, 'alltheweb', 'q'),
(23, 'virgilio', 'qs'),
(24, 'alice', 'qs'),
(25, 'najdi', 'q'),
(26, 'mama', 'query'),
(27, 'seznam', 'q'),
(28, 'onet', 'qt'),
(29, 'szukacz', 'q'),
(30, 'yam', 'k'),
(31, 'pchome', 'q'),
(32, 'kvasir', 'q'),
(33, 'sesam', 'q'),
(34, 'ozu', 'q'),
(35, 'terra', 'query'),
(36, 'mynet', 'q'),
(37, 'ekolay', 'q'),
(38, 'rambler', 'words');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_search_index`
--

CREATE TABLE IF NOT EXISTS `prstshp_search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_search_index`
--

INSERT INTO `prstshp_search_index` (`id_product`, `id_word`, `weight`) VALUES
(1, 1, 8),
(2, 1, 36),
(3, 1, 8),
(4, 1, 80),
(47, 1, 360),
(62, 1, 8),
(1, 2, 8),
(1, 3, 20),
(2, 3, 60),
(47, 3, 20),
(1, 4, 20),
(1, 5, 10),
(1, 6, 3),
(2, 6, 9),
(3, 6, 3),
(4, 6, 15),
(5, 6, 9),
(6, 6, 6),
(7, 6, 33),
(8, 6, 6),
(9, 6, 12),
(10, 6, 15),
(11, 6, 6),
(18, 6, 15),
(20, 6, 9),
(21, 6, 15),
(22, 6, 12),
(23, 6, 15),
(24, 6, 12),
(25, 6, 18),
(26, 6, 18),
(33, 6, 18),
(36, 6, 9),
(37, 6, 3),
(38, 6, 18),
(40, 6, 48),
(41, 6, 9),
(42, 6, 9),
(47, 6, 36),
(50, 6, 3),
(56, 6, 3),
(59, 6, 15),
(62, 6, 3),
(63, 6, 15),
(1, 7, 3),
(2, 7, 9),
(3, 7, 3),
(4, 7, 15),
(5, 7, 9),
(6, 7, 6),
(7, 7, 33),
(8, 7, 6),
(9, 7, 12),
(10, 7, 15),
(11, 7, 6),
(18, 7, 15),
(20, 7, 9),
(21, 7, 15),
(22, 7, 12),
(23, 7, 15),
(24, 7, 12),
(25, 7, 18),
(26, 7, 18),
(33, 7, 18),
(36, 7, 9),
(37, 7, 3),
(38, 7, 18),
(40, 7, 48),
(41, 7, 9),
(42, 7, 9),
(47, 7, 36),
(50, 7, 3),
(56, 7, 3),
(59, 7, 15),
(62, 7, 3),
(63, 7, 15),
(1, 8, 2),
(2, 8, 54),
(7, 8, 550),
(47, 8, 48),
(1, 9, 2),
(2, 9, 6),
(3, 9, 2),
(4, 9, 10),
(5, 9, 6),
(6, 9, 4),
(7, 9, 22),
(8, 9, 4),
(9, 9, 8),
(10, 9, 10),
(11, 9, 4),
(12, 9, 6),
(13, 9, 8),
(14, 9, 10),
(15, 9, 8),
(16, 9, 6),
(17, 9, 8),
(18, 9, 10),
(19, 9, 10),
(20, 9, 6),
(21, 9, 10),
(22, 9, 8),
(23, 9, 10),
(24, 9, 8),
(25, 9, 12),
(26, 9, 12),
(27, 9, 10),
(28, 9, 12),
(29, 9, 6),
(30, 9, 8),
(31, 9, 6),
(32, 9, 6),
(33, 9, 12),
(34, 9, 10),
(35, 9, 8),
(36, 9, 6),
(37, 9, 2),
(38, 9, 12),
(39, 9, 8),
(40, 9, 32),
(41, 9, 6),
(42, 9, 6),
(43, 9, 4),
(44, 9, 2),
(45, 9, 4),
(46, 9, 2),
(47, 9, 24),
(48, 9, 10),
(49, 9, 8),
(50, 9, 2),
(51, 9, 10),
(52, 9, 4),
(53, 9, 2),
(54, 9, 4),
(55, 9, 4),
(56, 9, 2),
(57, 9, 4),
(58, 9, 6),
(59, 9, 10),
(60, 9, 2),
(61, 9, 2),
(62, 9, 2),
(63, 9, 10),
(1, 10, 8),
(2, 10, 36),
(3, 10, 8),
(4, 10, 80),
(47, 10, 360),
(62, 10, 8),
(1, 11, 8),
(1, 12, 20),
(2, 12, 60),
(47, 12, 20),
(1, 13, 20),
(1, 14, 10),
(1, 15, 3),
(2, 15, 9),
(3, 15, 3),
(4, 15, 15),
(5, 15, 9),
(6, 15, 6),
(7, 15, 33),
(8, 15, 6),
(9, 15, 12),
(10, 15, 15),
(11, 15, 6),
(18, 15, 15),
(20, 15, 9),
(21, 15, 15),
(22, 15, 12),
(23, 15, 15),
(24, 15, 12),
(25, 15, 18),
(26, 15, 18),
(33, 15, 18),
(36, 15, 9),
(37, 15, 3),
(38, 15, 18),
(40, 15, 48),
(41, 15, 9),
(42, 15, 9),
(47, 15, 36),
(50, 15, 3),
(56, 15, 3),
(59, 15, 15),
(62, 15, 3),
(63, 15, 15),
(1, 16, 3),
(2, 16, 9),
(3, 16, 3),
(4, 16, 15),
(5, 16, 9),
(6, 16, 6),
(7, 16, 33),
(8, 16, 6),
(9, 16, 12),
(10, 16, 15),
(11, 16, 6),
(18, 16, 15),
(20, 16, 9),
(21, 16, 15),
(22, 16, 12),
(23, 16, 15),
(24, 16, 12),
(25, 16, 18),
(26, 16, 18),
(33, 16, 18),
(36, 16, 9),
(37, 16, 3),
(38, 16, 18),
(40, 16, 48),
(41, 16, 9),
(42, 16, 9),
(47, 16, 36),
(50, 16, 3),
(56, 16, 3),
(59, 16, 15),
(62, 16, 3),
(63, 16, 15),
(1, 17, 2),
(2, 17, 54),
(7, 17, 550),
(47, 17, 48),
(1, 18, 2),
(2, 18, 6),
(3, 18, 2),
(4, 18, 10),
(5, 18, 6),
(6, 18, 4),
(7, 18, 22),
(8, 18, 4),
(9, 18, 8),
(10, 18, 10),
(11, 18, 4),
(12, 18, 6),
(13, 18, 8),
(14, 18, 10),
(15, 18, 8),
(16, 18, 6),
(17, 18, 8),
(18, 18, 10),
(19, 18, 10),
(20, 18, 6),
(21, 18, 10),
(22, 18, 8),
(23, 18, 10),
(24, 18, 8),
(25, 18, 12),
(26, 18, 12),
(27, 18, 10),
(28, 18, 12),
(29, 18, 6),
(30, 18, 8),
(31, 18, 6),
(32, 18, 6),
(33, 18, 12),
(34, 18, 10),
(35, 18, 8),
(36, 18, 6),
(37, 18, 2),
(38, 18, 12),
(39, 18, 8),
(40, 18, 32),
(41, 18, 6),
(42, 18, 6),
(43, 18, 4),
(44, 18, 2),
(45, 18, 4),
(46, 18, 2),
(47, 18, 24),
(48, 18, 10),
(49, 18, 8),
(50, 18, 2),
(51, 18, 10),
(52, 18, 4),
(53, 18, 2),
(54, 18, 4),
(55, 18, 4),
(56, 18, 2),
(57, 18, 4),
(58, 18, 6),
(59, 18, 10),
(60, 18, 2),
(61, 18, 2),
(62, 18, 2),
(63, 18, 10),
(2, 19, 40),
(2, 20, 30),
(2, 21, 40),
(2, 22, 30),
(3, 23, 10),
(47, 23, 96),
(3, 24, 20),
(47, 24, 40),
(3, 25, 10),
(3, 26, 10),
(47, 26, 96),
(3, 27, 20),
(47, 27, 40),
(3, 28, 10),
(4, 29, 130),
(47, 29, 24),
(4, 30, 100),
(47, 30, 10),
(4, 31, 60),
(4, 32, 50),
(4, 33, 130),
(47, 33, 24),
(4, 34, 100),
(47, 34, 10),
(4, 35, 60),
(4, 36, 50),
(4, 37, 10),
(4, 38, 10),
(5, 39, 36),
(6, 39, 20),
(7, 39, 308),
(8, 39, 20),
(9, 39, 56),
(40, 39, 608),
(5, 40, 54),
(19, 40, 130),
(40, 40, 32),
(49, 40, 8),
(5, 41, 40),
(5, 42, 30),
(5, 43, 36),
(6, 43, 20),
(7, 43, 308),
(8, 43, 20),
(9, 43, 56),
(40, 43, 608),
(5, 44, 54),
(19, 44, 130),
(40, 44, 32),
(49, 44, 8),
(5, 45, 40),
(5, 46, 30),
(5, 47, 10),
(5, 48, 10),
(6, 49, 20),
(6, 50, 40),
(40, 50, 20),
(6, 51, 20),
(6, 52, 8),
(29, 52, 54),
(40, 52, 64),
(41, 52, 12),
(43, 52, 8),
(48, 52, 30),
(60, 52, 2),
(6, 53, 20),
(6, 54, 40),
(40, 54, 20),
(6, 55, 20),
(6, 56, 8),
(29, 56, 54),
(40, 56, 64),
(41, 56, 12),
(43, 56, 8),
(48, 56, 30),
(60, 56, 2),
(7, 57, 170),
(7, 58, 110),
(7, 59, 132),
(9, 59, 8),
(40, 59, 96),
(51, 59, 80),
(7, 60, 170),
(7, 61, 110),
(7, 62, 132),
(9, 62, 8),
(40, 62, 96),
(51, 62, 80),
(8, 63, 28),
(11, 63, 28),
(18, 63, 130),
(21, 63, 130),
(26, 63, 180),
(28, 63, 180),
(34, 63, 30),
(35, 63, 16),
(37, 63, 2),
(40, 63, 96),
(42, 63, 18),
(51, 63, 30),
(59, 63, 10),
(63, 63, 50),
(8, 64, 30),
(8, 65, 20),
(8, 66, 28),
(11, 66, 28),
(18, 66, 130),
(21, 66, 130),
(26, 66, 180),
(28, 66, 180),
(34, 66, 30),
(35, 66, 16),
(37, 66, 2),
(40, 66, 96),
(42, 66, 18),
(51, 66, 30),
(59, 66, 10),
(63, 66, 50),
(8, 67, 30),
(8, 68, 20),
(9, 69, 88),
(14, 69, 130),
(17, 69, 88),
(40, 69, 192),
(49, 69, 8),
(9, 70, 50),
(9, 71, 40),
(9, 72, 88),
(14, 72, 130),
(17, 72, 88),
(40, 72, 192),
(49, 72, 8),
(9, 73, 50),
(9, 74, 40),
(10, 75, 180),
(24, 75, 56),
(56, 75, 8),
(10, 76, 130),
(22, 76, 88),
(25, 76, 180),
(32, 76, 54),
(59, 76, 40),
(10, 77, 130),
(22, 77, 88),
(25, 77, 180),
(32, 77, 54),
(59, 77, 40),
(10, 78, 60),
(10, 79, 50),
(10, 80, 180),
(24, 80, 56),
(56, 80, 8),
(10, 81, 130),
(22, 81, 88),
(25, 81, 180),
(32, 81, 54),
(59, 81, 40),
(10, 82, 130),
(22, 82, 88),
(25, 82, 180),
(32, 82, 54),
(59, 82, 40),
(10, 83, 60),
(10, 84, 50),
(10, 85, 10),
(10, 86, 10),
(11, 87, 60),
(42, 87, 96),
(11, 88, 40),
(42, 88, 60),
(11, 89, 20),
(11, 90, 60),
(42, 90, 96),
(11, 91, 40),
(42, 91, 60),
(11, 92, 20),
(12, 93, 36),
(27, 93, 80),
(28, 93, 138),
(32, 93, 96),
(12, 94, 54),
(12, 95, 60),
(12, 96, 40),
(12, 97, 30),
(12, 98, 9),
(27, 98, 15),
(28, 98, 18),
(29, 98, 9),
(30, 98, 12),
(31, 98, 9),
(32, 98, 9),
(45, 98, 6),
(12, 99, 36),
(27, 99, 80),
(28, 99, 138),
(32, 99, 96),
(12, 100, 54),
(12, 101, 60),
(12, 102, 40),
(12, 103, 30),
(12, 104, 9),
(27, 104, 15),
(28, 104, 18),
(29, 104, 9),
(30, 104, 12),
(31, 104, 9),
(32, 104, 9),
(45, 104, 6),
(12, 105, 10),
(12, 106, 10),
(13, 107, 56),
(13, 108, 88),
(15, 108, 88),
(20, 108, 54),
(23, 108, 130),
(24, 108, 88),
(27, 108, 130),
(33, 108, 180),
(38, 108, 180),
(39, 108, 88),
(41, 108, 6),
(45, 108, 8),
(46, 108, 2),
(48, 108, 20),
(50, 108, 2),
(56, 108, 2),
(13, 109, 80),
(13, 110, 80),
(13, 111, 80),
(13, 112, 40),
(13, 113, 12),
(14, 113, 15),
(15, 113, 12),
(16, 113, 9),
(17, 113, 12),
(19, 113, 15),
(34, 113, 15),
(35, 113, 12),
(39, 113, 12),
(43, 113, 6),
(44, 113, 3),
(46, 113, 3),
(48, 113, 15),
(49, 113, 12),
(51, 113, 15),
(52, 113, 6),
(57, 113, 6),
(58, 113, 9),
(60, 113, 3),
(61, 113, 3),
(13, 114, 56),
(13, 115, 88),
(15, 115, 88),
(20, 115, 54),
(23, 115, 130),
(24, 115, 88),
(27, 115, 130),
(33, 115, 180),
(38, 115, 180),
(39, 115, 88),
(41, 115, 6),
(45, 115, 8),
(46, 115, 2),
(48, 115, 20),
(50, 115, 2),
(56, 115, 2),
(13, 116, 80),
(13, 117, 80),
(13, 118, 80),
(13, 119, 40),
(13, 120, 12),
(14, 120, 15),
(15, 120, 12),
(16, 120, 9),
(17, 120, 12),
(19, 120, 15),
(34, 120, 15),
(35, 120, 12),
(39, 120, 12),
(43, 120, 6),
(44, 120, 3),
(46, 120, 3),
(48, 120, 15),
(49, 120, 12),
(51, 120, 15),
(52, 120, 6),
(57, 120, 6),
(58, 120, 9),
(60, 120, 3),
(61, 120, 3),
(14, 121, 80),
(14, 122, 100),
(14, 123, 60),
(14, 124, 50),
(14, 125, 80),
(14, 126, 100),
(14, 127, 60),
(14, 128, 50),
(14, 129, 10),
(14, 130, 10),
(14, 131, 10),
(14, 132, 10),
(15, 133, 56),
(15, 134, 80),
(15, 135, 80),
(15, 136, 80),
(18, 136, 100),
(20, 136, 60),
(23, 136, 100),
(26, 136, 120),
(27, 136, 100),
(30, 136, 80),
(33, 136, 120),
(35, 136, 20),
(38, 136, 120),
(43, 136, 40),
(50, 136, 20),
(54, 136, 10),
(55, 136, 30),
(60, 136, 20),
(15, 137, 40),
(15, 138, 56),
(15, 139, 80),
(15, 140, 80),
(15, 141, 80),
(18, 141, 100),
(20, 141, 60),
(23, 141, 100),
(26, 141, 120),
(27, 141, 100),
(30, 141, 80),
(33, 141, 120),
(35, 141, 20),
(38, 141, 120),
(43, 141, 40),
(50, 141, 20),
(54, 141, 10),
(55, 141, 30),
(60, 141, 20),
(15, 142, 40),
(16, 143, 36),
(17, 143, 56),
(19, 143, 80),
(49, 143, 56),
(61, 143, 8),
(16, 144, 54),
(30, 144, 88),
(51, 144, 20),
(54, 144, 4),
(55, 144, 4),
(57, 144, 8),
(16, 145, 60),
(16, 146, 40),
(16, 147, 30),
(16, 148, 36),
(17, 148, 56),
(19, 148, 80),
(49, 148, 56),
(61, 148, 8),
(16, 149, 54),
(30, 149, 88),
(51, 149, 20),
(54, 149, 4),
(55, 149, 4),
(57, 149, 8),
(16, 150, 60),
(16, 151, 40),
(16, 152, 30),
(16, 153, 10),
(16, 154, 10),
(16, 155, 10),
(16, 156, 10),
(17, 157, 80),
(49, 157, 10),
(17, 158, 50),
(17, 159, 40),
(17, 160, 80),
(49, 160, 10),
(17, 161, 50),
(17, 162, 40),
(17, 163, 10),
(17, 164, 10),
(17, 165, 10),
(17, 166, 10),
(18, 167, 80),
(20, 167, 96),
(50, 167, 28),
(18, 168, 100),
(18, 169, 100),
(18, 170, 50),
(18, 171, 80),
(20, 171, 96),
(50, 171, 28),
(18, 172, 100),
(18, 173, 100),
(18, 174, 50),
(19, 175, 100),
(49, 175, 50),
(19, 176, 60),
(19, 177, 50),
(19, 178, 100),
(49, 178, 50),
(19, 179, 60),
(19, 180, 50),
(19, 181, 10),
(19, 182, 10),
(19, 183, 10),
(19, 184, 10),
(19, 185, 10),
(19, 186, 10),
(20, 187, 60),
(50, 187, 20),
(20, 188, 60),
(41, 188, 10),
(46, 188, 20),
(50, 188, 20),
(20, 189, 30),
(20, 190, 60),
(50, 190, 20),
(20, 191, 60),
(41, 191, 10),
(46, 191, 20),
(50, 191, 20),
(20, 192, 30),
(21, 193, 80),
(22, 193, 56),
(63, 193, 80),
(21, 194, 100),
(21, 195, 60),
(21, 196, 50),
(21, 197, 80),
(22, 197, 56),
(63, 197, 80),
(21, 198, 100),
(21, 199, 60),
(21, 200, 50),
(21, 201, 10),
(21, 202, 10),
(22, 203, 80),
(22, 204, 50),
(22, 205, 40),
(22, 206, 80),
(22, 207, 50),
(22, 208, 40),
(7, 209, 110),
(7, 210, 110),
(7, 211, 50),
(7, 212, 10),
(7, 213, 50),
(7, 214, 10),
(7, 215, 10),
(7, 216, 10),
(7, 217, 10),
(7, 218, 10),
(23, 219, 180),
(25, 219, 108),
(26, 219, 228),
(23, 220, 100),
(23, 221, 50),
(23, 222, 180),
(25, 222, 108),
(26, 222, 228),
(23, 223, 100),
(23, 224, 50),
(24, 225, 80),
(56, 225, 20),
(24, 226, 50),
(24, 227, 40),
(24, 228, 80),
(56, 228, 20),
(24, 229, 50),
(24, 230, 40),
(25, 231, 120),
(25, 232, 120),
(26, 232, 120),
(25, 233, 120),
(25, 234, 60),
(25, 235, 120),
(25, 236, 120),
(26, 236, 120),
(25, 237, 120),
(25, 238, 60),
(26, 239, 120),
(26, 240, 60),
(26, 241, 120),
(26, 242, 60),
(27, 243, 100),
(27, 244, 50),
(27, 245, 100),
(27, 246, 50),
(28, 247, 90),
(28, 248, 90),
(28, 249, 60),
(28, 250, 90),
(28, 251, 90),
(28, 252, 60),
(29, 253, 36),
(30, 253, 136),
(31, 253, 36),
(29, 254, 60),
(29, 255, 40),
(29, 256, 30),
(29, 257, 36),
(30, 257, 136),
(31, 257, 36),
(29, 258, 60),
(29, 259, 40),
(29, 260, 30),
(29, 261, 10),
(29, 262, 10),
(29, 263, 10),
(29, 264, 10),
(30, 265, 50),
(30, 266, 40),
(30, 267, 50),
(30, 268, 40),
(30, 269, 10),
(30, 270, 10),
(30, 271, 10),
(30, 272, 10),
(31, 273, 54),
(53, 273, 2),
(54, 273, 4),
(55, 273, 4),
(31, 274, 60),
(31, 275, 40),
(31, 276, 30),
(31, 277, 54),
(53, 277, 2),
(54, 277, 4),
(55, 277, 4),
(31, 278, 60),
(31, 279, 40),
(31, 280, 30),
(31, 281, 10),
(31, 282, 10),
(28, 283, 30),
(32, 283, 60),
(28, 284, 10),
(28, 285, 30),
(32, 285, 60),
(28, 286, 10),
(28, 287, 10),
(28, 288, 10),
(32, 289, 40),
(32, 290, 30),
(32, 291, 40),
(32, 292, 30),
(33, 293, 108),
(33, 294, 120),
(33, 295, 120),
(33, 296, 60),
(33, 297, 108),
(33, 298, 120),
(33, 299, 120),
(33, 300, 60),
(34, 301, 80),
(34, 302, 70),
(34, 303, 60),
(34, 304, 50),
(34, 305, 20),
(34, 306, 80),
(34, 307, 70),
(34, 308, 60),
(34, 309, 50),
(34, 310, 20),
(34, 311, 10),
(34, 312, 10),
(34, 313, 30),
(34, 314, 10),
(34, 315, 30),
(34, 316, 10),
(34, 317, 10),
(34, 318, 10),
(34, 319, 10),
(34, 320, 10),
(35, 321, 56),
(35, 322, 60),
(35, 323, 60),
(52, 323, 40),
(35, 324, 60),
(53, 324, 20),
(54, 324, 30),
(55, 324, 10),
(35, 325, 40),
(35, 326, 16),
(35, 327, 56),
(35, 328, 60),
(35, 329, 60),
(52, 329, 40),
(35, 330, 60),
(53, 330, 20),
(54, 330, 30),
(55, 330, 10),
(35, 331, 40),
(35, 332, 16),
(36, 333, 36),
(36, 334, 60),
(36, 335, 30),
(36, 336, 18),
(36, 337, 36),
(36, 338, 60),
(36, 339, 30),
(36, 340, 18),
(37, 341, 8),
(37, 342, 20),
(37, 343, 10),
(37, 344, 2),
(47, 344, 120),
(58, 344, 18),
(62, 344, 10),
(37, 345, 8),
(37, 346, 20),
(37, 347, 10),
(37, 348, 2),
(47, 348, 120),
(58, 348, 18),
(62, 348, 10),
(35, 349, 20),
(35, 350, 20),
(35, 351, 20),
(35, 352, 20),
(38, 353, 108),
(38, 354, 120),
(38, 355, 120),
(38, 356, 60),
(38, 357, 108),
(38, 358, 120),
(38, 359, 120),
(38, 360, 60),
(39, 361, 56),
(39, 362, 80),
(39, 363, 50),
(39, 364, 40),
(39, 365, 56),
(39, 366, 80),
(39, 367, 50),
(39, 368, 40),
(39, 369, 10),
(39, 370, 10),
(39, 371, 10),
(39, 372, 10),
(39, 373, 10),
(39, 374, 10),
(40, 375, 200),
(40, 376, 170),
(40, 377, 160),
(40, 378, 128),
(40, 379, 200),
(40, 380, 170),
(40, 381, 160),
(40, 382, 128),
(9, 383, 10),
(40, 383, 30),
(9, 384, 10),
(40, 384, 30),
(40, 385, 10),
(40, 386, 10),
(40, 387, 10),
(40, 388, 10),
(40, 389, 10),
(40, 390, 10),
(40, 391, 10),
(40, 392, 10),
(40, 393, 10),
(40, 394, 10),
(40, 395, 10),
(40, 396, 10),
(40, 397, 10),
(40, 398, 10),
(41, 399, 46),
(41, 400, 50),
(41, 401, 40),
(41, 402, 30),
(41, 403, 46),
(41, 404, 50),
(41, 405, 40),
(41, 406, 30),
(41, 407, 10),
(41, 408, 10),
(42, 409, 30),
(42, 410, 30),
(43, 411, 20),
(43, 412, 40),
(43, 413, 40),
(48, 413, 80),
(60, 413, 20),
(43, 414, 20),
(43, 415, 20),
(43, 416, 40),
(43, 417, 40),
(48, 417, 80),
(60, 417, 20),
(43, 418, 20),
(44, 419, 10),
(44, 420, 10),
(44, 421, 10),
(44, 422, 10),
(44, 423, 10),
(44, 424, 10),
(45, 425, 20),
(45, 426, 40),
(45, 427, 40),
(45, 428, 40),
(45, 429, 20),
(45, 430, 20),
(45, 431, 40),
(45, 432, 40),
(45, 433, 40),
(45, 434, 20),
(24, 435, 10),
(41, 435, 10),
(24, 436, 10),
(41, 436, 10),
(46, 437, 8),
(46, 438, 20),
(46, 439, 20),
(46, 440, 10),
(46, 441, 8),
(46, 442, 20),
(46, 443, 20),
(46, 444, 10),
(47, 445, 170),
(62, 445, 20),
(47, 446, 130),
(47, 447, 120),
(47, 448, 120),
(58, 448, 18),
(62, 448, 10),
(47, 449, 170),
(62, 449, 20),
(47, 450, 130),
(47, 451, 120),
(47, 452, 120),
(58, 452, 18),
(62, 452, 10),
(47, 453, 10),
(47, 454, 10),
(47, 455, 10),
(47, 456, 10),
(48, 457, 80),
(48, 458, 80),
(48, 459, 60),
(48, 460, 50),
(48, 461, 80),
(48, 462, 80),
(48, 463, 60),
(48, 464, 50),
(48, 465, 20),
(48, 466, 20),
(48, 467, 10),
(48, 468, 10),
(49, 469, 50),
(49, 470, 40),
(49, 471, 50),
(49, 472, 40),
(51, 473, 180),
(51, 474, 80),
(51, 475, 80),
(51, 476, 50),
(51, 477, 180),
(51, 478, 80),
(51, 479, 80),
(51, 480, 50),
(51, 481, 20),
(59, 481, 90),
(51, 482, 10),
(51, 483, 20),
(59, 483, 90),
(51, 484, 10),
(51, 485, 10),
(51, 486, 10),
(52, 487, 60),
(52, 488, 40),
(52, 489, 30),
(52, 490, 20),
(52, 491, 8),
(52, 492, 60),
(52, 493, 40),
(52, 494, 30),
(52, 495, 20),
(52, 496, 8),
(52, 497, 10),
(52, 498, 10),
(53, 499, 8),
(53, 500, 20),
(54, 500, 40),
(55, 500, 40),
(53, 501, 20),
(53, 502, 3),
(54, 502, 6),
(55, 502, 6),
(53, 503, 8),
(53, 504, 20),
(54, 504, 40),
(55, 504, 40),
(53, 505, 20),
(53, 506, 3),
(54, 506, 6),
(55, 506, 6),
(54, 507, 20),
(54, 508, 40),
(54, 509, 20),
(54, 510, 40),
(55, 511, 20),
(55, 512, 40),
(55, 513, 20),
(55, 514, 40),
(49, 515, 16),
(49, 516, 16),
(49, 517, 20),
(61, 517, 20),
(49, 518, 10),
(49, 519, 20),
(61, 519, 20),
(49, 520, 10),
(49, 521, 10),
(49, 522, 10),
(40, 523, 10),
(40, 524, 10),
(40, 525, 10),
(40, 526, 10),
(40, 527, 10),
(40, 528, 10),
(2, 529, 10),
(2, 530, 10),
(2, 531, 10),
(2, 532, 10),
(49, 533, 10),
(49, 534, 10),
(24, 535, 10),
(24, 536, 10),
(56, 537, 20),
(56, 538, 10),
(56, 539, 20),
(56, 540, 10),
(48, 541, 20),
(48, 542, 20),
(48, 543, 10),
(48, 544, 10),
(57, 545, 60),
(57, 546, 40),
(57, 547, 30),
(57, 548, 20),
(57, 549, 60),
(57, 550, 40),
(57, 551, 30),
(57, 552, 20),
(57, 553, 10),
(57, 554, 10),
(58, 555, 96),
(58, 556, 60),
(58, 557, 40),
(58, 558, 30),
(58, 559, 96),
(58, 560, 60),
(58, 561, 40),
(58, 562, 30),
(58, 563, 10),
(58, 564, 10),
(58, 565, 10),
(58, 566, 10),
(47, 567, 10),
(47, 568, 10),
(47, 569, 10),
(47, 570, 10),
(47, 571, 10),
(47, 572, 10),
(4, 573, 10),
(4, 574, 10),
(32, 575, 10),
(32, 576, 10),
(7, 577, 10),
(7, 578, 10),
(59, 579, 80),
(59, 580, 100),
(59, 581, 50),
(59, 582, 80),
(59, 583, 100),
(59, 584, 50),
(60, 585, 8),
(60, 586, 20),
(60, 587, 10),
(60, 588, 8),
(60, 589, 20),
(60, 590, 10),
(47, 591, 10),
(47, 592, 10),
(47, 593, 10),
(47, 594, 10),
(4, 595, 10),
(4, 596, 10),
(4, 597, 10),
(4, 598, 10),
(61, 599, 10),
(61, 600, 20),
(61, 601, 10),
(61, 602, 10),
(61, 603, 20),
(61, 604, 10),
(5, 605, 10),
(5, 606, 10),
(9, 607, 10),
(9, 608, 10),
(10, 609, 10),
(10, 610, 10),
(10, 611, 10),
(10, 612, 10),
(10, 613, 10),
(10, 614, 10),
(21, 615, 10),
(21, 616, 10),
(21, 617, 10),
(21, 618, 10),
(22, 619, 10),
(22, 620, 10),
(14, 621, 10),
(14, 622, 10),
(17, 623, 10),
(17, 624, 10),
(62, 625, 20),
(62, 626, 10),
(62, 627, 20),
(62, 628, 10),
(19, 629, 10),
(19, 630, 10),
(63, 631, 100),
(63, 632, 60),
(63, 633, 50),
(63, 634, 100),
(63, 635, 60),
(63, 636, 50),
(63, 637, 10),
(63, 638, 10),
(63, 639, 10),
(63, 640, 10),
(63, 641, 10),
(63, 642, 10),
(63, 643, 10),
(63, 644, 10),
(22, 645, 10),
(22, 646, 10),
(22, 647, 10),
(22, 648, 10),
(30, 649, 10),
(30, 650, 10),
(59, 651, 10),
(59, 652, 10),
(31, 653, 10),
(31, 654, 10),
(28, 655, 10),
(28, 656, 10),
(14, 657, 10),
(14, 658, 10),
(24, 659, 10),
(24, 660, 10),
(8, 661, 10),
(8, 662, 10),
(9, 663, 10),
(9, 664, 10),
(21, 665, 10),
(21, 666, 10),
(32, 667, 10),
(32, 668, 10),
(7, 669, 10),
(7, 670, 10),
(12, 671, 10),
(12, 672, 10),
(44, 675, 6),
(44, 676, 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_search_word`
--

CREATE TABLE IF NOT EXISTS `prstshp_search_word` (
`id_word` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=677 ;

--
-- Zrzut danych tabeli `prstshp_search_word`
--

INSERT INTO `prstshp_search_word` (`id_word`, `id_shop`, `id_lang`, `word`) VALUES
(512, 1, 1, '0156'),
(501, 1, 1, '0157'),
(508, 1, 1, '0159'),
(591, 1, 1, '110635'),
(4, 1, 1, '110636'),
(19, 1, 1, '110637'),
(529, 1, 1, '110638'),
(593, 1, 1, '110639'),
(531, 1, 1, '110640'),
(401, 1, 1, '1118131137'),
(407, 1, 1, '1118131138'),
(455, 1, 1, '122735'),
(595, 1, 1, '122736'),
(31, 1, 1, '122737'),
(573, 1, 1, '122738'),
(37, 1, 1, '122739'),
(597, 1, 1, '122740'),
(323, 1, 1, '1233'),
(146, 1, 1, '128436'),
(153, 1, 1, '128437'),
(155, 1, 1, '128438'),
(169, 1, 1, '1315'),
(623, 1, 1, '132636'),
(158, 1, 1, '132637'),
(163, 1, 1, '132638'),
(165, 1, 1, '132639'),
(533, 1, 1, '132640'),
(275, 1, 1, '1328133236'),
(281, 1, 1, '1328133237'),
(653, 1, 1, '1328133238'),
(523, 1, 1, '133836'),
(525, 1, 1, '133837'),
(527, 1, 1, '133838'),
(376, 1, 1, '133839'),
(518, 1, 1, '1342132638'),
(600, 1, 1, '1342132639'),
(521, 1, 1, '1342132640'),
(176, 1, 1, '1348132635'),
(629, 1, 1, '1348132636'),
(469, 1, 1, '1348132637'),
(181, 1, 1, '1348132638'),
(185, 1, 1, '1348132639'),
(183, 1, 1, '1348132640'),
(239, 1, 1, '1366'),
(427, 1, 1, '1380'),
(212, 1, 1, '138136'),
(669, 1, 1, '138137'),
(577, 1, 1, '138138'),
(215, 1, 1, '138139'),
(217, 1, 1, '138140'),
(284, 1, 1, '139336'),
(287, 1, 1, '139337'),
(655, 1, 1, '139338'),
(96, 1, 1, '139436'),
(671, 1, 1, '139437'),
(105, 1, 1, '139438'),
(567, 1, 1, '140335'),
(569, 1, 1, '140336'),
(571, 1, 1, '140337'),
(446, 1, 1, '140338'),
(453, 1, 1, '140339'),
(625, 1, 1, '140340'),
(350, 1, 1, '1423'),
(321, 1, 1, '1666'),
(9, 1, 1, '2014'),
(335, 1, 1, '2015956700353'),
(304, 1, 1, '2016121300385'),
(343, 1, 1, '2016146800389'),
(244, 1, 1, '2016330300367'),
(276, 1, 1, '2016371900366'),
(256, 1, 1, '2016372000362'),
(266, 1, 1, '2016372100369'),
(402, 1, 1, '2016373900371'),
(601, 1, 1, '2016379400394'),
(177, 1, 1, '2016382600354'),
(470, 1, 1, '2016382600378'),
(440, 1, 1, '2016391900353'),
(587, 1, 1, '2016392000373'),
(170, 1, 1, '2016393000365'),
(414, 1, 1, '2016393400356'),
(227, 1, 1, '2016394600380'),
(538, 1, 1, '2016394600403'),
(189, 1, 1, '2016407200378'),
(221, 1, 1, '2016432100377'),
(240, 1, 1, '2016448300402'),
(234, 1, 1, '2016533800367'),
(159, 1, 1, '2016533900371'),
(147, 1, 1, '2016534100367'),
(558, 1, 1, '2016534200357'),
(581, 1, 1, '2016534700376'),
(460, 1, 1, '2016535100359'),
(25, 1, 1, '2016535300407'),
(447, 1, 1, '2016535400381'),
(626, 1, 1, '2016535400404'),
(5, 1, 1, '2016535500364'),
(20, 1, 1, '2016535500371'),
(32, 1, 1, '2016535600378'),
(490, 1, 1, '2016546300403'),
(476, 1, 1, '2016546600367'),
(548, 1, 1, '2016546800392'),
(58, 1, 1, '2016555200374'),
(71, 1, 1, '2016555300401'),
(65, 1, 1, '2016555400385'),
(377, 1, 1, '2016555500399'),
(42, 1, 1, '2016555600372'),
(51, 1, 1, '2016555700362'),
(249, 1, 1, '2016557500373'),
(290, 1, 1, '2016557600370'),
(97, 1, 1, '2016557700360'),
(429, 1, 1, '2016557900371'),
(79, 1, 1, '2016558500372'),
(196, 1, 1, '2016560800392'),
(633, 1, 1, '2016560900368'),
(205, 1, 1, '2016561000388'),
(409, 1, 1, '2016561900367'),
(89, 1, 1, '2016561900374'),
(421, 1, 1, '2016566300377'),
(325, 1, 1, '2016586200350'),
(124, 1, 1, '2016617900365'),
(112, 1, 1, '2016618000361'),
(364, 1, 1, '2016618700360'),
(296, 1, 1, '2016619200371'),
(356, 1, 1, '2016619300378'),
(137, 1, 1, '2016619600362'),
(420, 1, 1, '20937'),
(413, 1, 1, '307'),
(255, 1, 1, '307133636'),
(261, 1, 1, '307133637'),
(263, 1, 1, '307133638'),
(482, 1, 1, '30737'),
(485, 1, 1, '30738'),
(632, 1, 1, '33036'),
(637, 1, 1, '33037'),
(639, 1, 1, '33038'),
(641, 1, 1, '33039'),
(643, 1, 1, '33040'),
(314, 1, 1, '51914938'),
(317, 1, 1, '51914939'),
(319, 1, 1, '51914940'),
(303, 1, 1, '57014938'),
(311, 1, 1, '57014939'),
(615, 1, 1, '69236'),
(617, 1, 1, '69237'),
(665, 1, 1, '69238'),
(195, 1, 1, '69239'),
(201, 1, 1, '69240'),
(667, 1, 1, '70436'),
(289, 1, 1, '70437'),
(575, 1, 1, '70438'),
(435, 1, 1, '77636'),
(535, 1, 1, '77637'),
(226, 1, 1, '77638'),
(659, 1, 1, '77639'),
(537, 1, 1, '77640'),
(248, 1, 1, '793oro'),
(502, 1, 1, 'akcesoria'),
(547, 1, 1, 'b139'),
(553, 1, 1, 'b141'),
(333, 1, 1, 'b1910'),
(334, 1, 1, 'b1910795fuxia'),
(341, 1, 1, 'b1929'),
(342, 1, 1, 'b1929beige69211'),
(399, 1, 1, 'b2065'),
(400, 1, 1, 'b2065bianco'),
(1, 1, 1, 'b2272'),
(30, 1, 1, 'b2272perlato'),
(445, 1, 1, 'b2272pink'),
(3, 1, 1, 'b2272rosso'),
(24, 1, 1, 'b2272zoltymix'),
(87, 1, 1, 'b2330s'),
(579, 1, 1, 'b2348'),
(580, 1, 1, 'b23481'),
(167, 1, 1, 'b2379'),
(168, 1, 1, 'b2379pecora'),
(75, 1, 1, 'b2387f'),
(225, 1, 1, 'b2387fnero'),
(411, 1, 1, 'b2389'),
(39, 1, 1, 'b2426'),
(211, 1, 1, 'b24261rosso'),
(387, 1, 1, 'b2426beige69235'),
(389, 1, 1, 'b2426beige69236'),
(64, 1, 1, 'b2426beige69238'),
(391, 1, 1, 'b2426beige69239'),
(661, 1, 1, 'b2426beige69240'),
(50, 1, 1, 'b2426bianco1337'),
(607, 1, 1, 'b2426blu72135'),
(393, 1, 1, 'b2426blu72136'),
(663, 1, 1, 'b2426blu72137'),
(395, 1, 1, 'b2426blu72138'),
(397, 1, 1, 'b2426blu72139'),
(70, 1, 1, 'b2426blu72140'),
(383, 1, 1, 'b2426blumix'),
(375, 1, 1, 'b2426cdf'),
(385, 1, 1, 'b2426pink134336'),
(41, 1, 1, 'b2426pink134337'),
(47, 1, 1, 'b2426pink134338'),
(605, 1, 1, 'b2426pink134339'),
(57, 1, 1, 'b2426rossomix'),
(231, 1, 1, 'b2427'),
(219, 1, 1, 'b2427s'),
(353, 1, 1, 'b24419'),
(354, 1, 1, 'b24419v'),
(293, 1, 1, 'b24456'),
(294, 1, 1, 'b24456v'),
(193, 1, 1, 'b2561'),
(194, 1, 1, 'b2561beige'),
(631, 1, 1, 'b2561nude'),
(203, 1, 1, 'b2561s'),
(489, 1, 1, 'beib140'),
(497, 1, 1, 'beib141'),
(283, 1, 1, 'beige'),
(645, 1, 1, 'beige139337'),
(204, 1, 1, 'beige139338'),
(647, 1, 1, 'beige139339'),
(619, 1, 1, 'beige139340'),
(557, 1, 1, 'beigeb135'),
(563, 1, 1, 'beigeb137'),
(565, 1, 1, 'beigeb140'),
(7, 1, 1, 'bellezza'),
(77, 1, 1, 'bez'),
(63, 1, 1, 'bezowy'),
(49, 1, 1, 'biale'),
(52, 1, 1, 'bialy'),
(500, 1, 1, 'bijoux'),
(511, 1, 1, 'bijoux156'),
(499, 1, 1, 'bijoux157'),
(507, 1, 1, 'bijoux159'),
(123, 1, 1, 'blu141872136'),
(621, 1, 1, 'blu141872137'),
(657, 1, 1, 'blu141872138'),
(129, 1, 1, 'blu141872139'),
(131, 1, 1, 'blu141872140'),
(93, 1, 1, 'c2265'),
(243, 1, 1, 'c22651nero'),
(247, 1, 1, 'c22651nude'),
(95, 1, 1, 'c2265navy'),
(253, 1, 1, 'c2303'),
(274, 1, 1, 'c2303argento'),
(254, 1, 1, 'c2303bianco'),
(425, 1, 1, 'c2373'),
(426, 1, 1, 'c2373nero'),
(111, 1, 1, 'cdf'),
(98, 1, 1, 'celebrity'),
(6, 1, 1, 'classico'),
(108, 1, 1, 'czarny'),
(8, 1, 1, 'czerwony'),
(2, 1, 1, 'czewrwony'),
(232, 1, 1, 'esbe'),
(220, 1, 1, 'esnero'),
(94, 1, 1, 'granat'),
(305, 1, 1, 'granatowy'),
(673, 1, 1, 'home'),
(76, 1, 1, 'jasny'),
(336, 1, 1, 'kolorowe'),
(491, 1, 1, 'koralowy'),
(187, 1, 1, 'lamb'),
(265, 1, 1, 'm15133136'),
(649, 1, 1, 'm15133137'),
(269, 1, 1, 'm15133138'),
(271, 1, 1, 'm15133139'),
(459, 1, 1, 'm1535'),
(465, 1, 1, 'm1537'),
(543, 1, 1, 'm1539'),
(467, 1, 1, 'm1540'),
(488, 1, 1, 'm1cora'),
(546, 1, 1, 'm1oromix'),
(556, 1, 1, 'm2cipolla'),
(515, 1, 1, 'mietowy'),
(59, 1, 1, 'mix'),
(188, 1, 1, 'nero'),
(355, 1, 1, 'nero138089'),
(110, 1, 1, 'nero191'),
(135, 1, 1, 'nero89'),
(363, 1, 1, 'nero94871236'),
(369, 1, 1, 'nero94871237'),
(371, 1, 1, 'nero94871238'),
(373, 1, 1, 'nero94871239'),
(295, 1, 1, 'nero94889'),
(69, 1, 1, 'niebieski'),
(324, 1, 1, 'nik'),
(439, 1, 1, 'nikiel'),
(136, 1, 1, 'oro'),
(428, 1, 1, 'orochiar'),
(209, 1, 1, 'ozdoba'),
(609, 1, 1, 'panna63936'),
(78, 1, 1, 'panna63937'),
(611, 1, 1, 'panna63938'),
(85, 1, 1, 'panna63939'),
(613, 1, 1, 'panna63940'),
(88, 1, 1, 'pecora1315oro'),
(29, 1, 1, 'perlowy'),
(475, 1, 1, 'pla'),
(326, 1, 1, 'pomaranczowy'),
(378, 1, 1, 'popielaty'),
(448, 1, 1, 'pudrowy'),
(474, 1, 1, 'r4beige'),
(651, 1, 1, 'r4camellomix'),
(481, 1, 1, 'r4oromix'),
(344, 1, 1, 'roz'),
(40, 1, 1, 'rozowy'),
(233, 1, 1, 'skimix'),
(273, 1, 1, 'srebrny'),
(349, 1, 1, 'v16662sbeige'),
(322, 1, 1, 'v16663amarill'),
(301, 1, 1, 'v1985'),
(313, 1, 1, 'v1985beige'),
(302, 1, 1, 'v1985jeans'),
(487, 1, 1, 'v2001'),
(555, 1, 1, 'v2008'),
(143, 1, 1, 'v2334s'),
(157, 1, 1, 'v2334sblucrack'),
(517, 1, 1, 'v2334smetnta'),
(145, 1, 1, 'v2334sorocrack'),
(175, 1, 1, 'v2334srosa'),
(473, 1, 1, 'v2335'),
(437, 1, 1, 'v2375'),
(438, 1, 1, 'v23751'),
(585, 1, 1, 'v2385'),
(586, 1, 1, 'v2385bianco'),
(412, 1, 1, 'v23891bianco'),
(457, 1, 1, 'v23911'),
(458, 1, 1, 'v23911bianco'),
(541, 1, 1, 'v23911nero'),
(361, 1, 1, 'v24444'),
(362, 1, 1, 'v24444v'),
(121, 1, 1, 'v24469'),
(122, 1, 1, 'v244691v'),
(107, 1, 1, 'v24482'),
(109, 1, 1, 'v24482v'),
(545, 1, 1, 'v2451'),
(133, 1, 1, 'v25421'),
(134, 1, 1, 'v25421v'),
(675, 1, 1, 'v2586'),
(419, 1, 1, 'v2586oro'),
(113, 1, 1, 'victim'),
(599, 1, 1, 'zielony'),
(144, 1, 1, 'zloty'),
(23, 1, 1, 'zolty'),
(514, 1, 3, '0156'),
(505, 1, 3, '0157'),
(510, 1, 3, '0159'),
(592, 1, 3, '110635'),
(13, 1, 3, '110636'),
(21, 1, 3, '110637'),
(530, 1, 3, '110638'),
(594, 1, 3, '110639'),
(532, 1, 3, '110640'),
(405, 1, 3, '1118131137'),
(408, 1, 3, '1118131138'),
(456, 1, 3, '122735'),
(596, 1, 3, '122736'),
(35, 1, 3, '122737'),
(574, 1, 3, '122738'),
(38, 1, 3, '122739'),
(598, 1, 3, '122740'),
(329, 1, 3, '1233'),
(151, 1, 3, '128436'),
(154, 1, 3, '128437'),
(156, 1, 3, '128438'),
(173, 1, 3, '1315'),
(624, 1, 3, '132636'),
(161, 1, 3, '132637'),
(164, 1, 3, '132638'),
(166, 1, 3, '132639'),
(534, 1, 3, '132640'),
(279, 1, 3, '1328133236'),
(282, 1, 3, '1328133237'),
(654, 1, 3, '1328133238'),
(524, 1, 3, '133836'),
(526, 1, 3, '133837'),
(528, 1, 3, '133838'),
(380, 1, 3, '133839'),
(520, 1, 3, '1342132638'),
(603, 1, 3, '1342132639'),
(522, 1, 3, '1342132640'),
(179, 1, 3, '1348132635'),
(630, 1, 3, '1348132636'),
(471, 1, 3, '1348132637'),
(182, 1, 3, '1348132638'),
(186, 1, 3, '1348132639'),
(184, 1, 3, '1348132640'),
(241, 1, 3, '1366'),
(432, 1, 3, '1380'),
(214, 1, 3, '138136'),
(670, 1, 3, '138137'),
(578, 1, 3, '138138'),
(216, 1, 3, '138139'),
(218, 1, 3, '138140'),
(286, 1, 3, '139336'),
(288, 1, 3, '139337'),
(656, 1, 3, '139338'),
(102, 1, 3, '139436'),
(672, 1, 3, '139437'),
(106, 1, 3, '139438'),
(568, 1, 3, '140335'),
(570, 1, 3, '140336'),
(572, 1, 3, '140337'),
(450, 1, 3, '140338'),
(454, 1, 3, '140339'),
(627, 1, 3, '140340'),
(352, 1, 3, '1423'),
(327, 1, 3, '1666'),
(18, 1, 3, '2014'),
(339, 1, 3, '2015956700353'),
(309, 1, 3, '2016121300385'),
(347, 1, 3, '2016146800389'),
(246, 1, 3, '2016330300367'),
(280, 1, 3, '2016371900366'),
(260, 1, 3, '2016372000362'),
(268, 1, 3, '2016372100369'),
(406, 1, 3, '2016373900371'),
(604, 1, 3, '2016379400394'),
(180, 1, 3, '2016382600354'),
(472, 1, 3, '2016382600378'),
(444, 1, 3, '2016391900353'),
(590, 1, 3, '2016392000373'),
(174, 1, 3, '2016393000365'),
(418, 1, 3, '2016393400356'),
(230, 1, 3, '2016394600380'),
(540, 1, 3, '2016394600403'),
(192, 1, 3, '2016407200378'),
(224, 1, 3, '2016432100377'),
(242, 1, 3, '2016448300402'),
(238, 1, 3, '2016533800367'),
(162, 1, 3, '2016533900371'),
(152, 1, 3, '2016534100367'),
(562, 1, 3, '2016534200357'),
(584, 1, 3, '2016534700376'),
(464, 1, 3, '2016535100359'),
(28, 1, 3, '2016535300407'),
(451, 1, 3, '2016535400381'),
(628, 1, 3, '2016535400404'),
(14, 1, 3, '2016535500364'),
(22, 1, 3, '2016535500371'),
(36, 1, 3, '2016535600378'),
(495, 1, 3, '2016546300403'),
(480, 1, 3, '2016546600367'),
(552, 1, 3, '2016546800392'),
(61, 1, 3, '2016555200374'),
(74, 1, 3, '2016555300401'),
(68, 1, 3, '2016555400385'),
(381, 1, 3, '2016555500399'),
(46, 1, 3, '2016555600372'),
(55, 1, 3, '2016555700362'),
(252, 1, 3, '2016557500373'),
(292, 1, 3, '2016557600370'),
(103, 1, 3, '2016557700360'),
(434, 1, 3, '2016557900371'),
(84, 1, 3, '2016558500372'),
(200, 1, 3, '2016560800392'),
(636, 1, 3, '2016560900368'),
(208, 1, 3, '2016561000388'),
(410, 1, 3, '2016561900367'),
(92, 1, 3, '2016561900374'),
(424, 1, 3, '2016566300377'),
(331, 1, 3, '2016586200350'),
(128, 1, 3, '2016617900365'),
(119, 1, 3, '2016618000361'),
(368, 1, 3, '2016618700360'),
(300, 1, 3, '2016619200371'),
(360, 1, 3, '2016619300378'),
(142, 1, 3, '2016619600362'),
(423, 1, 3, '20937'),
(417, 1, 3, '307'),
(259, 1, 3, '307133636'),
(262, 1, 3, '307133637'),
(264, 1, 3, '307133638'),
(484, 1, 3, '30737'),
(486, 1, 3, '30738'),
(635, 1, 3, '33036'),
(638, 1, 3, '33037'),
(640, 1, 3, '33038'),
(642, 1, 3, '33039'),
(644, 1, 3, '33040'),
(316, 1, 3, '51914938'),
(318, 1, 3, '51914939'),
(320, 1, 3, '51914940'),
(308, 1, 3, '57014938'),
(312, 1, 3, '57014939'),
(616, 1, 3, '69236'),
(618, 1, 3, '69237'),
(666, 1, 3, '69238'),
(199, 1, 3, '69239'),
(202, 1, 3, '69240'),
(668, 1, 3, '70436'),
(291, 1, 3, '70437'),
(576, 1, 3, '70438'),
(436, 1, 3, '77636'),
(536, 1, 3, '77637'),
(229, 1, 3, '77638'),
(660, 1, 3, '77639'),
(539, 1, 3, '77640'),
(251, 1, 3, '793oro'),
(506, 1, 3, 'akcesoria'),
(551, 1, 3, 'b139'),
(554, 1, 3, 'b141'),
(337, 1, 3, 'b1910'),
(338, 1, 3, 'b1910795fuxia'),
(345, 1, 3, 'b1929'),
(346, 1, 3, 'b1929beige69211'),
(403, 1, 3, 'b2065'),
(404, 1, 3, 'b2065bianco'),
(10, 1, 3, 'b2272'),
(34, 1, 3, 'b2272perlato'),
(449, 1, 3, 'b2272pink'),
(12, 1, 3, 'b2272rosso'),
(27, 1, 3, 'b2272zoltymix'),
(90, 1, 3, 'b2330s'),
(582, 1, 3, 'b2348'),
(583, 1, 3, 'b23481'),
(171, 1, 3, 'b2379'),
(172, 1, 3, 'b2379pecora'),
(80, 1, 3, 'b2387f'),
(228, 1, 3, 'b2387fnero'),
(415, 1, 3, 'b2389'),
(43, 1, 3, 'b2426'),
(213, 1, 3, 'b24261rosso'),
(388, 1, 3, 'b2426beige69235'),
(390, 1, 3, 'b2426beige69236'),
(67, 1, 3, 'b2426beige69238'),
(392, 1, 3, 'b2426beige69239'),
(662, 1, 3, 'b2426beige69240'),
(54, 1, 3, 'b2426bianco1337'),
(608, 1, 3, 'b2426blu72135'),
(394, 1, 3, 'b2426blu72136'),
(664, 1, 3, 'b2426blu72137'),
(396, 1, 3, 'b2426blu72138'),
(398, 1, 3, 'b2426blu72139'),
(73, 1, 3, 'b2426blu72140'),
(384, 1, 3, 'b2426blumix'),
(379, 1, 3, 'b2426cdf'),
(386, 1, 3, 'b2426pink134336'),
(45, 1, 3, 'b2426pink134337'),
(48, 1, 3, 'b2426pink134338'),
(606, 1, 3, 'b2426pink134339'),
(60, 1, 3, 'b2426rossomix'),
(235, 1, 3, 'b2427'),
(222, 1, 3, 'b2427s'),
(357, 1, 3, 'b24419'),
(358, 1, 3, 'b24419v'),
(297, 1, 3, 'b24456'),
(298, 1, 3, 'b24456v'),
(197, 1, 3, 'b2561'),
(198, 1, 3, 'b2561beige'),
(634, 1, 3, 'b2561nude'),
(206, 1, 3, 'b2561s'),
(494, 1, 3, 'beib140'),
(498, 1, 3, 'beib141'),
(285, 1, 3, 'beige'),
(646, 1, 3, 'beige139337'),
(207, 1, 3, 'beige139338'),
(648, 1, 3, 'beige139339'),
(620, 1, 3, 'beige139340'),
(561, 1, 3, 'beigeb135'),
(564, 1, 3, 'beigeb137'),
(566, 1, 3, 'beigeb140'),
(16, 1, 3, 'bellezza'),
(82, 1, 3, 'bez'),
(66, 1, 3, 'bezowy'),
(53, 1, 3, 'biale'),
(56, 1, 3, 'bialy'),
(504, 1, 3, 'bijoux'),
(513, 1, 3, 'bijoux156'),
(503, 1, 3, 'bijoux157'),
(509, 1, 3, 'bijoux159'),
(127, 1, 3, 'blu141872136'),
(622, 1, 3, 'blu141872137'),
(658, 1, 3, 'blu141872138'),
(130, 1, 3, 'blu141872139'),
(132, 1, 3, 'blu141872140'),
(99, 1, 3, 'c2265'),
(245, 1, 3, 'c22651nero'),
(250, 1, 3, 'c22651nude'),
(101, 1, 3, 'c2265navy'),
(257, 1, 3, 'c2303'),
(278, 1, 3, 'c2303argento'),
(258, 1, 3, 'c2303bianco'),
(430, 1, 3, 'c2373'),
(431, 1, 3, 'c2373nero'),
(118, 1, 3, 'cdf'),
(104, 1, 3, 'celebrity'),
(15, 1, 3, 'classico'),
(115, 1, 3, 'czarny'),
(17, 1, 3, 'czerwony'),
(11, 1, 3, 'czewrwony'),
(236, 1, 3, 'esbe'),
(223, 1, 3, 'esnero'),
(100, 1, 3, 'granat'),
(310, 1, 3, 'granatowy'),
(674, 1, 3, 'home'),
(81, 1, 3, 'jasny'),
(340, 1, 3, 'kolorowe'),
(496, 1, 3, 'koralowy'),
(190, 1, 3, 'lamb'),
(267, 1, 3, 'm15133136'),
(650, 1, 3, 'm15133137'),
(270, 1, 3, 'm15133138'),
(272, 1, 3, 'm15133139'),
(463, 1, 3, 'm1535'),
(466, 1, 3, 'm1537'),
(544, 1, 3, 'm1539'),
(468, 1, 3, 'm1540'),
(493, 1, 3, 'm1cora'),
(550, 1, 3, 'm1oromix'),
(560, 1, 3, 'm2cipolla'),
(516, 1, 3, 'mietowy'),
(62, 1, 3, 'mix'),
(191, 1, 3, 'nero'),
(359, 1, 3, 'nero138089'),
(117, 1, 3, 'nero191'),
(140, 1, 3, 'nero89'),
(367, 1, 3, 'nero94871236'),
(370, 1, 3, 'nero94871237'),
(372, 1, 3, 'nero94871238'),
(374, 1, 3, 'nero94871239'),
(299, 1, 3, 'nero94889'),
(72, 1, 3, 'niebieski'),
(330, 1, 3, 'nik'),
(443, 1, 3, 'nikiel'),
(141, 1, 3, 'oro'),
(433, 1, 3, 'orochiar'),
(210, 1, 3, 'ozdoba'),
(610, 1, 3, 'panna63936'),
(83, 1, 3, 'panna63937'),
(612, 1, 3, 'panna63938'),
(86, 1, 3, 'panna63939'),
(614, 1, 3, 'panna63940'),
(91, 1, 3, 'pecora1315oro'),
(33, 1, 3, 'perlowy'),
(479, 1, 3, 'pla'),
(332, 1, 3, 'pomaranczowy'),
(382, 1, 3, 'popielaty'),
(452, 1, 3, 'pudrowy'),
(478, 1, 3, 'r4beige'),
(652, 1, 3, 'r4camellomix'),
(483, 1, 3, 'r4oromix'),
(348, 1, 3, 'roz'),
(44, 1, 3, 'rozowy'),
(237, 1, 3, 'skimix'),
(277, 1, 3, 'srebrny'),
(351, 1, 3, 'v16662sbeige'),
(328, 1, 3, 'v16663amarill'),
(306, 1, 3, 'v1985'),
(315, 1, 3, 'v1985beige'),
(307, 1, 3, 'v1985jeans'),
(492, 1, 3, 'v2001'),
(559, 1, 3, 'v2008'),
(148, 1, 3, 'v2334s'),
(160, 1, 3, 'v2334sblucrack'),
(519, 1, 3, 'v2334smetnta'),
(150, 1, 3, 'v2334sorocrack'),
(178, 1, 3, 'v2334srosa'),
(477, 1, 3, 'v2335'),
(441, 1, 3, 'v2375'),
(442, 1, 3, 'v23751'),
(588, 1, 3, 'v2385'),
(589, 1, 3, 'v2385bianco'),
(416, 1, 3, 'v23891bianco'),
(461, 1, 3, 'v23911'),
(462, 1, 3, 'v23911bianco'),
(542, 1, 3, 'v23911nero'),
(365, 1, 3, 'v24444'),
(366, 1, 3, 'v24444v'),
(125, 1, 3, 'v24469'),
(126, 1, 3, 'v244691v'),
(114, 1, 3, 'v24482'),
(116, 1, 3, 'v24482v'),
(549, 1, 3, 'v2451'),
(138, 1, 3, 'v25421'),
(139, 1, 3, 'v25421v'),
(676, 1, 3, 'v2586'),
(422, 1, 3, 'v2586oro'),
(120, 1, 3, 'victim'),
(602, 1, 3, 'zielony'),
(149, 1, 3, 'zloty'),
(26, 1, 3, 'zolty');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_sekeyword`
--

CREATE TABLE IF NOT EXISTS `prstshp_sekeyword` (
`id_sekeyword` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_shop` (
`id_shop` int(11) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `id_category` int(11) unsigned NOT NULL DEFAULT '1',
  `id_theme` int(1) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_shop`
--

INSERT INTO `prstshp_shop` (`id_shop`, `id_shop_group`, `name`, `id_category`, `id_theme`, `active`, `deleted`) VALUES
(1, 1, 'Ecelebrity.eu', 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_shop_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_shop_group` (
`id_shop_group` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_shop_group`
--

INSERT INTO `prstshp_shop_group` (`id_shop_group`, `name`, `share_customer`, `share_order`, `share_stock`, `active`, `deleted`) VALUES
(1, 'Default', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_shop_url`
--

CREATE TABLE IF NOT EXISTS `prstshp_shop_url` (
`id_shop_url` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(64) NOT NULL,
  `virtual_uri` varchar(64) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_shop_url`
--

INSERT INTO `prstshp_shop_url` (`id_shop_url`, `id_shop`, `domain`, `domain_ssl`, `physical_uri`, `virtual_uri`, `main`, `active`) VALUES
(1, 1, 'www.dev.ecelebrity.eu', 'wwww.dev.ecelebrity.eu', '/', '', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_specific_price`
--

CREATE TABLE IF NOT EXISTS `prstshp_specific_price` (
`id_specific_price` int(10) unsigned NOT NULL,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  `id_cart` int(11) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(11) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_specific_price_priority`
--

CREATE TABLE IF NOT EXISTS `prstshp_specific_price_priority` (
`id_specific_price_priority` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `priority` varchar(80) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Zrzut danych tabeli `prstshp_specific_price_priority`
--

INSERT INTO `prstshp_specific_price_priority` (`id_specific_price_priority`, `id_product`, `priority`) VALUES
(1, 4, 'id_shop;id_currency;id_country;id_group'),
(7, 1, 'id_shop;id_currency;id_country;id_group'),
(9, 2, 'id_shop;id_currency;id_country;id_group'),
(10, 3, 'id_shop;id_currency;id_country;id_group'),
(11, 62, 'id_shop;id_currency;id_country;id_group'),
(18, 44, 'id_shop;id_currency;id_country;id_group'),
(20, 52, 'id_shop;id_currency;id_country;id_group'),
(21, 57, 'id_shop;id_currency;id_country;id_group'),
(22, 58, 'id_shop;id_currency;id_country;id_group');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_specific_price_rule`
--

CREATE TABLE IF NOT EXISTS `prstshp_specific_price_rule` (
`id_specific_price_rule` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_specific_price_rule_condition`
--

CREATE TABLE IF NOT EXISTS `prstshp_specific_price_rule_condition` (
`id_specific_price_rule_condition` int(11) unsigned NOT NULL,
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_specific_price_rule_condition_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_specific_price_rule_condition_group` (
`id_specific_price_rule_condition_group` int(11) unsigned NOT NULL,
  `id_specific_price_rule` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_state`
--

CREATE TABLE IF NOT EXISTS `prstshp_state` (
`id_state` int(10) unsigned NOT NULL,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=313 ;

--
-- Zrzut danych tabeli `prstshp_state`
--

INSERT INTO `prstshp_state` (`id_state`, `id_country`, `id_zone`, `name`, `iso_code`, `tax_behavior`, `active`) VALUES
(1, 21, 2, 'Alabama', 'AL', 0, 1),
(2, 21, 2, 'Alaska', 'AK', 0, 1),
(3, 21, 2, 'Arizona', 'AZ', 0, 1),
(4, 21, 2, 'Arkansas', 'AR', 0, 1),
(5, 21, 2, 'California', 'CA', 0, 1),
(6, 21, 2, 'Colorado', 'CO', 0, 1),
(7, 21, 2, 'Connecticut', 'CT', 0, 1),
(8, 21, 2, 'Delaware', 'DE', 0, 1),
(9, 21, 2, 'Florida', 'FL', 0, 1),
(10, 21, 2, 'Georgia', 'GA', 0, 1),
(11, 21, 2, 'Hawaii', 'HI', 0, 1),
(12, 21, 2, 'Idaho', 'ID', 0, 1),
(13, 21, 2, 'Illinois', 'IL', 0, 1),
(14, 21, 2, 'Indiana', 'IN', 0, 1),
(15, 21, 2, 'Iowa', 'IA', 0, 1),
(16, 21, 2, 'Kansas', 'KS', 0, 1),
(17, 21, 2, 'Kentucky', 'KY', 0, 1),
(18, 21, 2, 'Louisiana', 'LA', 0, 1),
(19, 21, 2, 'Maine', 'ME', 0, 1),
(20, 21, 2, 'Maryland', 'MD', 0, 1),
(21, 21, 2, 'Massachusetts', 'MA', 0, 1),
(22, 21, 2, 'Michigan', 'MI', 0, 1),
(23, 21, 2, 'Minnesota', 'MN', 0, 1),
(24, 21, 2, 'Mississippi', 'MS', 0, 1),
(25, 21, 2, 'Missouri', 'MO', 0, 1),
(26, 21, 2, 'Montana', 'MT', 0, 1),
(27, 21, 2, 'Nebraska', 'NE', 0, 1),
(28, 21, 2, 'Nevada', 'NV', 0, 1),
(29, 21, 2, 'New Hampshire', 'NH', 0, 1),
(30, 21, 2, 'New Jersey', 'NJ', 0, 1),
(31, 21, 2, 'New Mexico', 'NM', 0, 1),
(32, 21, 2, 'New York', 'NY', 0, 1),
(33, 21, 2, 'North Carolina', 'NC', 0, 1),
(34, 21, 2, 'North Dakota', 'ND', 0, 1),
(35, 21, 2, 'Ohio', 'OH', 0, 1),
(36, 21, 2, 'Oklahoma', 'OK', 0, 1),
(37, 21, 2, 'Oregon', 'OR', 0, 1),
(38, 21, 2, 'Pennsylvania', 'PA', 0, 1),
(39, 21, 2, 'Rhode Island', 'RI', 0, 1),
(40, 21, 2, 'South Carolina', 'SC', 0, 1),
(41, 21, 2, 'South Dakota', 'SD', 0, 1),
(42, 21, 2, 'Tennessee', 'TN', 0, 1),
(43, 21, 2, 'Texas', 'TX', 0, 1),
(44, 21, 2, 'Utah', 'UT', 0, 1),
(45, 21, 2, 'Vermont', 'VT', 0, 1),
(46, 21, 2, 'Virginia', 'VA', 0, 1),
(47, 21, 2, 'Washington', 'WA', 0, 1),
(48, 21, 2, 'West Virginia', 'WV', 0, 1),
(49, 21, 2, 'Wisconsin', 'WI', 0, 1),
(50, 21, 2, 'Wyoming', 'WY', 0, 1),
(51, 21, 2, 'Puerto Rico', 'PR', 0, 1),
(52, 21, 2, 'US Virgin Islands', 'VI', 0, 1),
(53, 21, 2, 'District of Columbia', 'DC', 0, 1),
(54, 145, 2, 'Aguascalientes', 'AGS', 0, 1),
(55, 145, 2, 'Baja California', 'BCN', 0, 1),
(56, 145, 2, 'Baja California Sur', 'BCS', 0, 1),
(57, 145, 2, 'Campeche', 'CAM', 0, 1),
(58, 145, 2, 'Chiapas', 'CHP', 0, 1),
(59, 145, 2, 'Chihuahua', 'CHH', 0, 1),
(60, 145, 2, 'Coahuila', 'COA', 0, 1),
(61, 145, 2, 'Colima', 'COL', 0, 1),
(62, 145, 2, 'Distrito Federal', 'DIF', 0, 1),
(63, 145, 2, 'Durango', 'DUR', 0, 1),
(64, 145, 2, 'Guanajuato', 'GUA', 0, 1),
(65, 145, 2, 'Guerrero', 'GRO', 0, 1),
(66, 145, 2, 'Hidalgo', 'HID', 0, 1),
(67, 145, 2, 'Jalisco', 'JAL', 0, 1),
(68, 145, 2, 'Estado de México', 'MEX', 0, 1),
(69, 145, 2, 'Michoacán', 'MIC', 0, 1),
(70, 145, 2, 'Morelos', 'MOR', 0, 1),
(71, 145, 2, 'Nayarit', 'NAY', 0, 1),
(72, 145, 2, 'Nuevo León', 'NLE', 0, 1),
(73, 145, 2, 'Oaxaca', 'OAX', 0, 1),
(74, 145, 2, 'Puebla', 'PUE', 0, 1),
(75, 145, 2, 'Querétaro', 'QUE', 0, 1),
(76, 145, 2, 'Quintana Roo', 'ROO', 0, 1),
(77, 145, 2, 'San Luis Potosí', 'SLP', 0, 1),
(78, 145, 2, 'Sinaloa', 'SIN', 0, 1),
(79, 145, 2, 'Sonora', 'SON', 0, 1),
(80, 145, 2, 'Tabasco', 'TAB', 0, 1),
(81, 145, 2, 'Tamaulipas', 'TAM', 0, 1),
(82, 145, 2, 'Tlaxcala', 'TLA', 0, 1),
(83, 145, 2, 'Veracruz', 'VER', 0, 1),
(84, 145, 2, 'Yucatán', 'YUC', 0, 1),
(85, 145, 2, 'Zacatecas', 'ZAC', 0, 1),
(86, 4, 2, 'Ontario', 'ON', 0, 1),
(87, 4, 2, 'Quebec', 'QC', 0, 1),
(88, 4, 2, 'British Columbia', 'BC', 0, 1),
(89, 4, 2, 'Alberta', 'AB', 0, 1),
(90, 4, 2, 'Manitoba', 'MB', 0, 1),
(91, 4, 2, 'Saskatchewan', 'SK', 0, 1),
(92, 4, 2, 'Nova Scotia', 'NS', 0, 1),
(93, 4, 2, 'New Brunswick', 'NB', 0, 1),
(94, 4, 2, 'Newfoundland and Labrador', 'NL', 0, 1),
(95, 4, 2, 'Prince Edward Island', 'PE', 0, 1),
(96, 4, 2, 'Northwest Territories', 'NT', 0, 1),
(97, 4, 2, 'Yukon', 'YT', 0, 1),
(98, 4, 2, 'Nunavut', 'NU', 0, 1),
(99, 44, 6, 'Buenos Aires', 'B', 0, 1),
(100, 44, 6, 'Catamarca', 'K', 0, 1),
(101, 44, 6, 'Chaco', 'H', 0, 1),
(102, 44, 6, 'Chubut', 'U', 0, 1),
(103, 44, 6, 'Ciudad de Buenos Aires', 'C', 0, 1),
(104, 44, 6, 'Córdoba', 'X', 0, 1),
(105, 44, 6, 'Corrientes', 'W', 0, 1),
(106, 44, 6, 'Entre Ríos', 'E', 0, 1),
(107, 44, 6, 'Formosa', 'P', 0, 1),
(108, 44, 6, 'Jujuy', 'Y', 0, 1),
(109, 44, 6, 'La Pampa', 'L', 0, 1),
(110, 44, 6, 'La Rioja', 'F', 0, 1),
(111, 44, 6, 'Mendoza', 'M', 0, 1),
(112, 44, 6, 'Misiones', 'N', 0, 1),
(113, 44, 6, 'Neuquén', 'Q', 0, 1),
(114, 44, 6, 'Río Negro', 'R', 0, 1),
(115, 44, 6, 'Salta', 'A', 0, 1),
(116, 44, 6, 'San Juan', 'J', 0, 1),
(117, 44, 6, 'San Luis', 'D', 0, 1),
(118, 44, 6, 'Santa Cruz', 'Z', 0, 1),
(119, 44, 6, 'Santa Fe', 'S', 0, 1),
(120, 44, 6, 'Santiago del Estero', 'G', 0, 1),
(121, 44, 6, 'Tierra del Fuego', 'V', 0, 1),
(122, 44, 6, 'Tucumán', 'T', 0, 1),
(123, 10, 1, 'Agrigento', 'AG', 0, 1),
(124, 10, 1, 'Alessandria', 'AL', 0, 1),
(125, 10, 1, 'Ancona', 'AN', 0, 1),
(126, 10, 1, 'Aosta', 'AO', 0, 1),
(127, 10, 1, 'Arezzo', 'AR', 0, 1),
(128, 10, 1, 'Ascoli Piceno', 'AP', 0, 1),
(129, 10, 1, 'Asti', 'AT', 0, 1),
(130, 10, 1, 'Avellino', 'AV', 0, 1),
(131, 10, 1, 'Bari', 'BA', 0, 1),
(132, 10, 1, 'Barletta-Andria-Trani', 'BT', 0, 1),
(133, 10, 1, 'Belluno', 'BL', 0, 1),
(134, 10, 1, 'Benevento', 'BN', 0, 1),
(135, 10, 1, 'Bergamo', 'BG', 0, 1),
(136, 10, 1, 'Biella', 'BI', 0, 1),
(137, 10, 1, 'Bologna', 'BO', 0, 1),
(138, 10, 1, 'Bolzano', 'BZ', 0, 1),
(139, 10, 1, 'Brescia', 'BS', 0, 1),
(140, 10, 1, 'Brindisi', 'BR', 0, 1),
(141, 10, 1, 'Cagliari', 'CA', 0, 1),
(142, 10, 1, 'Caltanissetta', 'CL', 0, 1),
(143, 10, 1, 'Campobasso', 'CB', 0, 1),
(144, 10, 1, 'Carbonia-Iglesias', 'CI', 0, 1),
(145, 10, 1, 'Caserta', 'CE', 0, 1),
(146, 10, 1, 'Catania', 'CT', 0, 1),
(147, 10, 1, 'Catanzaro', 'CZ', 0, 1),
(148, 10, 1, 'Chieti', 'CH', 0, 1),
(149, 10, 1, 'Como', 'CO', 0, 1),
(150, 10, 1, 'Cosenza', 'CS', 0, 1),
(151, 10, 1, 'Cremona', 'CR', 0, 1),
(152, 10, 1, 'Crotone', 'KR', 0, 1),
(153, 10, 1, 'Cuneo', 'CN', 0, 1),
(154, 10, 1, 'Enna', 'EN', 0, 1),
(155, 10, 1, 'Fermo', 'FM', 0, 1),
(156, 10, 1, 'Ferrara', 'FE', 0, 1),
(157, 10, 1, 'Firenze', 'FI', 0, 1),
(158, 10, 1, 'Foggia', 'FG', 0, 1),
(159, 10, 1, 'Forlì-Cesena', 'FC', 0, 1),
(160, 10, 1, 'Frosinone', 'FR', 0, 1),
(161, 10, 1, 'Genova', 'GE', 0, 1),
(162, 10, 1, 'Gorizia', 'GO', 0, 1),
(163, 10, 1, 'Grosseto', 'GR', 0, 1),
(164, 10, 1, 'Imperia', 'IM', 0, 1),
(165, 10, 1, 'Isernia', 'IS', 0, 1),
(166, 10, 1, 'L''Aquila', 'AQ', 0, 1),
(167, 10, 1, 'La Spezia', 'SP', 0, 1),
(168, 10, 1, 'Latina', 'LT', 0, 1),
(169, 10, 1, 'Lecce', 'LE', 0, 1),
(170, 10, 1, 'Lecco', 'LC', 0, 1),
(171, 10, 1, 'Livorno', 'LI', 0, 1),
(172, 10, 1, 'Lodi', 'LO', 0, 1),
(173, 10, 1, 'Lucca', 'LU', 0, 1),
(174, 10, 1, 'Macerata', 'MC', 0, 1),
(175, 10, 1, 'Mantova', 'MN', 0, 1),
(176, 10, 1, 'Massa', 'MS', 0, 1),
(177, 10, 1, 'Matera', 'MT', 0, 1),
(178, 10, 1, 'Medio Campidano', 'VS', 0, 1),
(179, 10, 1, 'Messina', 'ME', 0, 1),
(180, 10, 1, 'Milano', 'MI', 0, 1),
(181, 10, 1, 'Modena', 'MO', 0, 1),
(182, 10, 1, 'Monza e della Brianza', 'MB', 0, 1),
(183, 10, 1, 'Napoli', 'NA', 0, 1),
(184, 10, 1, 'Novara', 'NO', 0, 1),
(185, 10, 1, 'Nuoro', 'NU', 0, 1),
(186, 10, 1, 'Ogliastra', 'OG', 0, 1),
(187, 10, 1, 'Olbia-Tempio', 'OT', 0, 1),
(188, 10, 1, 'Oristano', 'OR', 0, 1),
(189, 10, 1, 'Padova', 'PD', 0, 1),
(190, 10, 1, 'Palermo', 'PA', 0, 1),
(191, 10, 1, 'Parma', 'PR', 0, 1),
(192, 10, 1, 'Pavia', 'PV', 0, 1),
(193, 10, 1, 'Perugia', 'PG', 0, 1),
(194, 10, 1, 'Pesaro-Urbino', 'PU', 0, 1),
(195, 10, 1, 'Pescara', 'PE', 0, 1),
(196, 10, 1, 'Piacenza', 'PC', 0, 1),
(197, 10, 1, 'Pisa', 'PI', 0, 1),
(198, 10, 1, 'Pistoia', 'PT', 0, 1),
(199, 10, 1, 'Pordenone', 'PN', 0, 1),
(200, 10, 1, 'Potenza', 'PZ', 0, 1),
(201, 10, 1, 'Prato', 'PO', 0, 1),
(202, 10, 1, 'Ragusa', 'RG', 0, 1),
(203, 10, 1, 'Ravenna', 'RA', 0, 1),
(204, 10, 1, 'Reggio Calabria', 'RC', 0, 1),
(205, 10, 1, 'Reggio Emilia', 'RE', 0, 1),
(206, 10, 1, 'Rieti', 'RI', 0, 1),
(207, 10, 1, 'Rimini', 'RN', 0, 1),
(208, 10, 1, 'Roma', 'RM', 0, 1),
(209, 10, 1, 'Rovigo', 'RO', 0, 1),
(210, 10, 1, 'Salerno', 'SA', 0, 1),
(211, 10, 1, 'Sassari', 'SS', 0, 1),
(212, 10, 1, 'Savona', 'SV', 0, 1),
(213, 10, 1, 'Siena', 'SI', 0, 1),
(214, 10, 1, 'Siracusa', 'SR', 0, 1),
(215, 10, 1, 'Sondrio', 'SO', 0, 1),
(216, 10, 1, 'Taranto', 'TA', 0, 1),
(217, 10, 1, 'Teramo', 'TE', 0, 1),
(218, 10, 1, 'Terni', 'TR', 0, 1),
(219, 10, 1, 'Torino', 'TO', 0, 1),
(220, 10, 1, 'Trapani', 'TP', 0, 1),
(221, 10, 1, 'Trento', 'TN', 0, 1),
(222, 10, 1, 'Treviso', 'TV', 0, 1),
(223, 10, 1, 'Trieste', 'TS', 0, 1),
(224, 10, 1, 'Udine', 'UD', 0, 1),
(225, 10, 1, 'Varese', 'VA', 0, 1),
(226, 10, 1, 'Venezia', 'VE', 0, 1),
(227, 10, 1, 'Verbano-Cusio-Ossola', 'VB', 0, 1),
(228, 10, 1, 'Vercelli', 'VC', 0, 1),
(229, 10, 1, 'Verona', 'VR', 0, 1),
(230, 10, 1, 'Vibo Valentia', 'VV', 0, 1),
(231, 10, 1, 'Vicenza', 'VI', 0, 1),
(232, 10, 1, 'Viterbo', 'VT', 0, 1),
(233, 111, 3, 'Aceh', 'AC', 0, 1),
(234, 111, 3, 'Bali', 'BA', 0, 1),
(235, 111, 3, 'Bangka', 'BB', 0, 1),
(236, 111, 3, 'Banten', 'BT', 0, 1),
(237, 111, 3, 'Bengkulu', 'BE', 0, 1),
(238, 111, 3, 'Central Java', 'JT', 0, 1),
(239, 111, 3, 'Central Kalimantan', 'KT', 0, 1),
(240, 111, 3, 'Central Sulawesi', 'ST', 0, 1),
(241, 111, 3, 'Coat of arms of East Java', 'JI', 0, 1),
(242, 111, 3, 'East kalimantan', 'KI', 0, 1),
(243, 111, 3, 'East Nusa Tenggara', 'NT', 0, 1),
(244, 111, 3, 'Lambang propinsi', 'GO', 0, 1),
(245, 111, 3, 'Jakarta', 'JK', 0, 1),
(246, 111, 3, 'Jambi', 'JA', 0, 1),
(247, 111, 3, 'Lampung', 'LA', 0, 1),
(248, 111, 3, 'Maluku', 'MA', 0, 1),
(249, 111, 3, 'North Maluku', 'MU', 0, 1),
(250, 111, 3, 'North Sulawesi', 'SA', 0, 1),
(251, 111, 3, 'North Sumatra', 'SU', 0, 1),
(252, 111, 3, 'Papua', 'PA', 0, 1),
(253, 111, 3, 'Riau', 'RI', 0, 1),
(254, 111, 3, 'Lambang Riau', 'KR', 0, 1),
(255, 111, 3, 'Southeast Sulawesi', 'SG', 0, 1),
(256, 111, 3, 'South Kalimantan', 'KS', 0, 1),
(257, 111, 3, 'South Sulawesi', 'SN', 0, 1),
(258, 111, 3, 'South Sumatra', 'SS', 0, 1),
(259, 111, 3, 'West Java', 'JB', 0, 1),
(260, 111, 3, 'West Kalimantan', 'KB', 0, 1),
(261, 111, 3, 'West Nusa Tenggara', 'NB', 0, 1),
(262, 111, 3, 'Lambang Provinsi Papua Barat', 'PB', 0, 1),
(263, 111, 3, 'West Sulawesi', 'SR', 0, 1),
(264, 111, 3, 'West Sumatra', 'SB', 0, 1),
(265, 111, 3, 'Yogyakarta', 'YO', 0, 1),
(266, 11, 3, 'Aichi', '23', 0, 1),
(267, 11, 3, 'Akita', '05', 0, 1),
(268, 11, 3, 'Aomori', '02', 0, 1),
(269, 11, 3, 'Chiba', '12', 0, 1),
(270, 11, 3, 'Ehime', '38', 0, 1),
(271, 11, 3, 'Fukui', '18', 0, 1),
(272, 11, 3, 'Fukuoka', '40', 0, 1),
(273, 11, 3, 'Fukushima', '07', 0, 1),
(274, 11, 3, 'Gifu', '21', 0, 1),
(275, 11, 3, 'Gunma', '10', 0, 1),
(276, 11, 3, 'Hiroshima', '34', 0, 1),
(277, 11, 3, 'Hokkaido', '01', 0, 1),
(278, 11, 3, 'Hyogo', '28', 0, 1),
(279, 11, 3, 'Ibaraki', '08', 0, 1),
(280, 11, 3, 'Ishikawa', '17', 0, 1),
(281, 11, 3, 'Iwate', '03', 0, 1),
(282, 11, 3, 'Kagawa', '37', 0, 1),
(283, 11, 3, 'Kagoshima', '46', 0, 1),
(284, 11, 3, 'Kanagawa', '14', 0, 1),
(285, 11, 3, 'Kochi', '39', 0, 1),
(286, 11, 3, 'Kumamoto', '43', 0, 1),
(287, 11, 3, 'Kyoto', '26', 0, 1),
(288, 11, 3, 'Mie', '24', 0, 1),
(289, 11, 3, 'Miyagi', '04', 0, 1),
(290, 11, 3, 'Miyazaki', '45', 0, 1),
(291, 11, 3, 'Nagano', '20', 0, 1),
(292, 11, 3, 'Nagasaki', '42', 0, 1),
(293, 11, 3, 'Nara', '29', 0, 1),
(294, 11, 3, 'Niigata', '15', 0, 1),
(295, 11, 3, 'Oita', '44', 0, 1),
(296, 11, 3, 'Okayama', '33', 0, 1),
(297, 11, 3, 'Okinawa', '47', 0, 1),
(298, 11, 3, 'Osaka', '27', 0, 1),
(299, 11, 3, 'Saga', '41', 0, 1),
(300, 11, 3, 'Saitama', '11', 0, 1),
(301, 11, 3, 'Shiga', '25', 0, 1),
(302, 11, 3, 'Shimane', '32', 0, 1),
(303, 11, 3, 'Shizuoka', '22', 0, 1),
(304, 11, 3, 'Tochigi', '09', 0, 1),
(305, 11, 3, 'Tokushima', '36', 0, 1),
(306, 11, 3, 'Tokyo', '13', 0, 1),
(307, 11, 3, 'Tottori', '31', 0, 1),
(308, 11, 3, 'Toyama', '16', 0, 1),
(309, 11, 3, 'Wakayama', '30', 0, 1),
(310, 11, 3, 'Yamagata', '06', 0, 1),
(311, 11, 3, 'Yamaguchi', '35', 0, 1),
(312, 11, 3, 'Yamanashi', '19', 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_statssearch`
--

CREATE TABLE IF NOT EXISTS `prstshp_statssearch` (
`id_statssearch` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_stock`
--

CREATE TABLE IF NOT EXISTS `prstshp_stock` (
`id_stock` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int(11) unsigned NOT NULL,
  `usable_quantity` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_stock_available`
--

CREATE TABLE IF NOT EXISTS `prstshp_stock_available` (
`id_stock_available` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `out_of_stock` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=302 ;

--
-- Zrzut danych tabeli `prstshp_stock_available`
--

INSERT INTO `prstshp_stock_available` (`id_stock_available`, `id_product`, `id_product_attribute`, `id_shop`, `id_shop_group`, `quantity`, `depends_on_stock`, `out_of_stock`) VALUES
(1, 1, 0, 1, 0, 1, 0, 2),
(2, 1, 1, 1, 0, 1, 0, 2),
(3, 2, 0, 1, 0, 1, 0, 2),
(4, 2, 2, 1, 0, 1, 0, 2),
(5, 3, 0, 1, 0, 1, 0, 2),
(6, 3, 3, 1, 0, 1, 0, 2),
(7, 4, 0, 1, 0, 1, 0, 2),
(8, 4, 4, 1, 0, 1, 0, 2),
(9, 4, 5, 1, 0, 1, 0, 2),
(10, 5, 0, 1, 0, 1, 0, 2),
(11, 5, 6, 1, 0, 1, 0, 2),
(12, 5, 7, 1, 0, 1, 0, 2),
(13, 6, 0, 1, 0, 1, 0, 2),
(14, 6, 8, 1, 0, 1, 0, 2),
(15, 7, 0, 1, 0, 2, 0, 2),
(16, 7, 9, 1, 0, 2, 0, 2),
(17, 8, 0, 1, 0, 1, 0, 2),
(18, 8, 10, 1, 0, 1, 0, 2),
(19, 9, 0, 1, 0, 1, 0, 2),
(20, 9, 11, 1, 0, 1, 0, 2),
(21, 10, 0, 1, 0, 1, 0, 2),
(22, 10, 12, 1, 0, 1, 0, 2),
(23, 10, 13, 1, 0, 1, 0, 2),
(24, 11, 0, 1, 0, 1, 0, 2),
(25, 11, 14, 1, 0, 1, 0, 2),
(26, 12, 0, 1, 0, 1, 0, 2),
(27, 12, 15, 1, 0, 1, 0, 2),
(28, 12, 16, 1, 0, 2, 0, 2),
(29, 13, 0, 1, 0, 1, 0, 2),
(30, 13, 17, 1, 0, 1, 0, 2),
(31, 13, 18, 1, 0, 2, 0, 2),
(32, 13, 19, 1, 0, 1, 0, 2),
(33, 14, 0, 1, 0, 1, 0, 2),
(34, 14, 20, 1, 0, 1, 0, 2),
(35, 14, 21, 1, 0, 2, 0, 2),
(36, 14, 22, 1, 0, 1, 0, 2),
(37, 15, 0, 1, 0, 1, 0, 2),
(38, 15, 23, 1, 0, 1, 0, 2),
(39, 15, 24, 1, 0, 1, 0, 2),
(40, 15, 25, 1, 0, 1, 0, 2),
(41, 16, 0, 1, 0, 1, 0, 2),
(42, 16, 26, 1, 0, 1, 0, 2),
(43, 16, 27, 1, 0, 1, 0, 2),
(44, 16, 28, 1, 0, 1, 0, 2),
(45, 17, 0, 1, 0, 1, 0, 2),
(46, 17, 29, 1, 0, 1, 0, 2),
(47, 17, 30, 1, 0, 1, 0, 2),
(48, 17, 31, 1, 0, 1, 0, 2),
(49, 18, 0, 1, 0, 1, 0, 2),
(50, 18, 32, 1, 0, 1, 0, 2),
(51, 18, 33, 1, 0, 1, 0, 2),
(52, 18, 34, 1, 0, 2, 0, 2),
(53, 18, 35, 1, 0, 2, 0, 2),
(54, 18, 36, 1, 0, 2, 0, 2),
(55, 19, 0, 1, 0, 1, 0, 2),
(56, 19, 37, 1, 0, 1, 0, 2),
(57, 19, 38, 1, 0, 1, 0, 2),
(58, 19, 39, 1, 0, 1, 0, 2),
(59, 19, 40, 1, 0, 1, 0, 2),
(60, 20, 0, 1, 0, 1, 0, 2),
(61, 20, 41, 1, 0, 1, 0, 2),
(62, 20, 42, 1, 0, 2, 0, 2),
(63, 7, 43, 1, 0, 1, 0, 2),
(64, 7, 44, 1, 0, 1, 0, 2),
(65, 21, 0, 1, 0, 1, 0, 2),
(66, 21, 45, 1, 0, 1, 0, 2),
(67, 21, 46, 1, 0, 1, 0, 2),
(68, 22, 0, 1, 0, 1, 0, 2),
(69, 22, 47, 1, 0, 1, 0, 2),
(70, 7, 48, 1, 0, 1, 0, 2),
(71, 7, 49, 1, 0, 1, 0, 2),
(72, 7, 50, 1, 0, 1, 0, 2),
(73, 23, 0, 1, 0, 1, 0, 2),
(74, 23, 51, 1, 0, 1, 0, 2),
(75, 23, 52, 1, 0, 1, 0, 2),
(76, 23, 53, 1, 0, 1, 0, 2),
(77, 24, 0, 1, 0, 1, 0, 2),
(78, 24, 54, 1, 0, 1, 0, 2),
(79, 25, 0, 1, 0, 2, 0, 2),
(80, 25, 55, 1, 0, 2, 0, 2),
(81, 25, 56, 1, 0, 1, 0, 2),
(82, 26, 0, 1, 0, 1, 0, 2),
(83, 26, 57, 1, 0, 1, 0, 2),
(84, 27, 0, 1, 0, 1, 0, 2),
(85, 27, 58, 1, 0, 1, 0, 2),
(86, 28, 0, 1, 0, 2, 0, 2),
(87, 28, 59, 1, 0, 2, 0, 2),
(88, 28, 60, 1, 0, 2, 0, 2),
(89, 29, 0, 1, 0, 2, 0, 2),
(90, 29, 61, 1, 0, 2, 0, 2),
(91, 29, 62, 1, 0, 1, 0, 2),
(92, 29, 63, 1, 0, 1, 0, 2),
(93, 30, 0, 1, 0, 1, 0, 2),
(94, 30, 64, 1, 0, 1, 0, 2),
(95, 30, 65, 1, 0, 2, 0, 2),
(96, 30, 66, 1, 0, 1, 0, 2),
(97, 31, 0, 1, 0, 1, 0, 2),
(98, 31, 67, 1, 0, 1, 0, 2),
(99, 31, 68, 1, 0, 1, 0, 2),
(100, 28, 69, 1, 0, 1, 0, 2),
(101, 28, 70, 1, 0, 2, 0, 2),
(102, 32, 0, 1, 0, 2, 0, 2),
(103, 32, 71, 1, 0, 2, 0, 2),
(104, 33, 0, 1, 0, 2, 0, 2),
(105, 33, 72, 1, 0, 2, 0, 2),
(106, 33, 73, 1, 0, 2, 0, 2),
(107, 33, 74, 1, 0, 2, 0, 2),
(108, 33, 75, 1, 0, 2, 0, 2),
(109, 34, 0, 1, 0, 0, 0, 2),
(110, 34, 76, 1, 0, 0, 0, 2),
(111, 34, 77, 1, 0, 0, 0, 2),
(112, 34, 78, 1, 0, 0, 0, 2),
(113, 34, 79, 1, 0, 0, 0, 2),
(114, 34, 80, 1, 0, 0, 0, 2),
(115, 35, 0, 1, 0, 0, 0, 2),
(116, 35, 81, 1, 0, 0, 0, 2),
(117, 35, 82, 1, 0, 0, 0, 2),
(118, 36, 0, 1, 0, 0, 0, 2),
(119, 36, 83, 1, 0, 0, 0, 2),
(120, 36, 84, 1, 0, 0, 0, 2),
(121, 36, 85, 1, 0, 0, 0, 2),
(122, 37, 0, 1, 0, 0, 0, 2),
(123, 37, 86, 1, 0, 0, 0, 2),
(124, 35, 87, 1, 0, 0, 0, 2),
(125, 35, 88, 1, 0, 0, 0, 2),
(126, 33, 89, 1, 0, 1, 0, 2),
(127, 33, 90, 1, 0, 1, 0, 2),
(128, 38, 0, 1, 0, 2, 0, 2),
(129, 38, 91, 1, 0, 2, 0, 2),
(130, 38, 92, 1, 0, 2, 0, 2),
(131, 38, 93, 1, 0, 2, 0, 2),
(132, 38, 94, 1, 0, 2, 0, 2),
(133, 38, 95, 1, 0, 1, 0, 2),
(134, 38, 96, 1, 0, 1, 0, 2),
(135, 39, 0, 1, 0, 1, 0, 2),
(136, 39, 97, 1, 0, 1, 0, 2),
(137, 39, 98, 1, 0, 0, 0, 2),
(138, 39, 99, 1, 0, 1, 0, 2),
(139, 39, 100, 1, 0, 1, 0, 2),
(140, 40, 0, 1, 0, 0, 0, 2),
(141, 40, 101, 1, 0, 0, 0, 2),
(142, 40, 102, 1, 0, 0, 0, 2),
(143, 40, 103, 1, 0, 0, 0, 2),
(144, 40, 104, 1, 0, 0, 0, 2),
(145, 40, 105, 1, 0, 0, 0, 2),
(146, 40, 106, 1, 0, 0, 0, 2),
(147, 40, 107, 1, 0, 0, 0, 2),
(148, 40, 108, 1, 0, 0, 0, 2),
(149, 40, 109, 1, 0, 0, 0, 2),
(150, 40, 110, 1, 0, 0, 0, 2),
(151, 40, 111, 1, 0, 0, 0, 2),
(152, 40, 112, 1, 0, 0, 0, 2),
(153, 40, 113, 1, 0, 0, 0, 2),
(154, 41, 0, 1, 0, 0, 0, 2),
(155, 41, 114, 1, 0, 0, 0, 2),
(156, 41, 115, 1, 0, 0, 0, 2),
(157, 42, 0, 1, 0, 0, 0, 2),
(158, 42, 116, 1, 0, 0, 0, 2),
(159, 42, 117, 1, 0, 0, 0, 2),
(160, 42, 118, 1, 0, 0, 0, 2),
(161, 43, 0, 1, 0, 0, 0, 2),
(162, 43, 119, 1, 0, 0, 0, 2),
(163, 43, 120, 1, 0, 0, 0, 2),
(164, 44, 0, 1, 0, 0, 0, 2),
(165, 45, 0, 1, 0, 0, 0, 2),
(166, 45, 121, 1, 0, 0, 0, 2),
(167, 45, 122, 1, 0, 1, 0, 2),
(168, 41, 123, 1, 0, 0, 0, 2),
(169, 46, 0, 1, 0, 0, 0, 2),
(170, 46, 124, 1, 0, 0, 0, 2),
(171, 47, 0, 1, 0, 0, 0, 2),
(172, 47, 125, 1, 0, 0, 0, 2),
(173, 47, 126, 1, 0, 0, 0, 2),
(174, 47, 127, 1, 0, 0, 0, 2),
(175, 48, 0, 1, 0, 0, 0, 2),
(176, 48, 128, 1, 0, 0, 0, 2),
(177, 48, 129, 1, 0, 0, 0, 2),
(178, 48, 130, 1, 0, 0, 0, 2),
(179, 49, 0, 1, 0, 0, 0, 2),
(180, 49, 131, 1, 0, 0, 0, 2),
(181, 50, 0, 1, 0, 0, 0, 2),
(182, 50, 132, 1, 0, 0, 0, 2),
(183, 51, 0, 1, 0, 0, 0, 2),
(184, 51, 133, 1, 0, 0, 0, 2),
(185, 51, 134, 1, 0, 0, 0, 2),
(186, 51, 135, 1, 0, 0, 0, 2),
(187, 51, 136, 1, 0, 0, 0, 2),
(188, 51, 137, 1, 0, 0, 0, 2),
(189, 52, 0, 1, 0, 0, 0, 2),
(190, 52, 138, 1, 0, 0, 0, 2),
(191, 52, 139, 1, 0, 0, 0, 2),
(192, 53, 0, 1, 0, 2, 0, 2),
(193, 53, 140, 1, 0, 2, 0, 2),
(194, 54, 0, 1, 0, 1, 0, 2),
(195, 54, 141, 1, 0, 1, 0, 2),
(196, 54, 142, 1, 0, 2, 0, 2),
(197, 55, 0, 1, 0, 1, 0, 2),
(198, 55, 143, 1, 0, 1, 0, 2),
(199, 55, 144, 1, 0, 6, 0, 2),
(200, 49, 145, 1, 0, 0, 0, 2),
(201, 49, 146, 1, 0, 0, 0, 2),
(202, 40, 147, 1, 0, 0, 0, 2),
(203, 40, 148, 1, 0, 0, 0, 2),
(204, 40, 149, 1, 0, 0, 0, 2),
(205, 2, 150, 1, 0, 1, 0, 2),
(206, 2, 151, 1, 0, 1, 0, 2),
(207, 47, 152, 1, 0, 0, 0, 2),
(208, 47, 153, 1, 0, 0, 0, 2),
(209, 49, 154, 1, 0, 0, 0, 2),
(210, 24, 155, 1, 0, 1, 0, 2),
(211, 56, 0, 1, 0, 0, 0, 2),
(212, 56, 156, 1, 0, 0, 0, 2),
(213, 48, 157, 1, 0, 0, 0, 2),
(214, 48, 158, 1, 0, 0, 0, 2),
(215, 57, 0, 1, 0, 0, 0, 2),
(216, 57, 159, 1, 0, 0, 0, 2),
(217, 57, 160, 1, 0, 0, 0, 2),
(218, 58, 0, 1, 0, 0, 0, 2),
(219, 58, 161, 1, 0, 0, 0, 2),
(220, 58, 162, 1, 0, 0, 0, 2),
(221, 58, 163, 1, 0, 0, 0, 2),
(222, 47, 164, 1, 0, 0, 0, 2),
(223, 47, 165, 1, 0, 0, 0, 2),
(224, 47, 166, 1, 0, 0, 0, 2),
(225, 25, 167, 1, 0, 2, 0, 2),
(226, 4, 168, 1, 0, 1, 0, 2),
(227, 26, 169, 1, 0, 1, 0, 2),
(228, 26, 170, 1, 0, 1, 0, 2),
(229, 9, 171, 1, 0, 1, 0, 2),
(230, 11, 172, 1, 0, 1, 0, 2),
(231, 32, 173, 1, 0, 2, 0, 2),
(232, 7, 174, 1, 0, 1, 0, 2),
(233, 59, 0, 1, 0, 0, 0, 2),
(234, 59, 175, 1, 0, 0, 0, 2),
(235, 59, 176, 1, 0, 0, 0, 2),
(236, 59, 177, 1, 0, 0, 0, 2),
(237, 59, 178, 1, 0, 0, 0, 2),
(238, 60, 0, 1, 0, 0, 0, 2),
(239, 60, 179, 1, 0, 0, 0, 2),
(240, 47, 180, 1, 0, 0, 0, 2),
(241, 47, 181, 1, 0, 0, 0, 2),
(242, 47, 182, 1, 0, 0, 0, 2),
(243, 47, 183, 1, 0, 0, 0, 2),
(244, 4, 184, 1, 0, 1, 0, 2),
(245, 4, 185, 1, 0, 1, 0, 2),
(246, 20, 186, 1, 0, 1, 0, 2),
(247, 61, 0, 1, 0, 1, 0, 2),
(248, 61, 187, 1, 0, 1, 0, 2),
(249, 5, 188, 1, 0, 1, 0, 2),
(250, 6, 189, 1, 0, 1, 0, 2),
(251, 9, 190, 1, 0, 1, 0, 2),
(252, 27, 191, 1, 0, 1, 0, 2),
(253, 27, 192, 1, 0, 1, 0, 2),
(254, 10, 193, 1, 0, 1, 0, 2),
(255, 10, 194, 1, 0, 1, 0, 2),
(256, 10, 195, 1, 0, 1, 0, 2),
(257, 21, 196, 1, 0, 1, 0, 2),
(258, 21, 197, 1, 0, 1, 0, 2),
(259, 22, 198, 1, 0, 1, 0, 2),
(260, 14, 199, 1, 0, 2, 0, 2),
(261, 23, 200, 1, 0, 1, 0, 2),
(262, 17, 201, 1, 0, 1, 0, 2),
(263, 24, 202, 1, 0, 1, 0, 2),
(264, 62, 0, 1, 0, 1, 0, 2),
(265, 62, 203, 1, 0, 1, 0, 2),
(266, 25, 204, 1, 0, 1, 0, 2),
(267, 25, 205, 1, 0, 1, 0, 2),
(268, 19, 206, 1, 0, 1, 0, 2),
(269, 26, 207, 1, 0, 1, 0, 2),
(270, 26, 208, 1, 0, 1, 0, 2),
(271, 7, 209, 1, 0, 1, 0, 2),
(272, 27, 210, 1, 0, 1, 0, 2),
(273, 27, 211, 1, 0, 1, 0, 2),
(274, 63, 0, 1, 0, 0, 0, 2),
(275, 63, 212, 1, 0, 0, 0, 2),
(276, 63, 213, 1, 0, 0, 0, 2),
(277, 63, 214, 1, 0, 0, 0, 2),
(278, 63, 215, 1, 0, 0, 0, 2),
(279, 63, 216, 1, 0, 0, 0, 2),
(280, 22, 217, 1, 0, 1, 0, 2),
(281, 22, 218, 1, 0, 1, 0, 2),
(282, 30, 219, 1, 0, 1, 0, 2),
(283, 59, 220, 1, 0, 0, 0, 2),
(284, 31, 221, 1, 0, 1, 0, 2),
(285, 28, 222, 1, 0, 1, 0, 2),
(286, 14, 223, 1, 0, 2, 0, 2),
(287, 15, 224, 1, 0, 1, 0, 2),
(288, 23, 225, 1, 0, 1, 0, 2),
(289, 24, 226, 1, 0, 1, 0, 2),
(290, 25, 227, 1, 0, 1, 0, 2),
(291, 26, 228, 1, 0, 1, 0, 2),
(292, 7, 229, 1, 0, 1, 0, 2),
(293, 7, 230, 1, 0, 1, 0, 2),
(294, 8, 231, 1, 0, 1, 0, 2),
(295, 9, 232, 1, 0, 1, 0, 2),
(296, 21, 233, 1, 0, 1, 0, 2),
(297, 28, 234, 1, 0, 1, 0, 2),
(298, 32, 235, 1, 0, 2, 0, 2),
(299, 7, 236, 1, 0, 1, 0, 2),
(300, 12, 237, 1, 0, 2, 0, 2),
(301, 13, 238, 1, 0, 2, 0, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_stock_mvt`
--

CREATE TABLE IF NOT EXISTS `prstshp_stock_mvt` (
`id_stock_mvt` bigint(20) unsigned NOT NULL,
  `id_stock` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned DEFAULT NULL,
  `id_supply_order` int(11) unsigned DEFAULT NULL,
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `physical_quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_stock_mvt_reason`
--

CREATE TABLE IF NOT EXISTS `prstshp_stock_mvt_reason` (
`id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Zrzut danych tabeli `prstshp_stock_mvt_reason`
--

INSERT INTO `prstshp_stock_mvt_reason` (`id_stock_mvt_reason`, `sign`, `date_add`, `date_upd`, `deleted`) VALUES
(1, 1, '2014-06-21 01:13:36', '2014-06-21 01:13:36', 0),
(2, -1, '2014-06-21 01:13:36', '2014-06-21 01:13:36', 0),
(3, -1, '2014-06-21 01:13:36', '2014-06-21 01:13:36', 0),
(4, -1, '2014-06-21 01:13:36', '2014-06-21 01:13:36', 0),
(5, 1, '2014-06-21 01:13:36', '2014-06-21 01:13:36', 0),
(6, -1, '2014-06-21 01:13:36', '2014-06-21 01:13:36', 0),
(7, 1, '2014-06-21 01:13:36', '2014-06-21 01:13:36', 0),
(8, 1, '2014-06-21 01:13:37', '2014-06-21 01:13:37', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_stock_mvt_reason_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_stock_mvt_reason_lang`
--

INSERT INTO `prstshp_stock_mvt_reason_lang` (`id_stock_mvt_reason`, `id_lang`, `name`) VALUES
(1, 1, 'Increase'),
(1, 2, 'Increase'),
(1, 3, 'Increase'),
(2, 1, 'Decrease'),
(2, 2, 'Decrease'),
(2, 3, 'Decrease'),
(3, 1, 'Customer Order'),
(3, 2, 'Customer Order'),
(3, 3, 'Customer Order'),
(4, 1, 'Regulation following an inventory of stock'),
(4, 2, 'Regulation following an inventory of stock'),
(4, 3, 'Regulation following an inventory of stock'),
(5, 1, 'Regulation following an inventory of stock'),
(5, 2, 'Regulation following an inventory of stock'),
(5, 3, 'Regulation following an inventory of stock'),
(6, 1, 'Transfer to another warehouse'),
(6, 2, 'Transfer to another warehouse'),
(6, 3, 'Transfer to another warehouse'),
(7, 1, 'Transfer from another warehouse'),
(7, 2, 'Transfer from another warehouse'),
(7, 3, 'Transfer from another warehouse'),
(8, 1, 'Supply Order'),
(8, 2, 'Supply Order'),
(8, 3, 'Supply Order');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_store`
--

CREATE TABLE IF NOT EXISTS `prstshp_store` (
`id_store` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(13,8) DEFAULT NULL,
  `longitude` decimal(13,8) DEFAULT NULL,
  `hours` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Zrzut danych tabeli `prstshp_store`
--

INSERT INTO `prstshp_store` (`id_store`, `id_country`, `id_state`, `name`, `address1`, `address2`, `city`, `postcode`, `latitude`, `longitude`, `hours`, `phone`, `fax`, `email`, `note`, `active`, `date_add`, `date_upd`) VALUES
(1, 21, 9, 'Dade County', '3030 SW 8th St Miami', '', 'Miami', ' 33135', '25.76500500', '-80.24379700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-06-21 01:14:30', '2014-06-21 01:14:30'),
(2, 21, 9, 'E Fort Lauderdale', '1000 Northeast 4th Ave Fort Lauderdale', '', 'Miami', ' 33304', '26.13793600', '-80.13943500', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-06-21 01:14:30', '2014-06-21 01:14:30'),
(3, 21, 9, 'Pembroke Pines', '11001 Pines Blvd Pembroke Pines', '', 'Miami', '33026', '26.00998700', '-80.29447200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-06-21 01:14:30', '2014-06-21 01:14:30'),
(4, 21, 9, 'Coconut Grove', '2999 SW 32nd Avenue', '', 'Miami', ' 33133', '25.73629600', '-80.24479700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-06-21 01:14:30', '2014-06-21 01:14:30'),
(5, 21, 9, 'N Miami/Biscayne', '12055 Biscayne Blvd', '', 'Miami', '33181', '25.88674000', '-80.16329200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-06-21 01:14:30', '2014-06-21 01:14:30'),
(6, 0, 0, 'Dade County', '3030 SW 8th St Miami', '', 'Miami', ' 33135', '25.76500500', '-80.24379700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-08-25 21:44:42', '2014-08-25 21:44:42'),
(7, 0, 0, 'E Fort Lauderdale', '1000 Northeast 4th Ave Fort Lauderdale', '', 'Miami', ' 33304', '26.13793600', '-80.13943500', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-08-25 21:44:42', '2014-08-25 21:44:42'),
(8, 0, 0, 'Pembroke Pines', '11001 Pines Blvd Pembroke Pines', '', 'Miami', '33026', '26.00998700', '-80.29447200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-08-25 21:44:42', '2014-08-25 21:44:42'),
(9, 0, 0, 'Coconut Grove', '2999 SW 32nd Avenue', '', 'Miami', ' 33133', '25.73629600', '-80.24479700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-08-25 21:44:43', '2014-08-25 21:44:43'),
(10, 0, 0, 'N Miami/Biscayne', '12055 Biscayne Blvd', '', 'Miami', '33181', '25.88674000', '-80.16329200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-08-25 21:44:43', '2014-08-25 21:44:43');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_store_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_store_shop` (
  `id_store` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_store_shop`
--

INSERT INTO `prstshp_store_shop` (`id_store`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_supplier`
--

CREATE TABLE IF NOT EXISTS `prstshp_supplier` (
`id_supplier` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_supplier_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_supplier_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_supplier_shop` (
  `id_supplier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_supply_order`
--

CREATE TABLE IF NOT EXISTS `prstshp_supply_order` (
`id_supply_order` int(11) unsigned NOT NULL,
  `id_supplier` int(11) unsigned NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_ref_currency` int(11) unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_supply_order_detail`
--

CREATE TABLE IF NOT EXISTS `prstshp_supply_order_detail` (
`id_supply_order_detail` int(11) unsigned NOT NULL,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `supplier_reference` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int(11) unsigned NOT NULL,
  `quantity_received` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_supply_order_history`
--

CREATE TABLE IF NOT EXISTS `prstshp_supply_order_history` (
`id_supply_order_history` int(11) unsigned NOT NULL,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_state` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_supply_order_receipt_history`
--

CREATE TABLE IF NOT EXISTS `prstshp_supply_order_receipt_history` (
`id_supply_order_receipt_history` int(11) unsigned NOT NULL,
  `id_supply_order_detail` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_supply_order_state`
--

CREATE TABLE IF NOT EXISTS `prstshp_supply_order_state` (
`id_supply_order_state` int(11) unsigned NOT NULL,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Zrzut danych tabeli `prstshp_supply_order_state`
--

INSERT INTO `prstshp_supply_order_state` (`id_supply_order_state`, `delivery_note`, `editable`, `receipt_state`, `pending_receipt`, `enclosed`, `color`) VALUES
(1, 0, 1, 0, 0, 0, '#faab00'),
(2, 1, 0, 0, 0, 0, '#273cff'),
(3, 0, 0, 0, 1, 0, '#ff37f5'),
(4, 0, 0, 1, 1, 0, '#ff3e33'),
(5, 0, 0, 1, 0, 1, '#00d60c'),
(6, 0, 0, 0, 0, 1, '#666666');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_supply_order_state_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_supply_order_state_lang` (
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_supply_order_state_lang`
--

INSERT INTO `prstshp_supply_order_state_lang` (`id_supply_order_state`, `id_lang`, `name`) VALUES
(1, 1, '1 - Creation in progress'),
(1, 2, '1 - Creation in progress'),
(1, 3, '1 - Creation in progress'),
(2, 1, '2 - Order validated'),
(2, 2, '2 - Order validated'),
(2, 3, '2 - Order validated'),
(3, 1, '3 - Pending receipt'),
(3, 2, '3 - Pending receipt'),
(3, 3, '3 - Pending receipt'),
(4, 1, '4 - Order received in part'),
(4, 2, '4 - Order received in part'),
(4, 3, '4 - Order received in part'),
(5, 1, '5 - Order received completely'),
(5, 2, '5 - Order received completely'),
(5, 3, '5 - Order received completely'),
(6, 1, '6 - Order canceled'),
(6, 2, '6 - Order canceled'),
(6, 3, '6 - Order canceled');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tab`
--

CREATE TABLE IF NOT EXISTS `prstshp_tab` (
`id_tab` int(10) unsigned NOT NULL,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hide_host_mode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Zrzut danych tabeli `prstshp_tab`
--

INSERT INTO `prstshp_tab` (`id_tab`, `id_parent`, `class_name`, `module`, `position`, `active`, `hide_host_mode`) VALUES
(1, 0, 'AdminDashboard', '', 0, 1, 0),
(2, -1, 'AdminCms', '', 0, 1, 0),
(3, -1, 'AdminCmsCategories', '', 1, 1, 0),
(4, -1, 'AdminAttributeGenerator', '', 2, 1, 0),
(5, -1, 'AdminSearch', '', 3, 1, 0),
(6, -1, 'AdminLogin', '', 4, 1, 0),
(7, -1, 'AdminShop', '', 5, 1, 0),
(8, -1, 'AdminShopUrl', '', 6, 1, 0),
(9, 0, 'AdminCatalog', '', 1, 1, 0),
(10, 0, 'AdminParentOrders', '', 2, 1, 0),
(11, 0, 'AdminParentCustomer', '', 3, 1, 0),
(12, 0, 'AdminPriceRule', '', 4, 1, 0),
(13, 0, 'AdminParentModules', '', 5, 1, 0),
(14, 0, 'AdminParentShipping', '', 6, 1, 0),
(15, 0, 'AdminParentLocalization', '', 7, 1, 0),
(16, 0, 'AdminParentPreferences', '', 8, 1, 0),
(17, 0, 'AdminTools', '', 9, 1, 0),
(18, 0, 'AdminAdmin', '', 10, 1, 0),
(19, 0, 'AdminParentStats', '', 11, 1, 0),
(20, 0, 'AdminStock', '', 12, 1, 0),
(21, 9, 'AdminProducts', '', 0, 1, 0),
(22, 9, 'AdminCategories', '', 1, 1, 0),
(23, 9, 'AdminTracking', '', 2, 1, 0),
(24, 9, 'AdminAttributesGroups', '', 3, 1, 0),
(25, 9, 'AdminFeatures', '', 4, 1, 0),
(26, 9, 'AdminManufacturers', '', 5, 1, 0),
(27, 9, 'AdminSuppliers', '', 6, 1, 0),
(28, 9, 'AdminTags', '', 7, 1, 0),
(29, 9, 'AdminAttachments', '', 8, 1, 0),
(30, 10, 'AdminOrders', '', 0, 1, 0),
(31, 10, 'AdminInvoices', '', 1, 1, 0),
(32, 10, 'AdminReturn', '', 2, 1, 0),
(33, 10, 'AdminDeliverySlip', '', 3, 1, 0),
(34, 10, 'AdminSlip', '', 4, 1, 0),
(35, 10, 'AdminStatuses', '', 5, 1, 0),
(36, 10, 'AdminOrderMessage', '', 6, 1, 0),
(37, 11, 'AdminCustomers', '', 0, 1, 0),
(38, 11, 'AdminAddresses', '', 1, 1, 0),
(39, 11, 'AdminGroups', '', 2, 1, 0),
(40, 11, 'AdminCarts', '', 3, 1, 0),
(41, 11, 'AdminCustomerThreads', '', 4, 1, 0),
(42, 11, 'AdminContacts', '', 5, 1, 0),
(43, 11, 'AdminGenders', '', 6, 1, 0),
(44, 11, 'AdminOutstanding', '', 7, 1, 0),
(45, 12, 'AdminCartRules', '', 0, 1, 0),
(46, 12, 'AdminSpecificPriceRule', '', 1, 1, 0),
(47, 12, 'AdminMarketing', '', 2, 1, 0),
(48, 14, 'AdminCarriers', '', 0, 1, 0),
(49, 14, 'AdminShipping', '', 1, 1, 0),
(50, 14, 'AdminCarrierWizard', '', 2, 1, 0),
(51, 15, 'AdminLocalization', '', 0, 1, 0),
(52, 15, 'AdminLanguages', '', 1, 1, 0),
(53, 15, 'AdminZones', '', 2, 1, 0),
(54, 15, 'AdminCountries', '', 3, 1, 0),
(55, 15, 'AdminStates', '', 4, 1, 0),
(56, 15, 'AdminCurrencies', '', 5, 1, 0),
(57, 15, 'AdminTaxes', '', 6, 1, 0),
(58, 15, 'AdminTaxRulesGroup', '', 7, 1, 0),
(59, 15, 'AdminTranslations', '', 8, 1, 0),
(60, 13, 'AdminModules', '', 0, 1, 0),
(61, 13, 'AdminAddonsCatalog', '', 1, 1, 0),
(62, 13, 'AdminModulesPositions', '', 2, 1, 0),
(63, 13, 'AdminPayment', '', 3, 1, 0),
(64, 16, 'AdminPreferences', '', 0, 1, 0),
(65, 16, 'AdminOrderPreferences', '', 1, 1, 0),
(66, 16, 'AdminPPreferences', '', 2, 1, 0),
(67, 16, 'AdminCustomerPreferences', '', 3, 1, 0),
(68, 16, 'AdminThemes', '', 4, 1, 0),
(69, 16, 'AdminMeta', '', 5, 1, 0),
(70, 16, 'AdminCmsContent', '', 6, 1, 0),
(71, 16, 'AdminImages', '', 7, 1, 0),
(72, 16, 'AdminStores', '', 8, 1, 0),
(73, 16, 'AdminSearchConf', '', 9, 1, 0),
(74, 16, 'AdminMaintenance', '', 10, 1, 0),
(75, 16, 'AdminGeolocation', '', 11, 1, 0),
(76, 17, 'AdminInformation', '', 0, 1, 0),
(77, 17, 'AdminPerformance', '', 1, 1, 0),
(78, 17, 'AdminEmails', '', 2, 1, 0),
(79, 17, 'AdminShopGroup', '', 3, 0, 0),
(80, 17, 'AdminImport', '', 4, 1, 0),
(81, 17, 'AdminBackup', '', 5, 1, 0),
(82, 17, 'AdminRequestSql', '', 6, 1, 0),
(83, 17, 'AdminLogs', '', 7, 1, 0),
(84, 17, 'AdminWebservice', '', 8, 1, 0),
(85, 18, 'AdminAdminPreferences', '', 0, 1, 0),
(86, 18, 'AdminQuickAccesses', '', 1, 1, 0),
(87, 18, 'AdminEmployees', '', 2, 1, 0),
(88, 18, 'AdminProfiles', '', 3, 1, 0),
(89, 18, 'AdminAccess', '', 4, 1, 0),
(90, 18, 'AdminTabs', '', 5, 1, 0),
(91, 19, 'AdminStats', '', 0, 1, 0),
(92, 19, 'AdminSearchEngines', '', 1, 1, 0),
(93, 19, 'AdminReferrers', '', 2, 1, 0),
(94, 20, 'AdminWarehouses', '', 0, 1, 0),
(95, 20, 'AdminStockManagement', '', 1, 1, 0),
(96, 20, 'AdminStockMvt', '', 2, 1, 0),
(97, 20, 'AdminStockInstantState', '', 3, 1, 0),
(98, 20, 'AdminStockCover', '', 4, 1, 0),
(99, 20, 'AdminSupplyOrders', '', 5, 1, 0),
(100, 20, 'AdminStockConfiguration', '', 6, 1, 0),
(101, -1, 'AdminBlockCategories', 'blockcategories', 7, 1, 0),
(102, -1, 'AdminDashgoals', 'dashgoals', 8, 1, 0),
(103, 18, 'AdminGamification', 'gamification', 6, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tab_advice`
--

CREATE TABLE IF NOT EXISTS `prstshp_tab_advice` (
  `id_tab` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tab_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_tab_lang` (
  `id_tab` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_tab_lang`
--

INSERT INTO `prstshp_tab_lang` (`id_tab`, `id_lang`, `name`) VALUES
(1, 1, 'Dashboard'),
(1, 2, 'Dashboard'),
(1, 3, 'Pulpit'),
(2, 1, 'CMS Pages'),
(2, 2, 'CMS Pages'),
(2, 3, 'Strony CMS'),
(3, 1, 'CMS Categories'),
(3, 2, 'CMS Categories'),
(3, 3, 'Kategorie CMS'),
(4, 1, 'Combinations Generator'),
(4, 2, 'Combinations Generator'),
(4, 3, 'Generator kombinacji'),
(5, 1, 'Search'),
(5, 2, 'Search'),
(5, 3, 'Szukaj'),
(6, 1, 'Login'),
(6, 2, 'Login'),
(6, 3, 'Nazwa użytkowika'),
(7, 1, 'Shops'),
(7, 2, 'Shops'),
(7, 3, 'Sklepy'),
(8, 1, 'Shop URLs'),
(8, 2, 'Shop URLs'),
(8, 3, 'Url sklepu'),
(9, 1, 'Catalog'),
(9, 2, 'Catalog'),
(9, 3, 'Katalog'),
(10, 1, 'Orders'),
(10, 2, 'Orders'),
(10, 3, 'Zamówienia'),
(11, 1, 'Customers'),
(11, 2, 'Customers'),
(11, 3, 'Klienci'),
(12, 1, 'Price Rules'),
(12, 2, 'Price Rules'),
(12, 3, 'Rabaty grupowe'),
(13, 1, 'Modules'),
(13, 2, 'Modules'),
(13, 3, 'Moduły'),
(14, 1, 'Shipping'),
(14, 2, 'Shipping'),
(14, 3, 'Wysyłka'),
(15, 1, 'Localization'),
(15, 2, 'Localization'),
(15, 3, 'Lokalizacja'),
(16, 1, 'Preferences'),
(16, 2, 'Preferences'),
(16, 3, 'Preferencje'),
(17, 1, 'Advanced Parameters'),
(17, 2, 'Advanced Parameters'),
(17, 3, 'Zaawansowane'),
(18, 1, 'Administration'),
(18, 2, 'Administration'),
(18, 3, 'Administracja'),
(19, 1, 'Stats'),
(19, 2, 'Stats'),
(19, 3, 'Statystyki'),
(20, 1, 'Stock'),
(20, 2, 'Stock'),
(20, 3, 'Magazyn'),
(21, 1, 'Products'),
(21, 2, 'Products'),
(21, 3, 'Produkty'),
(22, 1, 'Categories'),
(22, 2, 'Categories'),
(22, 3, 'Kategorie'),
(23, 1, 'Monitoring'),
(23, 2, 'Monitoring'),
(23, 3, 'Monitorowanie'),
(24, 1, 'Product Attributes'),
(24, 2, 'Product Attributes'),
(24, 3, 'Atrybuty produktu'),
(25, 1, 'Product Features'),
(25, 2, 'Product Features'),
(25, 3, 'Cechy produktu'),
(26, 1, 'Manufacturers'),
(26, 2, 'Manufacturers'),
(26, 3, 'Producenci'),
(27, 1, 'Suppliers'),
(27, 2, 'Suppliers'),
(27, 3, 'Dostawcy'),
(28, 1, 'Tags'),
(28, 2, 'Tags'),
(28, 3, 'Tagi'),
(29, 1, 'Attachments'),
(29, 2, 'Attachments'),
(29, 3, 'Załączniki'),
(30, 1, 'Orders'),
(30, 2, 'Orders'),
(30, 3, 'Zamówienia'),
(31, 1, 'Invoices'),
(31, 2, 'Invoices'),
(31, 3, 'Faktury'),
(32, 1, 'Merchandise Returns'),
(32, 2, 'Merchandise Returns'),
(32, 3, 'Zwroty produktów'),
(33, 1, 'Delivery Slips'),
(33, 2, 'Delivery Slips'),
(33, 3, 'Druk wysyłki'),
(34, 1, 'Credit Slips'),
(34, 2, 'Credit Slips'),
(34, 3, 'Druki kredytowe'),
(35, 1, 'Statuses'),
(35, 2, 'Statuses'),
(35, 3, 'Statusy'),
(36, 1, 'Order Messages'),
(36, 2, 'Order Messages'),
(36, 3, 'Wiadomości zamówienia'),
(37, 1, 'Customers'),
(37, 2, 'Customers'),
(37, 3, 'Klienci'),
(38, 1, 'Addresses'),
(38, 2, 'Addresses'),
(38, 3, 'Adresy'),
(39, 1, 'Groups'),
(39, 2, 'Groups'),
(39, 3, 'Grupy'),
(40, 1, 'Shopping Carts'),
(40, 2, 'Shopping Carts'),
(40, 3, 'Koszyki zakupowe'),
(41, 1, 'Customer Service'),
(41, 2, 'Customer Service'),
(41, 3, 'Obsługa klienta'),
(42, 1, 'Contacts'),
(42, 2, 'Contacts'),
(42, 3, 'Kontakty'),
(43, 1, 'Titles'),
(43, 2, 'Titles'),
(43, 3, 'Tytuły'),
(44, 1, 'Outstanding'),
(44, 2, 'Outstanding'),
(44, 3, 'Saldo'),
(45, 1, 'Cart Rules'),
(45, 2, 'Cart Rules'),
(45, 3, 'Kody rabatowe'),
(46, 1, 'Catalog Price Rules'),
(46, 2, 'Catalog Price Rules'),
(46, 3, 'Reguły cenowe katalogu'),
(47, 1, 'Marketing'),
(47, 2, 'Marketing'),
(47, 3, 'Marketing'),
(48, 1, 'Carriers'),
(48, 2, 'Carriers'),
(48, 3, 'Przewoźnicy'),
(49, 1, 'Preferences'),
(49, 2, 'Preferences'),
(49, 3, 'Preferencje'),
(50, 1, 'Carrier'),
(50, 2, 'Carrier'),
(50, 3, 'Przewoźnik'),
(51, 1, 'Localization'),
(51, 2, 'Localization'),
(51, 3, 'Lokalizacja'),
(52, 1, 'Languages'),
(52, 2, 'Languages'),
(52, 3, 'Języki'),
(53, 1, 'Zones'),
(53, 2, 'Zones'),
(53, 3, 'Strefy'),
(54, 1, 'Countries'),
(54, 2, 'Countries'),
(54, 3, 'Kraje'),
(55, 1, 'States'),
(55, 2, 'States'),
(55, 3, 'Województwa lub regiony'),
(56, 1, 'Currencies'),
(56, 2, 'Currencies'),
(56, 3, 'Waluty'),
(57, 1, 'Taxes'),
(57, 2, 'Taxes'),
(57, 3, 'Podatki'),
(58, 1, 'Tax Rules'),
(58, 2, 'Tax Rules'),
(58, 3, 'Reguły podatków'),
(59, 1, 'Translations'),
(59, 2, 'Translations'),
(59, 3, 'Tłumaczenia'),
(60, 1, 'Modules'),
(60, 2, 'Modules'),
(60, 3, 'Moduły'),
(61, 1, 'Modules & Themes Catalog'),
(61, 2, 'Modules & Themes Catalog'),
(61, 3, 'Katalog modułów i motywów'),
(62, 1, 'Positions'),
(62, 2, 'Positions'),
(62, 3, 'Pozycje'),
(63, 1, 'Payment'),
(63, 2, 'Payment'),
(63, 3, 'Płatność'),
(64, 1, 'General'),
(64, 2, 'General'),
(64, 3, 'Ogólny'),
(65, 1, 'Orders'),
(65, 2, 'Orders'),
(65, 3, 'Zamówienia'),
(66, 1, 'Products'),
(66, 2, 'Products'),
(66, 3, 'Produkty'),
(67, 1, 'Customers'),
(67, 2, 'Customers'),
(67, 3, 'Klienci'),
(68, 1, 'Themes'),
(68, 2, 'Themes'),
(68, 3, 'Szablony'),
(69, 1, 'SEO & URLs'),
(69, 2, 'SEO & URLs'),
(69, 3, 'SEO & URL'),
(70, 1, 'CMS'),
(70, 2, 'CMS'),
(70, 3, 'CMS'),
(71, 1, 'Images'),
(71, 2, 'Images'),
(71, 3, 'Zdjęcia'),
(72, 1, 'Store Contacts'),
(72, 2, 'Store Contacts'),
(72, 3, 'Kontakty sklepu'),
(73, 1, 'Search'),
(73, 2, 'Search'),
(73, 3, 'Szukaj'),
(74, 1, 'Maintenance'),
(74, 2, 'Maintenance'),
(74, 3, 'Przerwa techniczna'),
(75, 1, 'Geolocation'),
(75, 2, 'Geolocation'),
(75, 3, 'Geolokalizacja'),
(76, 1, 'Configuration Information'),
(76, 2, 'Configuration Information'),
(76, 3, 'Informacje konfiguracyjne'),
(77, 1, 'Performance'),
(77, 2, 'Performance'),
(77, 3, 'Wydajność'),
(78, 1, 'E-mail'),
(78, 2, 'E-mail'),
(78, 3, 'Adres e-mail'),
(79, 1, 'Multistore'),
(79, 2, 'Multistore'),
(79, 3, 'Multisklep'),
(80, 1, 'CSV Import'),
(80, 2, 'CSV Import'),
(80, 3, 'Import CSV'),
(81, 1, 'DB Backup'),
(81, 2, 'DB Backup'),
(81, 3, 'Kopia zapasowa DB'),
(82, 1, 'SQL Manager'),
(82, 2, 'SQL Manager'),
(82, 3, 'Menadżer SQL'),
(83, 1, 'Logs'),
(83, 2, 'Logs'),
(83, 3, 'Logi'),
(84, 1, 'Webservice'),
(84, 2, 'Webservice'),
(84, 3, 'API'),
(85, 1, 'Preferences'),
(85, 2, 'Preferences'),
(85, 3, 'Preferencje'),
(86, 1, 'Quick Access'),
(86, 2, 'Quick Access'),
(86, 3, 'Szybki dostęp'),
(87, 1, 'Employees'),
(87, 2, 'Employees'),
(87, 3, 'Pracownicy'),
(88, 1, 'Profiles'),
(88, 2, 'Profiles'),
(88, 3, 'Profile'),
(89, 1, 'Permissions'),
(89, 2, 'Permissions'),
(89, 3, 'Uprawnienia'),
(90, 1, 'Menus'),
(90, 2, 'Menus'),
(90, 3, 'Menu'),
(91, 1, 'Stats'),
(91, 2, 'Stats'),
(91, 3, 'Statystyki'),
(92, 1, 'Search Engines'),
(92, 2, 'Search Engines'),
(92, 3, 'Wyszukiwarki'),
(93, 1, 'Referrers'),
(93, 2, 'Referrers'),
(93, 3, 'Polecający'),
(94, 1, 'Warehouses'),
(94, 2, 'Warehouses'),
(94, 3, 'Magazyny'),
(95, 1, 'Stock Management'),
(95, 2, 'Stock Management'),
(95, 3, 'Zarządzanie magazynem'),
(96, 1, 'Stock Movement'),
(96, 2, 'Stock Movement'),
(96, 3, 'Ruch magazynowy'),
(97, 1, 'Instant Stock Status'),
(97, 2, 'Instant Stock Status'),
(97, 3, 'Stany magazynowe'),
(98, 1, 'Stock Coverage'),
(98, 2, 'Stock Coverage'),
(98, 3, 'Aktualne pokrycie stanu'),
(99, 1, 'Supply orders'),
(99, 2, 'Supply orders'),
(99, 3, 'Dostawa zamówień'),
(100, 1, 'Configuration'),
(100, 2, 'Configuration'),
(100, 3, 'Konfiguracja'),
(101, 1, 'BlockCategories'),
(101, 2, 'BlockCategories'),
(101, 3, 'Blok kategorii'),
(102, 1, 'Dashgoals'),
(102, 2, 'Dashgoals'),
(102, 3, 'Dashgoals'),
(103, 1, 'Merchant Expertise'),
(103, 2, 'Merchant Expertise'),
(103, 3, 'Osiągnięcia sprzedawcy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tab_module_preference`
--

CREATE TABLE IF NOT EXISTS `prstshp_tab_module_preference` (
`id_tab_module_preference` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tag`
--

CREATE TABLE IF NOT EXISTS `prstshp_tag` (
`id_tag` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tax`
--

CREATE TABLE IF NOT EXISTS `prstshp_tax` (
`id_tax` int(10) unsigned NOT NULL,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Zrzut danych tabeli `prstshp_tax`
--

INSERT INTO `prstshp_tax` (`id_tax`, `rate`, `active`, `deleted`) VALUES
(1, '4.000', 1, 0),
(2, '0.000', 1, 0),
(3, '6.600', 1, 0),
(4, '6.000', 1, 0),
(5, '8.250', 1, 0),
(6, '2.900', 1, 0),
(7, '0.000', 1, 0),
(8, '0.000', 1, 0),
(9, '6.000', 1, 0),
(10, '4.000', 1, 0),
(11, '4.000', 1, 0),
(12, '6.000', 1, 0),
(13, '6.250', 1, 0),
(14, '7.000', 1, 0),
(15, '6.000', 1, 0),
(16, '5.300', 1, 0),
(17, '6.000', 1, 0),
(18, '4.000', 1, 0),
(19, '5.000', 1, 0),
(20, '6.000', 1, 0),
(21, '6.250', 1, 0),
(22, '6.000', 1, 0),
(23, '6.875', 1, 0),
(24, '7.000', 1, 0),
(25, '4.225', 1, 0),
(26, '0.000', 1, 0),
(27, '5.500', 1, 0),
(28, '6.850', 1, 0),
(29, '0.000', 1, 0),
(30, '7.000', 1, 0),
(31, '5.125', 1, 0),
(32, '4.000', 1, 0),
(33, '5.500', 1, 0),
(34, '5.000', 1, 0),
(35, '5.500', 1, 0),
(36, '4.500', 1, 0),
(37, '0.000', 1, 0),
(38, '6.000', 1, 0),
(39, '7.000', 1, 0),
(40, '6.000', 1, 0),
(41, '4.000', 1, 0),
(42, '7.000', 1, 0),
(43, '6.250', 1, 0),
(44, '4.750', 1, 0),
(45, '6.000', 1, 0),
(46, '4.000', 1, 0),
(47, '6.500', 1, 0),
(48, '6.000', 1, 0),
(49, '5.000', 1, 0),
(50, '4.000', 1, 0),
(51, '5.500', 1, 0),
(52, '6.000', 1, 0),
(53, '23.000', 1, 0),
(54, '8.000', 1, 0),
(55, '5.000', 1, 0),
(56, '0.000', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tax_lang`
--

CREATE TABLE IF NOT EXISTS `prstshp_tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_tax_lang`
--

INSERT INTO `prstshp_tax_lang` (`id_tax`, `id_lang`, `name`) VALUES
(1, 1, 'Sales-taxes US-AL 4%'),
(1, 2, 'Sales-taxes US-AL 4%'),
(1, 3, 'Sales-taxes US-AL 4%'),
(2, 1, 'Sales-taxes US-AK 0%'),
(2, 2, 'Sales-taxes US-AK 0%'),
(2, 3, 'Sales-taxes US-AK 0%'),
(3, 1, 'Sales-taxes US-AZ 6.6%'),
(3, 2, 'Sales-taxes US-AZ 6.6%'),
(3, 3, 'Sales-taxes US-AZ 6.6%'),
(4, 1, 'Sales-taxes US-AR 6%'),
(4, 2, 'Sales-taxes US-AR 6%'),
(4, 3, 'Sales-taxes US-AR 6%'),
(5, 1, 'Sales-taxes US-CA 8.25%'),
(5, 2, 'Sales-taxes US-CA 8.25%'),
(5, 3, 'Sales-taxes US-CA 8.25%'),
(6, 1, 'Sales-taxes US-CO 2.9%'),
(6, 2, 'Sales-taxes US-CO 2.9%'),
(6, 3, 'Sales-taxes US-CO 2.9%'),
(7, 1, 'Sales-taxes US-CT 0%'),
(7, 2, 'Sales-taxes US-CT 0%'),
(7, 3, 'Sales-taxes US-CT 0%'),
(8, 1, 'Sales-taxes US-DE 0%'),
(8, 2, 'Sales-taxes US-DE 0%'),
(8, 3, 'Sales-taxes US-DE 0%'),
(9, 1, 'Sales-taxes US-FL 6%'),
(9, 2, 'Sales-taxes US-FL 6%'),
(9, 3, 'Sales-taxes US-FL 6%'),
(10, 1, 'Sales-taxes US-GA 4%'),
(10, 2, 'Sales-taxes US-GA 4%'),
(10, 3, 'Sales-taxes US-GA 4%'),
(11, 1, 'Sales-taxes US-HI 4%'),
(11, 2, 'Sales-taxes US-HI 4%'),
(11, 3, 'Sales-taxes US-HI 4%'),
(12, 1, 'Sales-taxes US-ID 6%'),
(12, 2, 'Sales-taxes US-ID 6%'),
(12, 3, 'Sales-taxes US-ID 6%'),
(13, 1, 'Sales-taxes US-IL 6.25%'),
(13, 2, 'Sales-taxes US-IL 6.25%'),
(13, 3, 'Sales-taxes US-IL 6.25%'),
(14, 1, 'Sales-taxes US-IN 7%'),
(14, 2, 'Sales-taxes US-IN 7%'),
(14, 3, 'Sales-taxes US-IN 7%'),
(15, 1, 'Sales-taxes US-IA 6%'),
(15, 2, 'Sales-taxes US-IA 6%'),
(15, 3, 'Sales-taxes US-IA 6%'),
(16, 1, 'Sales-taxes US-KS 5.3%'),
(16, 2, 'Sales-taxes US-KS 5.3%'),
(16, 3, 'Sales-taxes US-KS 5.3%'),
(17, 1, 'Sales-taxes US-KY 6%'),
(17, 2, 'Sales-taxes US-KY 6%'),
(17, 3, 'Sales-taxes US-KY 6%'),
(18, 1, 'Sales-taxes US-LA 4%'),
(18, 2, 'Sales-taxes US-LA 4%'),
(18, 3, 'Sales-taxes US-LA 4%'),
(19, 1, 'Sales-taxes US-ME 5%'),
(19, 2, 'Sales-taxes US-ME 5%'),
(19, 3, 'Sales-taxes US-ME 5%'),
(20, 1, 'Sales-taxes US-MD 6%'),
(20, 2, 'Sales-taxes US-MD 6%'),
(20, 3, 'Sales-taxes US-MD 6%'),
(21, 1, 'Sales-taxes US-MA 6.25%'),
(21, 2, 'Sales-taxes US-MA 6.25%'),
(21, 3, 'Sales-taxes US-MA 6.25%'),
(22, 1, 'Sales-taxes US-MI 6%'),
(22, 2, 'Sales-taxes US-MI 6%'),
(22, 3, 'Sales-taxes US-MI 6%'),
(23, 1, 'Sales-taxes US-MN 6.875%'),
(23, 2, 'Sales-taxes US-MN 6.875%'),
(23, 3, 'Sales-taxes US-MN 6.875%'),
(24, 1, 'Sales-taxes US-MS 7%'),
(24, 2, 'Sales-taxes US-MS 7%'),
(24, 3, 'Sales-taxes US-MS 7%'),
(25, 1, 'Sales-taxes US-MO 4.225%'),
(25, 2, 'Sales-taxes US-MO 4.225%'),
(25, 3, 'Sales-taxes US-MO 4.225%'),
(26, 1, 'Sales-taxes US-MT 0.0%'),
(26, 2, 'Sales-taxes US-MT 0.0%'),
(26, 3, 'Sales-taxes US-MT 0.0%'),
(27, 1, 'Sales-taxes US-NE 5.5%'),
(27, 2, 'Sales-taxes US-NE 5.5%'),
(27, 3, 'Sales-taxes US-NE 5.5%'),
(28, 1, 'Sales-taxes US-NV 6.85%'),
(28, 2, 'Sales-taxes US-NV 6.85%'),
(28, 3, 'Sales-taxes US-NV 6.85%'),
(29, 1, 'Sales-taxes US-NH 0%'),
(29, 2, 'Sales-taxes US-NH 0%'),
(29, 3, 'Sales-taxes US-NH 0%'),
(30, 1, 'Sales-taxes US-NJ 7%'),
(30, 2, 'Sales-taxes US-NJ 7%'),
(30, 3, 'Sales-taxes US-NJ 7%'),
(31, 1, 'Sales-taxes US-NM 5.125%'),
(31, 2, 'Sales-taxes US-NM 5.125%'),
(31, 3, 'Sales-taxes US-NM 5.125%'),
(32, 1, 'Sales-taxes US-NY 4%'),
(32, 2, 'Sales-taxes US-NY 4%'),
(32, 3, 'Sales-taxes US-NY 4%'),
(33, 1, 'Sales-taxes US-NC 5.5%'),
(33, 2, 'Sales-taxes US-NC 5.5%'),
(33, 3, 'Sales-taxes US-NC 5.5%'),
(34, 1, 'Sales-taxes US-ND 5%'),
(34, 2, 'Sales-taxes US-ND 5%'),
(34, 3, 'Sales-taxes US-ND 5%'),
(35, 1, 'Sales-taxes US-OH 5.5%'),
(35, 2, 'Sales-taxes US-OH 5.5%'),
(35, 3, 'Sales-taxes US-OH 5.5%'),
(36, 1, 'Sales-taxes US-OK 4.5%'),
(36, 2, 'Sales-taxes US-OK 4.5%'),
(36, 3, 'Sales-taxes US-OK 4.5%'),
(37, 1, 'Sales-taxes US-OR 0%'),
(37, 2, 'Sales-taxes US-OR 0%'),
(37, 3, 'Sales-taxes US-OR 0%'),
(38, 1, 'Sales-taxes US-PA 6%'),
(38, 2, 'Sales-taxes US-PA 6%'),
(38, 3, 'Sales-taxes US-PA 6%'),
(39, 1, 'Sales-taxes US-RI 7%'),
(39, 2, 'Sales-taxes US-RI 7%'),
(39, 3, 'Sales-taxes US-RI 7%'),
(40, 1, 'Sales-taxes US-SC 6%'),
(40, 2, 'Sales-taxes US-SC 6%'),
(40, 3, 'Sales-taxes US-SC 6%'),
(41, 1, 'Sales-taxes US-SD 4%'),
(41, 2, 'Sales-taxes US-SD 4%'),
(41, 3, 'Sales-taxes US-SD 4%'),
(42, 1, 'Sales-taxes US-TN 7%'),
(42, 2, 'Sales-taxes US-TN 7%'),
(42, 3, 'Sales-taxes US-TN 7%'),
(43, 1, 'Sales-taxes US-TX 6.25%'),
(43, 2, 'Sales-taxes US-TX 6.25%'),
(43, 3, 'Sales-taxes US-TX 6.25%'),
(44, 1, 'Sales-taxes US-UT 4.75%'),
(44, 2, 'Sales-taxes US-UT 4.75%'),
(44, 3, 'Sales-taxes US-UT 4.75%'),
(45, 1, 'Sales-taxes US-VT 6%'),
(45, 2, 'Sales-taxes US-VT 6%'),
(45, 3, 'Sales-taxes US-VT 6%'),
(46, 1, 'Sales-taxes US-VA 4%'),
(46, 2, 'Sales-taxes US-VA 4%'),
(46, 3, 'Sales-taxes US-VA 4%'),
(47, 1, 'Sales-taxes US-WA 6.5%'),
(47, 2, 'Sales-taxes US-WA 6.5%'),
(47, 3, 'Sales-taxes US-WA 6.5%'),
(48, 1, 'Sales-taxes US-WV 6%'),
(48, 2, 'Sales-taxes US-WV 6%'),
(48, 3, 'Sales-taxes US-WV 6%'),
(49, 1, 'Sales-taxes US-WI 5%'),
(49, 2, 'Sales-taxes US-WI 5%'),
(49, 3, 'Sales-taxes US-WI 5%'),
(50, 1, 'Sales-taxes US-WY 4%'),
(50, 2, 'Sales-taxes US-WY 4%'),
(50, 3, 'Sales-taxes US-WY 4%'),
(51, 1, 'Sales-taxes US-PR 5.5%'),
(51, 2, 'Sales-taxes US-PR 5.5%'),
(51, 3, 'Sales-taxes US-PR 5.5%'),
(52, 1, 'Sales-taxes US-DC 6%'),
(52, 2, 'Sales-taxes US-DC 6%'),
(52, 3, 'Sales-taxes US-DC 6%'),
(53, 1, 'PTU PL 23%'),
(53, 2, 'PTU PL 23%'),
(53, 3, 'PTU PL 23%'),
(54, 1, 'PTU PL 8%'),
(54, 2, 'PTU PL 8%'),
(54, 3, 'PTU PL 8%'),
(55, 1, 'PTU PL 5%'),
(55, 2, 'PTU PL 5%'),
(55, 3, 'PTU PL 5%'),
(56, 1, 'PTU PL 0'),
(56, 2, 'PTU PL 0'),
(56, 3, 'PTU PL 0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tax_rule`
--

CREATE TABLE IF NOT EXISTS `prstshp_tax_rule` (
`id_tax_rule` int(11) NOT NULL,
  `id_tax_rules_group` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `behavior` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Zrzut danych tabeli `prstshp_tax_rule`
--

INSERT INTO `prstshp_tax_rule` (`id_tax_rule`, `id_tax_rules_group`, `id_country`, `id_state`, `zipcode_from`, `zipcode_to`, `id_tax`, `behavior`, `description`) VALUES
(1, 1, 21, 1, '0', '0', 1, 1, ''),
(2, 2, 21, 2, '0', '0', 2, 1, ''),
(3, 3, 21, 3, '0', '0', 3, 1, ''),
(4, 4, 21, 4, '0', '0', 4, 1, ''),
(5, 5, 21, 5, '0', '0', 5, 1, ''),
(6, 6, 21, 6, '0', '0', 6, 1, ''),
(7, 7, 21, 7, '0', '0', 7, 1, ''),
(8, 8, 21, 8, '0', '0', 8, 1, ''),
(9, 9, 21, 9, '0', '0', 9, 1, ''),
(10, 10, 21, 10, '0', '0', 10, 1, ''),
(11, 11, 21, 11, '0', '0', 11, 1, ''),
(12, 12, 21, 12, '0', '0', 12, 1, ''),
(13, 13, 21, 13, '0', '0', 13, 1, ''),
(14, 14, 21, 14, '0', '0', 14, 1, ''),
(15, 15, 21, 15, '0', '0', 15, 1, ''),
(16, 16, 21, 16, '0', '0', 16, 1, ''),
(17, 17, 21, 17, '0', '0', 17, 1, ''),
(18, 18, 21, 18, '0', '0', 18, 1, ''),
(19, 19, 21, 19, '0', '0', 19, 1, ''),
(20, 20, 21, 20, '0', '0', 20, 1, ''),
(21, 21, 21, 21, '0', '0', 21, 1, ''),
(22, 22, 21, 22, '0', '0', 22, 1, ''),
(23, 23, 21, 23, '0', '0', 23, 1, ''),
(24, 24, 21, 24, '0', '0', 24, 1, ''),
(25, 25, 21, 25, '0', '0', 25, 1, ''),
(26, 26, 21, 26, '0', '0', 26, 1, ''),
(27, 27, 21, 27, '0', '0', 27, 1, ''),
(28, 28, 21, 28, '0', '0', 28, 1, ''),
(29, 29, 21, 29, '0', '0', 29, 1, ''),
(30, 30, 21, 30, '0', '0', 30, 1, ''),
(31, 31, 21, 31, '0', '0', 31, 1, ''),
(32, 32, 21, 32, '0', '0', 32, 1, ''),
(33, 33, 21, 33, '0', '0', 33, 1, ''),
(34, 34, 21, 34, '0', '0', 34, 1, ''),
(35, 35, 21, 35, '0', '0', 35, 1, ''),
(36, 36, 21, 36, '0', '0', 36, 1, ''),
(37, 37, 21, 37, '0', '0', 37, 1, ''),
(38, 38, 21, 38, '0', '0', 38, 1, ''),
(39, 39, 21, 39, '0', '0', 39, 1, ''),
(40, 40, 21, 40, '0', '0', 40, 1, ''),
(41, 41, 21, 41, '0', '0', 41, 1, ''),
(42, 42, 21, 42, '0', '0', 42, 1, ''),
(43, 43, 21, 43, '0', '0', 43, 1, ''),
(44, 44, 21, 44, '0', '0', 44, 1, ''),
(45, 45, 21, 45, '0', '0', 45, 1, ''),
(46, 46, 21, 46, '0', '0', 46, 1, ''),
(47, 47, 21, 47, '0', '0', 47, 1, ''),
(48, 48, 21, 48, '0', '0', 48, 1, ''),
(49, 49, 21, 49, '0', '0', 49, 1, ''),
(50, 50, 21, 50, '0', '0', 50, 1, ''),
(51, 51, 21, 51, '0', '0', 51, 1, ''),
(52, 52, 21, 53, '0', '0', 52, 1, ''),
(53, 53, 3, 0, '0', '0', 53, 0, ''),
(54, 53, 236, 0, '0', '0', 53, 0, ''),
(55, 53, 16, 0, '0', '0', 53, 0, ''),
(56, 53, 20, 0, '0', '0', 53, 0, ''),
(57, 53, 1, 0, '0', '0', 53, 0, ''),
(58, 53, 86, 0, '0', '0', 53, 0, ''),
(59, 53, 9, 0, '0', '0', 53, 0, ''),
(60, 53, 6, 0, '0', '0', 53, 0, ''),
(61, 53, 8, 0, '0', '0', 53, 0, ''),
(62, 53, 26, 0, '0', '0', 53, 0, ''),
(63, 53, 10, 0, '0', '0', 53, 0, ''),
(64, 53, 76, 0, '0', '0', 53, 0, ''),
(65, 53, 125, 0, '0', '0', 53, 0, ''),
(66, 53, 131, 0, '0', '0', 53, 0, ''),
(67, 53, 12, 0, '0', '0', 53, 0, ''),
(68, 53, 143, 0, '0', '0', 53, 0, ''),
(69, 53, 139, 0, '0', '0', 53, 0, ''),
(70, 53, 13, 0, '0', '0', 53, 0, ''),
(71, 53, 2, 0, '0', '0', 53, 0, ''),
(72, 53, 14, 0, '0', '0', 53, 0, ''),
(73, 53, 15, 0, '0', '0', 53, 0, ''),
(74, 53, 36, 0, '0', '0', 53, 0, ''),
(75, 53, 193, 0, '0', '0', 53, 0, ''),
(76, 53, 37, 0, '0', '0', 53, 0, ''),
(77, 53, 7, 0, '0', '0', 53, 0, ''),
(78, 53, 18, 0, '0', '0', 53, 0, ''),
(79, 54, 3, 0, '0', '0', 54, 0, ''),
(80, 54, 236, 0, '0', '0', 54, 0, ''),
(81, 54, 16, 0, '0', '0', 54, 0, ''),
(82, 54, 20, 0, '0', '0', 54, 0, ''),
(83, 54, 1, 0, '0', '0', 54, 0, ''),
(84, 54, 86, 0, '0', '0', 54, 0, ''),
(85, 54, 9, 0, '0', '0', 54, 0, ''),
(86, 54, 6, 0, '0', '0', 54, 0, ''),
(87, 54, 8, 0, '0', '0', 54, 0, ''),
(88, 54, 26, 0, '0', '0', 54, 0, ''),
(89, 54, 10, 0, '0', '0', 54, 0, ''),
(90, 54, 76, 0, '0', '0', 54, 0, ''),
(91, 54, 125, 0, '0', '0', 54, 0, ''),
(92, 54, 131, 0, '0', '0', 54, 0, ''),
(93, 54, 12, 0, '0', '0', 54, 0, ''),
(94, 54, 143, 0, '0', '0', 54, 0, ''),
(95, 54, 139, 0, '0', '0', 54, 0, ''),
(96, 54, 13, 0, '0', '0', 54, 0, ''),
(97, 54, 2, 0, '0', '0', 54, 0, ''),
(98, 54, 14, 0, '0', '0', 54, 0, ''),
(99, 54, 15, 0, '0', '0', 54, 0, ''),
(100, 54, 36, 0, '0', '0', 54, 0, ''),
(101, 54, 193, 0, '0', '0', 54, 0, ''),
(102, 54, 37, 0, '0', '0', 54, 0, ''),
(103, 54, 7, 0, '0', '0', 54, 0, ''),
(104, 54, 18, 0, '0', '0', 54, 0, ''),
(105, 55, 3, 0, '0', '0', 55, 0, ''),
(106, 55, 236, 0, '0', '0', 55, 0, ''),
(107, 55, 16, 0, '0', '0', 55, 0, ''),
(108, 55, 20, 0, '0', '0', 55, 0, ''),
(109, 55, 1, 0, '0', '0', 55, 0, ''),
(110, 55, 86, 0, '0', '0', 55, 0, ''),
(111, 55, 9, 0, '0', '0', 55, 0, ''),
(112, 55, 6, 0, '0', '0', 55, 0, ''),
(113, 55, 8, 0, '0', '0', 55, 0, ''),
(114, 55, 10, 0, '0', '0', 55, 0, ''),
(115, 55, 76, 0, '0', '0', 55, 0, ''),
(116, 55, 125, 0, '0', '0', 55, 0, ''),
(117, 55, 131, 0, '0', '0', 55, 0, ''),
(118, 55, 12, 0, '0', '0', 55, 0, ''),
(119, 55, 143, 0, '0', '0', 55, 0, ''),
(120, 55, 139, 0, '0', '0', 55, 0, ''),
(121, 55, 13, 0, '0', '0', 55, 0, ''),
(122, 55, 2, 0, '0', '0', 55, 0, ''),
(123, 55, 14, 0, '0', '0', 55, 0, ''),
(124, 55, 15, 0, '0', '0', 55, 0, ''),
(125, 55, 36, 0, '0', '0', 55, 0, ''),
(126, 55, 193, 0, '0', '0', 55, 0, ''),
(127, 55, 37, 0, '0', '0', 55, 0, ''),
(128, 55, 7, 0, '0', '0', 55, 0, ''),
(129, 55, 18, 0, '0', '0', 55, 0, ''),
(130, 56, 3, 0, '0', '0', 56, 0, ''),
(131, 56, 236, 0, '0', '0', 56, 0, ''),
(132, 56, 16, 0, '0', '0', 56, 0, ''),
(133, 56, 20, 0, '0', '0', 56, 0, ''),
(134, 56, 1, 0, '0', '0', 56, 0, ''),
(135, 56, 86, 0, '0', '0', 56, 0, ''),
(136, 56, 9, 0, '0', '0', 56, 0, ''),
(137, 56, 6, 0, '0', '0', 56, 0, ''),
(138, 56, 8, 0, '0', '0', 56, 0, ''),
(139, 56, 10, 0, '0', '0', 56, 0, ''),
(140, 56, 76, 0, '0', '0', 56, 0, ''),
(141, 56, 125, 0, '0', '0', 56, 0, ''),
(142, 56, 131, 0, '0', '0', 56, 0, ''),
(143, 56, 12, 0, '0', '0', 56, 0, ''),
(144, 56, 143, 0, '0', '0', 56, 0, ''),
(145, 56, 139, 0, '0', '0', 56, 0, ''),
(146, 56, 13, 0, '0', '0', 56, 0, ''),
(147, 56, 2, 0, '0', '0', 56, 0, ''),
(148, 56, 14, 0, '0', '0', 56, 0, ''),
(149, 56, 15, 0, '0', '0', 56, 0, ''),
(150, 56, 36, 0, '0', '0', 56, 0, ''),
(151, 56, 193, 0, '0', '0', 56, 0, ''),
(152, 56, 37, 0, '0', '0', 56, 0, ''),
(153, 56, 7, 0, '0', '0', 56, 0, ''),
(154, 56, 18, 0, '0', '0', 56, 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tax_rules_group`
--

CREATE TABLE IF NOT EXISTS `prstshp_tax_rules_group` (
`id_tax_rules_group` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Zrzut danych tabeli `prstshp_tax_rules_group`
--

INSERT INTO `prstshp_tax_rules_group` (`id_tax_rules_group`, `name`, `active`) VALUES
(1, 'US-AL Rate (4%)', 1),
(2, 'US-AK Rate (0%)', 1),
(3, 'US-AZ Rate (6.6%)', 1),
(4, 'US-AR Rate (6%)', 1),
(5, 'US-CA Rate (8.25%)', 1),
(6, 'US-CO Rate (2.9%)', 1),
(7, 'US-CT Rate (0%)', 1),
(8, 'US-DE Rate (0%)', 1),
(9, 'US-FL Rate (6%)', 1),
(10, 'US-GA Rate (4%)', 1),
(11, 'US-HI Rate (4%)', 1),
(12, 'US-ID Rate (6%)', 1),
(13, 'US-IL Rate (6.25%)', 1),
(14, 'US-IN Rate (7%)', 1),
(15, 'US-IA Rate (6%)', 1),
(16, 'US-KS Rate (5.3%)', 1),
(17, 'US-KY Rate (6%)', 1),
(18, 'US-LA Rate (4%)', 1),
(19, 'US-ME Rate (5%)', 1),
(20, 'US-MD Rate (6%)', 1),
(21, 'US-MA Rate (6.25%)', 1),
(22, 'US-MI Rate (6%)', 1),
(23, 'US-MN Rate (6.875%)', 1),
(24, 'US-MS Rate (7%)', 1),
(25, 'US-MO Rate (4.225%)', 1),
(26, 'US-MT Rate (0%)', 1),
(27, 'US-NE Rate (5.5%)', 1),
(28, 'US-NV Rate (6.85%)', 1),
(29, 'US-NH Rate (0%)', 1),
(30, 'US-NJ Rate (7%)', 1),
(31, 'US-NM Rate (5.125%)', 1),
(32, 'US-NY Rate (4%)', 1),
(33, 'US-NC Rate (5.5%)', 1),
(34, 'US-ND Rate (5%)', 1),
(35, 'US-OH Rate (5.5%)', 1),
(36, 'US-OK Rate (4.5%)', 1),
(37, 'US-OR Rate (0%)', 1),
(38, 'US-PA Rate (6%)', 1),
(39, 'US-RI Rate (7%)', 1),
(40, 'US-SC Rate (6%)', 1),
(41, 'US-SD Rate (4%)', 1),
(42, 'US-TN Rate (7%)', 1),
(43, 'US-TX Rate (6.25%)', 1),
(44, 'US-UT Rate (4.75%)', 1),
(45, 'US-VT Rate (6%)', 1),
(46, 'US-VA Rate (4%)', 1),
(47, 'US-WA Rate (6.5%)', 1),
(48, 'US-WV Rate (6%)', 1),
(49, 'US-WI Rate (5%)', 1),
(50, 'US-WY Rate (4%)', 1),
(51, 'US-PR Rate (5.5%)', 1),
(52, 'US-DC Rate (6%)', 1),
(53, 'PL Standard Rate (23%)', 1),
(54, 'PL Reduced Rate (8%)', 1),
(55, 'PL Reduced Rate (5%)', 1),
(56, 'PL Exempted Rate (0%)', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_tax_rules_group_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_tax_rules_group_shop` (
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_tax_rules_group_shop`
--

INSERT INTO `prstshp_tax_rules_group_shop` (`id_tax_rules_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_theme`
--

CREATE TABLE IF NOT EXISTS `prstshp_theme` (
`id_theme` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `directory` varchar(64) NOT NULL,
  `responsive` tinyint(1) NOT NULL DEFAULT '0',
  `default_left_column` tinyint(1) NOT NULL DEFAULT '0',
  `default_right_column` tinyint(1) NOT NULL DEFAULT '0',
  `product_per_page` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_theme`
--

INSERT INTO `prstshp_theme` (`id_theme`, `name`, `directory`, `responsive`, `default_left_column`, `default_right_column`, `product_per_page`) VALUES
(1, 'default-bootstrap', 'default-bootstrap', 1, 1, 0, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_themeconfigurator`
--

CREATE TABLE IF NOT EXISTS `prstshp_themeconfigurator` (
`id_item` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `item_order` int(10) unsigned NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title_use` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hook` varchar(100) DEFAULT NULL,
  `url` text,
  `target` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  `image_w` varchar(10) DEFAULT NULL,
  `image_h` varchar(10) DEFAULT NULL,
  `html` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Zrzut danych tabeli `prstshp_themeconfigurator`
--

INSERT INTO `prstshp_themeconfigurator` (`id_item`, `id_shop`, `id_lang`, `item_order`, `title`, `title_use`, `hook`, `url`, `target`, `image`, `image_w`, `image_h`, `html`, `active`) VALUES
(1, 1, 1, 1, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img1.jpg', '383', '267', '', 1),
(2, 1, 1, 2, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img2.jpg', '383', '267', '', 1),
(3, 1, 1, 3, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img3.jpg', '383', '267', '', 1),
(4, 1, 1, 4, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img4.jpg', '383', '142', '', 1),
(5, 1, 1, 5, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img5.jpg', '777', '142', '', 1),
(6, 1, 1, 6, '', 0, 'top', 'http://www.prestashop.com/', 0, 'banner-img6.jpg', '381', '219', '', 1),
(7, 1, 1, 7, '', 0, 'top', 'http://www.prestashop.com/', 0, 'banner-img7.jpg', '381', '219', '', 1),
(8, 1, 2, 1, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img1.jpg', '383', '267', '', 1),
(9, 1, 2, 2, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img2.jpg', '383', '267', '', 1),
(10, 1, 2, 3, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img3.jpg', '383', '267', '', 1),
(11, 1, 2, 4, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img4.jpg', '383', '142', '', 1),
(12, 1, 2, 5, '', 0, 'home', 'http://www.prestashop.com/', 0, 'banner-img5.jpg', '777', '142', '', 1),
(13, 1, 2, 6, '', 0, 'top', 'http://www.prestashop.com/', 0, 'banner-img6.jpg', '381', '219', '', 1),
(14, 1, 2, 7, '', 0, 'top', 'http://www.prestashop.com/', 0, 'banner-img7.jpg', '381', '219', '', 1),
(24, 1, 3, 1, '', 0, 'top', '', 0, 'ba437cbaad4696d68f6a8224e643082e17f5ab36_modgora.jpg', '280', '132', '', 1),
(25, 1, 3, 2, '', 0, 'top', '', 0, '2274d0450a6d7caf8e0c45493205ac3cf7e4bd9f_modsrodek.jpg', '280', '132', '', 1),
(26, 1, 3, 3, '', 0, 'top', '', 0, '609701aa9d47c5321cbe7e1e9b72095e74cfa424_moddol.jpg', '280', '132', '', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_theme_meta`
--

CREATE TABLE IF NOT EXISTS `prstshp_theme_meta` (
`id_theme_meta` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  `id_meta` int(10) unsigned NOT NULL,
  `left_column` tinyint(1) NOT NULL DEFAULT '1',
  `right_column` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Zrzut danych tabeli `prstshp_theme_meta`
--

INSERT INTO `prstshp_theme_meta` (`id_theme_meta`, `id_theme`, `id_meta`, `left_column`, `right_column`) VALUES
(1, 1, 1, 0, 0),
(2, 1, 2, 1, 0),
(3, 1, 3, 0, 0),
(4, 1, 4, 0, 0),
(5, 1, 5, 1, 0),
(6, 1, 6, 1, 0),
(7, 1, 7, 0, 0),
(8, 1, 8, 1, 0),
(9, 1, 9, 1, 0),
(10, 1, 10, 0, 0),
(11, 1, 11, 0, 0),
(12, 1, 12, 0, 0),
(13, 1, 13, 0, 0),
(14, 1, 14, 0, 0),
(15, 1, 15, 0, 0),
(16, 1, 16, 0, 0),
(17, 1, 17, 0, 0),
(18, 1, 18, 0, 0),
(19, 1, 19, 0, 0),
(20, 1, 20, 0, 0),
(21, 1, 21, 0, 0),
(22, 1, 22, 1, 0),
(23, 1, 23, 0, 0),
(24, 1, 24, 0, 0),
(25, 1, 25, 0, 0),
(26, 1, 26, 0, 0),
(27, 1, 28, 1, 0),
(28, 1, 29, 0, 0),
(29, 1, 27, 0, 0),
(30, 1, 30, 0, 0),
(31, 1, 31, 0, 0),
(32, 1, 32, 0, 0),
(33, 1, 33, 0, 0),
(34, 1, 34, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_theme_specific`
--

CREATE TABLE IF NOT EXISTS `prstshp_theme_specific` (
  `id_theme` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `entity` int(11) unsigned NOT NULL,
  `id_object` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_timezone`
--

CREATE TABLE IF NOT EXISTS `prstshp_timezone` (
`id_timezone` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=561 ;

--
-- Zrzut danych tabeli `prstshp_timezone`
--

INSERT INTO `prstshp_timezone` (`id_timezone`, `name`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Asmera'),
(7, 'Africa/Bamako'),
(8, 'Africa/Bangui'),
(9, 'Africa/Banjul'),
(10, 'Africa/Bissau'),
(11, 'Africa/Blantyre'),
(12, 'Africa/Brazzaville'),
(13, 'Africa/Bujumbura'),
(14, 'Africa/Cairo'),
(15, 'Africa/Casablanca'),
(16, 'Africa/Ceuta'),
(17, 'Africa/Conakry'),
(18, 'Africa/Dakar'),
(19, 'Africa/Dar_es_Salaam'),
(20, 'Africa/Djibouti'),
(21, 'Africa/Douala'),
(22, 'Africa/El_Aaiun'),
(23, 'Africa/Freetown'),
(24, 'Africa/Gaborone'),
(25, 'Africa/Harare'),
(26, 'Africa/Johannesburg'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Timbuktu'),
(51, 'Africa/Tripoli'),
(52, 'Africa/Tunis'),
(53, 'Africa/Windhoek'),
(54, 'America/Adak'),
(55, 'America/Anchorage '),
(56, 'America/Anguilla'),
(57, 'America/Antigua'),
(58, 'America/Araguaina'),
(59, 'America/Argentina/Buenos_Aires'),
(60, 'America/Argentina/Catamarca'),
(61, 'America/Argentina/ComodRivadavia'),
(62, 'America/Argentina/Cordoba'),
(63, 'America/Argentina/Jujuy'),
(64, 'America/Argentina/La_Rioja'),
(65, 'America/Argentina/Mendoza'),
(66, 'America/Argentina/Rio_Gallegos'),
(67, 'America/Argentina/Salta'),
(68, 'America/Argentina/San_Juan'),
(69, 'America/Argentina/San_Luis'),
(70, 'America/Argentina/Tucuman'),
(71, 'America/Argentina/Ushuaia'),
(72, 'America/Aruba'),
(73, 'America/Asuncion'),
(74, 'America/Atikokan'),
(75, 'America/Atka'),
(76, 'America/Bahia'),
(77, 'America/Barbados'),
(78, 'America/Belem'),
(79, 'America/Belize'),
(80, 'America/Blanc-Sablon'),
(81, 'America/Boa_Vista'),
(82, 'America/Bogota'),
(83, 'America/Boise'),
(84, 'America/Buenos_Aires'),
(85, 'America/Cambridge_Bay'),
(86, 'America/Campo_Grande'),
(87, 'America/Cancun'),
(88, 'America/Caracas'),
(89, 'America/Catamarca'),
(90, 'America/Cayenne'),
(91, 'America/Cayman'),
(92, 'America/Chicago'),
(93, 'America/Chihuahua'),
(94, 'America/Coral_Harbour'),
(95, 'America/Cordoba'),
(96, 'America/Costa_Rica'),
(97, 'America/Cuiaba'),
(98, 'America/Curacao'),
(99, 'America/Danmarkshavn'),
(100, 'America/Dawson'),
(101, 'America/Dawson_Creek'),
(102, 'America/Denver'),
(103, 'America/Detroit'),
(104, 'America/Dominica'),
(105, 'America/Edmonton'),
(106, 'America/Eirunepe'),
(107, 'America/El_Salvador'),
(108, 'America/Ensenada'),
(109, 'America/Fort_Wayne'),
(110, 'America/Fortaleza'),
(111, 'America/Glace_Bay'),
(112, 'America/Godthab'),
(113, 'America/Goose_Bay'),
(114, 'America/Grand_Turk'),
(115, 'America/Grenada'),
(116, 'America/Guadeloupe'),
(117, 'America/Guatemala'),
(118, 'America/Guayaquil'),
(119, 'America/Guyana'),
(120, 'America/Halifax'),
(121, 'America/Havana'),
(122, 'America/Hermosillo'),
(123, 'America/Indiana/Indianapolis'),
(124, 'America/Indiana/Knox'),
(125, 'America/Indiana/Marengo'),
(126, 'America/Indiana/Petersburg'),
(127, 'America/Indiana/Tell_City'),
(128, 'America/Indiana/Vevay'),
(129, 'America/Indiana/Vincennes'),
(130, 'America/Indiana/Winamac'),
(131, 'America/Indianapolis'),
(132, 'America/Inuvik'),
(133, 'America/Iqaluit'),
(134, 'America/Jamaica'),
(135, 'America/Jujuy'),
(136, 'America/Juneau'),
(137, 'America/Kentucky/Louisville'),
(138, 'America/Kentucky/Monticello'),
(139, 'America/Knox_IN'),
(140, 'America/La_Paz'),
(141, 'America/Lima'),
(142, 'America/Los_Angeles'),
(143, 'America/Louisville'),
(144, 'America/Maceio'),
(145, 'America/Managua'),
(146, 'America/Manaus'),
(147, 'America/Marigot'),
(148, 'America/Martinique'),
(149, 'America/Mazatlan'),
(150, 'America/Mendoza'),
(151, 'America/Menominee'),
(152, 'America/Merida'),
(153, 'America/Mexico_City'),
(154, 'America/Miquelon'),
(155, 'America/Moncton'),
(156, 'America/Monterrey'),
(157, 'America/Montevideo'),
(158, 'America/Montreal'),
(159, 'America/Montserrat'),
(160, 'America/Nassau'),
(161, 'America/New_York'),
(162, 'America/Nipigon'),
(163, 'America/Nome'),
(164, 'America/Noronha'),
(165, 'America/North_Dakota/Center'),
(166, 'America/North_Dakota/New_Salem'),
(167, 'America/Panama'),
(168, 'America/Pangnirtung'),
(169, 'America/Paramaribo'),
(170, 'America/Phoenix'),
(171, 'America/Port-au-Prince'),
(172, 'America/Port_of_Spain'),
(173, 'America/Porto_Acre'),
(174, 'America/Porto_Velho'),
(175, 'America/Puerto_Rico'),
(176, 'America/Rainy_River'),
(177, 'America/Rankin_Inlet'),
(178, 'America/Recife'),
(179, 'America/Regina'),
(180, 'America/Resolute'),
(181, 'America/Rio_Branco'),
(182, 'America/Rosario'),
(183, 'America/Santarem'),
(184, 'America/Santiago'),
(185, 'America/Santo_Domingo'),
(186, 'America/Sao_Paulo'),
(187, 'America/Scoresbysund'),
(188, 'America/Shiprock'),
(189, 'America/St_Barthelemy'),
(190, 'America/St_Johns'),
(191, 'America/St_Kitts'),
(192, 'America/St_Lucia'),
(193, 'America/St_Thomas'),
(194, 'America/St_Vincent'),
(195, 'America/Swift_Current'),
(196, 'America/Tegucigalpa'),
(197, 'America/Thule'),
(198, 'America/Thunder_Bay'),
(199, 'America/Tijuana'),
(200, 'America/Toronto'),
(201, 'America/Tortola'),
(202, 'America/Vancouver'),
(203, 'America/Virgin'),
(204, 'America/Whitehorse'),
(205, 'America/Winnipeg'),
(206, 'America/Yakutat'),
(207, 'America/Yellowknife'),
(208, 'Antarctica/Casey'),
(209, 'Antarctica/Davis'),
(210, 'Antarctica/DumontDUrville'),
(211, 'Antarctica/Mawson'),
(212, 'Antarctica/McMurdo'),
(213, 'Antarctica/Palmer'),
(214, 'Antarctica/Rothera'),
(215, 'Antarctica/South_Pole'),
(216, 'Antarctica/Syowa'),
(217, 'Antarctica/Vostok'),
(218, 'Arctic/Longyearbyen'),
(219, 'Asia/Aden'),
(220, 'Asia/Almaty'),
(221, 'Asia/Amman'),
(222, 'Asia/Anadyr'),
(223, 'Asia/Aqtau'),
(224, 'Asia/Aqtobe'),
(225, 'Asia/Ashgabat'),
(226, 'Asia/Ashkhabad'),
(227, 'Asia/Baghdad'),
(228, 'Asia/Bahrain'),
(229, 'Asia/Baku'),
(230, 'Asia/Bangkok'),
(231, 'Asia/Beirut'),
(232, 'Asia/Bishkek'),
(233, 'Asia/Brunei'),
(234, 'Asia/Calcutta'),
(235, 'Asia/Choibalsan'),
(236, 'Asia/Chongqing'),
(237, 'Asia/Chungking'),
(238, 'Asia/Colombo'),
(239, 'Asia/Dacca'),
(240, 'Asia/Damascus'),
(241, 'Asia/Dhaka'),
(242, 'Asia/Dili'),
(243, 'Asia/Dubai'),
(244, 'Asia/Dushanbe'),
(245, 'Asia/Gaza'),
(246, 'Asia/Harbin'),
(247, 'Asia/Ho_Chi_Minh'),
(248, 'Asia/Hong_Kong'),
(249, 'Asia/Hovd'),
(250, 'Asia/Irkutsk'),
(251, 'Asia/Istanbul'),
(252, 'Asia/Jakarta'),
(253, 'Asia/Jayapura'),
(254, 'Asia/Jerusalem'),
(255, 'Asia/Kabul'),
(256, 'Asia/Kamchatka'),
(257, 'Asia/Karachi'),
(258, 'Asia/Kashgar'),
(259, 'Asia/Kathmandu'),
(260, 'Asia/Katmandu'),
(261, 'Asia/Kolkata'),
(262, 'Asia/Krasnoyarsk'),
(263, 'Asia/Kuala_Lumpur'),
(264, 'Asia/Kuching'),
(265, 'Asia/Kuwait'),
(266, 'Asia/Macao'),
(267, 'Asia/Macau'),
(268, 'Asia/Magadan'),
(269, 'Asia/Makassar'),
(270, 'Asia/Manila'),
(271, 'Asia/Muscat'),
(272, 'Asia/Nicosia'),
(273, 'Asia/Novosibirsk'),
(274, 'Asia/Omsk'),
(275, 'Asia/Oral'),
(276, 'Asia/Phnom_Penh'),
(277, 'Asia/Pontianak'),
(278, 'Asia/Pyongyang'),
(279, 'Asia/Qatar'),
(280, 'Asia/Qyzylorda'),
(281, 'Asia/Rangoon'),
(282, 'Asia/Riyadh'),
(283, 'Asia/Saigon'),
(284, 'Asia/Sakhalin'),
(285, 'Asia/Samarkand'),
(286, 'Asia/Seoul'),
(287, 'Asia/Shanghai'),
(288, 'Asia/Singapore'),
(289, 'Asia/Taipei'),
(290, 'Asia/Tashkent'),
(291, 'Asia/Tbilisi'),
(292, 'Asia/Tehran'),
(293, 'Asia/Tel_Aviv'),
(294, 'Asia/Thimbu'),
(295, 'Asia/Thimphu'),
(296, 'Asia/Tokyo'),
(297, 'Asia/Ujung_Pandang'),
(298, 'Asia/Ulaanbaatar'),
(299, 'Asia/Ulan_Bator'),
(300, 'Asia/Urumqi'),
(301, 'Asia/Vientiane'),
(302, 'Asia/Vladivostok'),
(303, 'Asia/Yakutsk'),
(304, 'Asia/Yekaterinburg'),
(305, 'Asia/Yerevan'),
(306, 'Atlantic/Azores'),
(307, 'Atlantic/Bermuda'),
(308, 'Atlantic/Canary'),
(309, 'Atlantic/Cape_Verde'),
(310, 'Atlantic/Faeroe'),
(311, 'Atlantic/Faroe'),
(312, 'Atlantic/Jan_Mayen'),
(313, 'Atlantic/Madeira'),
(314, 'Atlantic/Reykjavik'),
(315, 'Atlantic/South_Georgia'),
(316, 'Atlantic/St_Helena'),
(317, 'Atlantic/Stanley'),
(318, 'Australia/ACT'),
(319, 'Australia/Adelaide'),
(320, 'Australia/Brisbane'),
(321, 'Australia/Broken_Hill'),
(322, 'Australia/Canberra'),
(323, 'Australia/Currie'),
(324, 'Australia/Darwin'),
(325, 'Australia/Eucla'),
(326, 'Australia/Hobart'),
(327, 'Australia/LHI'),
(328, 'Australia/Lindeman'),
(329, 'Australia/Lord_Howe'),
(330, 'Australia/Melbourne'),
(331, 'Australia/North'),
(332, 'Australia/NSW'),
(333, 'Australia/Perth'),
(334, 'Australia/Queensland'),
(335, 'Australia/South'),
(336, 'Australia/Sydney'),
(337, 'Australia/Tasmania'),
(338, 'Australia/Victoria'),
(339, 'Australia/West'),
(340, 'Australia/Yancowinna'),
(341, 'Europe/Amsterdam'),
(342, 'Europe/Andorra'),
(343, 'Europe/Athens'),
(344, 'Europe/Belfast'),
(345, 'Europe/Belgrade'),
(346, 'Europe/Berlin'),
(347, 'Europe/Bratislava'),
(348, 'Europe/Brussels'),
(349, 'Europe/Bucharest'),
(350, 'Europe/Budapest'),
(351, 'Europe/Chisinau'),
(352, 'Europe/Copenhagen'),
(353, 'Europe/Dublin'),
(354, 'Europe/Gibraltar'),
(355, 'Europe/Guernsey'),
(356, 'Europe/Helsinki'),
(357, 'Europe/Isle_of_Man'),
(358, 'Europe/Istanbul'),
(359, 'Europe/Jersey'),
(360, 'Europe/Kaliningrad'),
(361, 'Europe/Kiev'),
(362, 'Europe/Lisbon'),
(363, 'Europe/Ljubljana'),
(364, 'Europe/London'),
(365, 'Europe/Luxembourg'),
(366, 'Europe/Madrid'),
(367, 'Europe/Malta'),
(368, 'Europe/Mariehamn'),
(369, 'Europe/Minsk'),
(370, 'Europe/Monaco'),
(371, 'Europe/Moscow'),
(372, 'Europe/Nicosia'),
(373, 'Europe/Oslo'),
(374, 'Europe/Paris'),
(375, 'Europe/Podgorica'),
(376, 'Europe/Prague'),
(377, 'Europe/Riga'),
(378, 'Europe/Rome'),
(379, 'Europe/Samara'),
(380, 'Europe/San_Marino'),
(381, 'Europe/Sarajevo'),
(382, 'Europe/Simferopol'),
(383, 'Europe/Skopje'),
(384, 'Europe/Sofia'),
(385, 'Europe/Stockholm'),
(386, 'Europe/Tallinn'),
(387, 'Europe/Tirane'),
(388, 'Europe/Tiraspol'),
(389, 'Europe/Uzhgorod'),
(390, 'Europe/Vaduz'),
(391, 'Europe/Vatican'),
(392, 'Europe/Vienna'),
(393, 'Europe/Vilnius'),
(394, 'Europe/Volgograd'),
(395, 'Europe/Warsaw'),
(396, 'Europe/Zagreb'),
(397, 'Europe/Zaporozhye'),
(398, 'Europe/Zurich'),
(399, 'Indian/Antananarivo'),
(400, 'Indian/Chagos'),
(401, 'Indian/Christmas'),
(402, 'Indian/Cocos'),
(403, 'Indian/Comoro'),
(404, 'Indian/Kerguelen'),
(405, 'Indian/Mahe'),
(406, 'Indian/Maldives'),
(407, 'Indian/Mauritius'),
(408, 'Indian/Mayotte'),
(409, 'Indian/Reunion'),
(410, 'Pacific/Apia'),
(411, 'Pacific/Auckland'),
(412, 'Pacific/Chatham'),
(413, 'Pacific/Easter'),
(414, 'Pacific/Efate'),
(415, 'Pacific/Enderbury'),
(416, 'Pacific/Fakaofo'),
(417, 'Pacific/Fiji'),
(418, 'Pacific/Funafuti'),
(419, 'Pacific/Galapagos'),
(420, 'Pacific/Gambier'),
(421, 'Pacific/Guadalcanal'),
(422, 'Pacific/Guam'),
(423, 'Pacific/Honolulu'),
(424, 'Pacific/Johnston'),
(425, 'Pacific/Kiritimati'),
(426, 'Pacific/Kosrae'),
(427, 'Pacific/Kwajalein'),
(428, 'Pacific/Majuro'),
(429, 'Pacific/Marquesas'),
(430, 'Pacific/Midway'),
(431, 'Pacific/Nauru'),
(432, 'Pacific/Niue'),
(433, 'Pacific/Norfolk'),
(434, 'Pacific/Noumea'),
(435, 'Pacific/Pago_Pago'),
(436, 'Pacific/Palau'),
(437, 'Pacific/Pitcairn'),
(438, 'Pacific/Ponape'),
(439, 'Pacific/Port_Moresby'),
(440, 'Pacific/Rarotonga'),
(441, 'Pacific/Saipan'),
(442, 'Pacific/Samoa'),
(443, 'Pacific/Tahiti'),
(444, 'Pacific/Tarawa'),
(445, 'Pacific/Tongatapu'),
(446, 'Pacific/Truk'),
(447, 'Pacific/Wake'),
(448, 'Pacific/Wallis'),
(449, 'Pacific/Yap'),
(450, 'Brazil/Acre'),
(451, 'Brazil/DeNoronha'),
(452, 'Brazil/East'),
(453, 'Brazil/West'),
(454, 'Canada/Atlantic'),
(455, 'Canada/Central'),
(456, 'Canada/East-Saskatchewan'),
(457, 'Canada/Eastern'),
(458, 'Canada/Mountain'),
(459, 'Canada/Newfoundland'),
(460, 'Canada/Pacific'),
(461, 'Canada/Saskatchewan'),
(462, 'Canada/Yukon'),
(463, 'CET'),
(464, 'Chile/Continental'),
(465, 'Chile/EasterIsland'),
(466, 'CST6CDT'),
(467, 'Cuba'),
(468, 'EET'),
(469, 'Egypt'),
(470, 'Eire'),
(471, 'EST'),
(472, 'EST5EDT'),
(473, 'Etc/GMT'),
(474, 'Etc/GMT+0'),
(475, 'Etc/GMT+1'),
(476, 'Etc/GMT+10'),
(477, 'Etc/GMT+11'),
(478, 'Etc/GMT+12'),
(479, 'Etc/GMT+2'),
(480, 'Etc/GMT+3'),
(481, 'Etc/GMT+4'),
(482, 'Etc/GMT+5'),
(483, 'Etc/GMT+6'),
(484, 'Etc/GMT+7'),
(485, 'Etc/GMT+8'),
(486, 'Etc/GMT+9'),
(487, 'Etc/GMT-0'),
(488, 'Etc/GMT-1'),
(489, 'Etc/GMT-10'),
(490, 'Etc/GMT-11'),
(491, 'Etc/GMT-12'),
(492, 'Etc/GMT-13'),
(493, 'Etc/GMT-14'),
(494, 'Etc/GMT-2'),
(495, 'Etc/GMT-3'),
(496, 'Etc/GMT-4'),
(497, 'Etc/GMT-5'),
(498, 'Etc/GMT-6'),
(499, 'Etc/GMT-7'),
(500, 'Etc/GMT-8'),
(501, 'Etc/GMT-9'),
(502, 'Etc/GMT0'),
(503, 'Etc/Greenwich'),
(504, 'Etc/UCT'),
(505, 'Etc/Universal'),
(506, 'Etc/UTC'),
(507, 'Etc/Zulu'),
(508, 'Factory'),
(509, 'GB'),
(510, 'GB-Eire'),
(511, 'GMT'),
(512, 'GMT+0'),
(513, 'GMT-0'),
(514, 'GMT0'),
(515, 'Greenwich'),
(516, 'Hongkong'),
(517, 'HST'),
(518, 'Iceland'),
(519, 'Iran'),
(520, 'Israel'),
(521, 'Jamaica'),
(522, 'Japan'),
(523, 'Kwajalein'),
(524, 'Libya'),
(525, 'MET'),
(526, 'Mexico/BajaNorte'),
(527, 'Mexico/BajaSur'),
(528, 'Mexico/General'),
(529, 'MST'),
(530, 'MST7MDT'),
(531, 'Navajo'),
(532, 'NZ'),
(533, 'NZ-CHAT'),
(534, 'Poland'),
(535, 'Portugal'),
(536, 'PRC'),
(537, 'PST8PDT'),
(538, 'ROC'),
(539, 'ROK'),
(540, 'Singapore'),
(541, 'Turkey'),
(542, 'UCT'),
(543, 'Universal'),
(544, 'US/Alaska'),
(545, 'US/Aleutian'),
(546, 'US/Arizona'),
(547, 'US/Central'),
(548, 'US/East-Indiana'),
(549, 'US/Eastern'),
(550, 'US/Hawaii'),
(551, 'US/Indiana-Starke'),
(552, 'US/Michigan'),
(553, 'US/Mountain'),
(554, 'US/Pacific'),
(555, 'US/Pacific-New'),
(556, 'US/Samoa'),
(557, 'UTC'),
(558, 'W-SU'),
(559, 'WET'),
(560, 'Zulu');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_warehouse`
--

CREATE TABLE IF NOT EXISTS `prstshp_warehouse` (
`id_warehouse` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_address` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_warehouse_carrier`
--

CREATE TABLE IF NOT EXISTS `prstshp_warehouse_carrier` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_warehouse_product_location`
--

CREATE TABLE IF NOT EXISTS `prstshp_warehouse_product_location` (
`id_warehouse_product_location` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `location` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_warehouse_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_warehouse_shop` (
  `id_shop` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_webservice_account`
--

CREATE TABLE IF NOT EXISTS `prstshp_webservice_account` (
`id_webservice_account` int(11) NOT NULL,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint(2) NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `prstshp_webservice_account`
--

INSERT INTO `prstshp_webservice_account` (`id_webservice_account`, `key`, `description`, `class_name`, `is_module`, `module_name`, `active`) VALUES
(1, 'Y63N1MB6GUP9WPVC2QV2IX549TGDFZF9', '', 'WebserviceRequest', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_webservice_account_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_webservice_account_shop` (
  `id_webservice_account` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_webservice_account_shop`
--

INSERT INTO `prstshp_webservice_account_shop` (`id_webservice_account`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_webservice_permission`
--

CREATE TABLE IF NOT EXISTS `prstshp_webservice_permission` (
`id_webservice_permission` int(11) NOT NULL,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=293 ;

--
-- Zrzut danych tabeli `prstshp_webservice_permission`
--

INSERT INTO `prstshp_webservice_permission` (`id_webservice_permission`, `resource`, `method`, `id_webservice_account`) VALUES
(1, 'addresses', 'GET', 1),
(3, 'addresses', 'POST', 1),
(2, 'addresses', 'PUT', 1),
(4, 'addresses', 'DELETE', 1),
(5, 'addresses', 'HEAD', 1),
(6, 'carriers', 'GET', 1),
(8, 'carriers', 'POST', 1),
(7, 'carriers', 'PUT', 1),
(9, 'carriers', 'DELETE', 1),
(10, 'carriers', 'HEAD', 1),
(16, 'carts', 'GET', 1),
(18, 'carts', 'POST', 1),
(17, 'carts', 'PUT', 1),
(19, 'carts', 'DELETE', 1),
(20, 'carts', 'HEAD', 1),
(11, 'cart_rules', 'GET', 1),
(13, 'cart_rules', 'POST', 1),
(12, 'cart_rules', 'PUT', 1),
(14, 'cart_rules', 'DELETE', 1),
(15, 'cart_rules', 'HEAD', 1),
(21, 'categories', 'GET', 1),
(23, 'categories', 'POST', 1),
(22, 'categories', 'PUT', 1),
(24, 'categories', 'DELETE', 1),
(25, 'categories', 'HEAD', 1),
(26, 'combinations', 'GET', 1),
(28, 'combinations', 'POST', 1),
(27, 'combinations', 'PUT', 1),
(29, 'combinations', 'DELETE', 1),
(30, 'combinations', 'HEAD', 1),
(31, 'configurations', 'GET', 1),
(33, 'configurations', 'POST', 1),
(32, 'configurations', 'PUT', 1),
(34, 'configurations', 'DELETE', 1),
(35, 'configurations', 'HEAD', 1),
(36, 'contacts', 'GET', 1),
(38, 'contacts', 'POST', 1),
(37, 'contacts', 'PUT', 1),
(39, 'contacts', 'DELETE', 1),
(40, 'contacts', 'HEAD', 1),
(41, 'content_management_system', 'GET', 1),
(43, 'content_management_system', 'POST', 1),
(42, 'content_management_system', 'PUT', 1),
(44, 'content_management_system', 'DELETE', 1),
(45, 'content_management_system', 'HEAD', 1),
(46, 'countries', 'GET', 1),
(48, 'countries', 'POST', 1),
(47, 'countries', 'PUT', 1),
(49, 'countries', 'DELETE', 1),
(50, 'countries', 'HEAD', 1),
(51, 'currencies', 'GET', 1),
(53, 'currencies', 'POST', 1),
(52, 'currencies', 'PUT', 1),
(54, 'currencies', 'DELETE', 1),
(55, 'currencies', 'HEAD', 1),
(66, 'customers', 'GET', 1),
(68, 'customers', 'POST', 1),
(67, 'customers', 'PUT', 1),
(69, 'customers', 'DELETE', 1),
(70, 'customers', 'HEAD', 1),
(56, 'customer_messages', 'GET', 1),
(58, 'customer_messages', 'POST', 1),
(57, 'customer_messages', 'PUT', 1),
(59, 'customer_messages', 'DELETE', 1),
(60, 'customer_messages', 'HEAD', 1),
(61, 'customer_threads', 'GET', 1),
(63, 'customer_threads', 'POST', 1),
(62, 'customer_threads', 'PUT', 1),
(64, 'customer_threads', 'DELETE', 1),
(65, 'customer_threads', 'HEAD', 1),
(71, 'deliveries', 'GET', 1),
(73, 'deliveries', 'POST', 1),
(72, 'deliveries', 'PUT', 1),
(74, 'deliveries', 'DELETE', 1),
(75, 'deliveries', 'HEAD', 1),
(76, 'employees', 'GET', 1),
(78, 'employees', 'POST', 1),
(77, 'employees', 'PUT', 1),
(79, 'employees', 'DELETE', 1),
(80, 'employees', 'HEAD', 1),
(81, 'groups', 'GET', 1),
(83, 'groups', 'POST', 1),
(82, 'groups', 'PUT', 1),
(84, 'groups', 'DELETE', 1),
(85, 'groups', 'HEAD', 1),
(86, 'guests', 'GET', 1),
(88, 'guests', 'POST', 1),
(87, 'guests', 'PUT', 1),
(89, 'guests', 'DELETE', 1),
(90, 'guests', 'HEAD', 1),
(96, 'images', 'GET', 1),
(98, 'images', 'POST', 1),
(97, 'images', 'PUT', 1),
(99, 'images', 'DELETE', 1),
(100, 'images', 'HEAD', 1),
(91, 'image_types', 'GET', 1),
(93, 'image_types', 'POST', 1),
(92, 'image_types', 'PUT', 1),
(94, 'image_types', 'DELETE', 1),
(95, 'image_types', 'HEAD', 1),
(101, 'languages', 'GET', 1),
(103, 'languages', 'POST', 1),
(102, 'languages', 'PUT', 1),
(104, 'languages', 'DELETE', 1),
(105, 'languages', 'HEAD', 1),
(106, 'manufacturers', 'GET', 1),
(108, 'manufacturers', 'POST', 1),
(107, 'manufacturers', 'PUT', 1),
(109, 'manufacturers', 'DELETE', 1),
(110, 'manufacturers', 'HEAD', 1),
(151, 'orders', 'GET', 1),
(153, 'orders', 'POST', 1),
(152, 'orders', 'PUT', 1),
(154, 'orders', 'DELETE', 1),
(155, 'orders', 'HEAD', 1),
(111, 'order_carriers', 'GET', 1),
(113, 'order_carriers', 'POST', 1),
(112, 'order_carriers', 'PUT', 1),
(114, 'order_carriers', 'DELETE', 1),
(115, 'order_carriers', 'HEAD', 1),
(116, 'order_details', 'GET', 1),
(118, 'order_details', 'POST', 1),
(117, 'order_details', 'PUT', 1),
(119, 'order_details', 'DELETE', 1),
(120, 'order_details', 'HEAD', 1),
(121, 'order_discounts', 'GET', 1),
(123, 'order_discounts', 'POST', 1),
(122, 'order_discounts', 'PUT', 1),
(124, 'order_discounts', 'DELETE', 1),
(125, 'order_discounts', 'HEAD', 1),
(126, 'order_histories', 'GET', 1),
(128, 'order_histories', 'POST', 1),
(127, 'order_histories', 'PUT', 1),
(129, 'order_histories', 'DELETE', 1),
(130, 'order_histories', 'HEAD', 1),
(131, 'order_invoices', 'GET', 1),
(133, 'order_invoices', 'POST', 1),
(132, 'order_invoices', 'PUT', 1),
(134, 'order_invoices', 'DELETE', 1),
(135, 'order_invoices', 'HEAD', 1),
(136, 'order_payments', 'GET', 1),
(138, 'order_payments', 'POST', 1),
(137, 'order_payments', 'PUT', 1),
(139, 'order_payments', 'DELETE', 1),
(140, 'order_payments', 'HEAD', 1),
(141, 'order_slip', 'GET', 1),
(143, 'order_slip', 'POST', 1),
(142, 'order_slip', 'PUT', 1),
(144, 'order_slip', 'DELETE', 1),
(145, 'order_slip', 'HEAD', 1),
(146, 'order_states', 'GET', 1),
(148, 'order_states', 'POST', 1),
(147, 'order_states', 'PUT', 1),
(149, 'order_states', 'DELETE', 1),
(150, 'order_states', 'HEAD', 1),
(156, 'price_ranges', 'GET', 1),
(158, 'price_ranges', 'POST', 1),
(157, 'price_ranges', 'PUT', 1),
(159, 'price_ranges', 'DELETE', 1),
(160, 'price_ranges', 'HEAD', 1),
(183, 'products', 'GET', 1),
(185, 'products', 'POST', 1),
(184, 'products', 'PUT', 1),
(186, 'products', 'DELETE', 1),
(187, 'products', 'HEAD', 1),
(166, 'product_features', 'GET', 1),
(168, 'product_features', 'POST', 1),
(167, 'product_features', 'PUT', 1),
(169, 'product_features', 'DELETE', 1),
(170, 'product_features', 'HEAD', 1),
(161, 'product_feature_values', 'GET', 1),
(163, 'product_feature_values', 'POST', 1),
(162, 'product_feature_values', 'PUT', 1),
(164, 'product_feature_values', 'DELETE', 1),
(165, 'product_feature_values', 'HEAD', 1),
(176, 'product_options', 'GET', 1),
(178, 'product_options', 'POST', 1),
(177, 'product_options', 'PUT', 1),
(179, 'product_options', 'DELETE', 1),
(180, 'product_options', 'HEAD', 1),
(171, 'product_option_values', 'GET', 1),
(173, 'product_option_values', 'POST', 1),
(172, 'product_option_values', 'PUT', 1),
(174, 'product_option_values', 'DELETE', 1),
(175, 'product_option_values', 'HEAD', 1),
(181, 'product_suppliers', 'GET', 1),
(182, 'product_suppliers', 'HEAD', 1),
(188, 'search', 'GET', 1),
(189, 'search', 'HEAD', 1),
(200, 'shops', 'GET', 1),
(202, 'shops', 'POST', 1),
(201, 'shops', 'PUT', 1),
(203, 'shops', 'DELETE', 1),
(204, 'shops', 'HEAD', 1),
(190, 'shop_groups', 'GET', 1),
(192, 'shop_groups', 'POST', 1),
(191, 'shop_groups', 'PUT', 1),
(193, 'shop_groups', 'DELETE', 1),
(194, 'shop_groups', 'HEAD', 1),
(195, 'shop_urls', 'GET', 1),
(197, 'shop_urls', 'POST', 1),
(196, 'shop_urls', 'PUT', 1),
(198, 'shop_urls', 'DELETE', 1),
(199, 'shop_urls', 'HEAD', 1),
(210, 'specific_prices', 'GET', 1),
(212, 'specific_prices', 'POST', 1),
(211, 'specific_prices', 'PUT', 1),
(213, 'specific_prices', 'DELETE', 1),
(214, 'specific_prices', 'HEAD', 1),
(205, 'specific_price_rules', 'GET', 1),
(207, 'specific_price_rules', 'POST', 1),
(206, 'specific_price_rules', 'PUT', 1),
(208, 'specific_price_rules', 'DELETE', 1),
(209, 'specific_price_rules', 'HEAD', 1),
(215, 'states', 'GET', 1),
(217, 'states', 'POST', 1),
(216, 'states', 'PUT', 1),
(218, 'states', 'DELETE', 1),
(219, 'states', 'HEAD', 1),
(230, 'stocks', 'GET', 1),
(231, 'stocks', 'HEAD', 1),
(220, 'stock_availables', 'GET', 1),
(221, 'stock_availables', 'PUT', 1),
(222, 'stock_availables', 'HEAD', 1),
(228, 'stock_movements', 'GET', 1),
(229, 'stock_movements', 'HEAD', 1),
(223, 'stock_movement_reasons', 'GET', 1),
(225, 'stock_movement_reasons', 'POST', 1),
(224, 'stock_movement_reasons', 'PUT', 1),
(226, 'stock_movement_reasons', 'DELETE', 1),
(227, 'stock_movement_reasons', 'HEAD', 1),
(232, 'stores', 'GET', 1),
(234, 'stores', 'POST', 1),
(233, 'stores', 'PUT', 1),
(235, 'stores', 'DELETE', 1),
(236, 'stores', 'HEAD', 1),
(237, 'suppliers', 'GET', 1),
(239, 'suppliers', 'POST', 1),
(238, 'suppliers', 'PUT', 1),
(240, 'suppliers', 'DELETE', 1),
(241, 'suppliers', 'HEAD', 1),
(250, 'supply_orders', 'GET', 1),
(251, 'supply_orders', 'HEAD', 1),
(242, 'supply_order_details', 'GET', 1),
(243, 'supply_order_details', 'HEAD', 1),
(244, 'supply_order_histories', 'GET', 1),
(245, 'supply_order_histories', 'HEAD', 1),
(246, 'supply_order_receipt_histories', 'GET', 1),
(247, 'supply_order_receipt_histories', 'HEAD', 1),
(248, 'supply_order_states', 'GET', 1),
(249, 'supply_order_states', 'HEAD', 1),
(252, 'tags', 'GET', 1),
(254, 'tags', 'POST', 1),
(253, 'tags', 'PUT', 1),
(255, 'tags', 'DELETE', 1),
(256, 'tags', 'HEAD', 1),
(267, 'taxes', 'GET', 1),
(269, 'taxes', 'POST', 1),
(268, 'taxes', 'PUT', 1),
(270, 'taxes', 'DELETE', 1),
(271, 'taxes', 'HEAD', 1),
(262, 'tax_rules', 'GET', 1),
(264, 'tax_rules', 'POST', 1),
(263, 'tax_rules', 'PUT', 1),
(265, 'tax_rules', 'DELETE', 1),
(266, 'tax_rules', 'HEAD', 1),
(257, 'tax_rule_groups', 'GET', 1),
(259, 'tax_rule_groups', 'POST', 1),
(258, 'tax_rule_groups', 'PUT', 1),
(260, 'tax_rule_groups', 'DELETE', 1),
(261, 'tax_rule_groups', 'HEAD', 1),
(272, 'translated_configurations', 'GET', 1),
(274, 'translated_configurations', 'POST', 1),
(273, 'translated_configurations', 'PUT', 1),
(275, 'translated_configurations', 'DELETE', 1),
(276, 'translated_configurations', 'HEAD', 1),
(279, 'warehouses', 'GET', 1),
(281, 'warehouses', 'POST', 1),
(280, 'warehouses', 'PUT', 1),
(282, 'warehouses', 'HEAD', 1),
(277, 'warehouse_product_locations', 'GET', 1),
(278, 'warehouse_product_locations', 'HEAD', 1),
(283, 'weight_ranges', 'GET', 1),
(285, 'weight_ranges', 'POST', 1),
(284, 'weight_ranges', 'PUT', 1),
(286, 'weight_ranges', 'DELETE', 1),
(287, 'weight_ranges', 'HEAD', 1),
(288, 'zones', 'GET', 1),
(290, 'zones', 'POST', 1),
(289, 'zones', 'PUT', 1),
(291, 'zones', 'DELETE', 1),
(292, 'zones', 'HEAD', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_web_browser`
--

CREATE TABLE IF NOT EXISTS `prstshp_web_browser` (
`id_web_browser` int(10) unsigned NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Zrzut danych tabeli `prstshp_web_browser`
--

INSERT INTO `prstshp_web_browser` (`id_web_browser`, `name`) VALUES
(1, 'Safari'),
(2, 'Safari iPad'),
(3, 'Firefox'),
(4, 'Opera'),
(5, 'IE 6'),
(6, 'IE 7'),
(7, 'IE 8'),
(8, 'IE 9'),
(9, 'IE 10'),
(10, 'IE 11'),
(11, 'Chrome');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_wishlist`
--

CREATE TABLE IF NOT EXISTS `prstshp_wishlist` (
`id_wishlist` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `token` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `counter` int(10) unsigned DEFAULT NULL,
  `id_shop` int(10) unsigned DEFAULT '1',
  `id_shop_group` int(10) unsigned DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_wishlist_email`
--

CREATE TABLE IF NOT EXISTS `prstshp_wishlist_email` (
  `id_wishlist` int(10) unsigned NOT NULL,
  `email` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_wishlist_product`
--

CREATE TABLE IF NOT EXISTS `prstshp_wishlist_product` (
`id_wishlist_product` int(10) NOT NULL,
  `id_wishlist` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_wishlist_product_cart`
--

CREATE TABLE IF NOT EXISTS `prstshp_wishlist_product_cart` (
  `id_wishlist_product` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_zone`
--

CREATE TABLE IF NOT EXISTS `prstshp_zone` (
`id_zone` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Zrzut danych tabeli `prstshp_zone`
--

INSERT INTO `prstshp_zone` (`id_zone`, `name`, `active`) VALUES
(1, 'Europe', 1),
(2, 'North America', 1),
(3, 'Asia', 1),
(4, 'Africa', 1),
(5, 'Oceania', 1),
(6, 'South America', 1),
(7, 'Europe (non-EU)', 1),
(8, 'Central America/Antilla', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prstshp_zone_shop`
--

CREATE TABLE IF NOT EXISTS `prstshp_zone_shop` (
  `id_zone` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `prstshp_zone_shop`
--

INSERT INTO `prstshp_zone_shop` (`id_zone`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_customerinfo`
--

CREATE TABLE IF NOT EXISTS `yfi_customerinfo` (
  `ci_sourceId` int(11) NOT NULL,
  `ci_customerId` int(11) NOT NULL,
  `ci_shopCustomerId` int(11) NOT NULL,
  `ci_tradeCredit` tinyint(4) NOT NULL,
  `ci_creditLimit` decimal(16,4) NOT NULL,
  `ci_creditUsed` decimal(16,4) NOT NULL,
  `ci_creditOverdue` decimal(16,4) NOT NULL,
  `ci_creditPeriod` int(11) NOT NULL,
  `ci_discount` decimal(16,4) NOT NULL,
  `ci_documentCreditLimit` decimal(16,4) NOT NULL,
  `ci_consultantId` int(11) NOT NULL,
  `ci_consultant` varchar(255) NOT NULL,
  `ci_consultantEmail` varchar(255) NOT NULL,
  `ci_consultantPhone` varchar(255) NOT NULL,
  `ci_timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_documentbinaries`
--

CREATE TABLE IF NOT EXISTS `yfi_documentbinaries` (
  `db_sourceId` int(11) NOT NULL,
  `db_binaryId` int(11) NOT NULL,
  `db_documentId` int(11) NOT NULL,
  `db_type` tinyint(4) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `db_description` varchar(255) NOT NULL,
  `db_binary` longblob NOT NULL,
  `db_timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_documentitems`
--

CREATE TABLE IF NOT EXISTS `yfi_documentitems` (
  `di_sourceId` int(11) NOT NULL,
  `di_documentItemId` int(11) NOT NULL,
  `di_documentId` int(11) NOT NULL,
  `di_type` tinyint(4) NOT NULL,
  `di_sortOrder` int(11) NOT NULL,
  `di_productId` int(11) NOT NULL,
  `di_productCode` varchar(32) NOT NULL,
  `di_productName` varchar(255) NOT NULL,
  `di_description` varchar(1024) NOT NULL,
  `di_unitOfMeasure` varchar(16) NOT NULL,
  `di_quantity` decimal(16,4) NOT NULL,
  `di_taxRate` decimal(5,2) NOT NULL,
  `di_priceNet` decimal(16,4) NOT NULL,
  `di_priceGros` decimal(16,4) NOT NULL,
  `di_discountType` tinyint(4) NOT NULL,
  `di_discount` decimal(16,4) NOT NULL,
  `di_totalNet` decimal(16,4) NOT NULL,
  `di_totalGros` decimal(16,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_documents`
--

CREATE TABLE IF NOT EXISTS `yfi_documents` (
  `do_sourceId` int(11) NOT NULL,
  `do_documentId` int(11) NOT NULL,
  `do_type` tinyint(4) DEFAULT NULL,
  `do_status` tinyint(4) NOT NULL,
  `do_number` int(11) NOT NULL,
  `do_fullNumber` varchar(32) NOT NULL,
  `do_foreignNumber` varchar(64) NOT NULL,
  `do_title` varchar(255) NOT NULL,
  `do_date` date NOT NULL,
  `do_executionDate` date NOT NULL,
  `do_payerCustomerId` int(11) NOT NULL,
  `do_recipientCustomerId` int(11) NOT NULL,
  `do_priceCalculationMethod` tinyint(4) NOT NULL,
  `do_currency` varchar(3) NOT NULL,
  `do_totalNet` decimal(16,4) NOT NULL,
  `do_totalGros` decimal(16,4) NOT NULL,
  `do_totalTax` decimal(16,4) NOT NULL,
  `do_totalPayment` decimal(16,4) NOT NULL,
  `do_paymentStatus` tinyint(4) NOT NULL,
  `do_paymentDate` date NOT NULL,
  `do_paymentAmount` decimal(16,4) NOT NULL,
  `do_description` varchar(255) NOT NULL,
  `do_notes` varchar(1024) NOT NULL,
  `do_timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_orderitemdispositions`
--

CREATE TABLE IF NOT EXISTS `yfi_orderitemdispositions` (
  `oid_orderItemId` int(11) NOT NULL,
  `oid_orderId` int(11) NOT NULL,
  `oid_sourceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_orderstockreservations`
--

CREATE TABLE IF NOT EXISTS `yfi_orderstockreservations` (
  `osr_orderItemId` int(11) NOT NULL,
  `osr_sourceId` int(11) NOT NULL,
  `osr_productId` int(11) NOT NULL,
  `osr_productVariationId` int(11) NOT NULL,
  `osr_orderId` int(11) NOT NULL,
  `osr_quantity` decimal(16,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_productcustomdata`
--

CREATE TABLE IF NOT EXISTS `yfi_productcustomdata` (
  `pcd_productId` int(11) NOT NULL,
  `pcd_productVariationId` int(11) NOT NULL,
  `pcd_type` tinyint(4) NOT NULL,
  `pcd_itemId` int(11) NOT NULL,
  `pcd_name` varchar(64) NOT NULL,
  `pcd_value` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_productimagelinks`
--

CREATE TABLE IF NOT EXISTS `yfi_productimagelinks` (
  `pil_sourceId` int(11) NOT NULL,
  `pil_productId` int(11) NOT NULL,
  `pil_systemImageId` int(11) NOT NULL,
  `pil_imageId` int(11) NOT NULL,
  `pil_md5` varchar(32) DEFAULT NULL,
  `pil_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_productlinks`
--

CREATE TABLE IF NOT EXISTS `yfi_productlinks` (
  `pl_sourceId` int(11) NOT NULL,
  `pl_productId` int(11) NOT NULL,
  `pl_productVariationId` int(11) NOT NULL,
  `pl_mainSourceId` int(11) NOT NULL,
  `pl_systemProductId` int(11) NOT NULL,
  `pl_variationCode` varchar(64) NOT NULL,
  `pl_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `yfi_productlinks`
--

INSERT INTO `yfi_productlinks` (`pl_sourceId`, `pl_productId`, `pl_productVariationId`, `pl_mainSourceId`, `pl_systemProductId`, `pl_variationCode`, `pl_timestamp`) VALUES
(1, 1, 1, 1, 71, 'B2272 CZEWRWONY', '2014-08-28 07:37:47'),
(1, 2, 2, 1, 72, 'B2272 CZERWONY', '2014-08-28 07:37:49'),
(1, 2, 150, 1, 73, 'B2272 CZERWONY', '2014-08-28 07:42:01'),
(1, 2, 151, 1, 75, 'B2272 CZERWONY', '2014-08-28 07:42:02'),
(1, 3, 3, 1, 80, 'B2272 ŻÓŁTY', '2014-08-28 07:37:50'),
(1, 4, 4, 1, 185, 'B2272 PERŁOWY', '2014-08-28 07:37:52'),
(1, 4, 5, 1, 187, 'B2272 PERŁOWY', '2014-08-28 07:37:54'),
(1, 4, 168, 1, 186, 'B2272 PERŁOWY', '2014-08-28 07:42:25'),
(1, 4, 184, 1, 184, 'B2272 PERŁOWY', '2014-08-28 07:42:51'),
(1, 4, 185, 1, 188, 'B2272 PERŁOWY', '2014-08-28 07:42:52'),
(1, 5, 6, 1, 395, 'B2426 RÓŻOWY', '2014-08-28 07:37:55'),
(1, 5, 7, 1, 396, 'B2426 RÓŻOWY', '2014-08-28 07:37:56'),
(1, 5, 188, 1, 397, 'B2426 RÓŻOWY', '2014-08-28 07:42:57'),
(1, 6, 8, 1, 398, 'B2426 BIAŁE', '2014-08-28 07:37:58'),
(1, 6, 189, 1, 401, 'B2426 BIAŁE', '2014-08-28 07:42:58'),
(1, 7, 9, 1, 404, 'B2426 CZERWONY', '2014-08-28 07:37:59'),
(1, 7, 43, 1, 405, 'B2426 CZERWONY', '2014-08-28 07:38:53'),
(1, 7, 44, 1, 407, 'B2426 CZERWONY', '2014-08-28 07:38:54'),
(1, 7, 48, 1, 668, 'B2426 CZERWONY', '2014-08-28 07:39:00'),
(1, 7, 49, 1, 670, 'B2426 CZERWONY', '2014-08-28 07:39:02'),
(1, 7, 50, 1, 671, 'B2426 CZERWONY', '2014-08-28 07:39:03'),
(1, 7, 174, 1, 669, 'B2426 CZERWONY', '2014-08-28 07:42:30'),
(1, 7, 209, 1, 406, 'B2426 CZERWONY', '2014-08-28 07:43:28'),
(1, 7, 229, 1, 402, 'B2426 CZERWONY', '2014-08-28 07:44:01'),
(1, 7, 230, 1, 403, 'B2426 CZERWONY', '2014-08-28 07:44:03'),
(1, 7, 236, 1, 667, 'B2426 CZERWONY', '2014-08-28 07:44:09'),
(1, 8, 10, 1, 411, 'B2426 BEŻOWY', '2014-08-28 07:38:01'),
(1, 8, 231, 1, 413, 'B2426 BEŻOWY', '2014-08-28 07:44:04'),
(1, 9, 11, 1, 419, 'B2426 NIEBIESKI', '2014-08-28 07:38:02'),
(1, 9, 171, 1, 390, 'B2426 NIEBIESKI', '2014-08-28 07:42:27'),
(1, 9, 190, 1, 414, 'B2426 NIEBIESKI', '2014-08-28 07:42:59'),
(1, 9, 232, 1, 416, 'B2426 NIEBIESKI', '2014-08-28 07:44:05'),
(1, 10, 12, 1, 431, 'B2387F JASNY BEŻ', '2014-08-28 07:38:05'),
(1, 10, 13, 1, 433, 'B2387F JASNY BEŻ', '2014-08-28 07:38:06'),
(1, 10, 193, 1, 430, 'B2387F JASNY BEŻ', '2014-08-28 07:43:01'),
(1, 10, 194, 1, 432, 'B2387F JASNY BEŻ', '2014-08-28 07:43:02'),
(1, 10, 195, 1, 434, 'B2387F JASNY BEŻ', '2014-08-28 07:43:03'),
(1, 11, 14, 1, 487, 'B2330S BEŻOWY', '2014-08-28 07:38:08'),
(1, 11, 172, 1, 489, 'B2330S BEŻOWY', '2014-08-28 07:42:28'),
(1, 12, 15, 1, 1158, 'C2265 GRANAT', '2014-08-28 07:38:11'),
(1, 12, 16, 1, 1160, 'C2265 GRANAT', '2014-08-28 07:38:13'),
(1, 12, 237, 1, 1159, 'C2265 GRANAT', '2014-08-28 07:44:10'),
(1, 13, 17, 1, 1215, 'V24482 CZARNY', '2014-08-28 07:38:16'),
(1, 13, 18, 1, 1216, 'V24482 CZARNY', '2014-08-28 07:38:18'),
(1, 13, 19, 1, 1218, 'V24482 CZARNY', '2014-08-28 07:38:18'),
(1, 13, 238, 1, 1217, 'V24482 CZARNY', '2014-08-28 07:44:11'),
(1, 14, 20, 1, 1219, 'V24469 NIEBIESKI', '2014-08-28 07:38:21'),
(1, 14, 21, 1, 1222, 'V24469 NIEBIESKI', '2014-08-28 07:38:22'),
(1, 14, 22, 1, 1223, 'V24469 NIEBIESKI', '2014-08-28 07:38:22'),
(1, 14, 199, 1, 1220, 'V24469 NIEBIESKI', '2014-08-28 07:43:08'),
(1, 14, 223, 1, 1221, 'V24469 NIEBIESKI', '2014-08-28 07:43:42'),
(1, 15, 23, 1, 1224, 'V25421 CZARNY', '2014-08-28 07:38:24'),
(1, 15, 24, 1, 1225, 'V25421 CZARNY', '2014-08-28 07:38:25'),
(1, 15, 25, 1, 1226, 'V25421 CZARNY', '2014-08-28 07:38:27'),
(1, 15, 224, 1, 1227, 'V25421 CZARNY', '2014-08-28 07:43:43'),
(1, 16, 26, 1, 81, 'V2334S ZŁOTY', '2014-08-28 07:38:34'),
(1, 16, 27, 1, 82, 'V2334S ZŁOTY', '2014-08-28 07:38:36'),
(1, 16, 28, 1, 83, 'V2334S ZŁOTY', '2014-08-28 07:38:37'),
(1, 17, 29, 1, 86, 'V2334S NIEBIESKI', '2014-08-28 07:38:39'),
(1, 17, 30, 1, 87, 'V2334S NIEBIESKI', '2014-08-28 07:38:40'),
(1, 17, 31, 1, 88, 'V2334S NIEBIESKI', '2014-08-28 07:38:40'),
(1, 17, 201, 1, 85, 'V2334S NIEBIESKI', '2014-08-28 07:43:20'),
(1, 18, 32, 1, 143, 'B2379 BEŻOWY', '2014-08-28 07:38:42'),
(1, 18, 33, 1, 144, 'B2379 BEŻOWY', '2014-08-28 07:38:43'),
(1, 18, 34, 1, 145, 'B2379 BEŻOWY', '2014-08-28 07:38:44'),
(1, 18, 35, 1, 146, 'B2379 BEŻOWY', '2014-08-28 07:38:44'),
(1, 18, 36, 1, 147, 'B2379 BEŻOWY', '2014-08-28 07:38:45'),
(1, 19, 37, 1, 195, 'V2334S RÓŻOWY', '2014-08-28 07:38:46'),
(1, 19, 38, 1, 198, 'V2334S RÓŻOWY', '2014-08-28 07:38:48'),
(1, 19, 39, 1, 199, 'V2334S RÓŻOWY', '2014-08-28 07:38:49'),
(1, 19, 40, 1, 200, 'V2334S RÓŻOWY', '2014-08-28 07:38:49'),
(1, 19, 206, 1, 196, 'V2334S RÓŻOWY', '2014-08-28 07:43:25'),
(1, 20, 41, 1, 239, 'B2379 CZARNY', '2014-08-28 07:38:51'),
(1, 20, 42, 1, 240, 'B2379 CZARNY', '2014-08-28 07:38:52'),
(1, 20, 186, 1, 241, 'B2379 CZARNY', '2014-08-28 07:42:53'),
(1, 21, 45, 1, 457, 'B2561 BEŻOWY', '2014-08-28 07:38:55'),
(1, 21, 46, 1, 458, 'B2561 BEŻOWY', '2014-08-28 07:38:57'),
(1, 21, 196, 1, 454, 'B2561 BEŻOWY', '2014-08-28 07:43:04'),
(1, 21, 197, 1, 455, 'B2561 BEŻOWY', '2014-08-28 07:43:05'),
(1, 21, 233, 1, 456, 'B2561 BEŻOWY', '2014-08-28 07:44:06'),
(1, 22, 47, 1, 483, 'B2561 JASNY BEŻ', '2014-08-28 07:38:59'),
(1, 22, 198, 1, 485, 'B2561 JASNY BEŻ', '2014-08-28 07:43:07'),
(1, 22, 217, 1, 482, 'B2561 JASNY BEŻ', '2014-08-28 07:43:36'),
(1, 22, 218, 1, 484, 'B2561 JASNY BEŻ', '2014-08-28 07:43:37'),
(1, 23, 51, 1, 30, 'B2427S CZARNY', '2014-08-28 07:39:13'),
(1, 23, 52, 1, 31, 'B2427S CZARNY', '2014-08-28 07:39:15'),
(1, 23, 53, 1, 33, 'B2427S CZARNY', '2014-08-28 07:39:16'),
(1, 23, 200, 1, 29, 'B2427S CZARNY', '2014-08-28 07:43:19'),
(1, 23, 225, 1, 32, 'B2427S CZARNY', '2014-08-28 07:43:57'),
(1, 24, 54, 1, 113, 'B2387F CZARNY', '2014-08-28 07:39:18'),
(1, 24, 155, 1, 112, 'B2387F CZARNY', '2014-08-28 07:42:06'),
(1, 24, 202, 1, 111, 'B2387F CZARNY', '2014-08-28 07:43:21'),
(1, 24, 226, 1, 114, 'B2387F CZARNY', '2014-08-28 07:43:58'),
(1, 25, 55, 1, 178, 'B2427S JASNY BEŻ', '2014-08-28 07:39:21'),
(1, 25, 56, 1, 182, 'B2427S JASNY BEŻ', '2014-08-28 07:39:22'),
(1, 25, 167, 1, 180, 'B2427S JASNY BEŻ', '2014-08-28 07:42:24'),
(1, 25, 204, 1, 177, 'B2427S JASNY BEŻ', '2014-08-28 07:43:23'),
(1, 25, 205, 1, 181, 'B2427S JASNY BEŻ', '2014-08-28 07:43:24'),
(1, 25, 227, 1, 179, 'B2427S JASNY BEŻ', '2014-08-28 07:43:59'),
(1, 26, 57, 1, 206, 'B2427S BEŻOWY', '2014-08-28 07:39:24'),
(1, 26, 169, 1, 202, 'B2427S BEŻOWY', '2014-08-28 07:42:26'),
(1, 26, 170, 1, 204, 'B2427S BEŻOWY', '2014-08-28 07:42:26'),
(1, 26, 207, 1, 201, 'B2427S BEŻOWY', '2014-08-28 07:43:26'),
(1, 26, 208, 1, 205, 'B2427S BEŻOWY', '2014-08-28 07:43:27'),
(1, 26, 228, 1, 203, 'B2427S BEŻOWY', '2014-08-28 07:44:00'),
(1, 27, 58, 1, 426, 'C2265 CZARNY', '2014-08-28 07:39:26'),
(1, 27, 191, 1, 425, 'C2265 CZARNY', '2014-08-28 07:43:00'),
(1, 27, 192, 1, 428, 'C2265 CZARNY', '2014-08-28 07:43:01'),
(1, 27, 210, 1, 427, 'C2265 CZARNY', '2014-08-28 07:43:29'),
(1, 27, 211, 1, 429, 'C2265 CZARNY', '2014-08-28 07:43:30'),
(1, 28, 59, 1, 470, 'C2265 BEŻOWY', '2014-08-28 07:39:28'),
(1, 28, 60, 1, 471, 'C2265 BEŻOWY', '2014-08-28 07:39:29'),
(1, 28, 69, 1, 641, 'C2265 BEŻOWY', '2014-08-28 07:39:40'),
(1, 28, 70, 1, 642, 'C2265 BEŻOWY', '2014-08-28 07:39:41'),
(1, 28, 222, 1, 643, 'C2265 BEŻOWY', '2014-08-28 07:43:41'),
(1, 28, 234, 1, 469, 'C2265 BEŻOWY', '2014-08-28 07:44:07'),
(1, 29, 61, 1, 531, 'C2303 BIAŁY', '2014-08-28 07:39:30'),
(1, 29, 62, 1, 532, 'C2303 BIAŁY', '2014-08-28 07:39:31'),
(1, 29, 63, 1, 533, 'C2303 BIAŁY', '2014-08-28 07:39:32'),
(1, 30, 64, 1, 534, 'C2303 ZŁOTY', '2014-08-28 07:39:34'),
(1, 30, 65, 1, 536, 'C2303 ZŁOTY', '2014-08-28 07:39:35'),
(1, 30, 66, 1, 537, 'C2303 ZŁOTY', '2014-08-28 07:39:36'),
(1, 30, 219, 1, 535, 'C2303 ZŁOTY', '2014-08-28 07:43:37'),
(1, 31, 67, 1, 539, 'C2303 SREBRNY', '2014-08-28 07:39:37'),
(1, 31, 68, 1, 540, 'C2303 SREBRNY', '2014-08-28 07:39:39'),
(1, 31, 221, 1, 541, 'C2303 SREBRNY', '2014-08-28 07:43:40'),
(1, 32, 71, 1, 645, 'C2265 JASNY BEŻ', '2014-08-28 07:39:42'),
(1, 32, 173, 1, 646, 'C2265 JASNY BEŻ', '2014-08-28 07:42:29'),
(1, 32, 235, 1, 644, 'C2265 JASNY BEŻ', '2014-08-28 07:44:08'),
(1, 33, 72, 1, 1174, 'B24456 CZARNY', '2014-08-28 07:39:46'),
(1, 33, 73, 1, 1175, 'B24456 CZARNY', '2014-08-28 07:39:47'),
(1, 33, 74, 1, 1176, 'B24456 CZARNY', '2014-08-28 07:39:48'),
(1, 33, 75, 1, 1177, 'B24456 CZARNY', '2014-08-28 07:39:49'),
(1, 33, 89, 1, 1178, 'B24456 CZARNY', '2014-08-28 07:40:17'),
(1, 33, 90, 1, 1179, 'B24456 CZARNY', '2014-08-28 07:40:19'),
(1, 34, 76, 1, 723, 'V1985', '2014-08-28 07:39:58'),
(1, 34, 77, 1, 724, 'V1985', '2014-08-28 07:40:00'),
(1, 34, 78, 1, 728, 'V1985', '2014-08-28 07:40:01'),
(1, 34, 79, 1, 729, 'V1985', '2014-08-28 07:40:02'),
(1, 34, 80, 1, 730, 'V1985', '2014-08-28 07:40:03'),
(1, 35, 81, 1, 737, '1666', '2014-08-28 07:40:06'),
(1, 35, 82, 1, 739, '1666', '2014-08-28 07:40:08'),
(1, 35, 87, 1, 769, '1666', '2014-08-28 07:40:15'),
(1, 35, 88, 1, 771, '1666', '2014-08-28 07:40:16'),
(1, 36, 83, 1, 747, 'B1910', '2014-08-28 07:40:10'),
(1, 36, 84, 1, 748, 'B1910', '2014-08-28 07:40:11'),
(1, 36, 85, 1, 749, 'B1910', '2014-08-28 07:40:12'),
(1, 37, 86, 1, 753, 'B1929', '2014-08-28 07:40:13'),
(1, 38, 91, 1, 1180, 'B24419 CZARNY', '2014-08-28 07:40:20'),
(1, 38, 92, 1, 1181, 'B24419 CZARNY', '2014-08-28 07:40:21'),
(1, 38, 93, 1, 1182, 'B24419 CZARNY', '2014-08-28 07:40:22'),
(1, 38, 94, 1, 1183, 'B24419 CZARNY', '2014-08-28 07:40:23'),
(1, 38, 95, 1, 1184, 'B24419 CZARNY', '2014-08-28 07:40:24'),
(1, 38, 96, 1, 1185, 'B24419 CZARNY', '2014-08-28 07:40:25'),
(1, 39, 97, 1, 1186, 'V24444 CZARNY', '2014-08-28 07:40:26'),
(1, 39, 98, 1, 1187, 'V24444 CZARNY', '2014-08-28 07:40:28'),
(1, 39, 99, 1, 1188, 'V24444 CZARNY', '2014-08-28 07:40:29'),
(1, 39, 100, 1, 1189, 'V24444 CZARNY', '2014-08-28 07:40:31'),
(1, 40, 101, 1, 389, 'B2426', '2014-08-28 07:40:38'),
(1, 40, 102, 1, 391, 'B2426', '2014-08-28 07:40:40'),
(1, 40, 103, 1, 392, 'B2426', '2014-08-28 07:40:42'),
(1, 40, 104, 1, 393, 'B2426', '2014-08-28 07:40:43'),
(1, 40, 105, 1, 394, 'B2426', '2014-08-28 07:40:43'),
(1, 40, 106, 1, 399, 'B2426', '2014-08-28 07:40:44'),
(1, 40, 107, 1, 400, 'B2426', '2014-08-28 07:40:45'),
(1, 40, 108, 1, 408, 'B2426', '2014-08-28 07:40:46'),
(1, 40, 109, 1, 409, 'B2426', '2014-08-28 07:40:48'),
(1, 40, 110, 1, 412, 'B2426', '2014-08-28 07:40:49'),
(1, 40, 111, 1, 415, 'B2426', '2014-08-28 07:40:50'),
(1, 40, 112, 1, 417, 'B2426', '2014-08-28 07:40:52'),
(1, 40, 113, 1, 418, 'B2426', '2014-08-28 07:40:53'),
(1, 40, 147, 1, 386, 'B2426', '2014-08-28 07:41:50'),
(1, 40, 148, 1, 387, 'B2426', '2014-08-28 07:41:52'),
(1, 40, 149, 1, 388, 'B2426', '2014-08-28 07:41:53'),
(1, 41, 114, 1, 451, 'B2065', '2014-08-28 07:40:56'),
(1, 41, 115, 1, 452, 'B2065', '2014-08-28 07:40:57'),
(1, 41, 123, 1, 687, 'B2065', '2014-08-28 07:41:10'),
(1, 42, 116, 1, 486, 'B2330S', '2014-08-28 07:40:59'),
(1, 42, 117, 1, 488, 'B2330S', '2014-08-28 07:41:00'),
(1, 42, 118, 1, 490, 'B2330S', '2014-08-28 07:41:00'),
(1, 43, 119, 1, 674, 'B2389', '2014-08-28 07:41:03'),
(1, 43, 120, 1, 676, 'B2389', '2014-08-28 07:41:04'),
(1, 44, 0, 1, 679, '', '2014-08-28 07:41:05'),
(1, 45, 121, 1, 685, 'C2373', '2014-08-28 07:41:08'),
(1, 45, 122, 1, 686, 'C2373', '2014-08-28 07:41:09'),
(1, 46, 124, 1, 702, 'V2375', '2014-08-28 07:41:12'),
(1, 47, 125, 1, 174, 'B2272', '2014-08-28 07:41:19'),
(1, 47, 126, 1, 175, 'B2272', '2014-08-28 07:41:20'),
(1, 47, 127, 1, 183, 'B2272', '2014-08-28 07:41:21'),
(1, 47, 152, 1, 78, 'B2272', '2014-08-28 07:42:03'),
(1, 47, 153, 1, 79, 'B2272', '2014-08-28 07:42:04'),
(1, 47, 164, 1, 171, 'B2272', '2014-08-28 07:42:20'),
(1, 47, 165, 1, 172, 'B2272', '2014-08-28 07:42:22'),
(1, 47, 166, 1, 173, 'B2272', '2014-08-28 07:42:23'),
(1, 47, 180, 1, 70, 'B2272', '2014-08-28 07:42:47'),
(1, 47, 181, 1, 74, 'B2272', '2014-08-28 07:42:48'),
(1, 47, 182, 1, 76, 'B2272', '2014-08-28 07:42:49'),
(1, 47, 183, 1, 77, 'B2272', '2014-08-28 07:42:50'),
(1, 48, 128, 1, 189, 'V2391/1', '2014-08-28 07:41:24'),
(1, 48, 129, 1, 191, 'V2391/1', '2014-08-28 07:41:25'),
(1, 48, 130, 1, 194, 'V2391/1', '2014-08-28 07:41:26'),
(1, 48, 157, 1, 150, 'V2391/1', '2014-08-28 07:42:09'),
(1, 48, 158, 1, 152, 'V2391/1', '2014-08-28 07:42:11'),
(1, 49, 131, 1, 197, 'V2334S', '2014-08-28 07:41:28'),
(1, 49, 145, 1, 364, 'V2334S', '2014-08-28 07:41:48'),
(1, 49, 146, 1, 368, 'V2334S', '2014-08-28 07:41:50'),
(1, 49, 154, 1, 89, 'V2334S', '2014-08-28 07:42:05'),
(1, 50, 132, 1, 242, 'B2379', '2014-08-28 07:41:30'),
(1, 51, 133, 1, 265, 'V2335/R4', '2014-08-28 07:41:32'),
(1, 51, 134, 1, 267, 'V2335/R4', '2014-08-28 07:41:33'),
(1, 51, 135, 1, 268, 'V2335/R4', '2014-08-28 07:41:34'),
(1, 51, 136, 1, 270, 'V2335/R4', '2014-08-28 07:41:34'),
(1, 51, 137, 1, 271, 'V2335/R4', '2014-08-28 07:41:35'),
(1, 52, 138, 1, 286, 'V2001', '2014-08-28 07:41:38'),
(1, 52, 139, 1, 287, 'V2001', '2014-08-28 07:41:39'),
(1, 53, 140, 1, 359, 'BIJOUX157', '2014-08-28 07:41:42'),
(1, 54, 141, 1, 360, 'BIJOUX159', '2014-08-28 07:41:44'),
(1, 54, 142, 1, 361, 'BIJOUX159', '2014-08-28 07:41:45'),
(1, 55, 143, 1, 362, 'BIJOUX156', '2014-08-28 07:41:46'),
(1, 55, 144, 1, 363, 'BIJOUX156', '2014-08-28 07:41:48'),
(1, 56, 156, 1, 115, 'B2387F', '2014-08-28 07:42:08'),
(1, 57, 159, 1, 162, 'V2451', '2014-08-28 07:42:12'),
(1, 57, 160, 1, 164, 'V2451', '2014-08-28 07:42:14'),
(1, 58, 161, 1, 165, 'V2008', '2014-08-28 07:42:16'),
(1, 58, 162, 1, 167, 'V2008', '2014-08-28 07:42:18'),
(1, 58, 163, 1, 170, 'V2008', '2014-08-28 07:42:19'),
(1, 59, 175, 1, 24, 'B2348', '2014-08-28 07:42:40'),
(1, 59, 176, 1, 25, 'B2348', '2014-08-28 07:42:41'),
(1, 59, 177, 1, 26, 'B2348', '2014-08-28 07:42:42'),
(1, 59, 178, 1, 27, 'B2348', '2014-08-28 07:42:43'),
(1, 59, 220, 1, 538, 'B2348', '2014-08-28 07:43:38'),
(1, 60, 179, 1, 56, 'V2385', '2014-08-28 07:42:46'),
(1, 61, 187, 1, 367, 'V2334S ZIELONY', '2014-08-28 07:42:56'),
(1, 62, 203, 1, 176, 'B2272 PUDROWY RÓŻ', '2014-08-28 07:43:22'),
(1, 63, 212, 1, 472, 'B2561', '2014-08-28 07:43:31'),
(1, 63, 213, 1, 473, 'B2561', '2014-08-28 07:43:32'),
(1, 63, 214, 1, 474, 'B2561', '2014-08-28 07:43:33'),
(1, 63, 215, 1, 475, 'B2561', '2014-08-28 07:43:34'),
(1, 63, 216, 1, 476, 'B2561', '2014-08-28 07:43:35');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `yfi_productstock`
--

CREATE TABLE IF NOT EXISTS `yfi_productstock` (
  `ps_sourceId` int(11) NOT NULL,
  `ps_productId` int(11) NOT NULL,
  `ps_productVariationId` int(11) NOT NULL,
  `ps_warehouseId` int(11) NOT NULL,
  `ps_warehouseName` varchar(16) NOT NULL,
  `ps_stock` decimal(16,4) NOT NULL,
  `ps_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `yfi_productstock`
--

INSERT INTO `yfi_productstock` (`ps_sourceId`, `ps_productId`, `ps_productVariationId`, `ps_warehouseId`, `ps_warehouseName`, `ps_stock`, `ps_timestamp`) VALUES
(1, 1, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:15:35'),
(1, 1, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:37:46'),
(1, 1, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:15:36'),
(1, 1, 1, 0, 'Suma', '1.0000', '2014-08-28 07:37:47'),
(1, 1, 2, 0, 'Suma', '0.0000', '2014-08-26 10:15:37'),
(1, 1, 3, 0, 'Suma', '0.0000', '2014-08-26 10:15:38'),
(1, 1, 4, 0, 'Suma', '0.0000', '2014-08-26 10:15:39'),
(1, 1, 66, 0, 'Suma', '1.0000', '2014-08-26 10:17:09'),
(1, 1, 67, 0, 'Suma', '2.0000', '2014-08-26 10:17:10'),
(1, 1, 68, 0, 'Suma', '1.0000', '2014-08-26 10:17:11'),
(1, 1, 69, 0, 'Suma', '2.0000', '2014-08-26 10:17:12'),
(1, 1, 70, 0, 'Suma', '1.0000', '2014-08-26 10:17:13'),
(1, 1, 71, 0, 'Suma', '1.0000', '2014-08-26 10:17:14'),
(1, 2, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:15:40'),
(1, 2, 0, 2, 'OUTLET', '1.0000', '2014-08-26 10:15:40'),
(1, 2, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:15:40'),
(1, 2, 2, 0, 'Suma', '1.0000', '2014-08-28 07:37:49'),
(1, 2, 5, 0, 'Suma', '1.0000', '2014-08-26 10:15:40'),
(1, 2, 6, 0, 'Suma', '1.0000', '2014-08-26 10:15:42'),
(1, 2, 7, 0, 'Suma', '1.0000', '2014-08-26 10:15:42'),
(1, 2, 8, 0, 'Suma', '1.0000', '2014-08-26 10:15:43'),
(1, 2, 9, 0, 'Suma', '1.0000', '2014-08-26 10:15:43'),
(1, 2, 13, 0, 'Suma', '1.0000', '2014-08-26 10:15:50'),
(1, 2, 14, 0, 'Suma', '2.0000', '2014-08-26 10:15:51'),
(1, 2, 15, 0, 'Suma', '1.0000', '2014-08-26 10:15:51'),
(1, 2, 43, 0, 'Suma', '1.0000', '2014-08-26 10:16:31'),
(1, 2, 44, 0, 'Suma', '1.0000', '2014-08-26 10:16:33'),
(1, 2, 45, 0, 'Suma', '1.0000', '2014-08-26 10:16:34'),
(1, 2, 46, 0, 'Suma', '1.0000', '2014-08-26 10:16:35'),
(1, 2, 47, 0, 'Suma', '0.0000', '2014-08-26 10:16:36'),
(1, 2, 53, 0, 'Suma', '0.0000', '2014-08-26 10:16:49'),
(1, 2, 54, 0, 'Suma', '0.0000', '2014-08-26 10:16:51'),
(1, 2, 150, 0, 'Suma', '1.0000', '2014-08-28 07:42:01'),
(1, 2, 151, 0, 'Suma', '1.0000', '2014-08-28 07:42:02'),
(1, 3, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:15:45'),
(1, 3, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:37:50'),
(1, 3, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:15:46'),
(1, 3, 3, 0, 'Suma', '1.0000', '2014-08-28 07:37:50'),
(1, 3, 10, 0, 'Suma', '0.0000', '2014-08-26 10:15:46'),
(1, 3, 78, 0, 'Suma', '0.0000', '2014-08-26 10:17:29'),
(1, 3, 79, 0, 'Suma', '0.0000', '2014-08-26 10:17:30'),
(1, 4, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:15:48'),
(1, 4, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:37:52'),
(1, 4, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:15:48'),
(1, 4, 4, 0, 'Suma', '1.0000', '2014-08-28 07:37:53'),
(1, 4, 5, 0, 'Suma', '1.0000', '2014-08-28 07:37:54'),
(1, 4, 11, 0, 'Suma', '0.0000', '2014-08-26 10:15:48'),
(1, 4, 12, 0, 'Suma', '1.0000', '2014-08-26 10:15:49'),
(1, 4, 26, 0, 'Suma', '1.0000', '2014-08-26 10:16:13'),
(1, 4, 27, 0, 'Suma', '1.0000', '2014-08-26 10:16:14'),
(1, 4, 28, 0, 'Suma', '0.0000', '2014-08-26 10:16:15'),
(1, 4, 29, 0, 'Suma', '1.0000', '2014-08-26 10:16:16'),
(1, 4, 168, 0, 'Suma', '1.0000', '2014-08-28 07:42:25'),
(1, 4, 184, 0, 'Suma', '1.0000', '2014-08-28 07:42:51'),
(1, 4, 185, 0, 'Suma', '1.0000', '2014-08-28 07:42:52'),
(1, 5, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:15:53'),
(1, 5, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:37:55'),
(1, 5, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:15:53'),
(1, 5, 6, 0, 'Suma', '1.0000', '2014-08-28 07:37:55'),
(1, 5, 7, 0, 'Suma', '1.0000', '2014-08-28 07:37:56'),
(1, 5, 16, 0, 'Suma', '0.0000', '2014-08-26 10:15:53'),
(1, 5, 188, 0, 'Suma', '1.0000', '2014-08-28 07:42:57'),
(1, 6, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:15:55'),
(1, 6, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:37:57'),
(1, 6, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:15:55'),
(1, 6, 8, 0, 'Suma', '1.0000', '2014-08-28 07:37:58'),
(1, 6, 17, 0, 'Suma', '0.0000', '2014-08-26 10:15:56'),
(1, 6, 18, 0, 'Suma', '0.0000', '2014-08-26 10:15:57'),
(1, 6, 189, 0, 'Suma', '1.0000', '2014-08-28 07:42:58'),
(1, 7, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:15:58'),
(1, 7, 0, 2, 'OUTLET', '2.0000', '2014-08-28 07:37:59'),
(1, 7, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:15:59'),
(1, 7, 9, 0, 'Suma', '2.0000', '2014-08-28 07:37:59'),
(1, 7, 19, 0, 'Suma', '1.0000', '2014-08-26 10:15:59'),
(1, 7, 43, 0, 'Suma', '1.0000', '2014-08-28 07:38:53'),
(1, 7, 44, 0, 'Suma', '1.0000', '2014-08-28 07:38:54'),
(1, 7, 48, 0, 'Suma', '1.0000', '2014-08-28 07:39:00'),
(1, 7, 49, 0, 'Suma', '1.0000', '2014-08-28 07:39:02'),
(1, 7, 50, 0, 'Suma', '1.0000', '2014-08-28 07:39:03'),
(1, 7, 174, 0, 'Suma', '1.0000', '2014-08-28 07:42:30'),
(1, 7, 209, 0, 'Suma', '1.0000', '2014-08-28 07:43:28'),
(1, 7, 229, 0, 'Suma', '1.0000', '2014-08-28 07:44:01'),
(1, 7, 230, 0, 'Suma', '1.0000', '2014-08-28 07:44:03'),
(1, 7, 236, 0, 'Suma', '1.0000', '2014-08-28 07:44:09'),
(1, 8, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:38:01'),
(1, 8, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:01'),
(1, 8, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:16:01'),
(1, 8, 10, 0, 'Suma', '1.0000', '2014-08-28 07:38:01'),
(1, 8, 20, 0, 'Suma', '1.0000', '2014-08-26 10:16:01'),
(1, 8, 21, 0, 'Suma', '1.0000', '2014-08-26 10:16:03'),
(1, 8, 22, 0, 'Suma', '2.0000', '2014-08-26 10:16:04'),
(1, 8, 23, 0, 'Suma', '1.0000', '2014-08-26 10:16:05'),
(1, 8, 24, 0, 'Suma', '1.0000', '2014-08-26 10:16:07'),
(1, 8, 25, 0, 'Suma', '1.0000', '2014-08-26 10:16:08'),
(1, 8, 48, 0, 'Suma', '1.0000', '2014-08-26 10:16:37'),
(1, 8, 49, 0, 'Suma', '1.0000', '2014-08-26 10:16:38'),
(1, 8, 50, 0, 'Suma', '2.0000', '2014-08-26 10:16:38'),
(1, 8, 51, 0, 'Suma', '2.0000', '2014-08-26 10:16:46'),
(1, 8, 52, 0, 'Suma', '2.0000', '2014-08-26 10:16:47'),
(1, 8, 86, 0, 'Suma', '1.0000', '2014-08-26 10:17:38'),
(1, 8, 87, 0, 'Suma', '1.0000', '2014-08-26 10:17:39'),
(1, 8, 88, 0, 'Suma', '1.0000', '2014-08-26 10:17:40'),
(1, 8, 89, 0, 'Suma', '1.0000', '2014-08-26 10:17:42'),
(1, 8, 90, 0, 'Suma', '1.0000', '2014-08-26 10:17:43'),
(1, 8, 91, 0, 'Suma', '1.0000', '2014-08-26 10:17:45'),
(1, 8, 92, 0, 'Suma', '1.0000', '2014-08-26 10:17:46'),
(1, 8, 93, 0, 'Suma', '2.0000', '2014-08-26 10:17:48'),
(1, 8, 94, 0, 'Suma', '2.0000', '2014-08-26 10:17:49'),
(1, 8, 231, 0, 'Suma', '1.0000', '2014-08-28 07:44:04'),
(1, 9, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:16:18'),
(1, 9, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:02'),
(1, 9, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:16:18'),
(1, 9, 11, 0, 'Suma', '1.0000', '2014-08-28 07:38:03'),
(1, 9, 30, 0, 'Suma', '0.0000', '2014-08-26 10:16:19'),
(1, 9, 31, 0, 'Suma', '0.0000', '2014-08-26 10:16:20'),
(1, 9, 32, 0, 'Suma', '0.0000', '2014-08-26 10:16:21'),
(1, 9, 33, 0, 'Suma', '0.0000', '2014-08-26 10:16:21'),
(1, 9, 34, 0, 'Suma', '1.0000', '2014-08-26 10:16:22'),
(1, 9, 171, 0, 'Suma', '1.0000', '2014-08-28 07:42:27'),
(1, 9, 190, 0, 'Suma', '1.0000', '2014-08-28 07:42:59'),
(1, 9, 232, 0, 'Suma', '1.0000', '2014-08-28 07:44:05'),
(1, 10, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:16:23'),
(1, 10, 0, 2, 'OUTLET', '1.0000', '2014-08-26 10:16:23'),
(1, 10, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:16:23'),
(1, 10, 12, 0, 'Suma', '1.0000', '2014-08-28 07:38:05'),
(1, 10, 13, 0, 'Suma', '1.0000', '2014-08-28 07:38:06'),
(1, 10, 35, 0, 'Suma', '1.0000', '2014-08-26 10:16:24'),
(1, 10, 36, 0, 'Suma', '1.0000', '2014-08-26 10:16:25'),
(1, 10, 37, 0, 'Suma', '1.0000', '2014-08-26 10:16:26'),
(1, 10, 55, 0, 'Suma', '0.0000', '2014-08-26 10:16:52'),
(1, 10, 56, 0, 'Suma', '0.0000', '2014-08-26 10:16:54'),
(1, 10, 193, 0, 'Suma', '1.0000', '2014-08-28 07:43:01'),
(1, 10, 194, 0, 'Suma', '1.0000', '2014-08-28 07:43:02'),
(1, 10, 195, 0, 'Suma', '1.0000', '2014-08-28 07:43:03'),
(1, 11, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:16:27'),
(1, 11, 0, 2, 'OUTLET', '1.0000', '2014-08-26 10:16:27'),
(1, 11, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:16:27'),
(1, 11, 14, 0, 'Suma', '1.0000', '2014-08-28 07:38:08'),
(1, 11, 38, 0, 'Suma', '1.0000', '2014-08-26 10:16:27'),
(1, 11, 39, 0, 'Suma', '1.0000', '2014-08-26 10:16:29'),
(1, 11, 40, 0, 'Suma', '1.0000', '2014-08-26 10:16:29'),
(1, 11, 41, 0, 'Suma', '1.0000', '2014-08-26 10:16:30'),
(1, 11, 42, 0, 'Suma', '0.0000', '2014-08-26 10:16:31'),
(1, 11, 172, 0, 'Suma', '1.0000', '2014-08-28 07:42:28'),
(1, 12, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:16:57'),
(1, 12, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:11'),
(1, 12, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:16:57'),
(1, 12, 15, 0, 'Suma', '1.0000', '2014-08-28 07:38:12'),
(1, 12, 16, 0, 'Suma', '2.0000', '2014-08-28 07:38:13'),
(1, 12, 57, 0, 'Suma', '0.0000', '2014-08-26 10:16:57'),
(1, 12, 58, 0, 'Suma', '0.0000', '2014-08-26 10:16:58'),
(1, 12, 59, 0, 'Suma', '0.0000', '2014-08-26 10:16:59'),
(1, 12, 237, 0, 'Suma', '2.0000', '2014-08-28 07:44:10'),
(1, 13, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:17:01'),
(1, 13, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:16'),
(1, 13, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:17:01'),
(1, 13, 17, 0, 'Suma', '1.0000', '2014-08-28 07:38:16'),
(1, 13, 18, 0, 'Suma', '2.0000', '2014-08-28 07:38:18'),
(1, 13, 19, 0, 'Suma', '1.0000', '2014-08-28 07:38:18'),
(1, 13, 60, 0, 'Suma', '0.0000', '2014-08-26 10:17:02'),
(1, 13, 61, 0, 'Suma', '0.0000', '2014-08-26 10:17:03'),
(1, 13, 62, 0, 'Suma', '0.0000', '2014-08-26 10:17:04'),
(1, 13, 63, 0, 'Suma', '0.0000', '2014-08-26 10:17:05'),
(1, 13, 64, 0, 'Suma', '0.0000', '2014-08-26 10:17:06'),
(1, 13, 65, 0, 'Suma', '1.0000', '2014-08-26 10:17:07'),
(1, 13, 238, 0, 'Suma', '2.0000', '2014-08-28 07:44:11'),
(1, 14, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:17:16'),
(1, 14, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:20'),
(1, 14, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:17:16'),
(1, 14, 20, 0, 'Suma', '1.0000', '2014-08-28 07:38:21'),
(1, 14, 21, 0, 'Suma', '2.0000', '2014-08-28 07:38:22'),
(1, 14, 22, 0, 'Suma', '1.0000', '2014-08-28 07:38:23'),
(1, 14, 72, 0, 'Suma', '0.0000', '2014-08-26 10:17:16'),
(1, 14, 73, 0, 'Suma', '1.0000', '2014-08-26 10:17:17'),
(1, 14, 74, 0, 'Suma', '1.0000', '2014-08-26 10:17:18'),
(1, 14, 75, 0, 'Suma', '1.0000', '2014-08-26 10:17:19'),
(1, 14, 76, 0, 'Suma', '1.0000', '2014-08-26 10:17:27'),
(1, 14, 77, 0, 'Suma', '1.0000', '2014-08-26 10:17:28'),
(1, 14, 199, 0, 'Suma', '2.0000', '2014-08-28 07:43:08'),
(1, 14, 223, 0, 'Suma', '2.0000', '2014-08-28 07:43:42'),
(1, 15, 0, 1, 'MAGAZYN', '0.0000', '2014-08-26 10:17:31'),
(1, 15, 0, 2, 'OUTLET', '1.0000', '2014-08-26 10:17:31'),
(1, 15, 0, 3, 'ONLINE', '0.0000', '2014-08-26 10:17:31'),
(1, 15, 23, 0, 'Suma', '1.0000', '2014-08-28 07:38:24'),
(1, 15, 24, 0, 'Suma', '1.0000', '2014-08-28 07:38:26'),
(1, 15, 25, 0, 'Suma', '1.0000', '2014-08-28 07:38:27'),
(1, 15, 80, 0, 'Suma', '1.0000', '2014-08-26 10:17:31'),
(1, 15, 81, 0, 'Suma', '1.0000', '2014-08-26 10:17:32'),
(1, 15, 82, 0, 'Suma', '0.0000', '2014-08-26 10:17:33'),
(1, 15, 83, 0, 'Suma', '1.0000', '2014-08-26 10:17:35'),
(1, 15, 84, 0, 'Suma', '1.0000', '2014-08-26 10:17:36'),
(1, 15, 85, 0, 'Suma', '1.0000', '2014-08-26 10:17:37'),
(1, 15, 224, 0, 'Suma', '1.0000', '2014-08-28 07:43:43'),
(1, 16, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:38:34'),
(1, 16, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:34'),
(1, 16, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:38:34'),
(1, 16, 26, 0, 'Suma', '1.0000', '2014-08-28 07:38:35'),
(1, 16, 27, 0, 'Suma', '1.0000', '2014-08-28 07:38:36'),
(1, 16, 28, 0, 'Suma', '1.0000', '2014-08-28 07:38:37'),
(1, 17, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:38:38'),
(1, 17, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:38'),
(1, 17, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:38:38'),
(1, 17, 29, 0, 'Suma', '1.0000', '2014-08-28 07:38:39'),
(1, 17, 30, 0, 'Suma', '1.0000', '2014-08-28 07:38:40'),
(1, 17, 31, 0, 'Suma', '1.0000', '2014-08-28 07:38:40'),
(1, 17, 201, 0, 'Suma', '1.0000', '2014-08-28 07:43:20'),
(1, 18, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:38:42'),
(1, 18, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:42'),
(1, 18, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:38:42'),
(1, 18, 32, 0, 'Suma', '1.0000', '2014-08-28 07:38:42'),
(1, 18, 33, 0, 'Suma', '1.0000', '2014-08-28 07:38:43'),
(1, 18, 34, 0, 'Suma', '2.0000', '2014-08-28 07:38:44'),
(1, 18, 35, 0, 'Suma', '2.0000', '2014-08-28 07:38:44'),
(1, 18, 36, 0, 'Suma', '2.0000', '2014-08-28 07:38:45'),
(1, 19, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:38:46'),
(1, 19, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:46'),
(1, 19, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:38:46'),
(1, 19, 37, 0, 'Suma', '1.0000', '2014-08-28 07:38:46'),
(1, 19, 38, 0, 'Suma', '1.0000', '2014-08-28 07:38:48'),
(1, 19, 39, 0, 'Suma', '1.0000', '2014-08-28 07:38:49'),
(1, 19, 40, 0, 'Suma', '1.0000', '2014-08-28 07:38:49'),
(1, 19, 206, 0, 'Suma', '1.0000', '2014-08-28 07:43:25'),
(1, 20, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:38:50'),
(1, 20, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:50'),
(1, 20, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:38:50'),
(1, 20, 41, 0, 'Suma', '1.0000', '2014-08-28 07:38:51'),
(1, 20, 42, 0, 'Suma', '2.0000', '2014-08-28 07:38:52'),
(1, 20, 186, 0, 'Suma', '1.0000', '2014-08-28 07:42:53'),
(1, 21, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:38:55'),
(1, 21, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:55'),
(1, 21, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:38:55'),
(1, 21, 45, 0, 'Suma', '1.0000', '2014-08-28 07:38:55'),
(1, 21, 46, 0, 'Suma', '1.0000', '2014-08-28 07:38:57'),
(1, 21, 196, 0, 'Suma', '1.0000', '2014-08-28 07:43:04'),
(1, 21, 197, 0, 'Suma', '1.0000', '2014-08-28 07:43:05'),
(1, 21, 233, 0, 'Suma', '1.0000', '2014-08-28 07:44:06'),
(1, 22, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:38:58'),
(1, 22, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:38:58'),
(1, 22, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:38:59'),
(1, 22, 47, 0, 'Suma', '1.0000', '2014-08-28 07:38:59'),
(1, 22, 198, 0, 'Suma', '1.0000', '2014-08-28 07:43:07'),
(1, 22, 217, 0, 'Suma', '1.0000', '2014-08-28 07:43:36'),
(1, 22, 218, 0, 'Suma', '1.0000', '2014-08-28 07:43:37'),
(1, 23, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:13'),
(1, 23, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:39:13'),
(1, 23, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:13'),
(1, 23, 51, 0, 'Suma', '1.0000', '2014-08-28 07:39:13'),
(1, 23, 52, 0, 'Suma', '1.0000', '2014-08-28 07:39:15'),
(1, 23, 53, 0, 'Suma', '1.0000', '2014-08-28 07:39:16'),
(1, 23, 200, 0, 'Suma', '1.0000', '2014-08-28 07:43:19'),
(1, 23, 225, 0, 'Suma', '1.0000', '2014-08-28 07:43:57'),
(1, 24, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:17'),
(1, 24, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:39:18'),
(1, 24, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:18'),
(1, 24, 54, 0, 'Suma', '1.0000', '2014-08-28 07:39:18'),
(1, 24, 155, 0, 'Suma', '1.0000', '2014-08-28 07:42:06'),
(1, 24, 202, 0, 'Suma', '1.0000', '2014-08-28 07:43:21'),
(1, 24, 226, 0, 'Suma', '1.0000', '2014-08-28 07:43:58'),
(1, 25, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:20'),
(1, 25, 0, 2, 'OUTLET', '2.0000', '2014-08-28 07:39:20'),
(1, 25, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:20'),
(1, 25, 55, 0, 'Suma', '2.0000', '2014-08-28 07:39:21'),
(1, 25, 56, 0, 'Suma', '1.0000', '2014-08-28 07:39:23'),
(1, 25, 167, 0, 'Suma', '2.0000', '2014-08-28 07:42:24'),
(1, 25, 204, 0, 'Suma', '1.0000', '2014-08-28 07:43:23'),
(1, 25, 205, 0, 'Suma', '1.0000', '2014-08-28 07:43:24'),
(1, 25, 227, 0, 'Suma', '1.0000', '2014-08-28 07:43:59'),
(1, 26, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:24'),
(1, 26, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:39:24'),
(1, 26, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:24'),
(1, 26, 57, 0, 'Suma', '1.0000', '2014-08-28 07:39:24'),
(1, 26, 169, 0, 'Suma', '1.0000', '2014-08-28 07:42:26'),
(1, 26, 170, 0, 'Suma', '1.0000', '2014-08-28 07:42:26'),
(1, 26, 207, 0, 'Suma', '1.0000', '2014-08-28 07:43:26'),
(1, 26, 208, 0, 'Suma', '1.0000', '2014-08-28 07:43:27'),
(1, 26, 228, 0, 'Suma', '1.0000', '2014-08-28 07:44:00'),
(1, 27, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:26'),
(1, 27, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:39:26'),
(1, 27, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:26'),
(1, 27, 58, 0, 'Suma', '1.0000', '2014-08-28 07:39:26'),
(1, 27, 191, 0, 'Suma', '1.0000', '2014-08-28 07:43:00'),
(1, 27, 192, 0, 'Suma', '1.0000', '2014-08-28 07:43:01'),
(1, 27, 210, 0, 'Suma', '1.0000', '2014-08-28 07:43:29'),
(1, 27, 211, 0, 'Suma', '1.0000', '2014-08-28 07:43:30'),
(1, 28, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:27'),
(1, 28, 0, 2, 'OUTLET', '2.0000', '2014-08-28 07:39:27'),
(1, 28, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:27'),
(1, 28, 59, 0, 'Suma', '2.0000', '2014-08-28 07:39:28'),
(1, 28, 60, 0, 'Suma', '2.0000', '2014-08-28 07:39:29'),
(1, 28, 69, 0, 'Suma', '1.0000', '2014-08-28 07:39:40'),
(1, 28, 70, 0, 'Suma', '2.0000', '2014-08-28 07:39:41'),
(1, 28, 222, 0, 'Suma', '1.0000', '2014-08-28 07:43:41'),
(1, 28, 234, 0, 'Suma', '1.0000', '2014-08-28 07:44:07'),
(1, 29, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:30'),
(1, 29, 0, 2, 'OUTLET', '2.0000', '2014-08-28 07:39:30'),
(1, 29, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:30'),
(1, 29, 61, 0, 'Suma', '2.0000', '2014-08-28 07:39:30'),
(1, 29, 62, 0, 'Suma', '1.0000', '2014-08-28 07:39:31'),
(1, 29, 63, 0, 'Suma', '1.0000', '2014-08-28 07:39:33'),
(1, 30, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:34'),
(1, 30, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:39:34'),
(1, 30, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:34'),
(1, 30, 64, 0, 'Suma', '1.0000', '2014-08-28 07:39:34'),
(1, 30, 65, 0, 'Suma', '2.0000', '2014-08-28 07:39:35'),
(1, 30, 66, 0, 'Suma', '1.0000', '2014-08-28 07:39:36'),
(1, 30, 219, 0, 'Suma', '1.0000', '2014-08-28 07:43:38'),
(1, 31, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:37'),
(1, 31, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:39:37'),
(1, 31, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:37'),
(1, 31, 67, 0, 'Suma', '1.0000', '2014-08-28 07:39:38'),
(1, 31, 68, 0, 'Suma', '1.0000', '2014-08-28 07:39:39'),
(1, 31, 221, 0, 'Suma', '1.0000', '2014-08-28 07:43:40'),
(1, 32, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:42'),
(1, 32, 0, 2, 'OUTLET', '2.0000', '2014-08-28 07:39:42'),
(1, 32, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:42'),
(1, 32, 71, 0, 'Suma', '2.0000', '2014-08-28 07:39:42'),
(1, 32, 173, 0, 'Suma', '2.0000', '2014-08-28 07:42:29'),
(1, 32, 235, 0, 'Suma', '2.0000', '2014-08-28 07:44:08'),
(1, 33, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:45'),
(1, 33, 0, 2, 'OUTLET', '2.0000', '2014-08-28 07:39:45'),
(1, 33, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:45'),
(1, 33, 72, 0, 'Suma', '2.0000', '2014-08-28 07:39:46'),
(1, 33, 73, 0, 'Suma', '2.0000', '2014-08-28 07:39:47'),
(1, 33, 74, 0, 'Suma', '2.0000', '2014-08-28 07:39:48'),
(1, 33, 75, 0, 'Suma', '2.0000', '2014-08-28 07:39:49'),
(1, 33, 89, 0, 'Suma', '1.0000', '2014-08-28 07:40:17'),
(1, 33, 90, 0, 'Suma', '1.0000', '2014-08-28 07:40:19'),
(1, 34, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:39:58'),
(1, 34, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:39:58'),
(1, 34, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:39:58'),
(1, 34, 76, 0, 'Suma', '0.0000', '2014-08-28 07:39:58'),
(1, 34, 77, 0, 'Suma', '0.0000', '2014-08-28 07:40:00'),
(1, 34, 78, 0, 'Suma', '0.0000', '2014-08-28 07:40:01'),
(1, 34, 79, 0, 'Suma', '0.0000', '2014-08-28 07:40:02'),
(1, 34, 80, 0, 'Suma', '0.0000', '2014-08-28 07:40:03'),
(1, 35, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:40:05'),
(1, 35, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:40:05'),
(1, 35, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:40:05'),
(1, 35, 81, 0, 'Suma', '0.0000', '2014-08-28 07:40:06'),
(1, 35, 82, 0, 'Suma', '0.0000', '2014-08-28 07:40:08'),
(1, 35, 87, 0, 'Suma', '0.0000', '2014-08-28 07:40:15'),
(1, 35, 88, 0, 'Suma', '0.0000', '2014-08-28 07:40:16'),
(1, 36, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:40:09'),
(1, 36, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:40:09'),
(1, 36, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:40:09'),
(1, 36, 83, 0, 'Suma', '0.0000', '2014-08-28 07:40:10'),
(1, 36, 84, 0, 'Suma', '0.0000', '2014-08-28 07:40:11'),
(1, 36, 85, 0, 'Suma', '0.0000', '2014-08-28 07:40:12'),
(1, 37, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:40:13'),
(1, 37, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:40:13'),
(1, 37, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:40:13'),
(1, 37, 86, 0, 'Suma', '0.0000', '2014-08-28 07:40:13'),
(1, 38, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:40:20'),
(1, 38, 0, 2, 'OUTLET', '2.0000', '2014-08-28 07:40:20'),
(1, 38, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:40:20'),
(1, 38, 91, 0, 'Suma', '2.0000', '2014-08-28 07:40:20'),
(1, 38, 92, 0, 'Suma', '2.0000', '2014-08-28 07:40:21'),
(1, 38, 93, 0, 'Suma', '2.0000', '2014-08-28 07:40:22'),
(1, 38, 94, 0, 'Suma', '2.0000', '2014-08-28 07:40:23'),
(1, 38, 95, 0, 'Suma', '1.0000', '2014-08-28 07:40:24'),
(1, 38, 96, 0, 'Suma', '1.0000', '2014-08-28 07:40:25'),
(1, 39, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:40:26'),
(1, 39, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:40:26'),
(1, 39, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:40:26'),
(1, 39, 97, 0, 'Suma', '1.0000', '2014-08-28 07:40:26'),
(1, 39, 98, 0, 'Suma', '0.0000', '2014-08-28 07:40:28'),
(1, 39, 99, 0, 'Suma', '1.0000', '2014-08-28 07:40:29'),
(1, 39, 100, 0, 'Suma', '1.0000', '2014-08-28 07:40:31'),
(1, 40, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:40:38'),
(1, 40, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:40:38'),
(1, 40, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:40:38'),
(1, 40, 101, 0, 'Suma', '0.0000', '2014-08-28 07:40:38'),
(1, 40, 102, 0, 'Suma', '0.0000', '2014-08-28 07:40:40'),
(1, 40, 103, 0, 'Suma', '0.0000', '2014-08-28 07:40:42'),
(1, 40, 104, 0, 'Suma', '0.0000', '2014-08-28 07:40:43'),
(1, 40, 105, 0, 'Suma', '0.0000', '2014-08-28 07:40:43'),
(1, 40, 106, 0, 'Suma', '0.0000', '2014-08-28 07:40:44'),
(1, 40, 107, 0, 'Suma', '0.0000', '2014-08-28 07:40:45'),
(1, 40, 108, 0, 'Suma', '0.0000', '2014-08-28 07:40:46'),
(1, 40, 109, 0, 'Suma', '0.0000', '2014-08-28 07:40:48'),
(1, 40, 110, 0, 'Suma', '0.0000', '2014-08-28 07:40:49'),
(1, 40, 111, 0, 'Suma', '0.0000', '2014-08-28 07:40:50'),
(1, 40, 112, 0, 'Suma', '0.0000', '2014-08-28 07:40:52'),
(1, 40, 113, 0, 'Suma', '0.0000', '2014-08-28 07:40:53'),
(1, 40, 147, 0, 'Suma', '0.0000', '2014-08-28 07:41:50'),
(1, 40, 148, 0, 'Suma', '0.0000', '2014-08-28 07:41:52'),
(1, 40, 149, 0, 'Suma', '0.0000', '2014-08-28 07:41:53'),
(1, 41, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:40:55'),
(1, 41, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:40:55'),
(1, 41, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:40:55'),
(1, 41, 114, 0, 'Suma', '0.0000', '2014-08-28 07:40:56'),
(1, 41, 115, 0, 'Suma', '0.0000', '2014-08-28 07:40:57'),
(1, 41, 123, 0, 'Suma', '0.0000', '2014-08-28 07:41:10'),
(1, 42, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:40:58'),
(1, 42, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:40:58'),
(1, 42, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:40:58'),
(1, 42, 116, 0, 'Suma', '0.0000', '2014-08-28 07:40:59'),
(1, 42, 117, 0, 'Suma', '0.0000', '2014-08-28 07:41:00'),
(1, 42, 118, 0, 'Suma', '0.0000', '2014-08-28 07:41:00'),
(1, 43, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:02'),
(1, 43, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:02'),
(1, 43, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:02'),
(1, 43, 119, 0, 'Suma', '0.0000', '2014-08-28 07:41:03'),
(1, 43, 120, 0, 'Suma', '0.0000', '2014-08-28 07:41:04'),
(1, 44, 0, 0, 'Suma', '0.0000', '2014-08-28 07:41:05'),
(1, 44, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:06'),
(1, 44, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:06'),
(1, 44, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:06'),
(1, 45, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:07'),
(1, 45, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:08'),
(1, 45, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:08'),
(1, 45, 121, 0, 'Suma', '0.0000', '2014-08-28 07:41:08'),
(1, 45, 122, 0, 'Suma', '1.0000', '2014-08-28 07:41:09'),
(1, 46, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:11'),
(1, 46, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:11'),
(1, 46, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:11'),
(1, 46, 124, 0, 'Suma', '0.0000', '2014-08-28 07:41:12'),
(1, 47, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:19'),
(1, 47, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:19'),
(1, 47, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:19'),
(1, 47, 125, 0, 'Suma', '0.0000', '2014-08-28 07:41:19'),
(1, 47, 126, 0, 'Suma', '0.0000', '2014-08-28 07:41:21'),
(1, 47, 127, 0, 'Suma', '0.0000', '2014-08-28 07:41:22'),
(1, 47, 152, 0, 'Suma', '0.0000', '2014-08-28 07:42:03'),
(1, 47, 153, 0, 'Suma', '0.0000', '2014-08-28 07:42:04'),
(1, 47, 164, 0, 'Suma', '0.0000', '2014-08-28 07:42:20'),
(1, 47, 165, 0, 'Suma', '0.0000', '2014-08-28 07:42:22'),
(1, 47, 166, 0, 'Suma', '0.0000', '2014-08-28 07:42:23'),
(1, 47, 180, 0, 'Suma', '0.0000', '2014-08-28 07:42:47'),
(1, 47, 181, 0, 'Suma', '0.0000', '2014-08-28 07:42:48'),
(1, 47, 182, 0, 'Suma', '0.0000', '2014-08-28 07:42:49'),
(1, 47, 183, 0, 'Suma', '0.0000', '2014-08-28 07:42:50'),
(1, 48, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:23'),
(1, 48, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:23'),
(1, 48, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:23'),
(1, 48, 128, 0, 'Suma', '0.0000', '2014-08-28 07:41:24'),
(1, 48, 129, 0, 'Suma', '0.0000', '2014-08-28 07:41:25'),
(1, 48, 130, 0, 'Suma', '0.0000', '2014-08-28 07:41:26'),
(1, 48, 157, 0, 'Suma', '0.0000', '2014-08-28 07:42:09'),
(1, 48, 158, 0, 'Suma', '0.0000', '2014-08-28 07:42:11'),
(1, 49, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:28'),
(1, 49, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:28'),
(1, 49, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:28'),
(1, 49, 131, 0, 'Suma', '0.0000', '2014-08-28 07:41:28'),
(1, 49, 145, 0, 'Suma', '0.0000', '2014-08-28 07:41:48'),
(1, 49, 146, 0, 'Suma', '0.0000', '2014-08-28 07:41:50'),
(1, 49, 154, 0, 'Suma', '0.0000', '2014-08-28 07:42:05'),
(1, 50, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:30'),
(1, 50, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:30'),
(1, 50, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:30'),
(1, 50, 132, 0, 'Suma', '0.0000', '2014-08-28 07:41:30'),
(1, 51, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:32'),
(1, 51, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:32'),
(1, 51, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:32'),
(1, 51, 133, 0, 'Suma', '0.0000', '2014-08-28 07:41:32'),
(1, 51, 134, 0, 'Suma', '0.0000', '2014-08-28 07:41:33'),
(1, 51, 135, 0, 'Suma', '0.0000', '2014-08-28 07:41:34'),
(1, 51, 136, 0, 'Suma', '0.0000', '2014-08-28 07:41:35'),
(1, 51, 137, 0, 'Suma', '0.0000', '2014-08-28 07:41:36'),
(1, 52, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:37'),
(1, 52, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:41:38'),
(1, 52, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:38'),
(1, 52, 138, 0, 'Suma', '0.0000', '2014-08-28 07:41:38'),
(1, 52, 139, 0, 'Suma', '0.0000', '2014-08-28 07:41:39'),
(1, 53, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:41'),
(1, 53, 0, 2, 'OUTLET', '2.0000', '2014-08-28 07:41:41'),
(1, 53, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:42'),
(1, 53, 140, 0, 'Suma', '2.0000', '2014-08-28 07:41:42'),
(1, 54, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:43'),
(1, 54, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:41:43'),
(1, 54, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:43'),
(1, 54, 141, 0, 'Suma', '1.0000', '2014-08-28 07:41:44'),
(1, 54, 142, 0, 'Suma', '2.0000', '2014-08-28 07:41:45'),
(1, 55, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:41:46'),
(1, 55, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:41:46'),
(1, 55, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:41:46'),
(1, 55, 143, 0, 'Suma', '1.0000', '2014-08-28 07:41:46'),
(1, 55, 144, 0, 'Suma', '6.0000', '2014-08-28 07:41:48'),
(1, 56, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:42:07'),
(1, 56, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:42:07'),
(1, 56, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:42:08'),
(1, 56, 156, 0, 'Suma', '0.0000', '2014-08-28 07:42:08'),
(1, 57, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:42:12'),
(1, 57, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:42:12'),
(1, 57, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:42:12'),
(1, 57, 159, 0, 'Suma', '0.0000', '2014-08-28 07:42:13'),
(1, 57, 160, 0, 'Suma', '0.0000', '2014-08-28 07:42:14'),
(1, 58, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:42:16'),
(1, 58, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:42:16'),
(1, 58, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:42:16'),
(1, 58, 161, 0, 'Suma', '0.0000', '2014-08-28 07:42:16'),
(1, 58, 162, 0, 'Suma', '0.0000', '2014-08-28 07:42:18'),
(1, 58, 163, 0, 'Suma', '0.0000', '2014-08-28 07:42:19'),
(1, 59, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:42:40'),
(1, 59, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:42:40'),
(1, 59, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:42:40'),
(1, 59, 175, 0, 'Suma', '0.0000', '2014-08-28 07:42:41'),
(1, 59, 176, 0, 'Suma', '0.0000', '2014-08-28 07:42:41'),
(1, 59, 177, 0, 'Suma', '0.0000', '2014-08-28 07:42:42'),
(1, 59, 178, 0, 'Suma', '0.0000', '2014-08-28 07:42:43'),
(1, 59, 220, 0, 'Suma', '0.0000', '2014-08-28 07:43:39'),
(1, 60, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:42:45'),
(1, 60, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:42:45'),
(1, 60, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:42:45'),
(1, 60, 179, 0, 'Suma', '0.0000', '2014-08-28 07:42:46'),
(1, 61, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:42:55'),
(1, 61, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:42:55'),
(1, 61, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:42:55'),
(1, 61, 187, 0, 'Suma', '1.0000', '2014-08-28 07:42:56'),
(1, 62, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:43:22'),
(1, 62, 0, 2, 'OUTLET', '1.0000', '2014-08-28 07:43:22'),
(1, 62, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:43:22'),
(1, 62, 203, 0, 'Suma', '1.0000', '2014-08-28 07:43:22'),
(1, 63, 0, 1, 'MAGAZYN', '0.0000', '2014-08-28 07:43:31'),
(1, 63, 0, 2, 'OUTLET', '0.0000', '2014-08-28 07:43:31'),
(1, 63, 0, 3, 'ONLINE', '0.0000', '2014-08-28 07:43:31'),
(1, 63, 212, 0, 'Suma', '0.0000', '2014-08-28 07:43:31'),
(1, 63, 213, 0, 'Suma', '0.0000', '2014-08-28 07:43:32'),
(1, 63, 214, 0, 'Suma', '0.0000', '2014-08-28 07:43:33'),
(1, 63, 215, 0, 'Suma', '0.0000', '2014-08-28 07:43:34'),
(1, 63, 216, 0, 'Suma', '0.0000', '2014-08-28 07:43:35');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `prstshp_access`
--
ALTER TABLE `prstshp_access`
 ADD PRIMARY KEY (`id_profile`,`id_tab`);

--
-- Indexes for table `prstshp_accessory`
--
ALTER TABLE `prstshp_accessory`
 ADD KEY `accessory_product` (`id_product_1`,`id_product_2`);

--
-- Indexes for table `prstshp_address`
--
ALTER TABLE `prstshp_address`
 ADD PRIMARY KEY (`id_address`), ADD KEY `address_customer` (`id_customer`), ADD KEY `id_country` (`id_country`), ADD KEY `id_state` (`id_state`), ADD KEY `id_manufacturer` (`id_manufacturer`), ADD KEY `id_supplier` (`id_supplier`), ADD KEY `id_warehouse` (`id_warehouse`);

--
-- Indexes for table `prstshp_address_format`
--
ALTER TABLE `prstshp_address_format`
 ADD PRIMARY KEY (`id_country`);

--
-- Indexes for table `prstshp_advice`
--
ALTER TABLE `prstshp_advice`
 ADD PRIMARY KEY (`id_advice`);

--
-- Indexes for table `prstshp_advice_lang`
--
ALTER TABLE `prstshp_advice_lang`
 ADD PRIMARY KEY (`id_advice`,`id_lang`);

--
-- Indexes for table `prstshp_alias`
--
ALTER TABLE `prstshp_alias`
 ADD PRIMARY KEY (`id_alias`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `prstshp_attachment`
--
ALTER TABLE `prstshp_attachment`
 ADD PRIMARY KEY (`id_attachment`);

--
-- Indexes for table `prstshp_attachment_lang`
--
ALTER TABLE `prstshp_attachment_lang`
 ADD PRIMARY KEY (`id_attachment`,`id_lang`);

--
-- Indexes for table `prstshp_attribute`
--
ALTER TABLE `prstshp_attribute`
 ADD PRIMARY KEY (`id_attribute`), ADD KEY `attribute_group` (`id_attribute_group`);

--
-- Indexes for table `prstshp_attribute_group`
--
ALTER TABLE `prstshp_attribute_group`
 ADD PRIMARY KEY (`id_attribute_group`);

--
-- Indexes for table `prstshp_attribute_group_lang`
--
ALTER TABLE `prstshp_attribute_group_lang`
 ADD PRIMARY KEY (`id_attribute_group`,`id_lang`);

--
-- Indexes for table `prstshp_attribute_group_shop`
--
ALTER TABLE `prstshp_attribute_group_shop`
 ADD PRIMARY KEY (`id_attribute_group`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_attribute_impact`
--
ALTER TABLE `prstshp_attribute_impact`
 ADD PRIMARY KEY (`id_attribute_impact`), ADD UNIQUE KEY `id_product` (`id_product`,`id_attribute`);

--
-- Indexes for table `prstshp_attribute_lang`
--
ALTER TABLE `prstshp_attribute_lang`
 ADD PRIMARY KEY (`id_attribute`,`id_lang`), ADD KEY `id_lang` (`id_lang`,`name`);

--
-- Indexes for table `prstshp_attribute_shop`
--
ALTER TABLE `prstshp_attribute_shop`
 ADD PRIMARY KEY (`id_attribute`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_badge`
--
ALTER TABLE `prstshp_badge`
 ADD PRIMARY KEY (`id_badge`);

--
-- Indexes for table `prstshp_badge_lang`
--
ALTER TABLE `prstshp_badge_lang`
 ADD PRIMARY KEY (`id_badge`,`id_lang`);

--
-- Indexes for table `prstshp_carrier`
--
ALTER TABLE `prstshp_carrier`
 ADD PRIMARY KEY (`id_carrier`), ADD KEY `deleted` (`deleted`,`active`), ADD KEY `id_tax_rules_group` (`id_tax_rules_group`);

--
-- Indexes for table `prstshp_carrier_group`
--
ALTER TABLE `prstshp_carrier_group`
 ADD PRIMARY KEY (`id_carrier`,`id_group`);

--
-- Indexes for table `prstshp_carrier_lang`
--
ALTER TABLE `prstshp_carrier_lang`
 ADD PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`);

--
-- Indexes for table `prstshp_carrier_shop`
--
ALTER TABLE `prstshp_carrier_shop`
 ADD PRIMARY KEY (`id_carrier`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_carrier_tax_rules_group_shop`
--
ALTER TABLE `prstshp_carrier_tax_rules_group_shop`
 ADD PRIMARY KEY (`id_carrier`,`id_tax_rules_group`,`id_shop`);

--
-- Indexes for table `prstshp_carrier_zone`
--
ALTER TABLE `prstshp_carrier_zone`
 ADD PRIMARY KEY (`id_carrier`,`id_zone`);

--
-- Indexes for table `prstshp_cart`
--
ALTER TABLE `prstshp_cart`
 ADD PRIMARY KEY (`id_cart`), ADD KEY `cart_customer` (`id_customer`), ADD KEY `id_address_delivery` (`id_address_delivery`), ADD KEY `id_address_invoice` (`id_address_invoice`), ADD KEY `id_carrier` (`id_carrier`), ADD KEY `id_lang` (`id_lang`), ADD KEY `id_currency` (`id_currency`), ADD KEY `id_guest` (`id_guest`), ADD KEY `id_shop_group` (`id_shop_group`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_cart_cart_rule`
--
ALTER TABLE `prstshp_cart_cart_rule`
 ADD PRIMARY KEY (`id_cart`,`id_cart_rule`), ADD KEY `id_cart_rule` (`id_cart_rule`);

--
-- Indexes for table `prstshp_cart_product`
--
ALTER TABLE `prstshp_cart_product`
 ADD KEY `cart_product_index` (`id_cart`,`id_product`), ADD KEY `id_product_attribute` (`id_product_attribute`);

--
-- Indexes for table `prstshp_cart_rule`
--
ALTER TABLE `prstshp_cart_rule`
 ADD PRIMARY KEY (`id_cart_rule`);

--
-- Indexes for table `prstshp_cart_rule_carrier`
--
ALTER TABLE `prstshp_cart_rule_carrier`
 ADD PRIMARY KEY (`id_cart_rule`,`id_carrier`);

--
-- Indexes for table `prstshp_cart_rule_combination`
--
ALTER TABLE `prstshp_cart_rule_combination`
 ADD PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`), ADD KEY `id_cart_rule_1` (`id_cart_rule_1`), ADD KEY `id_cart_rule_2` (`id_cart_rule_2`);

--
-- Indexes for table `prstshp_cart_rule_country`
--
ALTER TABLE `prstshp_cart_rule_country`
 ADD PRIMARY KEY (`id_cart_rule`,`id_country`);

--
-- Indexes for table `prstshp_cart_rule_group`
--
ALTER TABLE `prstshp_cart_rule_group`
 ADD PRIMARY KEY (`id_cart_rule`,`id_group`);

--
-- Indexes for table `prstshp_cart_rule_lang`
--
ALTER TABLE `prstshp_cart_rule_lang`
 ADD PRIMARY KEY (`id_cart_rule`,`id_lang`);

--
-- Indexes for table `prstshp_cart_rule_product_rule`
--
ALTER TABLE `prstshp_cart_rule_product_rule`
 ADD PRIMARY KEY (`id_product_rule`);

--
-- Indexes for table `prstshp_cart_rule_product_rule_group`
--
ALTER TABLE `prstshp_cart_rule_product_rule_group`
 ADD PRIMARY KEY (`id_product_rule_group`);

--
-- Indexes for table `prstshp_cart_rule_product_rule_value`
--
ALTER TABLE `prstshp_cart_rule_product_rule_value`
 ADD PRIMARY KEY (`id_product_rule`,`id_item`);

--
-- Indexes for table `prstshp_cart_rule_shop`
--
ALTER TABLE `prstshp_cart_rule_shop`
 ADD PRIMARY KEY (`id_cart_rule`,`id_shop`);

--
-- Indexes for table `prstshp_category`
--
ALTER TABLE `prstshp_category`
 ADD PRIMARY KEY (`id_category`), ADD KEY `category_parent` (`id_parent`), ADD KEY `nleftright` (`nleft`,`nright`), ADD KEY `nleftrightactive` (`nleft`,`nright`,`active`), ADD KEY `level_depth` (`level_depth`), ADD KEY `nright` (`nright`), ADD KEY `nleft` (`nleft`);

--
-- Indexes for table `prstshp_category_group`
--
ALTER TABLE `prstshp_category_group`
 ADD PRIMARY KEY (`id_category`,`id_group`), ADD KEY `id_category` (`id_category`), ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `prstshp_category_lang`
--
ALTER TABLE `prstshp_category_lang`
 ADD PRIMARY KEY (`id_category`,`id_shop`,`id_lang`), ADD KEY `category_name` (`name`);

--
-- Indexes for table `prstshp_category_product`
--
ALTER TABLE `prstshp_category_product`
 ADD PRIMARY KEY (`id_category`,`id_product`), ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `prstshp_category_shop`
--
ALTER TABLE `prstshp_category_shop`
 ADD PRIMARY KEY (`id_category`,`id_shop`);

--
-- Indexes for table `prstshp_cms`
--
ALTER TABLE `prstshp_cms`
 ADD PRIMARY KEY (`id_cms`);

--
-- Indexes for table `prstshp_cms_block`
--
ALTER TABLE `prstshp_cms_block`
 ADD PRIMARY KEY (`id_cms_block`);

--
-- Indexes for table `prstshp_cms_block_lang`
--
ALTER TABLE `prstshp_cms_block_lang`
 ADD PRIMARY KEY (`id_cms_block`,`id_lang`);

--
-- Indexes for table `prstshp_cms_block_page`
--
ALTER TABLE `prstshp_cms_block_page`
 ADD PRIMARY KEY (`id_cms_block_page`);

--
-- Indexes for table `prstshp_cms_block_shop`
--
ALTER TABLE `prstshp_cms_block_shop`
 ADD PRIMARY KEY (`id_cms_block`,`id_shop`);

--
-- Indexes for table `prstshp_cms_category`
--
ALTER TABLE `prstshp_cms_category`
 ADD PRIMARY KEY (`id_cms_category`), ADD KEY `category_parent` (`id_parent`);

--
-- Indexes for table `prstshp_cms_category_lang`
--
ALTER TABLE `prstshp_cms_category_lang`
 ADD PRIMARY KEY (`id_cms_category`,`id_lang`), ADD KEY `category_name` (`name`);

--
-- Indexes for table `prstshp_cms_lang`
--
ALTER TABLE `prstshp_cms_lang`
 ADD PRIMARY KEY (`id_cms`,`id_lang`);

--
-- Indexes for table `prstshp_cms_shop`
--
ALTER TABLE `prstshp_cms_shop`
 ADD PRIMARY KEY (`id_cms`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_compare`
--
ALTER TABLE `prstshp_compare`
 ADD PRIMARY KEY (`id_compare`);

--
-- Indexes for table `prstshp_compare_product`
--
ALTER TABLE `prstshp_compare_product`
 ADD PRIMARY KEY (`id_compare`,`id_product`);

--
-- Indexes for table `prstshp_condition`
--
ALTER TABLE `prstshp_condition`
 ADD PRIMARY KEY (`id_condition`,`id_ps_condition`);

--
-- Indexes for table `prstshp_condition_advice`
--
ALTER TABLE `prstshp_condition_advice`
 ADD PRIMARY KEY (`id_condition`,`id_advice`);

--
-- Indexes for table `prstshp_condition_badge`
--
ALTER TABLE `prstshp_condition_badge`
 ADD PRIMARY KEY (`id_condition`,`id_badge`);

--
-- Indexes for table `prstshp_configuration`
--
ALTER TABLE `prstshp_configuration`
 ADD PRIMARY KEY (`id_configuration`), ADD KEY `name` (`name`), ADD KEY `id_shop` (`id_shop`), ADD KEY `id_shop_group` (`id_shop_group`);

--
-- Indexes for table `prstshp_configuration_kpi`
--
ALTER TABLE `prstshp_configuration_kpi`
 ADD PRIMARY KEY (`id_configuration_kpi`), ADD KEY `name` (`name`), ADD KEY `id_shop` (`id_shop`), ADD KEY `id_shop_group` (`id_shop_group`);

--
-- Indexes for table `prstshp_configuration_kpi_lang`
--
ALTER TABLE `prstshp_configuration_kpi_lang`
 ADD PRIMARY KEY (`id_configuration_kpi`,`id_lang`);

--
-- Indexes for table `prstshp_configuration_lang`
--
ALTER TABLE `prstshp_configuration_lang`
 ADD PRIMARY KEY (`id_configuration`,`id_lang`);

--
-- Indexes for table `prstshp_connections`
--
ALTER TABLE `prstshp_connections`
 ADD PRIMARY KEY (`id_connections`), ADD KEY `id_guest` (`id_guest`), ADD KEY `date_add` (`date_add`), ADD KEY `id_page` (`id_page`);

--
-- Indexes for table `prstshp_connections_page`
--
ALTER TABLE `prstshp_connections_page`
 ADD PRIMARY KEY (`id_connections`,`id_page`,`time_start`);

--
-- Indexes for table `prstshp_connections_source`
--
ALTER TABLE `prstshp_connections_source`
 ADD PRIMARY KEY (`id_connections_source`), ADD KEY `connections` (`id_connections`), ADD KEY `orderby` (`date_add`), ADD KEY `http_referer` (`http_referer`), ADD KEY `request_uri` (`request_uri`);

--
-- Indexes for table `prstshp_contact`
--
ALTER TABLE `prstshp_contact`
 ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `prstshp_contact_lang`
--
ALTER TABLE `prstshp_contact_lang`
 ADD PRIMARY KEY (`id_contact`,`id_lang`);

--
-- Indexes for table `prstshp_contact_shop`
--
ALTER TABLE `prstshp_contact_shop`
 ADD PRIMARY KEY (`id_contact`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_country`
--
ALTER TABLE `prstshp_country`
 ADD PRIMARY KEY (`id_country`), ADD KEY `country_iso_code` (`iso_code`), ADD KEY `country_` (`id_zone`);

--
-- Indexes for table `prstshp_country_lang`
--
ALTER TABLE `prstshp_country_lang`
 ADD PRIMARY KEY (`id_country`,`id_lang`);

--
-- Indexes for table `prstshp_country_shop`
--
ALTER TABLE `prstshp_country_shop`
 ADD PRIMARY KEY (`id_country`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_currency`
--
ALTER TABLE `prstshp_currency`
 ADD PRIMARY KEY (`id_currency`);

--
-- Indexes for table `prstshp_currency_shop`
--
ALTER TABLE `prstshp_currency_shop`
 ADD PRIMARY KEY (`id_currency`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_customer`
--
ALTER TABLE `prstshp_customer`
 ADD PRIMARY KEY (`id_customer`), ADD KEY `customer_email` (`email`), ADD KEY `customer_login` (`email`,`passwd`), ADD KEY `id_customer_passwd` (`id_customer`,`passwd`), ADD KEY `id_gender` (`id_gender`), ADD KEY `id_shop_group` (`id_shop_group`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_customer_group`
--
ALTER TABLE `prstshp_customer_group`
 ADD PRIMARY KEY (`id_customer`,`id_group`), ADD KEY `customer_login` (`id_group`), ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `prstshp_customer_message`
--
ALTER TABLE `prstshp_customer_message`
 ADD PRIMARY KEY (`id_customer_message`), ADD KEY `id_customer_thread` (`id_customer_thread`), ADD KEY `id_employee` (`id_employee`);

--
-- Indexes for table `prstshp_customer_message_sync_imap`
--
ALTER TABLE `prstshp_customer_message_sync_imap`
 ADD KEY `md5_header_index` (`md5_header`(4));

--
-- Indexes for table `prstshp_customer_thread`
--
ALTER TABLE `prstshp_customer_thread`
 ADD PRIMARY KEY (`id_customer_thread`), ADD KEY `id_shop` (`id_shop`), ADD KEY `id_lang` (`id_lang`), ADD KEY `id_contact` (`id_contact`), ADD KEY `id_customer` (`id_customer`), ADD KEY `id_order` (`id_order`), ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `prstshp_customization`
--
ALTER TABLE `prstshp_customization`
 ADD PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`), ADD KEY `id_product_attribute` (`id_product_attribute`);

--
-- Indexes for table `prstshp_customization_field`
--
ALTER TABLE `prstshp_customization_field`
 ADD PRIMARY KEY (`id_customization_field`), ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `prstshp_customization_field_lang`
--
ALTER TABLE `prstshp_customization_field_lang`
 ADD PRIMARY KEY (`id_customization_field`,`id_lang`);

--
-- Indexes for table `prstshp_customized_data`
--
ALTER TABLE `prstshp_customized_data`
 ADD PRIMARY KEY (`id_customization`,`type`,`index`);

--
-- Indexes for table `prstshp_date_range`
--
ALTER TABLE `prstshp_date_range`
 ADD PRIMARY KEY (`id_date_range`);

--
-- Indexes for table `prstshp_delivery`
--
ALTER TABLE `prstshp_delivery`
 ADD PRIMARY KEY (`id_delivery`), ADD KEY `id_zone` (`id_zone`), ADD KEY `id_carrier` (`id_carrier`,`id_zone`), ADD KEY `id_range_price` (`id_range_price`), ADD KEY `id_range_weight` (`id_range_weight`);

--
-- Indexes for table `prstshp_employee`
--
ALTER TABLE `prstshp_employee`
 ADD PRIMARY KEY (`id_employee`), ADD KEY `employee_login` (`email`,`passwd`), ADD KEY `id_employee_passwd` (`id_employee`,`passwd`), ADD KEY `id_profile` (`id_profile`);

--
-- Indexes for table `prstshp_employee_shop`
--
ALTER TABLE `prstshp_employee_shop`
 ADD PRIMARY KEY (`id_employee`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_feature`
--
ALTER TABLE `prstshp_feature`
 ADD PRIMARY KEY (`id_feature`);

--
-- Indexes for table `prstshp_feature_lang`
--
ALTER TABLE `prstshp_feature_lang`
 ADD PRIMARY KEY (`id_feature`,`id_lang`), ADD KEY `id_lang` (`id_lang`,`name`);

--
-- Indexes for table `prstshp_feature_product`
--
ALTER TABLE `prstshp_feature_product`
 ADD PRIMARY KEY (`id_feature`,`id_product`), ADD KEY `id_feature_value` (`id_feature_value`), ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `prstshp_feature_shop`
--
ALTER TABLE `prstshp_feature_shop`
 ADD PRIMARY KEY (`id_feature`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_feature_value`
--
ALTER TABLE `prstshp_feature_value`
 ADD PRIMARY KEY (`id_feature_value`), ADD KEY `feature` (`id_feature`);

--
-- Indexes for table `prstshp_feature_value_lang`
--
ALTER TABLE `prstshp_feature_value_lang`
 ADD PRIMARY KEY (`id_feature_value`,`id_lang`);

--
-- Indexes for table `prstshp_gender`
--
ALTER TABLE `prstshp_gender`
 ADD PRIMARY KEY (`id_gender`);

--
-- Indexes for table `prstshp_gender_lang`
--
ALTER TABLE `prstshp_gender_lang`
 ADD PRIMARY KEY (`id_gender`,`id_lang`), ADD KEY `id_gender` (`id_gender`);

--
-- Indexes for table `prstshp_group`
--
ALTER TABLE `prstshp_group`
 ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `prstshp_group_lang`
--
ALTER TABLE `prstshp_group_lang`
 ADD PRIMARY KEY (`id_group`,`id_lang`);

--
-- Indexes for table `prstshp_group_reduction`
--
ALTER TABLE `prstshp_group_reduction`
 ADD PRIMARY KEY (`id_group_reduction`), ADD UNIQUE KEY `id_group` (`id_group`,`id_category`);

--
-- Indexes for table `prstshp_group_shop`
--
ALTER TABLE `prstshp_group_shop`
 ADD PRIMARY KEY (`id_group`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_guest`
--
ALTER TABLE `prstshp_guest`
 ADD PRIMARY KEY (`id_guest`), ADD KEY `id_customer` (`id_customer`), ADD KEY `id_operating_system` (`id_operating_system`), ADD KEY `id_web_browser` (`id_web_browser`);

--
-- Indexes for table `prstshp_homeslider`
--
ALTER TABLE `prstshp_homeslider`
 ADD PRIMARY KEY (`id_homeslider_slides`,`id_shop`);

--
-- Indexes for table `prstshp_homeslider_slides`
--
ALTER TABLE `prstshp_homeslider_slides`
 ADD PRIMARY KEY (`id_homeslider_slides`);

--
-- Indexes for table `prstshp_homeslider_slides_lang`
--
ALTER TABLE `prstshp_homeslider_slides_lang`
 ADD PRIMARY KEY (`id_homeslider_slides`,`id_lang`);

--
-- Indexes for table `prstshp_hook`
--
ALTER TABLE `prstshp_hook`
 ADD PRIMARY KEY (`id_hook`), ADD UNIQUE KEY `hook_name` (`name`);

--
-- Indexes for table `prstshp_hook_alias`
--
ALTER TABLE `prstshp_hook_alias`
 ADD PRIMARY KEY (`id_hook_alias`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `prstshp_hook_module`
--
ALTER TABLE `prstshp_hook_module`
 ADD PRIMARY KEY (`id_module`,`id_hook`,`id_shop`), ADD KEY `id_hook` (`id_hook`), ADD KEY `id_module` (`id_module`), ADD KEY `position` (`id_shop`,`position`);

--
-- Indexes for table `prstshp_hook_module_exceptions`
--
ALTER TABLE `prstshp_hook_module_exceptions`
 ADD PRIMARY KEY (`id_hook_module_exceptions`), ADD KEY `id_module` (`id_module`), ADD KEY `id_hook` (`id_hook`);

--
-- Indexes for table `prstshp_image`
--
ALTER TABLE `prstshp_image`
 ADD PRIMARY KEY (`id_image`), ADD UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`), ADD KEY `image_product` (`id_product`), ADD KEY `id_product_cover` (`id_product`,`cover`);

--
-- Indexes for table `prstshp_image_lang`
--
ALTER TABLE `prstshp_image_lang`
 ADD PRIMARY KEY (`id_image`,`id_lang`), ADD KEY `id_image` (`id_image`);

--
-- Indexes for table `prstshp_image_shop`
--
ALTER TABLE `prstshp_image_shop`
 ADD KEY `id_image` (`id_image`,`id_shop`,`cover`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_image_type`
--
ALTER TABLE `prstshp_image_type`
 ADD PRIMARY KEY (`id_image_type`), ADD KEY `image_type_name` (`name`);

--
-- Indexes for table `prstshp_import_match`
--
ALTER TABLE `prstshp_import_match`
 ADD PRIMARY KEY (`id_import_match`);

--
-- Indexes for table `prstshp_info`
--
ALTER TABLE `prstshp_info`
 ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `prstshp_info_lang`
--
ALTER TABLE `prstshp_info_lang`
 ADD PRIMARY KEY (`id_info`,`id_lang`);

--
-- Indexes for table `prstshp_lang`
--
ALTER TABLE `prstshp_lang`
 ADD PRIMARY KEY (`id_lang`), ADD KEY `lang_iso_code` (`iso_code`);

--
-- Indexes for table `prstshp_lang_shop`
--
ALTER TABLE `prstshp_lang_shop`
 ADD PRIMARY KEY (`id_lang`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_layered_category`
--
ALTER TABLE `prstshp_layered_category`
 ADD PRIMARY KEY (`id_layered_category`), ADD KEY `id_category` (`id_category`,`type`);

--
-- Indexes for table `prstshp_layered_filter`
--
ALTER TABLE `prstshp_layered_filter`
 ADD PRIMARY KEY (`id_layered_filter`);

--
-- Indexes for table `prstshp_layered_filter_shop`
--
ALTER TABLE `prstshp_layered_filter_shop`
 ADD PRIMARY KEY (`id_layered_filter`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_layered_friendly_url`
--
ALTER TABLE `prstshp_layered_friendly_url`
 ADD PRIMARY KEY (`id_layered_friendly_url`), ADD KEY `id_lang` (`id_lang`), ADD KEY `url_key` (`url_key`(5));

--
-- Indexes for table `prstshp_layered_indexable_attribute_group`
--
ALTER TABLE `prstshp_layered_indexable_attribute_group`
 ADD PRIMARY KEY (`id_attribute_group`);

--
-- Indexes for table `prstshp_layered_indexable_attribute_group_lang_value`
--
ALTER TABLE `prstshp_layered_indexable_attribute_group_lang_value`
 ADD PRIMARY KEY (`id_attribute_group`,`id_lang`);

--
-- Indexes for table `prstshp_layered_indexable_attribute_lang_value`
--
ALTER TABLE `prstshp_layered_indexable_attribute_lang_value`
 ADD PRIMARY KEY (`id_attribute`,`id_lang`);

--
-- Indexes for table `prstshp_layered_indexable_feature`
--
ALTER TABLE `prstshp_layered_indexable_feature`
 ADD PRIMARY KEY (`id_feature`);

--
-- Indexes for table `prstshp_layered_indexable_feature_lang_value`
--
ALTER TABLE `prstshp_layered_indexable_feature_lang_value`
 ADD PRIMARY KEY (`id_feature`,`id_lang`);

--
-- Indexes for table `prstshp_layered_indexable_feature_value_lang_value`
--
ALTER TABLE `prstshp_layered_indexable_feature_value_lang_value`
 ADD PRIMARY KEY (`id_feature_value`,`id_lang`);

--
-- Indexes for table `prstshp_layered_price_index`
--
ALTER TABLE `prstshp_layered_price_index`
 ADD PRIMARY KEY (`id_product`,`id_currency`,`id_shop`), ADD KEY `id_currency` (`id_currency`), ADD KEY `price_min` (`price_min`), ADD KEY `price_max` (`price_max`);

--
-- Indexes for table `prstshp_layered_product_attribute`
--
ALTER TABLE `prstshp_layered_product_attribute`
 ADD KEY `id_attribute` (`id_attribute`);

--
-- Indexes for table `prstshp_linksmenutop`
--
ALTER TABLE `prstshp_linksmenutop`
 ADD PRIMARY KEY (`id_linksmenutop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_linksmenutop_lang`
--
ALTER TABLE `prstshp_linksmenutop_lang`
 ADD KEY `id_linksmenutop` (`id_linksmenutop`,`id_lang`,`id_shop`);

--
-- Indexes for table `prstshp_log`
--
ALTER TABLE `prstshp_log`
 ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `prstshp_mailalert_customer_oos`
--
ALTER TABLE `prstshp_mailalert_customer_oos`
 ADD PRIMARY KEY (`id_customer`,`customer_email`,`id_product`,`id_product_attribute`,`id_shop`);

--
-- Indexes for table `prstshp_manufacturer`
--
ALTER TABLE `prstshp_manufacturer`
 ADD PRIMARY KEY (`id_manufacturer`);

--
-- Indexes for table `prstshp_manufacturer_lang`
--
ALTER TABLE `prstshp_manufacturer_lang`
 ADD PRIMARY KEY (`id_manufacturer`,`id_lang`);

--
-- Indexes for table `prstshp_manufacturer_shop`
--
ALTER TABLE `prstshp_manufacturer_shop`
 ADD PRIMARY KEY (`id_manufacturer`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_memcached_servers`
--
ALTER TABLE `prstshp_memcached_servers`
 ADD PRIMARY KEY (`id_memcached_server`);

--
-- Indexes for table `prstshp_message`
--
ALTER TABLE `prstshp_message`
 ADD PRIMARY KEY (`id_message`), ADD KEY `message_order` (`id_order`), ADD KEY `id_cart` (`id_cart`), ADD KEY `id_customer` (`id_customer`), ADD KEY `id_employee` (`id_employee`);

--
-- Indexes for table `prstshp_message_readed`
--
ALTER TABLE `prstshp_message_readed`
 ADD PRIMARY KEY (`id_message`,`id_employee`);

--
-- Indexes for table `prstshp_meta`
--
ALTER TABLE `prstshp_meta`
 ADD PRIMARY KEY (`id_meta`), ADD UNIQUE KEY `page` (`page`), ADD KEY `meta_name` (`page`);

--
-- Indexes for table `prstshp_meta_lang`
--
ALTER TABLE `prstshp_meta_lang`
 ADD PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`), ADD KEY `id_shop` (`id_shop`), ADD KEY `id_lang` (`id_lang`);

--
-- Indexes for table `prstshp_module`
--
ALTER TABLE `prstshp_module`
 ADD PRIMARY KEY (`id_module`), ADD KEY `name` (`name`);

--
-- Indexes for table `prstshp_module_access`
--
ALTER TABLE `prstshp_module_access`
 ADD PRIMARY KEY (`id_profile`,`id_module`);

--
-- Indexes for table `prstshp_module_country`
--
ALTER TABLE `prstshp_module_country`
 ADD PRIMARY KEY (`id_module`,`id_shop`,`id_country`);

--
-- Indexes for table `prstshp_module_currency`
--
ALTER TABLE `prstshp_module_currency`
 ADD PRIMARY KEY (`id_module`,`id_shop`,`id_currency`), ADD KEY `id_module` (`id_module`);

--
-- Indexes for table `prstshp_module_group`
--
ALTER TABLE `prstshp_module_group`
 ADD PRIMARY KEY (`id_module`,`id_shop`,`id_group`);

--
-- Indexes for table `prstshp_module_preference`
--
ALTER TABLE `prstshp_module_preference`
 ADD PRIMARY KEY (`id_module_preference`), ADD UNIQUE KEY `employee_module` (`id_employee`,`module`);

--
-- Indexes for table `prstshp_module_shop`
--
ALTER TABLE `prstshp_module_shop`
 ADD PRIMARY KEY (`id_module`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_newsletter`
--
ALTER TABLE `prstshp_newsletter`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prstshp_operating_system`
--
ALTER TABLE `prstshp_operating_system`
 ADD PRIMARY KEY (`id_operating_system`);

--
-- Indexes for table `prstshp_orders`
--
ALTER TABLE `prstshp_orders`
 ADD PRIMARY KEY (`id_order`), ADD KEY `id_customer` (`id_customer`), ADD KEY `id_cart` (`id_cart`), ADD KEY `invoice_number` (`invoice_number`), ADD KEY `id_carrier` (`id_carrier`), ADD KEY `id_lang` (`id_lang`), ADD KEY `id_currency` (`id_currency`), ADD KEY `id_address_delivery` (`id_address_delivery`), ADD KEY `id_address_invoice` (`id_address_invoice`), ADD KEY `id_shop_group` (`id_shop_group`), ADD KEY `current_state` (`current_state`), ADD KEY `id_shop` (`id_shop`), ADD KEY `date_add` (`date_add`);

--
-- Indexes for table `prstshp_order_carrier`
--
ALTER TABLE `prstshp_order_carrier`
 ADD PRIMARY KEY (`id_order_carrier`), ADD KEY `id_order` (`id_order`), ADD KEY `id_carrier` (`id_carrier`), ADD KEY `id_order_invoice` (`id_order_invoice`);

--
-- Indexes for table `prstshp_order_cart_rule`
--
ALTER TABLE `prstshp_order_cart_rule`
 ADD PRIMARY KEY (`id_order_cart_rule`), ADD KEY `id_order` (`id_order`), ADD KEY `id_cart_rule` (`id_cart_rule`);

--
-- Indexes for table `prstshp_order_detail`
--
ALTER TABLE `prstshp_order_detail`
 ADD PRIMARY KEY (`id_order_detail`), ADD KEY `order_detail_order` (`id_order`), ADD KEY `product_id` (`product_id`), ADD KEY `product_attribute_id` (`product_attribute_id`), ADD KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`);

--
-- Indexes for table `prstshp_order_detail_tax`
--
ALTER TABLE `prstshp_order_detail_tax`
 ADD KEY `id_order_detail` (`id_order_detail`), ADD KEY `id_tax` (`id_tax`);

--
-- Indexes for table `prstshp_order_history`
--
ALTER TABLE `prstshp_order_history`
 ADD PRIMARY KEY (`id_order_history`), ADD KEY `order_history_order` (`id_order`), ADD KEY `id_employee` (`id_employee`), ADD KEY `id_order_state` (`id_order_state`);

--
-- Indexes for table `prstshp_order_invoice`
--
ALTER TABLE `prstshp_order_invoice`
 ADD PRIMARY KEY (`id_order_invoice`), ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `prstshp_order_invoice_payment`
--
ALTER TABLE `prstshp_order_invoice_payment`
 ADD PRIMARY KEY (`id_order_invoice`,`id_order_payment`), ADD KEY `order_payment` (`id_order_payment`), ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `prstshp_order_invoice_tax`
--
ALTER TABLE `prstshp_order_invoice_tax`
 ADD KEY `id_tax` (`id_tax`);

--
-- Indexes for table `prstshp_order_message`
--
ALTER TABLE `prstshp_order_message`
 ADD PRIMARY KEY (`id_order_message`);

--
-- Indexes for table `prstshp_order_message_lang`
--
ALTER TABLE `prstshp_order_message_lang`
 ADD PRIMARY KEY (`id_order_message`,`id_lang`);

--
-- Indexes for table `prstshp_order_payment`
--
ALTER TABLE `prstshp_order_payment`
 ADD PRIMARY KEY (`id_order_payment`), ADD KEY `order_reference` (`order_reference`);

--
-- Indexes for table `prstshp_order_return`
--
ALTER TABLE `prstshp_order_return`
 ADD PRIMARY KEY (`id_order_return`), ADD KEY `order_return_customer` (`id_customer`), ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `prstshp_order_return_detail`
--
ALTER TABLE `prstshp_order_return_detail`
 ADD PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`);

--
-- Indexes for table `prstshp_order_return_state`
--
ALTER TABLE `prstshp_order_return_state`
 ADD PRIMARY KEY (`id_order_return_state`);

--
-- Indexes for table `prstshp_order_return_state_lang`
--
ALTER TABLE `prstshp_order_return_state_lang`
 ADD PRIMARY KEY (`id_order_return_state`,`id_lang`);

--
-- Indexes for table `prstshp_order_slip`
--
ALTER TABLE `prstshp_order_slip`
 ADD PRIMARY KEY (`id_order_slip`), ADD KEY `order_slip_customer` (`id_customer`), ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `prstshp_order_slip_detail`
--
ALTER TABLE `prstshp_order_slip_detail`
 ADD PRIMARY KEY (`id_order_slip`,`id_order_detail`);

--
-- Indexes for table `prstshp_order_state`
--
ALTER TABLE `prstshp_order_state`
 ADD PRIMARY KEY (`id_order_state`), ADD KEY `module_name` (`module_name`);

--
-- Indexes for table `prstshp_order_state_lang`
--
ALTER TABLE `prstshp_order_state_lang`
 ADD PRIMARY KEY (`id_order_state`,`id_lang`);

--
-- Indexes for table `prstshp_pack`
--
ALTER TABLE `prstshp_pack`
 ADD PRIMARY KEY (`id_product_pack`,`id_product_item`);

--
-- Indexes for table `prstshp_page`
--
ALTER TABLE `prstshp_page`
 ADD PRIMARY KEY (`id_page`), ADD KEY `id_page_type` (`id_page_type`), ADD KEY `id_object` (`id_object`);

--
-- Indexes for table `prstshp_pagenotfound`
--
ALTER TABLE `prstshp_pagenotfound`
 ADD PRIMARY KEY (`id_pagenotfound`), ADD KEY `date_add` (`date_add`);

--
-- Indexes for table `prstshp_page_type`
--
ALTER TABLE `prstshp_page_type`
 ADD PRIMARY KEY (`id_page_type`), ADD KEY `name` (`name`);

--
-- Indexes for table `prstshp_page_viewed`
--
ALTER TABLE `prstshp_page_viewed`
 ADD PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`);

--
-- Indexes for table `prstshp_product`
--
ALTER TABLE `prstshp_product`
 ADD PRIMARY KEY (`id_product`), ADD KEY `product_supplier` (`id_supplier`), ADD KEY `product_manufacturer` (`id_manufacturer`), ADD KEY `id_category_default` (`id_category_default`), ADD KEY `indexed` (`indexed`), ADD KEY `date_add` (`date_add`);

--
-- Indexes for table `prstshp_product_attachment`
--
ALTER TABLE `prstshp_product_attachment`
 ADD PRIMARY KEY (`id_product`,`id_attachment`);

--
-- Indexes for table `prstshp_product_attribute`
--
ALTER TABLE `prstshp_product_attribute`
 ADD PRIMARY KEY (`id_product_attribute`), ADD KEY `product_attribute_product` (`id_product`), ADD KEY `reference` (`reference`), ADD KEY `supplier_reference` (`supplier_reference`), ADD KEY `product_default` (`id_product`,`default_on`), ADD KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`);

--
-- Indexes for table `prstshp_product_attribute_combination`
--
ALTER TABLE `prstshp_product_attribute_combination`
 ADD PRIMARY KEY (`id_attribute`,`id_product_attribute`), ADD KEY `id_product_attribute` (`id_product_attribute`);

--
-- Indexes for table `prstshp_product_attribute_image`
--
ALTER TABLE `prstshp_product_attribute_image`
 ADD PRIMARY KEY (`id_product_attribute`,`id_image`), ADD KEY `id_image` (`id_image`);

--
-- Indexes for table `prstshp_product_attribute_shop`
--
ALTER TABLE `prstshp_product_attribute_shop`
 ADD PRIMARY KEY (`id_product_attribute`,`id_shop`);

--
-- Indexes for table `prstshp_product_carrier`
--
ALTER TABLE `prstshp_product_carrier`
 ADD PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`);

--
-- Indexes for table `prstshp_product_comment`
--
ALTER TABLE `prstshp_product_comment`
 ADD PRIMARY KEY (`id_product_comment`), ADD KEY `id_product` (`id_product`), ADD KEY `id_customer` (`id_customer`), ADD KEY `id_guest` (`id_guest`);

--
-- Indexes for table `prstshp_product_comment_criterion`
--
ALTER TABLE `prstshp_product_comment_criterion`
 ADD PRIMARY KEY (`id_product_comment_criterion`);

--
-- Indexes for table `prstshp_product_comment_criterion_category`
--
ALTER TABLE `prstshp_product_comment_criterion_category`
 ADD PRIMARY KEY (`id_product_comment_criterion`,`id_category`), ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `prstshp_product_comment_criterion_lang`
--
ALTER TABLE `prstshp_product_comment_criterion_lang`
 ADD PRIMARY KEY (`id_product_comment_criterion`,`id_lang`);

--
-- Indexes for table `prstshp_product_comment_criterion_product`
--
ALTER TABLE `prstshp_product_comment_criterion_product`
 ADD PRIMARY KEY (`id_product`,`id_product_comment_criterion`), ADD KEY `id_product_comment_criterion` (`id_product_comment_criterion`);

--
-- Indexes for table `prstshp_product_comment_grade`
--
ALTER TABLE `prstshp_product_comment_grade`
 ADD PRIMARY KEY (`id_product_comment`,`id_product_comment_criterion`), ADD KEY `id_product_comment_criterion` (`id_product_comment_criterion`);

--
-- Indexes for table `prstshp_product_comment_report`
--
ALTER TABLE `prstshp_product_comment_report`
 ADD PRIMARY KEY (`id_product_comment`,`id_customer`);

--
-- Indexes for table `prstshp_product_comment_usefulness`
--
ALTER TABLE `prstshp_product_comment_usefulness`
 ADD PRIMARY KEY (`id_product_comment`,`id_customer`);

--
-- Indexes for table `prstshp_product_country_tax`
--
ALTER TABLE `prstshp_product_country_tax`
 ADD PRIMARY KEY (`id_product`,`id_country`);

--
-- Indexes for table `prstshp_product_download`
--
ALTER TABLE `prstshp_product_download`
 ADD PRIMARY KEY (`id_product_download`), ADD KEY `product_active` (`id_product`,`active`);

--
-- Indexes for table `prstshp_product_group_reduction_cache`
--
ALTER TABLE `prstshp_product_group_reduction_cache`
 ADD PRIMARY KEY (`id_product`,`id_group`);

--
-- Indexes for table `prstshp_product_lang`
--
ALTER TABLE `prstshp_product_lang`
 ADD PRIMARY KEY (`id_product`,`id_shop`,`id_lang`), ADD KEY `id_lang` (`id_lang`), ADD KEY `name` (`name`);

--
-- Indexes for table `prstshp_product_sale`
--
ALTER TABLE `prstshp_product_sale`
 ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `prstshp_product_shop`
--
ALTER TABLE `prstshp_product_shop`
 ADD PRIMARY KEY (`id_product`,`id_shop`), ADD KEY `id_category_default` (`id_category_default`), ADD KEY `date_add` (`date_add`,`active`,`visibility`);

--
-- Indexes for table `prstshp_product_supplier`
--
ALTER TABLE `prstshp_product_supplier`
 ADD PRIMARY KEY (`id_product_supplier`), ADD UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`);

--
-- Indexes for table `prstshp_product_tag`
--
ALTER TABLE `prstshp_product_tag`
 ADD PRIMARY KEY (`id_product`,`id_tag`), ADD KEY `id_tag` (`id_tag`);

--
-- Indexes for table `prstshp_profile`
--
ALTER TABLE `prstshp_profile`
 ADD PRIMARY KEY (`id_profile`);

--
-- Indexes for table `prstshp_profile_lang`
--
ALTER TABLE `prstshp_profile_lang`
 ADD PRIMARY KEY (`id_profile`,`id_lang`);

--
-- Indexes for table `prstshp_quick_access`
--
ALTER TABLE `prstshp_quick_access`
 ADD PRIMARY KEY (`id_quick_access`);

--
-- Indexes for table `prstshp_quick_access_lang`
--
ALTER TABLE `prstshp_quick_access_lang`
 ADD PRIMARY KEY (`id_quick_access`,`id_lang`);

--
-- Indexes for table `prstshp_range_price`
--
ALTER TABLE `prstshp_range_price`
 ADD PRIMARY KEY (`id_range_price`), ADD UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`);

--
-- Indexes for table `prstshp_range_weight`
--
ALTER TABLE `prstshp_range_weight`
 ADD PRIMARY KEY (`id_range_weight`), ADD UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`);

--
-- Indexes for table `prstshp_referrer`
--
ALTER TABLE `prstshp_referrer`
 ADD PRIMARY KEY (`id_referrer`);

--
-- Indexes for table `prstshp_referrer_cache`
--
ALTER TABLE `prstshp_referrer_cache`
 ADD PRIMARY KEY (`id_connections_source`,`id_referrer`);

--
-- Indexes for table `prstshp_referrer_shop`
--
ALTER TABLE `prstshp_referrer_shop`
 ADD PRIMARY KEY (`id_referrer`,`id_shop`);

--
-- Indexes for table `prstshp_request_sql`
--
ALTER TABLE `prstshp_request_sql`
 ADD PRIMARY KEY (`id_request_sql`);

--
-- Indexes for table `prstshp_required_field`
--
ALTER TABLE `prstshp_required_field`
 ADD PRIMARY KEY (`id_required_field`), ADD KEY `object_name` (`object_name`);

--
-- Indexes for table `prstshp_risk`
--
ALTER TABLE `prstshp_risk`
 ADD PRIMARY KEY (`id_risk`);

--
-- Indexes for table `prstshp_risk_lang`
--
ALTER TABLE `prstshp_risk_lang`
 ADD PRIMARY KEY (`id_risk`,`id_lang`), ADD KEY `id_risk` (`id_risk`);

--
-- Indexes for table `prstshp_scene`
--
ALTER TABLE `prstshp_scene`
 ADD PRIMARY KEY (`id_scene`);

--
-- Indexes for table `prstshp_scene_category`
--
ALTER TABLE `prstshp_scene_category`
 ADD PRIMARY KEY (`id_scene`,`id_category`);

--
-- Indexes for table `prstshp_scene_lang`
--
ALTER TABLE `prstshp_scene_lang`
 ADD PRIMARY KEY (`id_scene`,`id_lang`);

--
-- Indexes for table `prstshp_scene_products`
--
ALTER TABLE `prstshp_scene_products`
 ADD PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`);

--
-- Indexes for table `prstshp_scene_shop`
--
ALTER TABLE `prstshp_scene_shop`
 ADD PRIMARY KEY (`id_scene`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_search_engine`
--
ALTER TABLE `prstshp_search_engine`
 ADD PRIMARY KEY (`id_search_engine`);

--
-- Indexes for table `prstshp_search_index`
--
ALTER TABLE `prstshp_search_index`
 ADD PRIMARY KEY (`id_word`,`id_product`);

--
-- Indexes for table `prstshp_search_word`
--
ALTER TABLE `prstshp_search_word`
 ADD PRIMARY KEY (`id_word`), ADD UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`);

--
-- Indexes for table `prstshp_sekeyword`
--
ALTER TABLE `prstshp_sekeyword`
 ADD PRIMARY KEY (`id_sekeyword`);

--
-- Indexes for table `prstshp_shop`
--
ALTER TABLE `prstshp_shop`
 ADD PRIMARY KEY (`id_shop`), ADD KEY `id_shop_group` (`id_shop_group`), ADD KEY `id_category` (`id_category`), ADD KEY `id_theme` (`id_theme`);

--
-- Indexes for table `prstshp_shop_group`
--
ALTER TABLE `prstshp_shop_group`
 ADD PRIMARY KEY (`id_shop_group`);

--
-- Indexes for table `prstshp_shop_url`
--
ALTER TABLE `prstshp_shop_url`
 ADD PRIMARY KEY (`id_shop_url`), ADD UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`), ADD UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_specific_price`
--
ALTER TABLE `prstshp_specific_price`
 ADD PRIMARY KEY (`id_specific_price`), ADD KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`), ADD KEY `from_quantity` (`from_quantity`), ADD KEY `id_specific_price_rule` (`id_specific_price_rule`), ADD KEY `id_cart` (`id_cart`);

--
-- Indexes for table `prstshp_specific_price_priority`
--
ALTER TABLE `prstshp_specific_price_priority`
 ADD PRIMARY KEY (`id_specific_price_priority`,`id_product`), ADD UNIQUE KEY `id_product` (`id_product`);

--
-- Indexes for table `prstshp_specific_price_rule`
--
ALTER TABLE `prstshp_specific_price_rule`
 ADD PRIMARY KEY (`id_specific_price_rule`), ADD KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`);

--
-- Indexes for table `prstshp_specific_price_rule_condition`
--
ALTER TABLE `prstshp_specific_price_rule_condition`
 ADD PRIMARY KEY (`id_specific_price_rule_condition`), ADD KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`);

--
-- Indexes for table `prstshp_specific_price_rule_condition_group`
--
ALTER TABLE `prstshp_specific_price_rule_condition_group`
 ADD PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`);

--
-- Indexes for table `prstshp_state`
--
ALTER TABLE `prstshp_state`
 ADD PRIMARY KEY (`id_state`), ADD KEY `id_country` (`id_country`), ADD KEY `name` (`name`), ADD KEY `id_zone` (`id_zone`);

--
-- Indexes for table `prstshp_statssearch`
--
ALTER TABLE `prstshp_statssearch`
 ADD PRIMARY KEY (`id_statssearch`);

--
-- Indexes for table `prstshp_stock`
--
ALTER TABLE `prstshp_stock`
 ADD PRIMARY KEY (`id_stock`), ADD KEY `id_warehouse` (`id_warehouse`), ADD KEY `id_product` (`id_product`), ADD KEY `id_product_attribute` (`id_product_attribute`);

--
-- Indexes for table `prstshp_stock_available`
--
ALTER TABLE `prstshp_stock_available`
 ADD PRIMARY KEY (`id_stock_available`), ADD UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`,`id_shop_group`), ADD KEY `id_shop` (`id_shop`), ADD KEY `id_shop_group` (`id_shop_group`), ADD KEY `id_product` (`id_product`), ADD KEY `id_product_attribute` (`id_product_attribute`);

--
-- Indexes for table `prstshp_stock_mvt`
--
ALTER TABLE `prstshp_stock_mvt`
 ADD PRIMARY KEY (`id_stock_mvt`), ADD KEY `id_stock` (`id_stock`), ADD KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`);

--
-- Indexes for table `prstshp_stock_mvt_reason`
--
ALTER TABLE `prstshp_stock_mvt_reason`
 ADD PRIMARY KEY (`id_stock_mvt_reason`);

--
-- Indexes for table `prstshp_stock_mvt_reason_lang`
--
ALTER TABLE `prstshp_stock_mvt_reason_lang`
 ADD PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`);

--
-- Indexes for table `prstshp_store`
--
ALTER TABLE `prstshp_store`
 ADD PRIMARY KEY (`id_store`);

--
-- Indexes for table `prstshp_store_shop`
--
ALTER TABLE `prstshp_store_shop`
 ADD PRIMARY KEY (`id_store`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_supplier`
--
ALTER TABLE `prstshp_supplier`
 ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `prstshp_supplier_lang`
--
ALTER TABLE `prstshp_supplier_lang`
 ADD PRIMARY KEY (`id_supplier`,`id_lang`);

--
-- Indexes for table `prstshp_supplier_shop`
--
ALTER TABLE `prstshp_supplier_shop`
 ADD PRIMARY KEY (`id_supplier`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_supply_order`
--
ALTER TABLE `prstshp_supply_order`
 ADD PRIMARY KEY (`id_supply_order`), ADD KEY `id_supplier` (`id_supplier`), ADD KEY `id_warehouse` (`id_warehouse`), ADD KEY `reference` (`reference`);

--
-- Indexes for table `prstshp_supply_order_detail`
--
ALTER TABLE `prstshp_supply_order_detail`
 ADD PRIMARY KEY (`id_supply_order_detail`), ADD KEY `id_supply_order` (`id_supply_order`), ADD KEY `id_product` (`id_product`), ADD KEY `id_product_attribute` (`id_product_attribute`), ADD KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`);

--
-- Indexes for table `prstshp_supply_order_history`
--
ALTER TABLE `prstshp_supply_order_history`
 ADD PRIMARY KEY (`id_supply_order_history`), ADD KEY `id_supply_order` (`id_supply_order`), ADD KEY `id_employee` (`id_employee`), ADD KEY `id_state` (`id_state`);

--
-- Indexes for table `prstshp_supply_order_receipt_history`
--
ALTER TABLE `prstshp_supply_order_receipt_history`
 ADD PRIMARY KEY (`id_supply_order_receipt_history`), ADD KEY `id_supply_order_detail` (`id_supply_order_detail`), ADD KEY `id_supply_order_state` (`id_supply_order_state`);

--
-- Indexes for table `prstshp_supply_order_state`
--
ALTER TABLE `prstshp_supply_order_state`
 ADD PRIMARY KEY (`id_supply_order_state`);

--
-- Indexes for table `prstshp_supply_order_state_lang`
--
ALTER TABLE `prstshp_supply_order_state_lang`
 ADD PRIMARY KEY (`id_supply_order_state`,`id_lang`);

--
-- Indexes for table `prstshp_tab`
--
ALTER TABLE `prstshp_tab`
 ADD PRIMARY KEY (`id_tab`), ADD KEY `class_name` (`class_name`), ADD KEY `id_parent` (`id_parent`);

--
-- Indexes for table `prstshp_tab_advice`
--
ALTER TABLE `prstshp_tab_advice`
 ADD PRIMARY KEY (`id_tab`,`id_advice`);

--
-- Indexes for table `prstshp_tab_lang`
--
ALTER TABLE `prstshp_tab_lang`
 ADD PRIMARY KEY (`id_tab`,`id_lang`);

--
-- Indexes for table `prstshp_tab_module_preference`
--
ALTER TABLE `prstshp_tab_module_preference`
 ADD PRIMARY KEY (`id_tab_module_preference`), ADD UNIQUE KEY `employee_module` (`id_employee`,`id_tab`,`module`);

--
-- Indexes for table `prstshp_tag`
--
ALTER TABLE `prstshp_tag`
 ADD PRIMARY KEY (`id_tag`), ADD KEY `tag_name` (`name`), ADD KEY `id_lang` (`id_lang`);

--
-- Indexes for table `prstshp_tax`
--
ALTER TABLE `prstshp_tax`
 ADD PRIMARY KEY (`id_tax`);

--
-- Indexes for table `prstshp_tax_lang`
--
ALTER TABLE `prstshp_tax_lang`
 ADD PRIMARY KEY (`id_tax`,`id_lang`);

--
-- Indexes for table `prstshp_tax_rule`
--
ALTER TABLE `prstshp_tax_rule`
 ADD PRIMARY KEY (`id_tax_rule`), ADD KEY `id_tax_rules_group` (`id_tax_rules_group`), ADD KEY `id_tax` (`id_tax`), ADD KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`);

--
-- Indexes for table `prstshp_tax_rules_group`
--
ALTER TABLE `prstshp_tax_rules_group`
 ADD PRIMARY KEY (`id_tax_rules_group`);

--
-- Indexes for table `prstshp_tax_rules_group_shop`
--
ALTER TABLE `prstshp_tax_rules_group_shop`
 ADD PRIMARY KEY (`id_tax_rules_group`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_theme`
--
ALTER TABLE `prstshp_theme`
 ADD PRIMARY KEY (`id_theme`);

--
-- Indexes for table `prstshp_themeconfigurator`
--
ALTER TABLE `prstshp_themeconfigurator`
 ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `prstshp_theme_meta`
--
ALTER TABLE `prstshp_theme_meta`
 ADD PRIMARY KEY (`id_theme_meta`), ADD UNIQUE KEY `id_theme_2` (`id_theme`,`id_meta`), ADD KEY `id_theme` (`id_theme`), ADD KEY `id_meta` (`id_meta`);

--
-- Indexes for table `prstshp_theme_specific`
--
ALTER TABLE `prstshp_theme_specific`
 ADD PRIMARY KEY (`id_theme`,`id_shop`,`entity`,`id_object`);

--
-- Indexes for table `prstshp_timezone`
--
ALTER TABLE `prstshp_timezone`
 ADD PRIMARY KEY (`id_timezone`);

--
-- Indexes for table `prstshp_warehouse`
--
ALTER TABLE `prstshp_warehouse`
 ADD PRIMARY KEY (`id_warehouse`);

--
-- Indexes for table `prstshp_warehouse_carrier`
--
ALTER TABLE `prstshp_warehouse_carrier`
 ADD PRIMARY KEY (`id_warehouse`,`id_carrier`), ADD KEY `id_warehouse` (`id_warehouse`), ADD KEY `id_carrier` (`id_carrier`);

--
-- Indexes for table `prstshp_warehouse_product_location`
--
ALTER TABLE `prstshp_warehouse_product_location`
 ADD PRIMARY KEY (`id_warehouse_product_location`), ADD UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`);

--
-- Indexes for table `prstshp_warehouse_shop`
--
ALTER TABLE `prstshp_warehouse_shop`
 ADD PRIMARY KEY (`id_warehouse`,`id_shop`), ADD KEY `id_warehouse` (`id_warehouse`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_webservice_account`
--
ALTER TABLE `prstshp_webservice_account`
 ADD PRIMARY KEY (`id_webservice_account`), ADD KEY `key` (`key`);

--
-- Indexes for table `prstshp_webservice_account_shop`
--
ALTER TABLE `prstshp_webservice_account_shop`
 ADD PRIMARY KEY (`id_webservice_account`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `prstshp_webservice_permission`
--
ALTER TABLE `prstshp_webservice_permission`
 ADD PRIMARY KEY (`id_webservice_permission`), ADD UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`), ADD KEY `resource` (`resource`), ADD KEY `method` (`method`), ADD KEY `id_webservice_account` (`id_webservice_account`);

--
-- Indexes for table `prstshp_web_browser`
--
ALTER TABLE `prstshp_web_browser`
 ADD PRIMARY KEY (`id_web_browser`);

--
-- Indexes for table `prstshp_wishlist`
--
ALTER TABLE `prstshp_wishlist`
 ADD PRIMARY KEY (`id_wishlist`);

--
-- Indexes for table `prstshp_wishlist_product`
--
ALTER TABLE `prstshp_wishlist_product`
 ADD PRIMARY KEY (`id_wishlist_product`);

--
-- Indexes for table `prstshp_zone`
--
ALTER TABLE `prstshp_zone`
 ADD PRIMARY KEY (`id_zone`);

--
-- Indexes for table `prstshp_zone_shop`
--
ALTER TABLE `prstshp_zone_shop`
 ADD PRIMARY KEY (`id_zone`,`id_shop`), ADD KEY `id_shop` (`id_shop`);

--
-- Indexes for table `yfi_customerinfo`
--
ALTER TABLE `yfi_customerinfo`
 ADD PRIMARY KEY (`ci_sourceId`,`ci_customerId`), ADD KEY `ci_shopCustomerId` (`ci_shopCustomerId`);

--
-- Indexes for table `yfi_documentbinaries`
--
ALTER TABLE `yfi_documentbinaries`
 ADD PRIMARY KEY (`db_sourceId`,`db_binaryId`), ADD KEY `db_documentId` (`db_documentId`,`db_type`);

--
-- Indexes for table `yfi_documentitems`
--
ALTER TABLE `yfi_documentitems`
 ADD PRIMARY KEY (`di_sourceId`,`di_documentItemId`,`di_documentId`), ADD KEY `di_documentId` (`di_documentId`);

--
-- Indexes for table `yfi_documents`
--
ALTER TABLE `yfi_documents`
 ADD PRIMARY KEY (`do_sourceId`,`do_documentId`), ADD KEY `do_type` (`do_type`,`do_status`,`do_date`,`do_payerCustomerId`,`do_paymentStatus`,`do_paymentDate`);

--
-- Indexes for table `yfi_orderitemdispositions`
--
ALTER TABLE `yfi_orderitemdispositions`
 ADD PRIMARY KEY (`oid_orderItemId`,`oid_orderId`,`oid_sourceId`);

--
-- Indexes for table `yfi_orderstockreservations`
--
ALTER TABLE `yfi_orderstockreservations`
 ADD PRIMARY KEY (`osr_orderItemId`,`osr_sourceId`), ADD KEY `osr_productId` (`osr_productId`,`osr_productVariationId`,`osr_orderId`);

--
-- Indexes for table `yfi_productcustomdata`
--
ALTER TABLE `yfi_productcustomdata`
 ADD PRIMARY KEY (`pcd_productId`,`pcd_productVariationId`,`pcd_type`,`pcd_itemId`);

--
-- Indexes for table `yfi_productimagelinks`
--
ALTER TABLE `yfi_productimagelinks`
 ADD PRIMARY KEY (`pil_sourceId`,`pil_systemImageId`,`pil_productId`), ADD KEY `pil_imageId` (`pil_imageId`), ADD KEY `pil_md5` (`pil_md5`);

--
-- Indexes for table `yfi_productlinks`
--
ALTER TABLE `yfi_productlinks`
 ADD PRIMARY KEY (`pl_sourceId`,`pl_productId`,`pl_productVariationId`), ADD KEY `pl_mainSourceId` (`pl_mainSourceId`);

--
-- Indexes for table `yfi_productstock`
--
ALTER TABLE `yfi_productstock`
 ADD PRIMARY KEY (`ps_sourceId`,`ps_productId`,`ps_productVariationId`,`ps_warehouseId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `prstshp_address`
--
ALTER TABLE `prstshp_address`
MODIFY `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `prstshp_advice`
--
ALTER TABLE `prstshp_advice`
MODIFY `id_advice` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `prstshp_alias`
--
ALTER TABLE `prstshp_alias`
MODIFY `id_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `prstshp_attachment`
--
ALTER TABLE `prstshp_attachment`
MODIFY `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_attachment_lang`
--
ALTER TABLE `prstshp_attachment_lang`
MODIFY `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_attribute`
--
ALTER TABLE `prstshp_attribute`
MODIFY `id_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT dla tabeli `prstshp_attribute_group`
--
ALTER TABLE `prstshp_attribute_group`
MODIFY `id_attribute_group` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `prstshp_attribute_impact`
--
ALTER TABLE `prstshp_attribute_impact`
MODIFY `id_attribute_impact` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_badge`
--
ALTER TABLE `prstshp_badge`
MODIFY `id_badge` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_carrier`
--
ALTER TABLE `prstshp_carrier`
MODIFY `id_carrier` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `prstshp_cart`
--
ALTER TABLE `prstshp_cart`
MODIFY `id_cart` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_cart_rule`
--
ALTER TABLE `prstshp_cart_rule`
MODIFY `id_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_cart_rule_product_rule`
--
ALTER TABLE `prstshp_cart_rule_product_rule`
MODIFY `id_product_rule` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_cart_rule_product_rule_group`
--
ALTER TABLE `prstshp_cart_rule_product_rule_group`
MODIFY `id_product_rule_group` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_category`
--
ALTER TABLE `prstshp_category`
MODIFY `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT dla tabeli `prstshp_cms`
--
ALTER TABLE `prstshp_cms`
MODIFY `id_cms` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `prstshp_cms_block`
--
ALTER TABLE `prstshp_cms_block`
MODIFY `id_cms_block` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_cms_block_page`
--
ALTER TABLE `prstshp_cms_block_page`
MODIFY `id_cms_block_page` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `prstshp_cms_block_shop`
--
ALTER TABLE `prstshp_cms_block_shop`
MODIFY `id_cms_block` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_cms_category`
--
ALTER TABLE `prstshp_cms_category`
MODIFY `id_cms_category` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_compare`
--
ALTER TABLE `prstshp_compare`
MODIFY `id_compare` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_condition`
--
ALTER TABLE `prstshp_condition`
MODIFY `id_condition` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_configuration`
--
ALTER TABLE `prstshp_configuration`
MODIFY `id_configuration` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=420;
--
-- AUTO_INCREMENT dla tabeli `prstshp_configuration_kpi`
--
ALTER TABLE `prstshp_configuration_kpi`
MODIFY `id_configuration_kpi` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT dla tabeli `prstshp_connections`
--
ALTER TABLE `prstshp_connections`
MODIFY `id_connections` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_connections_source`
--
ALTER TABLE `prstshp_connections_source`
MODIFY `id_connections_source` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_contact`
--
ALTER TABLE `prstshp_contact`
MODIFY `id_contact` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `prstshp_country`
--
ALTER TABLE `prstshp_country`
MODIFY `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT dla tabeli `prstshp_currency`
--
ALTER TABLE `prstshp_currency`
MODIFY `id_currency` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `prstshp_customer`
--
ALTER TABLE `prstshp_customer`
MODIFY `id_customer` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_customer_message`
--
ALTER TABLE `prstshp_customer_message`
MODIFY `id_customer_message` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_customer_thread`
--
ALTER TABLE `prstshp_customer_thread`
MODIFY `id_customer_thread` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_customization`
--
ALTER TABLE `prstshp_customization`
MODIFY `id_customization` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_customization_field`
--
ALTER TABLE `prstshp_customization_field`
MODIFY `id_customization_field` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_date_range`
--
ALTER TABLE `prstshp_date_range`
MODIFY `id_date_range` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_delivery`
--
ALTER TABLE `prstshp_delivery`
MODIFY `id_delivery` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT dla tabeli `prstshp_employee`
--
ALTER TABLE `prstshp_employee`
MODIFY `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_feature`
--
ALTER TABLE `prstshp_feature`
MODIFY `id_feature` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_feature_value`
--
ALTER TABLE `prstshp_feature_value`
MODIFY `id_feature_value` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_gender`
--
ALTER TABLE `prstshp_gender`
MODIFY `id_gender` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `prstshp_group`
--
ALTER TABLE `prstshp_group`
MODIFY `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `prstshp_group_reduction`
--
ALTER TABLE `prstshp_group_reduction`
MODIFY `id_group_reduction` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_guest`
--
ALTER TABLE `prstshp_guest`
MODIFY `id_guest` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_homeslider`
--
ALTER TABLE `prstshp_homeslider`
MODIFY `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `prstshp_homeslider_slides`
--
ALTER TABLE `prstshp_homeslider_slides`
MODIFY `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `prstshp_hook`
--
ALTER TABLE `prstshp_hook`
MODIFY `id_hook` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT dla tabeli `prstshp_hook_alias`
--
ALTER TABLE `prstshp_hook_alias`
MODIFY `id_hook_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT dla tabeli `prstshp_hook_module_exceptions`
--
ALTER TABLE `prstshp_hook_module_exceptions`
MODIFY `id_hook_module_exceptions` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `prstshp_image`
--
ALTER TABLE `prstshp_image`
MODIFY `id_image` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `prstshp_image_type`
--
ALTER TABLE `prstshp_image_type`
MODIFY `id_image_type` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `prstshp_import_match`
--
ALTER TABLE `prstshp_import_match`
MODIFY `id_import_match` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_info`
--
ALTER TABLE `prstshp_info`
MODIFY `id_info` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `prstshp_info_lang`
--
ALTER TABLE `prstshp_info_lang`
MODIFY `id_info` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `prstshp_lang`
--
ALTER TABLE `prstshp_lang`
MODIFY `id_lang` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `prstshp_layered_category`
--
ALTER TABLE `prstshp_layered_category`
MODIFY `id_layered_category` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT dla tabeli `prstshp_layered_filter`
--
ALTER TABLE `prstshp_layered_filter`
MODIFY `id_layered_filter` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_layered_friendly_url`
--
ALTER TABLE `prstshp_layered_friendly_url`
MODIFY `id_layered_friendly_url` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT dla tabeli `prstshp_linksmenutop`
--
ALTER TABLE `prstshp_linksmenutop`
MODIFY `id_linksmenutop` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_log`
--
ALTER TABLE `prstshp_log`
MODIFY `id_log` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT dla tabeli `prstshp_manufacturer`
--
ALTER TABLE `prstshp_manufacturer`
MODIFY `id_manufacturer` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_memcached_servers`
--
ALTER TABLE `prstshp_memcached_servers`
MODIFY `id_memcached_server` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_message`
--
ALTER TABLE `prstshp_message`
MODIFY `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_meta`
--
ALTER TABLE `prstshp_meta`
MODIFY `id_meta` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT dla tabeli `prstshp_module`
--
ALTER TABLE `prstshp_module`
MODIFY `id_module` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT dla tabeli `prstshp_module_preference`
--
ALTER TABLE `prstshp_module_preference`
MODIFY `id_module_preference` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_newsletter`
--
ALTER TABLE `prstshp_newsletter`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_operating_system`
--
ALTER TABLE `prstshp_operating_system`
MODIFY `id_operating_system` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `prstshp_orders`
--
ALTER TABLE `prstshp_orders`
MODIFY `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_carrier`
--
ALTER TABLE `prstshp_order_carrier`
MODIFY `id_order_carrier` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_cart_rule`
--
ALTER TABLE `prstshp_order_cart_rule`
MODIFY `id_order_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_detail`
--
ALTER TABLE `prstshp_order_detail`
MODIFY `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_history`
--
ALTER TABLE `prstshp_order_history`
MODIFY `id_order_history` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_invoice`
--
ALTER TABLE `prstshp_order_invoice`
MODIFY `id_order_invoice` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_message`
--
ALTER TABLE `prstshp_order_message`
MODIFY `id_order_message` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_payment`
--
ALTER TABLE `prstshp_order_payment`
MODIFY `id_order_payment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_return`
--
ALTER TABLE `prstshp_order_return`
MODIFY `id_order_return` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_return_state`
--
ALTER TABLE `prstshp_order_return_state`
MODIFY `id_order_return_state` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_slip`
--
ALTER TABLE `prstshp_order_slip`
MODIFY `id_order_slip` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_order_state`
--
ALTER TABLE `prstshp_order_state`
MODIFY `id_order_state` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `prstshp_page`
--
ALTER TABLE `prstshp_page`
MODIFY `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_pagenotfound`
--
ALTER TABLE `prstshp_pagenotfound`
MODIFY `id_pagenotfound` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_page_type`
--
ALTER TABLE `prstshp_page_type`
MODIFY `id_page_type` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_product`
--
ALTER TABLE `prstshp_product`
MODIFY `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT dla tabeli `prstshp_product_attribute`
--
ALTER TABLE `prstshp_product_attribute`
MODIFY `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT dla tabeli `prstshp_product_comment`
--
ALTER TABLE `prstshp_product_comment`
MODIFY `id_product_comment` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_product_comment_criterion`
--
ALTER TABLE `prstshp_product_comment_criterion`
MODIFY `id_product_comment_criterion` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_product_download`
--
ALTER TABLE `prstshp_product_download`
MODIFY `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_product_supplier`
--
ALTER TABLE `prstshp_product_supplier`
MODIFY `id_product_supplier` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_profile`
--
ALTER TABLE `prstshp_profile`
MODIFY `id_profile` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `prstshp_quick_access`
--
ALTER TABLE `prstshp_quick_access`
MODIFY `id_quick_access` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `prstshp_range_price`
--
ALTER TABLE `prstshp_range_price`
MODIFY `id_range_price` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `prstshp_range_weight`
--
ALTER TABLE `prstshp_range_weight`
MODIFY `id_range_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `prstshp_referrer`
--
ALTER TABLE `prstshp_referrer`
MODIFY `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_referrer_shop`
--
ALTER TABLE `prstshp_referrer_shop`
MODIFY `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_request_sql`
--
ALTER TABLE `prstshp_request_sql`
MODIFY `id_request_sql` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_required_field`
--
ALTER TABLE `prstshp_required_field`
MODIFY `id_required_field` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_risk`
--
ALTER TABLE `prstshp_risk`
MODIFY `id_risk` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `prstshp_scene`
--
ALTER TABLE `prstshp_scene`
MODIFY `id_scene` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_search_engine`
--
ALTER TABLE `prstshp_search_engine`
MODIFY `id_search_engine` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT dla tabeli `prstshp_search_word`
--
ALTER TABLE `prstshp_search_word`
MODIFY `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=677;
--
-- AUTO_INCREMENT dla tabeli `prstshp_sekeyword`
--
ALTER TABLE `prstshp_sekeyword`
MODIFY `id_sekeyword` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_shop`
--
ALTER TABLE `prstshp_shop`
MODIFY `id_shop` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_shop_group`
--
ALTER TABLE `prstshp_shop_group`
MODIFY `id_shop_group` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_shop_url`
--
ALTER TABLE `prstshp_shop_url`
MODIFY `id_shop_url` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_specific_price`
--
ALTER TABLE `prstshp_specific_price`
MODIFY `id_specific_price` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_specific_price_priority`
--
ALTER TABLE `prstshp_specific_price_priority`
MODIFY `id_specific_price_priority` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT dla tabeli `prstshp_specific_price_rule`
--
ALTER TABLE `prstshp_specific_price_rule`
MODIFY `id_specific_price_rule` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_specific_price_rule_condition`
--
ALTER TABLE `prstshp_specific_price_rule_condition`
MODIFY `id_specific_price_rule_condition` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_specific_price_rule_condition_group`
--
ALTER TABLE `prstshp_specific_price_rule_condition_group`
MODIFY `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_state`
--
ALTER TABLE `prstshp_state`
MODIFY `id_state` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=313;
--
-- AUTO_INCREMENT dla tabeli `prstshp_statssearch`
--
ALTER TABLE `prstshp_statssearch`
MODIFY `id_statssearch` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_stock`
--
ALTER TABLE `prstshp_stock`
MODIFY `id_stock` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_stock_available`
--
ALTER TABLE `prstshp_stock_available`
MODIFY `id_stock_available` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT dla tabeli `prstshp_stock_mvt`
--
ALTER TABLE `prstshp_stock_mvt`
MODIFY `id_stock_mvt` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_stock_mvt_reason`
--
ALTER TABLE `prstshp_stock_mvt_reason`
MODIFY `id_stock_mvt_reason` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `prstshp_store`
--
ALTER TABLE `prstshp_store`
MODIFY `id_store` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `prstshp_supplier`
--
ALTER TABLE `prstshp_supplier`
MODIFY `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_supply_order`
--
ALTER TABLE `prstshp_supply_order`
MODIFY `id_supply_order` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_supply_order_detail`
--
ALTER TABLE `prstshp_supply_order_detail`
MODIFY `id_supply_order_detail` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_supply_order_history`
--
ALTER TABLE `prstshp_supply_order_history`
MODIFY `id_supply_order_history` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_supply_order_receipt_history`
--
ALTER TABLE `prstshp_supply_order_receipt_history`
MODIFY `id_supply_order_receipt_history` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_supply_order_state`
--
ALTER TABLE `prstshp_supply_order_state`
MODIFY `id_supply_order_state` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `prstshp_tab`
--
ALTER TABLE `prstshp_tab`
MODIFY `id_tab` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT dla tabeli `prstshp_tab_module_preference`
--
ALTER TABLE `prstshp_tab_module_preference`
MODIFY `id_tab_module_preference` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_tag`
--
ALTER TABLE `prstshp_tag`
MODIFY `id_tag` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_tax`
--
ALTER TABLE `prstshp_tax`
MODIFY `id_tax` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT dla tabeli `prstshp_tax_rule`
--
ALTER TABLE `prstshp_tax_rule`
MODIFY `id_tax_rule` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT dla tabeli `prstshp_tax_rules_group`
--
ALTER TABLE `prstshp_tax_rules_group`
MODIFY `id_tax_rules_group` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT dla tabeli `prstshp_theme`
--
ALTER TABLE `prstshp_theme`
MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_themeconfigurator`
--
ALTER TABLE `prstshp_themeconfigurator`
MODIFY `id_item` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT dla tabeli `prstshp_theme_meta`
--
ALTER TABLE `prstshp_theme_meta`
MODIFY `id_theme_meta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT dla tabeli `prstshp_timezone`
--
ALTER TABLE `prstshp_timezone`
MODIFY `id_timezone` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=561;
--
-- AUTO_INCREMENT dla tabeli `prstshp_warehouse`
--
ALTER TABLE `prstshp_warehouse`
MODIFY `id_warehouse` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_warehouse_product_location`
--
ALTER TABLE `prstshp_warehouse_product_location`
MODIFY `id_warehouse_product_location` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_webservice_account`
--
ALTER TABLE `prstshp_webservice_account`
MODIFY `id_webservice_account` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `prstshp_webservice_permission`
--
ALTER TABLE `prstshp_webservice_permission`
MODIFY `id_webservice_permission` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=293;
--
-- AUTO_INCREMENT dla tabeli `prstshp_web_browser`
--
ALTER TABLE `prstshp_web_browser`
MODIFY `id_web_browser` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `prstshp_wishlist`
--
ALTER TABLE `prstshp_wishlist`
MODIFY `id_wishlist` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_wishlist_product`
--
ALTER TABLE `prstshp_wishlist_product`
MODIFY `id_wishlist_product` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `prstshp_zone`
--
ALTER TABLE `prstshp_zone`
MODIFY `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
