-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jun 27, 2023 at 01:09 PM
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
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `baza`
--

CREATE TABLE `baza` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `baza`
--

INSERT INTO `baza` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(2, '12.1.2009', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in leo finibus, auctor felis tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac turpis semper, molestie ex blandit, facilisis quam. Vivamus laoreet velit purus, sit amet pulvinar nisl consectetur id. Curabitur at vestibulum ex. Etiam vitae accumsan lacus. Vestibulum quis elit sit amet purus auctor eleifend. Nullam tellus massa, mattis ut pharetra eget, scelerisque semper nulla. Suspendisse interdum metus nec erat imperdiet, ornare facilisis nunc vulputate. Mauris vestibulum lacus id mollis faucibus. Donec et lacus sit amet magna feugiat efficitur.\r\n\r\nInteger in suscipit tortor, at aliquam massa. Vestibulum non odio faucibus, finibus est a, porttitor eros. Vivamus suscipit, quam quis auctor molestie, sapien felis ultricies eros, vitae venenatis quam lacus vel sem. Integer ac turpis in mi feugiat iaculis viverra ac leo. Phasellus et eros quam. Fusce vel finibus sapien. Cras feugiat pretium risus, ac interdum velit consectetur vitae. Nunc ac pellentesque neque. Nam at nisi sed arcu auctor tincidunt in ac massa. Nam arcu velit, pharetra a quam sodales, mattis auctor urna. Donec eros risus, faucibus a elementum eget, semper quis orci. Nullam eu pretium velit.\r\n\r\nFusce in nibh eu tellus varius interdum. Quisque tincidunt magna mauris, id aliquam tellus vulputate quis. Nam ultricies ligula sodales dolor maximus accumsan. Vivamus facilisis eleifend molestie. Duis et urna nec lacus ultricies ultrices eget at sapien. Nunc at ex tincidunt massa vulputate vulputate. Nullam ipsum diam, euismod sit amet justo sit amet, consequat faucibus massa. Cras finibus orci ac ex ullamcorper efficitur.\r\n\r\nPraesent eu viverra nunc, quis vulputate justo. Quisque vel nunc non nulla efficitur molestie. Aenean id nisi vel erat fringilla condimentum in eu justo. Praesent volutpat, leo at maximus tincidunt, urna nibh euismod velit, in iaculis eros dolor sit amet diam. Suspendisse sodales ultrices odio vel tincidunt. Aenean quis porttitor nisl, non gravida tellus. Praesent laoreet lacus a ornare ornare. Nunc ligula urna, dictum vel felis eget, pellentesque dictum neque. Maecenas mattis cursus dolor, rutrum vulputate dolor maximus vitae.\r\n\r\nPraesent scelerisque neque nec nulla vehicula pellentesque. Aliquam erat volutpat. Proin malesuada dignissim sem in suscipit. Fusce blandit enim at viverra ultrices. Suspendisse sit amet porttitor magna. Integer viverra ac sem ut ultrices. Etiam consequat ultrices risus, in consequat sem gravida in. Sed laoreet lacinia nisl, sit amet commodo eros vehicula non.', 'Slika2.jpg', 'sport', 0),
(3, '12.1.2009', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in leo finibus, auctor felis tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac turpis semper, molestie ex blandit, facilisis quam. Vivamus laoreet velit purus, sit amet pulvinar nisl consectetur id. Curabitur at vestibulum ex. Etiam vitae accumsan lacus. Vestibulum quis elit sit amet purus auctor eleifend. Nullam tellus massa, mattis ut pharetra eget, scelerisque semper nulla. Suspendisse interdum metus nec erat imperdiet, ornare facilisis nunc vulputate. Mauris vestibulum lacus id mollis faucibus. Donec et lacus sit amet magna feugiat efficitur.\r\n\r\nInteger in suscipit tortor, at aliquam massa. Vestibulum non odio faucibus, finibus est a, porttitor eros. Vivamus suscipit, quam quis auctor molestie, sapien felis ultricies eros, vitae venenatis quam lacus vel sem. Integer ac turpis in mi feugiat iaculis viverra ac leo. Phasellus et eros quam. Fusce vel finibus sapien. Cras feugiat pretium risus, ac interdum velit consectetur vitae. Nunc ac pellentesque neque. Nam at nisi sed arcu auctor tincidunt in ac massa. Nam arcu velit, pharetra a quam sodales, mattis auctor urna. Donec eros risus, faucibus a elementum eget, semper quis orci. Nullam eu pretium velit.\r\n\r\nFusce in nibh eu tellus varius interdum. Quisque tincidunt magna mauris, id aliquam tellus vulputate quis. Nam ultricies ligula sodales dolor maximus accumsan. Vivamus facilisis eleifend molestie. Duis et urna nec lacus ultricies ultrices eget at sapien. Nunc at ex tincidunt massa vulputate vulputate. Nullam ipsum diam, euismod sit amet justo sit amet, consequat faucibus massa. Cras finibus orci ac ex ullamcorper efficitur.\r\n\r\nPraesent eu viverra nunc, quis vulputate justo. Quisque vel nunc non nulla efficitur molestie. Aenean id nisi vel erat fringilla condimentum in eu justo. Praesent volutpat, leo at maximus tincidunt, urna nibh euismod velit, in iaculis eros dolor sit amet diam. Suspendisse sodales ultrices odio vel tincidunt. Aenean quis porttitor nisl, non gravida tellus. Praesent laoreet lacus a ornare ornare. Nunc ligula urna, dictum vel felis eget, pellentesque dictum neque. Maecenas mattis cursus dolor, rutrum vulputate dolor maximus vitae.\r\n\r\nPraesent scelerisque neque nec nulla vehicula pellentesque. Aliquam erat volutpat. Proin malesuada dignissim sem in suscipit. Fusce blandit enim at viverra ultrices. Suspendisse sit amet porttitor magna. Integer viverra ac sem ut ultrices. Etiam consequat ultrices risus, in consequat sem gravida in. Sed laoreet lacinia nisl, sit amet commodo eros vehicula non.', 'Slika3.jpg', 'sport', 0),
(4, '12.1.2009', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in leo finibus, auctor felis tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra, tortor nec cursus rutrum, orci dolor hendrerit est, eu condimentum ex nisl consequat nunc. Sed non ullamcorper odio. Sed placerat suscipit urna eu egestas. Maecenas tellus orci, rutrum fermentum lectus ultricies, finibus varius nulla. Sed auctor risus ex, non blandit metus rutrum eu. Maecenas dictum lacus ac laoreet convallis. Morbi venenatis mauris quis diam tincidunt tincidunt. Ut consequat libero erat, vel placerat lorem elementum ac. Aenean bibendum fringilla elit, ut consequat libero interdum sed. Sed metus velit, interdum sit amet urna ac, pretium pellentesque felis. Suspendisse tincidunt nisl at nibh posuere, sit amet tempor enim dapibus. Proin posuere eget odio vel laoreet.\r\n\r\nDuis interdum, urna eget hendrerit hendrerit, velit arcu cursus elit, ullamcorper auctor leo arcu at nisl. Vivamus suscipit dolor id euismod mollis. Morbi iaculis vitae justo quis luctus. Phasellus in lorem id felis auctor maximus ac quis nisi. Duis fermentum, ante vel euismod elementum, felis mauris pretium lacus, vitae feugiat arcu leo sed nibh. Nulla tincidunt urna lacinia nunc suscipit commodo. Sed pulvinar velit a congue fringilla. Fusce vehicula augue risus, in ultricies felis mollis vel. Morbi vitae arcu id dui maximus venenatis non ac dui.\r\n\r\nDonec efficitur gravida metus sed consequat. Ut pellentesque massa in nulla commodo, non gravida ex porta. Cras luctus tortor tempus gravida hendrerit. Quisque interdum diam a nunc consequat sagittis a ut dolor. Quisque suscipit arcu vehicula, suscipit neque a, efficitur odio. Morbi vulputate justo vitae bibendum pharetra. Vestibulum in nibh sed nisl pellentesque vestibulum nec eget eros. Nam eu lorem risus.\r\n\r\nMaecenas metus nulla, sodales ut efficitur sed, fringilla at tellus. Proin auctor rutrum massa eu placerat. Nulla pretium leo et dui consectetur venenatis. Maecenas fermentum quam suscipit, facilisis massa ac, interdum ipsum. Curabitur tempus ac velit nec viverra. Nullam sodales at sem quis vestibulum. Aliquam erat volutpat. Maecenas vel augue elit. Vestibulum eu justo iaculis, sagittis elit vel, venenatis urna. Maecenas ac ipsum quis risus sollicitudin varius sed nec magna. Aenean a sapien nec risus consequat laoreet. Ut ligula risus, mattis nec vulputate at, sollicitudin eget felis. Quisque non dui sodales augue finibus suscipit. Nullam gravida quis urna quis cursus.\r\n\r\nMorbi pellentesque posuere placerat. Pellentesque id tempor eros. Mauris mollis dictum sodales. Nulla quis orci vulputate, consectetur dolor non, rutrum sem. Phasellus in dictum lorem, sit amet lobortis enim. Nulla nec ornare dui, quis tempor leo. Suspendisse auctor turpis et sapien porttitor accumsan. Nulla dapibus risus ex, et malesuada dui sodales eget.', 'Slika4.jpg', 'politik', 0),
(5, '12.1.2009', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in leo finibus, auctor felis tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra, tortor nec cursus rutrum, orci dolor hendrerit est, eu condimentum ex nisl consequat nunc. Sed non ullamcorper odio. Sed placerat suscipit urna eu egestas. Maecenas tellus orci, rutrum fermentum lectus ultricies, finibus varius nulla. Sed auctor risus ex, non blandit metus rutrum eu. Maecenas dictum lacus ac laoreet convallis. Morbi venenatis mauris quis diam tincidunt tincidunt. Ut consequat libero erat, vel placerat lorem elementum ac. Aenean bibendum fringilla elit, ut consequat libero interdum sed. Sed metus velit, interdum sit amet urna ac, pretium pellentesque felis. Suspendisse tincidunt nisl at nibh posuere, sit amet tempor enim dapibus. Proin posuere eget odio vel laoreet.\r\n\r\nDuis interdum, urna eget hendrerit hendrerit, velit arcu cursus elit, ullamcorper auctor leo arcu at nisl. Vivamus suscipit dolor id euismod mollis. Morbi iaculis vitae justo quis luctus. Phasellus in lorem id felis auctor maximus ac quis nisi. Duis fermentum, ante vel euismod elementum, felis mauris pretium lacus, vitae feugiat arcu leo sed nibh. Nulla tincidunt urna lacinia nunc suscipit commodo. Sed pulvinar velit a congue fringilla. Fusce vehicula augue risus, in ultricies felis mollis vel. Morbi vitae arcu id dui maximus venenatis non ac dui.\r\n\r\nDonec efficitur gravida metus sed consequat. Ut pellentesque massa in nulla commodo, non gravida ex porta. Cras luctus tortor tempus gravida hendrerit. Quisque interdum diam a nunc consequat sagittis a ut dolor. Quisque suscipit arcu vehicula, suscipit neque a, efficitur odio. Morbi vulputate justo vitae bibendum pharetra. Vestibulum in nibh sed nisl pellentesque vestibulum nec eget eros. Nam eu lorem risus.\r\n\r\nMaecenas metus nulla, sodales ut efficitur sed, fringilla at tellus. Proin auctor rutrum massa eu placerat. Nulla pretium leo et dui consectetur venenatis. Maecenas fermentum quam suscipit, facilisis massa ac, interdum ipsum. Curabitur tempus ac velit nec viverra. Nullam sodales at sem quis vestibulum. Aliquam erat volutpat. Maecenas vel augue elit. Vestibulum eu justo iaculis, sagittis elit vel, venenatis urna. Maecenas ac ipsum quis risus sollicitudin varius sed nec magna. Aenean a sapien nec risus consequat laoreet. Ut ligula risus, mattis nec vulputate at, sollicitudin eget felis. Quisque non dui sodales augue finibus suscipit. Nullam gravida quis urna quis cursus.\r\n\r\nMorbi pellentesque posuere placerat. Pellentesque id tempor eros. Mauris mollis dictum sodales. Nulla quis orci vulputate, consectetur dolor non, rutrum sem. Phasellus in dictum lorem, sit amet lobortis enim. Nulla nec ornare dui, quis tempor leo. Suspendisse auctor turpis et sapien porttitor accumsan. Nulla dapibus risus ex, et malesuada dui sodales eget.', 'Slika5.jpg', 'politik', 0),
(6, '12.1.2009', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in leo finibus, auctor felis tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra, tortor nec cursus rutrum, orci dolor hendrerit est, eu condimentum ex nisl consequat nunc. Sed non ullamcorper odio. Sed placerat suscipit urna eu egestas. Maecenas tellus orci, rutrum fermentum lectus ultricies, finibus varius nulla. Sed auctor risus ex, non blandit metus rutrum eu. Maecenas dictum lacus ac laoreet convallis. Morbi venenatis mauris quis diam tincidunt tincidunt. Ut consequat libero erat, vel placerat lorem elementum ac. Aenean bibendum fringilla elit, ut consequat libero interdum sed. Sed metus velit, interdum sit amet urna ac, pretium pellentesque felis. Suspendisse tincidunt nisl at nibh posuere, sit amet tempor enim dapibus. Proin posuere eget odio vel laoreet.\r\n\r\nDuis interdum, urna eget hendrerit hendrerit, velit arcu cursus elit, ullamcorper auctor leo arcu at nisl. Vivamus suscipit dolor id euismod mollis. Morbi iaculis vitae justo quis luctus. Phasellus in lorem id felis auctor maximus ac quis nisi. Duis fermentum, ante vel euismod elementum, felis mauris pretium lacus, vitae feugiat arcu leo sed nibh. Nulla tincidunt urna lacinia nunc suscipit commodo. Sed pulvinar velit a congue fringilla. Fusce vehicula augue risus, in ultricies felis mollis vel. Morbi vitae arcu id dui maximus venenatis non ac dui.\r\n\r\nDonec efficitur gravida metus sed consequat. Ut pellentesque massa in nulla commodo, non gravida ex porta. Cras luctus tortor tempus gravida hendrerit. Quisque interdum diam a nunc consequat sagittis a ut dolor. Quisque suscipit arcu vehicula, suscipit neque a, efficitur odio. Morbi vulputate justo vitae bibendum pharetra. Vestibulum in nibh sed nisl pellentesque vestibulum nec eget eros. Nam eu lorem risus.\r\n\r\nMaecenas metus nulla, sodales ut efficitur sed, fringilla at tellus. Proin auctor rutrum massa eu placerat. Nulla pretium leo et dui consectetur venenatis. Maecenas fermentum quam suscipit, facilisis massa ac, interdum ipsum. Curabitur tempus ac velit nec viverra. Nullam sodales at sem quis vestibulum. Aliquam erat volutpat. Maecenas vel augue elit. Vestibulum eu justo iaculis, sagittis elit vel, venenatis urna. Maecenas ac ipsum quis risus sollicitudin varius sed nec magna. Aenean a sapien nec risus consequat laoreet. Ut ligula risus, mattis nec vulputate at, sollicitudin eget felis. Quisque non dui sodales augue finibus suscipit. Nullam gravida quis urna quis cursus.\r\n\r\nMorbi pellentesque posuere placerat. Pellentesque id tempor eros. Mauris mollis dictum sodales. Nulla quis orci vulputate, consectetur dolor non, rutrum sem. Phasellus in dictum lorem, sit amet lobortis enim. Nulla nec ornare dui, quis tempor leo. Suspendisse auctor turpis et sapien porttitor accumsan. Nulla dapibus risus ex, et malesuada dui sodales eget.', 'Slika6.jpg', 'politik', 0),
(36, '27.06.2023', 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in leo finibus, auctor felis tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sodales fringilla felis. Fusce congue, ante nec lacinia porttitor, felis erat iaculis neque, vel porta tortor massa vitae ante. Vestibulum facilisis, mi eget euismod dignissim, libero ex sodales libero, vitae pretium urna nisl ut arcu. Vivamus auctor elementum est, eget dignissim orci dapibus vulputate. Maecenas hendrerit, lacus et vestibulum semper, orci est consectetur nisi, sed aliquam sem orci vel quam. Nunc vel tristique magna. Vivamus purus sapien, eleifend eget finibus et, tristique vel tellus.\r\n\r\nNunc dapibus ipsum nec elit lacinia dapibus. Curabitur laoreet tellus vel odio volutpat, vitae vestibulum dolor consequat. Cras tristique risus a libero eleifend, eget pellentesque felis efficitur. Sed ut arcu sit amet massa volutpat pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec vitae consectetur eros. Ut tincidunt sapien felis, ac gravida mi sagittis at. Suspendisse tincidunt leo in ipsum hendrerit, vel commodo ipsum condimentum. Vestibulum a viverra urna.\r\n\r\nPhasellus in massa in risus vestibulum ullamcorper ac nec elit. Etiam ac velit nec arcu iaculis consequat. Sed ornare tempor nisi. Sed fermentum dignissim urna. Nullam mattis congue dui sed convallis. Sed hendrerit sapien quis lacus pulvinar elementum. Integer non facilisis nisi. Praesent vehicula, dolor sed luctus commodo, ipsum eros tristique dui, eu lobortis augue neque eu felis.\r\n\r\nPhasellus tortor neque, tempor ac lectus nec, lacinia congue lacus. Morbi ullamcorper eleifend diam eu suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed eget lacus nisl. Quisque accumsan sollicitudin tortor, in maximus sem ornare sed. Pellentesque fringilla, eros vitae tempus tempor, justo sem laoreet nibh, tincidunt rhoncus mauris ex ac odio. Fusce non purus id dui auctor commodo. Suspendisse id libero volutpat, scelerisque est vitae, pellentesque ipsum. Vestibulum in neque id ipsum convallis pulvinar non a dolor. Curabitur ultricies ornare mattis. Etiam tristique imperdiet lectus eu consequat. Maecenas egestas mollis pellentesque. Integer accumsan vulputate lacus, a varius justo lobortis in.\r\n\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Morbi lorem tortor, pharetra ac elit eget, finibus ornare turpis. Vestibulum sed erat eu nibh auctor porta. Mauris congue mauris non eros commodo, ac lacinia sapien porttitor. Pellentesque arcu quam, facilisis quis sollicitudin tincidunt, interdum sit amet nisi. Vivamus interdum molestie urna id mattis. Vivamus dolor est, porttitor a velit luctus, porttitor volutpat magna.', 'Slika1.jpg', 'sport', 0);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `korisnicko_ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `lozinka` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baza`
--
ALTER TABLE `baza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`),
  ADD UNIQUE KEY `korisnicko_ime_2` (`korisnicko_ime`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baza`
--
ALTER TABLE `baza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
