-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2020 at 10:54 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gtsschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkboxoptions`
--

CREATE TABLE `checkboxoptions` (
  `id` int(10) NOT NULL,
  `questionId` int(10) NOT NULL,
  `options` varchar(1500) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkboxoptions`
--

INSERT INTO `checkboxoptions` (`id`, `questionId`, `options`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Four-year college or university ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(2, 1, 'Two-year community or junior college ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(3, 1, 'Vocational/technical school ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(4, 1, 'Undecided ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(5, 1, 'None', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(6, 2, 'Public university, state college, or community college ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(7, 2, 'Private university, college, or junior college (not religiously affiliated) ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(8, 2, 'Private, religiously affiliated university, college, or junior college ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(9, 2, 'Undecided', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(10, 3, 'All women or all men ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(11, 3, 'Coeducational ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(12, 3, 'Undecided', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(13, 4, 'Large city or metropolitan area ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(14, 4, 'Medium-size City ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(15, 4, 'Small city or town ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(16, 4, 'Suburban community ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(17, 4, 'Rural ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(18, 4, 'Undecided', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(19, 5, 'Close to home ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(20, 5, 'In my home state ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(21, 5, 'In a state bordering mine ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(22, 5, 'Beyond states bordering mine ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(23, 5, 'Outside the United States ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(24, 5, 'Undecided', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(25, 6, 'Fewer than 2,000 students ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(26, 6, 'About 2,000 to 5,000 students ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(27, 6, 'About 5,000 to 10,000 students ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(28, 6, 'About 10,000- 15,000 students ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(29, 6, 'About 15,000 - 20,000 students ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(30, 6, 'More than 20,000 students ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(31, 6, 'Undecided', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(32, 7, 'Did or will graduate early ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(33, 7, 'Did or will graduate late ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(34, 7, 'Did or will take time off ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(35, 7, 'Did or will take gap year ', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00'),
(36, 7, 'No change in progression', 0, '2019-09-27 14:54:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `checkboxquestions`
--

CREATE TABLE `checkboxquestions` (
  `id` int(10) NOT NULL,
  `question` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkboxquestions`
--

INSERT INTO `checkboxquestions` (`id`, `question`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What types of institutions are you interested in attending? ', 0, '2019-09-27 14:56:57', '0000-00-00 00:00:00'),
(2, 'Which of the following are you considering?', 0, '2019-09-27 14:56:57', '0000-00-00 00:00:00'),
(3, 'Which types of college are you considering?', 0, '2019-09-27 14:56:57', '0000-00-00 00:00:00'),
(4, 'What college setting do you prefer?', 0, '2019-09-27 14:56:57', '0000-00-00 00:00:00'),
(5, 'Where would you like to go to college?', 0, '2019-09-27 14:56:57', '0000-00-00 00:00:00'),
(6, 'What size college(s) are you thinking of attending?', 0, '2019-09-27 14:56:57', '0000-00-00 00:00:00'),
(7, 'Please indicate any of these options will have affected your progression through or since secondary/high school.', 0, '2019-09-27 14:56:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `checkboxselectionsxref`
--

CREATE TABLE `checkboxselectionsxref` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `checkboxQuestionId` int(11) NOT NULL,
  `checkboxOptionId` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkboxselectionsxref`
--

INSERT INTO `checkboxselectionsxref` (`id`, `stuId`, `checkboxQuestionId`, `checkboxOptionId`, `status`, `created_at`, `updated_at`) VALUES
(11, 3, 1, '5', 0, '2019-10-04 12:33:09', '0000-00-00 00:00:00'),
(12, 3, 2, '9', 0, '2019-10-04 12:33:09', '0000-00-00 00:00:00'),
(13, 3, 3, '12', 0, '2019-10-04 12:33:09', '0000-00-00 00:00:00'),
(14, 3, 4, '18', 0, '2019-10-04 12:33:09', '0000-00-00 00:00:00'),
(15, 3, 5, '24', 0, '2019-10-04 12:33:09', '0000-00-00 00:00:00'),
(16, 3, 6, '31', 0, '2019-10-04 12:33:09', '0000-00-00 00:00:00'),
(17, 3, 7, '36', 0, '2019-10-04 12:33:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `collegeoruniversity`
--

CREATE TABLE `collegeoruniversity` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `collegeName` varchar(200) NOT NULL,
  `joiningDate` date NOT NULL,
  `courseDetails` varchar(100) NOT NULL,
  `degreeEarned` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collegeoruniversity`
--

INSERT INTO `collegeoruniversity` (`id`, `stuId`, `collegeName`, `joiningDate`, `courseDetails`, `degreeEarned`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'fsdgdsgs', '2019-10-17', 'Summer program', 'BA', 0, '2019-10-04 22:36:18', '0000-00-00 00:00:00'),
(2, 224, 'Jaypee University of information Technology', '2019-07-21', 'Credit awarded directly by college', 'AA', 0, '2019-10-31 04:16:07', '0000-00-00 00:00:00'),
(3, 479, 'Govt College for boys gulberg Lahore', '2013-05-05', 'Credit awarded directly by college', 'BS', 0, '2019-11-13 07:54:54', '0000-00-00 00:00:00'),
(4, 519, 'Iqra university', '2017-08-08', 'Summer program', 'BA', 0, '2019-11-13 20:26:54', '0000-00-00 00:00:00'),
(5, 162, 'New York University ', '2020-04-11', 'Credit awarded directly by college', 'AA', 0, '2019-11-14 17:19:43', '0000-00-00 00:00:00'),
(6, 162, 'New York ', '2020-04-11', 'Credit awarded directly by college', 'AA', 0, '2019-11-14 17:49:03', '0000-00-00 00:00:00'),
(7, 557, 'Christ University ', '2015-06-07', 'Credit awarded directly by college', 'BA', 0, '2019-11-15 05:12:25', '0000-00-00 00:00:00'),
(8, 660, 'United college of aviation science and management ', '2019-10-10', 'Credit awarded directly by college', 'BS', 0, '2019-11-17 21:42:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `honors`
--

CREATE TABLE `honors` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `honorTitle` varchar(200) NOT NULL,
  `gradeLevel` int(10) NOT NULL,
  `levelOfRecognition` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `honors`
--

INSERT INTO `honors` (`id`, `stuId`, `honorTitle`, `gradeLevel`, `levelOfRecognition`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'test Honors', 12, 'State/Regional', 0, '2019-10-04 22:36:59', '0000-00-00 00:00:00'),
(2, 147, 'Prathiba award', 10, 'State/Regional', 0, '2019-10-28 00:31:52', '0000-00-00 00:00:00'),
(3, 147, 'Sate first rank', 10, 'State/Regional', 0, '2019-10-28 00:32:34', '0000-00-00 00:00:00'),
(4, 187, 'Merit certificate in National Financial Literacy Assessment test ', 9, 'National', 0, '2019-10-29 13:17:51', '0000-00-00 00:00:00'),
(5, 375, 'Pramerica Spirit Of Community Award for outstanding contribution to the society ', 11, 'International', 0, '2019-11-12 16:17:43', '0000-00-00 00:00:00'),
(6, 375, 'Trinity Guildhall Music Examination Grade 3', 9, 'International', 0, '2019-11-12 16:18:25', '0000-00-00 00:00:00'),
(7, 479, 'HEC Scholarship holder', 0, 'State/Regional', 0, '2019-11-13 07:55:32', '0000-00-00 00:00:00'),
(8, 479, 'Prime minister laptop holder', 0, 'National', 0, '2019-11-13 07:56:05', '0000-00-00 00:00:00'),
(9, 479, 'HEC Scholarship holder', 0, 'National', 0, '2019-11-13 07:56:17', '0000-00-00 00:00:00'),
(10, 162, 'Honors ', 12, 'National', 0, '2019-11-14 17:28:21', '0000-00-00 00:00:00'),
(11, 162, 'Honors ', 12, 'National', 0, '2019-11-14 17:50:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lookupapsubjects`
--

CREATE TABLE `lookupapsubjects` (
  `id` int(10) NOT NULL,
  `APsubjectName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupapsubjects`
--

INSERT INTO `lookupapsubjects` (`id`, `APsubjectName`) VALUES
(1, 'Art: Studio Art-2-D Design'),
(2, 'Art: Studio Art-3-D Design'),
(3, 'Art: Studio Art-drawing'),
(4, 'History of Art'),
(5, 'Biology'),
(6, 'Calculus AB'),
(7, 'Calculus BC'),
(8, 'Calculus BC - AB Subscore Grade'),
(9, 'Chemistry'),
(10, 'Chinese Language & Culture'),
(11, 'Computer Science A'),
(12, 'Computer Science Principles'),
(13, 'English Language & Composition'),
(14, 'English Literature & Composition'),
(15, 'Environmental Science'),
(16, 'European History'),
(17, 'French Language'),
(18, 'German Language'),
(19, 'Government & Politics: Comparative'),
(20, 'Government & Politics: United States'),
(21, 'Human Geography'),
(22, 'Italian Language & Culture'),
(23, 'Japanese Language & Culture'),
(24, 'Latin'),
(25, 'Latin: Literature'),
(26, 'Latin: Vergil'),
(27, 'Economics: Macroeconomics'),
(28, 'Economics: Microeconomics'),
(29, 'Music Theory'),
(30, 'Music Theory - AuraI Subscore'),
(31, 'Music Theory - Nonaural Subscore'),
(32, 'Physics 1'),
(33, 'Physics 2'),
(34, 'Physics B'),
(35, 'Physics C - Electricity & Magnetism'),
(36, 'Physics C Mechanics'),
(37, 'Psychology'),
(38, 'Research'),
(39, 'Seminar'),
(40, 'Spanish Language'),
(41, 'Spanish Literature'),
(42, 'United States History'),
(43, 'World Hlstoiy');

-- --------------------------------------------------------

--
-- Table structure for table `lookupareaofstudymajors`
--

CREATE TABLE `lookupareaofstudymajors` (
  `id` int(10) NOT NULL,
  `areasOfStudyId` int(10) NOT NULL,
  `Majors` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupareaofstudymajors`
--

INSERT INTO `lookupareaofstudymajors` (`id`, `areasOfStudyId`, `Majors`) VALUES
(1, 1, '100 Agriculture, Agriculture Operations, and Relat'),
(2, 1, '101 Agricultural Business and Management'),
(3, 1, '102 Agronomy and crop science'),
(4, 1, '103 Animal Sciences'),
(5, 1, '104 Applied horticulture/horticultural business se'),
(6, 1, '105 Equestrian/equine studies'),
(7, 1, '107 Food science and technology'),
(8, 1, '108 Soil sciences'),
(9, 1, '109 Agroecology/sustainable agriculture'),
(10, 2, '120 Architecture and Related Services'),
(11, 2, '121 Architecture'),
(12, 2, '122 Architectural technology/technician'),
(13, 2, '123 City/Urban, Community, and Regional Planning'),
(14, 2, '124 Environmental design'),
(15, 2, '125 Landscape Architecture'),
(16, 3, '140 Area, Ethnic, Cultural, Gender, and Group Stud'),
(17, 3, '141 Area Studies'),
(18, 3, '142 Ethnic,Cultural Minority, Gender and Group Stu'),
(19, 4, '160 Biological and Biomedical Sciences'),
(20, 4, '161 Biology/Biological Sciences, General'),
(21, 4, '162 Biochemistry'),
(22, 4, '163 Biophysics'),
(23, 4, '164 Biotechnology'),
(24, 4, '165 Botany/plant biology'),
(25, 4, '166 Cell/Cellular Biology and Anatomical Sciences'),
(26, 4, '167 Ecology'),
(27, 4, '168 Genetics'),
(28, 4, '169 Marine Biology and Biological Oceanography'),
(29, 4, '170 Microbiological Sciences and Immunology'),
(30, 4, '171 Molecular Biology'),
(31, 4, '172 Pharmacology and toxicology'),
(32, 4, '173 Physiology, pathology and related sciences'),
(33, 4, '174 Radiation biology/radiobiology'),
(34, 4, '175 Zoology/Animal Biology'),
(35, 4, '185 Neuroscience'),
(36, 5, '200 Business Management, Marketing, and Related Su'),
(37, 5, '201 Accounting and Related Services'),
(38, 5, '202 Actuarial Science'),
(39, 5, '203 Administrative assistant and secretarial scien'),
(40, 5, '204 Business Administration, Management,and Operat'),
(41, 5, '205 Business/managerial economics'),
(42, 5, '206 Business statistics'),
(43, 5, '207 Construction management'),
(44, 5, '208 Fashion Merchandising'),
(45, 5, '209 Finance and Financial Management Services'),
(46, 5, '210 General sales, merchandising and related marke'),
(47, 5, '211 Hospitality Administration/Management'),
(48, 5, '212 Human Resources Management and Services'),
(49, 5, '213 Insurance'),
(50, 5, '214 International Business'),
(51, 5, '215 Investments and securities'),
(52, 5, '216 Labor and industrial relations'),
(53, 5, '217 Management Information Systems and Services'),
(54, 5, '218 Marketing/Marketing Management'),
(55, 5, '219 Real estate'),
(56, 5, '220 Transportation/mobility management'),
(57, 5, '225 Hotel, motel, and Restaurant Management'),
(58, 5, '230 Meeting and Event Planning'),
(59, 5, '235 Project management'),
(60, 6, '250 Communication, Journalism, and Related Program'),
(61, 6, '252 Communication and Media Studies'),
(62, 6, '253 Digital Communication and Media/Multimedia'),
(63, 6, '254 Journalism'),
(64, 6, '255 Photojournalism'),
(65, 6, '257 Radio and Television'),
(66, 6, '270 Public Relations, Advertising, and Applied Com'),
(67, 7, '300 Computer and Information Sciences and Support '),
(68, 7, '301 Artificial Intelligence'),
(69, 7, '302 Computer Programming'),
(70, 7, '303 Computer Science'),
(71, 7, '304 Computer software and media applications'),
(72, 7, '305 Computer systems analysis'),
(73, 7, '306 Computer Systems Networking and Telecommunicat'),
(74, 7, '307 Data processing'),
(75, 7, '308 Information Sciences/Studies'),
(76, 7, '309 Information technology project management'),
(77, 7, '310 Modeling, virtual environments and simulation'),
(78, 8, '360 Military Technologies and Applied Sciences'),
(79, 9, '390 Construction trades'),
(80, 9, '391 Carpentry/carpenter'),
(81, 10, '400 Education'),
(82, 10, '401 Adult and continuing education and teaching'),
(83, 10, '402 Agricultural teacher education'),
(84, 10, '403 Art teacher education'),
(85, 10, '404 Bilingual, multilingual and multicultural educ'),
(86, 10, '405 Business teacher education'),
(87, 10, '407 Early Childhood Education and Teaching'),
(88, 10, '408 Educational administration and supervision'),
(89, 10, '416 Education/teaching of the gifted and talented'),
(90, 10, '417 Elementary Education and Teaching'),
(91, 10, '418 English/language arts teacher education'),
(92, 10, '419 Family and consumer sciences/home economics te'),
(93, 10, '420 Health teacher education'),
(94, 10, '421 Higher education/higher education administrati'),
(95, 10, '422 Junior high/intermediate/middle school educati'),
(96, 10, '423 Kindergarten/preschool education and teaching'),
(97, 10, '424 Mathematics teacher education'),
(98, 10, '425 Music teacher education'),
(99, 10, '426 Physical education teaching and coaching'),
(100, 10, '427 Psychology teacher education'),
(101, 10, '429 Science teacher education/general science teac'),
(102, 10, '430 Secondary Education and Teaching'),
(103, 10, '431 Social science teacher education'),
(104, 10, '432 Special Education and Teaching'),
(105, 10, '433 Student counseling and personnel services'),
(106, 10, '434 Teaching English as a second or foreign langua'),
(107, 10, '435 Technology teacher education/industrial arts t'),
(108, 11, '450 Engineering'),
(109, 11, '451 Aerospace, Aeronautical, and Space Engineering'),
(110, 11, '452 Agricultural Engineering'),
(111, 11, '453 Architectural Engineering'),
(112, 11, '454 Bioengineering and Biomedical Engineering'),
(113, 11, '455 Chemical Engineering'),
(114, 11, '456 Civil Engineering'),
(115, 11, '457 Computer Engineering, General'),
(116, 11, '458 Construction engineering'),
(117, 11, '459 Electrical and Electronics Engineering'),
(118, 11, '460 Engineering mechanics'),
(119, 11, '461 Engineering Physics/Applied Physics'),
(120, 11, '462 Engineering Science'),
(121, 11, '463 Environmental/Environmental Health Engineering'),
(122, 11, '464 Geological/Geophysical Engineering'),
(123, 11, '465 Industrial Engineering'),
(124, 11, '466 Materials Engineering'),
(125, 11, '467 Mechanical Engineering'),
(126, 11, '468 Mining and Mineral Engineering'),
(127, 11, '469 Naval architecture and marine engineering'),
(128, 11, '470 Nuclear Engineering'),
(129, 11, '471 Ocean engineering'),
(130, 11, '472 Petroleum Engineering'),
(131, 11, '473 Surveying engineering'),
(132, 11, '475 Polymer/Plastics Engineering'),
(133, 11, '478 Biochemical engineering'),
(134, 11, '480 Biological/biosystems engineering'),
(135, 11, '485 Engineering chemistry'),
(136, 11, '490 Preengineering'),
(137, 12, '500 Engineering Technologies'),
(138, 12, '501 Computer Engineering Technology'),
(139, 12, '502 Drafting/Design Engineering Technologies'),
(140, 12, '507 Nuclear engineering technology'),
(141, 12, '508 Plastics and polymer engineering technology'),
(142, 12, '509 Telecommunications Technology/Technician'),
(143, 12, '510 Civil engineering technology'),
(144, 12, '511 Electrical engineering technologies'),
(145, 12, '512 Environmental control technologies'),
(146, 12, '513 Industrial production technologies'),
(147, 12, '514 Mechanical engineering/technologies'),
(148, 12, '515 Nanotechnology'),
(149, 12, '516 Robotics technology'),
(150, 13, '520 English Language and Literature/Letters'),
(151, 13, '521 American literature (United States and Canada)'),
(152, 13, '522 Creative Writing'),
(153, 13, '523 English literature (British and Commonwealth)'),
(154, 13, '525 Professional, technical, business and scientif'),
(155, 13, '535 Rhetoric and composition/writing studies'),
(156, 14, '540 Family and Consumer Sciences/Human Sciences'),
(157, 14, '541 Apparel and textiles'),
(158, 14, '542 Foods, Nutrition, and Wellness Studies'),
(159, 14, '543 Housing and human environments'),
(160, 14, '544 Human development, family studies and related '),
(161, 14, '550 Foreign Languages, Literatures, and Linguistic'),
(162, 14, '551 African languages, literatures and linguistics'),
(163, 14, '552 Arabic language and literature'),
(164, 14, '553 Classics and Classical Languages, Literatures,'),
(165, 14, '554 Comparative Literature'),
(166, 14, '555 East Asian Languages, Literatures, and Linguis'),
(167, 14, '556 French Language and Literature'),
(168, 14, '557 German Language and Literature'),
(169, 14, '558 Italian language and literature'),
(170, 14, '559 Linguistics'),
(171, 15, '560 Russian Language and Literature'),
(172, 15, '561 Spanish Language and Literature'),
(173, 16, '600 Health Professions and Related Programs'),
(174, 16, '601 Allied health and medical assisting services'),
(175, 16, '602 Allied Health Diagnostic, Intervention, and Tr'),
(176, 16, '603 Athletic Training/Trainer'),
(177, 16, '605 Clinical/Medical Laboratory Science/Research a'),
(178, 16, '606 Communication Sciences and Disorders'),
(179, 16, '607 Dental Hygiene/Hygienist'),
(180, 16, '608 Dental laboratory technology/technician'),
(181, 16, '609 Dental support services and allied professions'),
(182, 16, '610 Dietetics and Clinical Nutrition Services'),
(183, 16, '611 Environmental health'),
(184, 16, '612 Health and medical administrative services'),
(185, 16, '613 Health services/allied health/health sciences'),
(186, 16, '614 Hospital/health care facilities administration'),
(187, 16, '615 Mental and social health services'),
(188, 16, '616 Music therapy/therapist'),
(189, 16, '617 Nuclear medical technology/ technologist'),
(190, 16, '618 Nurse anesthetist'),
(191, 16, '619 Nursing'),
(192, 16, '622 Osteopathic medicine/osteopathy (DO)'),
(193, 16, '625 Physician assistant'),
(194, 16, '626 Podiatric medicine/podiatry (DPM)'),
(195, 16, '627 Predentistry Studies'),
(196, 16, '628 Premedicine/Premedical Studies'),
(197, 16, '629 Prepharmacy Studies'),
(198, 16, '630 Preveterinary Studies'),
(199, 16, '631 Public health'),
(200, 16, '632 Radiologic technology/science'),
(201, 16, '633 Rehabilitation and therapeutic professions'),
(202, 16, '634 Respiratory care therapy/therapist'),
(203, 16, '636 Surgical technology/technologist'),
(204, 16, '637 Therapeutic recreation/recreational therapy'),
(205, 16, '640 Alternative and complementary medicine and med'),
(206, 16, '650 Health and wellness'),
(207, 16, '670 Pharmaceutical marketing and management'),
(208, 16, '671 Pharmaceutical sciences'),
(209, 16, '675 Prechiropractic studies'),
(210, 16, '678 Preoccupational Therapy Studies'),
(211, 16, '680 Preoptometry studies'),
(212, 16, '682 Prephysical Therapy Studies'),
(213, 17, '700 History'),
(214, 17, '701 American history (United States)'),
(215, 17, '702 European history'),
(216, 18, '710 Legal Professions and Studies'),
(217, 18, '711 Legal assistant/paralegal'),
(218, 18, '712 Prelaw Studies'),
(219, 19, '720 Liberal Arts and Sciences, General Studies, an'),
(220, 19, '721 General studies'),
(221, 19, '722 Humanities/Humanistic Studies'),
(222, 19, '723 Liberal Arts and Sciences/Liberal Studies'),
(223, 20, '730 Library science and administration'),
(224, 20, '731 Library and archives assisting'),
(225, 21, '740 Mathematics and Statistics'),
(226, 21, '741 Applied Mathematics'),
(227, 21, '742 Mathematics'),
(228, 21, '743 Statistics'),
(229, 21, '746 Financial mathematics'),
(230, 22, '750 Mechanic and repair technologies/ technician'),
(231, 22, '751 Airframe mechanics and aircraft maintenance te'),
(232, 22, '752 Automobile/automotive mechanics technology'),
(233, 22, '753 Electrical/electronics maintenance and repair '),
(234, 22, '754 Heating, air conditioning, ventilation and ref'),
(235, 23, '770 Multi/Interdisciplinary Studies'),
(236, 23, '771 Biological and Physical Sciences'),
(237, 23, '772 International/Global Studies'),
(238, 23, '773 Mathematics and Computer Science'),
(239, 23, '775 Nutrition sciences'),
(240, 23, '780 Human biology'),
(241, 23, '784 Marine sciences'),
(242, 23, '787 Sustainability studies'),
(243, 24, '790 Natural Resources and Conservation'),
(244, 24, '791 Environmental Science'),
(245, 24, '792 Environmental Studies'),
(246, 24, '793 Fishing and Fisheries Sciences and Management'),
(247, 24, '794 Forestry'),
(248, 24, '795 Natural resources management and policy'),
(249, 24, '796 Wildlife, Fish, Wildlands Science/Management'),
(250, 25, '800 Parks, Recreation, Leisure, and Fitness Studie'),
(251, 25, '801 Health and physical education/fitness'),
(252, 25, '802 Parks and Recreation Facilities Management'),
(253, 25, '803 Sport and Fitness Administration/Management'),
(254, 25, '804 Outdoor education'),
(255, 25, '805 Sports studies'),
(256, 26, '810 Personal and Culinary Services'),
(257, 26, '811 Cosmetology and personal grooming services'),
(258, 26, '812 Funeral service and mortuary science'),
(259, 26, '815 Culinary arts and related services'),
(260, 27, '820 Philosophy and Religious Studies'),
(261, 27, '821 Philosophy'),
(262, 27, '822 Religion/Religious Studies'),
(263, 28, '830 Physical Sciences'),
(264, 28, '831 Analytical chemistry'),
(265, 28, '832 Astronomy'),
(266, 28, '833 Astrophysics'),
(267, 28, '834 Atmospheric Sciences and Meteorology'),
(268, 28, '835 Atomic/molecular physics'),
(269, 28, '836 Chemistry'),
(270, 28, '837 Geological and Earth Sciences/Geosciences'),
(271, 28, '838 Nuclear physics'),
(272, 28, '839 Oceanography, chemical and physical'),
(273, 28, '840 Organic chemistry'),
(274, 28, '841 Paleontology'),
(275, 28, '842 Physical chemistry'),
(276, 28, '843 Physics'),
(277, 28, '844 Planetary astronomy and science'),
(278, 28, '850 Forensic chemistry'),
(279, 28, '854 Materials Science'),
(280, 29, '860 Precision production'),
(281, 29, '861 Machine tool technology/machinist'),
(282, 29, '862 Precision metal working'),
(283, 30, '870 Psychology'),
(284, 30, '871 Clinical psychology'),
(285, 30, '872 Developmental and child psychology'),
(286, 30, '873 Experimental psychology'),
(287, 30, '874 Industrial and organizational psychology'),
(288, 30, '875 Social psychology'),
(289, 31, '880 Public Administration and Social Services'),
(290, 31, '881 Human Services, General'),
(291, 31, '882 Public Administration'),
(292, 31, '883 Public Policy Analysis'),
(293, 31, '884 Social Work'),
(294, 32, '890 Homeland Security, Law Enforcement, Firefighti'),
(295, 32, '891 Criminal justice and corrections'),
(296, 32, '892 Criminal Justice/Law Enforcement Administratio'),
(297, 32, '893 Fire protection'),
(298, 32, '894 Forensic Science and Technology'),
(299, 32, '895 Cyber/computer forensics/counterterrorism'),
(300, 32, '896 Financial forensics and fraud investigation'),
(301, 32, '897 Homeland Security'),
(302, 33, '900 Social Sciences'),
(303, 33, '901 Anthropology'),
(304, 33, '902 Archaeology'),
(305, 33, '903 Criminology'),
(306, 33, '904 Economics'),
(307, 33, '905 Geography'),
(308, 33, '906 International Relations and Affairs'),
(309, 33, '907 Political Science and Government'),
(310, 33, '908 Sociology'),
(311, 34, '920 Theology and Religious Vocations'),
(312, 34, '921 Religious education'),
(313, 34, '922 Theological and ministerial studies'),
(314, 35, '930 Transportation and materials moving'),
(315, 35, '931 Airline flight attendant'),
(316, 35, '932 Air traffic controller'),
(317, 36, '940 Visual and Performing Arts'),
(318, 36, '941 Art History, Criticism and Conservation'),
(319, 36, '942 Dance'),
(320, 36, '943 Drama and Theater Arts'),
(321, 36, '944 Design and applied arts'),
(322, 36, '945 Fashion/Apparel Design'),
(323, 36, '946 Film/Video and Photographic Arts'),
(324, 36, '947 Fine and Studio Art'),
(325, 36, '948 Graphic Design'),
(326, 36, '949 Interior Design'),
(327, 36, '950 Music'),
(328, 36, '951 Music history, literature and theory'),
(329, 36, '952 Music performance, general'),
(330, 36, '953 Music theory and composition'),
(331, 36, '954 Photography'),
(332, 36, '955 Technical Theater/Theater Design and Technolog'),
(333, 36, '956 Voice and opera'),
(334, 36, '960 Arts, Entertainment and Media Management'),
(335, 36, '965 Digital arts'),
(336, 36, '970 Game and Interactive Media Design'),
(337, 36, '975 Music technology'),
(338, 36, '976 Musical theater'),
(339, 37, '990 OTHER'),
(340, 38, '999 UNDECIDED');

-- --------------------------------------------------------

--
-- Table structure for table `lookupareasofstudy`
--

CREATE TABLE `lookupareasofstudy` (
  `id` int(10) NOT NULL,
  `areasOfStudy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupareasofstudy`
--

INSERT INTO `lookupareasofstudy` (`id`, `areasOfStudy`) VALUES
(1, '100 Agriculture, Agriculture Operations, and Related Sciences'),
(2, '120 Architecture and Related Services'),
(3, '140 Area, Ethnic, Cultural, Gender, and Group Studies'),
(4, '160 Biological and Biomedical Sciences'),
(5, '200 Business Management, Marketing, and Related Support Services'),
(6, '250 Communication, Journalism, and Related Programs'),
(7, '300 Computer and Information Sciences and Support Services'),
(8, '360 Military Technologies and Applied Sciences'),
(9, '390 Construction trades'),
(10, '400 Education'),
(11, '450 Engineering'),
(12, '500 Engineering Technologies'),
(13, '520 English Language and Literature/Letters'),
(14, '540 Family and Consumer Sciences/Human Sciences'),
(15, '550 Foreign Languages, Literatures, and Linguistics'),
(16, '600 Health Professions and Related Programs'),
(17, '700 History'),
(18, '710 Legal Professions and Studies'),
(19, '720 Liberal Arts and Sciences, General Studies, and Humanities'),
(20, '730 Library science and administration'),
(21, '740 Mathematics and Statistics'),
(22, '750 Mechanic and repair technologies/ technician'),
(23, '770 Multi/Interdisciplinary Studies'),
(24, '790 Natural Resources and Conservation'),
(25, '800 Parks, Recreation, Leisure, and Fitness Studies'),
(26, '810 Personal and Culinary Services'),
(27, '820 Philosophy and Religious Studies'),
(28, '830 Physical Sciences'),
(29, '860 Precision production'),
(30, '870 Psychology'),
(31, '880 Public Administration and Social Services'),
(32, '890 Homeland Security, Law Enforcement, Firefighting and Related Protective Services'),
(33, '900 Social Sciences'),
(34, '920 Theology and Religious Vocations'),
(35, '930 Transportation and materials moving'),
(36, '940 Visual and Performing Arts'),
(37, '990 OTHER'),
(38, '999 UNDECIDED');

-- --------------------------------------------------------

--
-- Table structure for table `lookupcountry`
--

CREATE TABLE `lookupcountry` (
  `id` int(10) NOT NULL,
  `countryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupcountry`
--

INSERT INTO `lookupcountry` (`id`, `countryName`) VALUES
(1, 'Aaland Islands'),
(2, 'Afganistan'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bonaire, Sint Eustasius, and Saba'),
(29, 'Bosnia and Herzegovina'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British India Ocean Territory'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Birkina Faso'),
(37, 'Burundi'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cape Verde'),
(42, 'Cayman Islands'),
(43, 'Central African Republic'),
(44, 'Chad'),
(45, 'Chile'),
(46, 'China'),
(47, 'Christmas Island'),
(48, 'Cocos (Keeling) Island'),
(49, 'Colombia'),
(50, 'Comoros'),
(51, 'Congo'),
(52, 'Cook Islands'),
(53, 'Costa Rica'),
(54, 'Cote D\'lvoire'),
(55, 'Croatia'),
(56, 'Cuba'),
(57, 'Curacao'),
(58, 'Cyprus'),
(59, 'Czechia'),
(60, 'Denmark'),
(61, 'Djibouti'),
(62, 'Dominica'),
(63, 'Dominican Republic'),
(64, 'Ecuador'),
(65, 'Egypt'),
(66, 'El Salvador'),
(67, 'Equitorial Guinea'),
(68, 'Eritrea'),
(69, 'Estonia'),
(70, 'Ethiopia'),
(71, 'Falkland Islands (Malvinas)'),
(72, 'Faroe Islands'),
(73, 'Fiji'),
(74, 'Finland'),
(75, 'France'),
(76, 'French Guiana'),
(77, 'French Polynesia'),
(78, 'French Southern Terrritories'),
(79, 'Gabon'),
(80, 'Gambia'),
(81, 'Georgia'),
(82, 'Germany'),
(83, 'Ghana'),
(84, 'Gibraltar'),
(85, 'Greece'),
(86, 'Greenland'),
(87, 'Grenada'),
(88, 'Guadeloupe'),
(89, 'Guam'),
(90, 'Guatemala'),
(91, 'Guernsey'),
(92, 'Guinea'),
(93, 'Guinea - Bissau'),
(94, 'Guyana'),
(95, 'Haiti'),
(96, 'Heard Island and Mcdonald Islands'),
(97, 'Holy Sea (Vatican City State)'),
(98, 'Honduras'),
(99, 'Hong Kong'),
(100, 'Hungary'),
(101, 'Iceland'),
(102, 'India'),
(103, 'Indonesia'),
(104, 'Iran'),
(105, 'Iraq'),
(106, 'Ireland'),
(107, 'Isle of Man'),
(108, 'Israel'),
(109, 'Italy'),
(110, 'Jamaica'),
(111, 'Japan'),
(112, 'Jersey'),
(113, 'Jordan'),
(114, 'Kazakhstan'),
(115, 'Kenya'),
(116, 'Kiribati'),
(117, 'Korea, North (DPR)'),
(118, 'Korea, South (ROK)'),
(119, 'Kosovo'),
(120, 'Kuwait'),
(121, 'Kyrgyzstan'),
(122, 'Lao People\'s Democratic Republic'),
(123, 'Latvia'),
(124, 'Lebanon'),
(125, 'Lesotho'),
(126, 'Liberia'),
(127, 'Libya'),
(128, 'Liechtenstein'),
(129, 'Lithuania'),
(130, 'Luxembourg'),
(131, 'Macao'),
(132, 'Macedonia, The Former Yugoslav Republic'),
(133, 'Madagaskar'),
(134, 'Malawi'),
(135, 'Malaysia'),
(136, 'Maldives'),
(137, 'Mali'),
(138, 'Malta'),
(139, 'Marshall Islands'),
(140, 'Martinique'),
(141, 'Mauritania'),
(142, 'Mauritius'),
(143, 'Mayotte'),
(144, 'Mexico'),
(145, 'Micronesia'),
(146, 'Moldova'),
(147, 'Monaco'),
(148, 'Mongolia'),
(149, 'Montenegro'),
(150, 'Montserrat'),
(151, 'Morocco'),
(152, 'Mozambique'),
(153, 'Myanmar'),
(154, 'Namibia'),
(155, 'Nauru'),
(156, 'Nepal'),
(157, 'Netherlands'),
(158, 'New Caledonia'),
(159, 'New Zealand'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Phillipines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Barthelemy'),
(185, 'Saint Helena, Ascension and Tristan de Cunha'),
(186, 'Saint Kitts and Nevis'),
(187, 'Saint Lucia'),
(188, 'Saint Martin (French Part)'),
(189, 'Saint Pierre and Miquelon'),
(190, 'Saint Vincent and The Grenadines'),
(191, 'Samoa'),
(192, 'San Marino'),
(193, 'Sao Tome and Principe'),
(194, 'Saudi Arabia'),
(195, 'Senegal'),
(196, 'Serbia'),
(197, 'Saychelles'),
(198, 'Sierra Leone'),
(199, 'Singapore'),
(200, 'Sint Marteen (Dutch part)'),
(201, 'Slovakia'),
(202, 'Slovenia'),
(203, 'Solomon Islands'),
(204, 'Somalia'),
(205, 'South Africa'),
(206, 'South Georgia and The South Sandwich Islands'),
(207, 'South Sudan'),
(208, 'Spain'),
(209, 'Sri Lanka'),
(210, 'Sudan'),
(211, 'Suriname'),
(212, 'Svalbard and Jan Mayen'),
(213, 'Swaziland'),
(214, 'Sweden'),
(215, 'Switzerland'),
(216, 'Syrian Arab Republic'),
(217, 'Taiwan'),
(218, 'Tajikistan'),
(219, 'Tanzania'),
(220, 'Thailand'),
(221, 'Timor-Leste'),
(222, 'Togo'),
(223, 'Tokelau'),
(224, 'Tonga'),
(225, 'Trinidad and Tobago'),
(226, 'Tunisia'),
(227, 'Turkey'),
(228, 'Turkmenistan'),
(229, 'Turks and Caicos Islands'),
(230, 'Tuvalu'),
(231, 'Uganda'),
(232, 'Ukraine'),
(233, 'United Arab Emirates'),
(234, 'United Kingdom'),
(235, 'Uruguay'),
(236, 'Uzbekistan'),
(237, 'Vanuatu'),
(238, 'Venezuela'),
(239, 'Viet Nam'),
(240, 'Virgin Islands, British'),
(241, 'Virgin Islands, U.S'),
(242, 'Wallis and Futuna'),
(243, 'Western Sahara'),
(244, 'Yemen'),
(245, 'Zambia'),
(246, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `lookupcountrycode`
--

CREATE TABLE `lookupcountrycode` (
  `id` int(10) NOT NULL,
  `countryName` varchar(50) NOT NULL,
  `countryCode` varchar(5) NOT NULL,
  `isoCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupcountrycode`
--

INSERT INTO `lookupcountrycode` (`id`, `countryName`, `countryCode`, `isoCode`) VALUES
(2, 'Afghanistan', '93', 'AF / AFG'),
(3, 'Albania', '355', 'AL / ALB'),
(4, 'Algeria', '213', 'DZ / DZA'),
(5, 'American Samoa', '1-684', 'AS / ASM'),
(6, 'Andorra', '376', 'AD / AND'),
(7, 'Angola', '244', 'AO / AGO'),
(8, 'Anguilla', '1-264', 'AI / AIA'),
(9, 'Antarctica', '672', 'AQ / ATA'),
(10, 'Antigua and Barbuda', '1-268', 'AG / ATG'),
(11, 'Argentina', '54', 'AR / ARG'),
(12, 'Armenia', '374', 'AM / ARM'),
(13, 'Aruba', '297', 'AW / ABW'),
(14, 'Australia', '61', 'AU / AUS'),
(15, 'Austria', '43', 'AT / AUT'),
(16, 'Azerbaijan', '994', 'AZ / AZE'),
(17, 'Bahamas', '1-242', 'BS / BHS'),
(18, 'Bahrain', '973', 'BH / BHR'),
(19, 'Bangladesh', '880', 'BD / BGD'),
(20, 'Barbados', '1-246', 'BB / BRB'),
(21, 'Belarus', '375', 'BY / BLR'),
(22, 'Belgium', '32', 'BE / BEL'),
(23, 'Belize', '501', 'BZ / BLZ'),
(24, 'Benin', '229', 'BJ / BEN'),
(25, 'Bermuda', '1-441', 'BM / BMU'),
(26, 'Bhutan', '975', 'BT / BTN'),
(27, 'Bolivia', '591', 'BO / BOL'),
(28, 'Bosnia and Herzegovina', '387', 'BA / BIH'),
(29, 'Botswana', '267', 'BW / BWA'),
(30, 'Brazil', '55', 'BR / BRA'),
(31, 'British Indian Ocean Territory', '246', 'IO / IOT'),
(32, 'British Virgin Islands', '1-284', 'VG / VGB'),
(33, 'Brunei', '673', 'BN / BRN'),
(34, 'Bulgaria', '359', 'BG / BGR'),
(35, 'Burkina Faso', '226', 'BF / BFA'),
(36, 'Burundi', '257', 'BI / BDI'),
(37, 'Cambodia', '855', 'KH / KHM'),
(38, 'Cameroon', '237', 'CM / CMR'),
(39, 'Canada', '1', 'CA / CAN'),
(40, 'Cape Verde', '238', 'CV / CPV'),
(41, 'Cayman Islands', '1-345', 'KY / CYM'),
(42, 'Central African Republic', '236', 'CF / CAF'),
(43, 'Chad', '235', 'TD / TCD'),
(44, 'Chile', '56', 'CL / CHL'),
(45, 'China', '86', 'CN / CHN'),
(46, 'Christmas Island', '61', 'CX / CXR'),
(47, 'Cocos Islands', '61', 'CC / CCK'),
(48, 'Colombia', '57', 'CO / COL'),
(49, 'Comoros', '269', 'KM / COM'),
(50, 'Cook Islands', '682', 'CK / COK'),
(51, 'Costa Rica', '506', 'CR / CRI'),
(52, 'Croatia', '385', 'HR / HRV'),
(53, 'Cuba', '53', 'CU / CUB'),
(54, 'Curacao', '599', 'CW / CUW'),
(55, 'Cyprus', '357', 'CY / CYP'),
(56, 'Czech Republic', '420', 'CZ / CZE'),
(57, 'Democratic Republic of the Congo', '243', 'CD / COD'),
(58, 'Denmark', '45', 'DK / DNK'),
(59, 'Djibouti', '253', 'DJ / DJI'),
(60, 'Dominica', '1-767', 'DM / DMA'),
(61, 'Dominican Republic', '1-809', 'DO / DOM'),
(62, 'East Timor', '670', 'TL / TLS'),
(63, 'Ecuador', '593', 'EC / ECU'),
(64, 'Egypt', '20', 'EG / EGY'),
(65, 'El Salvador', '503', 'SV / SLV'),
(66, 'Equatorial Guinea', '240', 'GQ / GNQ'),
(67, 'Eritrea', '291', 'ER / ERI'),
(68, 'Estonia', '372', 'EE / EST'),
(69, 'Ethiopia', '251', 'ET / ETH'),
(70, 'Falkland Islands', '500', 'FK / FLK'),
(71, 'Faroe Islands', '298', 'FO / FRO'),
(72, 'Fiji', '679', 'FJ / FJI'),
(73, 'Finland', '358', 'FI / FIN'),
(74, 'France', '33', 'FR / FRA'),
(75, 'French Polynesia', '689', 'PF / PYF'),
(76, 'Gabon', '241', 'GA / GAB'),
(77, 'Gambia', '220', 'GM / GMB'),
(78, 'Georgia', '995', 'GE / GEO'),
(79, 'Germany', '49', 'DE / DEU'),
(80, 'Ghana', '233', 'GH / GHA'),
(81, 'Gibraltar', '350', 'GI / GIB'),
(82, 'Greece', '30', 'GR / GRC'),
(83, 'Greenland', '299', 'GL / GRL'),
(84, 'Grenada', '1-473', 'GD / GRD'),
(85, 'Guam', '1-671', 'GU / GUM'),
(86, 'Guatemala', '502', 'GT / GTM'),
(87, 'Guernsey', '44-14', 'GG / GGY'),
(88, 'Guinea', '224', 'GN / GIN'),
(89, 'Guinea-Bissau', '245', 'GW / GNB'),
(90, 'Guyana', '592', 'GY / GUY'),
(91, 'Haiti', '509', 'HT / HTI'),
(92, 'Honduras', '504', 'HN / HND'),
(93, 'Hong Kong', '852', 'HK / HKG'),
(94, 'Hungary', '36', 'HU / HUN'),
(95, 'Iceland', '354', 'IS / ISL'),
(96, 'India', '91', 'IN / IND'),
(97, 'Indonesia', '62', 'ID / IDN'),
(98, 'Iran', '98', 'IR / IRN'),
(99, 'Iraq', '964', 'IQ / IRQ'),
(100, 'Ireland', '353', 'IE / IRL'),
(101, 'Isle of Man', '44-16', 'IM / IMN'),
(102, 'Israel', '972', 'IL / ISR'),
(103, 'Italy', '39', 'IT / ITA'),
(104, 'Ivory Coast', '225', 'CI / CIV'),
(105, 'Jamaica', '1-876', 'JM / JAM'),
(106, 'Japan', '81', 'JP / JPN'),
(107, 'Jersey', '44-15', 'JE / JEY'),
(108, 'Jordan', '962', 'JO / JOR'),
(109, 'Kazakhstan', '7', 'KZ / KAZ'),
(110, 'Kenya', '254', 'KE / KEN'),
(111, 'Kiribati', '686', 'KI / KIR'),
(112, 'Kosovo', '383', 'XK / XKX'),
(113, 'Kuwait', '965', 'KW / KWT'),
(114, 'Kyrgyzstan', '996', 'KG / KGZ'),
(115, 'Laos', '856', 'LA / LAO'),
(116, 'Latvia', '371', 'LV / LVA'),
(117, 'Lebanon', '961', 'LB / LBN'),
(118, 'Lesotho', '266', 'LS / LSO'),
(119, 'Liberia', '231', 'LR / LBR'),
(120, 'Libya', '218', 'LY / LBY'),
(121, 'Liechtenstein', '423', 'LI / LIE'),
(122, 'Lithuania', '370', 'LT / LTU'),
(123, 'Luxembourg', '352', 'LU / LUX'),
(124, 'Macau', '853', 'MO / MAC'),
(125, 'Macedonia', '389', 'MK / MKD'),
(126, 'Madagascar', '261', 'MG / MDG'),
(127, 'Malawi', '265', 'MW / MWI'),
(128, 'Malaysia', '60', 'MY / MYS'),
(129, 'Maldives', '960', 'MV / MDV'),
(130, 'Mali', '223', 'ML / MLI'),
(131, 'Malta', '356', 'MT / MLT'),
(132, 'Marshall Islands', '692', 'MH / MHL'),
(133, 'Mauritania', '222', 'MR / MRT'),
(134, 'Mauritius', '230', 'MU / MUS'),
(135, 'Mayotte', '262', 'YT / MYT'),
(136, 'Mexico', '52', 'MX / MEX'),
(137, 'Micronesia', '691', 'FM / FSM'),
(138, 'Moldova', '373', 'MD / MDA'),
(139, 'Monaco', '377', 'MC / MCO'),
(140, 'Mongolia', '976', 'MN / MNG'),
(141, 'Montenegro', '382', 'ME / MNE'),
(142, 'Montserrat', '1-664', 'MS / MSR'),
(143, 'Morocco', '212', 'MA / MAR'),
(144, 'Mozambique', '258', 'MZ / MOZ'),
(145, 'Myanmar', '95', 'MM / MMR'),
(146, 'Namibia', '264', 'NA / NAM'),
(147, 'Nauru', '674', 'NR / NRU'),
(148, 'Nepal', '977', 'NP / NPL'),
(149, 'Netherlands', '31', 'NL / NLD'),
(150, 'Netherlands Antilles', '599', 'AN / ANT'),
(151, 'New Caledonia', '687', 'NC / NCL'),
(152, 'New Zealand', '64', 'NZ / NZL'),
(153, 'Nicaragua', '505', 'NI / NIC'),
(154, 'Niger', '227', 'NE / NER'),
(155, 'Nigeria', '234', 'NG / NGA'),
(156, 'Niue', '683', 'NU / NIU'),
(157, 'North Korea', '850', 'KP / PRK'),
(158, 'Northern Mariana Islands', '1-670', 'MP / MNP'),
(159, 'Norway', '47', 'NO / NOR'),
(160, 'Oman', '968', 'OM / OMN'),
(161, 'Pakistan', '92', 'PK / PAK'),
(162, 'Palau', '680', 'PW / PLW'),
(163, 'Palestine', '970', 'PS / PSE'),
(164, 'Panama', '507', 'PA / PAN'),
(165, 'Papua New Guinea', '675', 'PG / PNG'),
(166, 'Paraguay', '595', 'PY / PRY'),
(167, 'Peru', '51', 'PE / PER'),
(168, 'Philippines', '63', 'PH / PHL'),
(169, 'Pitcairn', '64', 'PN / PCN'),
(170, 'Poland', '48', 'PL / POL'),
(171, 'Portugal', '351', 'PT / PRT'),
(172, 'Puerto Rico', '1-787', 'PR / PRI'),
(173, 'Qatar', '974', 'QA / QAT'),
(174, 'Republic of the Congo', '242', 'CG / COG'),
(175, 'Reunion', '262', 'RE / REU'),
(176, 'Romania', '40', 'RO / ROU'),
(177, 'Russia', '7', 'RU / RUS'),
(178, 'Rwanda', '250', 'RW / RWA'),
(179, 'Saint Barthelemy', '590', 'BL / BLM'),
(180, 'Saint Helena', '290', 'SH / SHN'),
(181, 'Saint Kitts and Nevis', '1-869', 'KN / KNA'),
(182, 'Saint Lucia', '1-758', 'LC / LCA'),
(183, 'Saint Martin', '590', 'MF / MAF'),
(184, 'Saint Pierre and Miquelon', '508', 'PM / SPM'),
(185, 'Saint Vincent and the Grenadines', '1-784', 'VC / VCT'),
(186, 'Samoa', '685', 'WS / WSM'),
(187, 'San Marino', '378', 'SM / SMR'),
(188, 'Sao Tome and Principe', '239', 'ST / STP'),
(189, 'Saudi Arabia', '966', 'SA / SAU'),
(190, 'Senegal', '221', 'SN / SEN'),
(191, 'Serbia', '381', 'RS / SRB'),
(192, 'Seychelles', '248', 'SC / SYC'),
(193, 'Sierra Leone', '232', 'SL / SLE'),
(194, 'Singapore', '65', 'SG / SGP'),
(195, 'Sint Maarten', '1-721', 'SX / SXM'),
(196, 'Slovakia', '421', 'SK / SVK'),
(197, 'Slovenia', '386', 'SI / SVN'),
(198, 'Solomon Islands', '677', 'SB / SLB'),
(199, 'Somalia', '252', 'SO / SOM'),
(200, 'South Africa', '27', 'ZA / ZAF'),
(201, 'South Korea', '82', 'KR / KOR'),
(202, 'South Sudan', '211', 'SS / SSD'),
(203, 'Spain', '34', 'ES / ESP'),
(204, 'Sri Lanka', '94', 'LK / LKA'),
(205, 'Sudan', '249', 'SD / SDN'),
(206, 'Suriname', '597', 'SR / SUR'),
(207, 'Svalbard and Jan Mayen', '47', 'SJ / SJM'),
(208, 'Swaziland', '268', 'SZ / SWZ'),
(209, 'Sweden', '46', 'SE / SWE'),
(210, 'Switzerland', '41', 'CH / CHE'),
(211, 'Syria', '963', 'SY / SYR'),
(212, 'Taiwan', '886', 'TW / TWN'),
(213, 'Tajikistan', '992', 'TJ / TJK'),
(214, 'Tanzania', '255', 'TZ / TZA'),
(215, 'Thailand', '66', 'TH / THA'),
(216, 'Togo', '228', 'TG / TGO'),
(217, 'Tokelau', '690', 'TK / TKL'),
(218, 'Tonga', '676', 'TO / TON'),
(219, 'Trinidad and Tobago', '1-868', 'TT / TTO'),
(220, 'Tunisia', '216', 'TN / TUN'),
(221, 'Turkey', '90', 'TR / TUR'),
(222, 'Turkmenistan', '993', 'TM / TKM'),
(223, 'Turks and Caicos Islands', '1-649', 'TC / TCA'),
(224, 'Tuvalu', '688', 'TV / TUV'),
(225, 'U.S. Virgin Islands', '1-340', 'VI / VIR'),
(226, 'Uganda', '256', 'UG / UGA'),
(227, 'Ukraine', '380', 'UA / UKR'),
(228, 'United Arab Emirates', '971', 'AE / ARE'),
(229, 'United Kingdom', '44', 'GB / GBR'),
(230, 'United States', '1', 'US / USA'),
(231, 'Uruguay', '598', 'UY / URY'),
(232, 'Uzbekistan', '998', 'UZ / UZB'),
(233, 'Vanuatu', '678', 'VU / VUT'),
(234, 'Vatican', '379', 'VA / VAT'),
(235, 'Venezuela', '58', 'VE / VEN'),
(236, 'Vietnam', '84', 'VN / VNM'),
(237, 'Wallis and Futuna', '681', 'WF / WLF'),
(238, 'Western Sahara', '212', 'EH / ESH'),
(239, 'Yemen', '967', 'YE / YEM'),
(240, 'Zambia', '260', 'ZM / ZMB'),
(241, 'Zimbabwe', '263', 'ZW / ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `lookupibsubjectlevel`
--

CREATE TABLE `lookupibsubjectlevel` (
  `id` int(2) NOT NULL,
  `Level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupibsubjectlevel`
--

INSERT INTO `lookupibsubjectlevel` (`id`, `Level`) VALUES
(1, 'Higher Level (HL)'),
(2, 'Standard Level (SL)');

-- --------------------------------------------------------

--
-- Table structure for table `lookupibsubjects`
--

CREATE TABLE `lookupibsubjects` (
  `id` int(10) NOT NULL,
  `subjectName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupibsubjects`
--

INSERT INTO `lookupibsubjects` (`id`, `subjectName`) VALUES
(1, 'Afrikaans A'),
(2, 'Albanian A'),
(3, 'Albanian A: Literature'),
(4, 'Amharic A'),
(5, 'Amharic A: Literature'),
(6, 'Arabic A'),
(7, 'Arabic A: Language and Literature'),
(8, 'Arabic A: Literature'),
(9, 'Arabic AB'),
(10, 'Arabic B'),
(11, 'Armenian A: Literature'),
(12, 'Art History'),
(13, 'Astronomy'),
(14, 'Azebaijani A'),
(15, 'Azerbaijani A: Literature'),
(16, 'Beginning Hindi'),
(17, 'Beginning Nynorsk'),
(18, 'Beginning Siswati'),
(19, 'Belarusian A: Literature'),
(20, 'Bemba A'),
(21, 'Bemba A: Literature'),
(22, 'Bengali A'),
(23, 'Bengali A: Literature'),
(24, 'Biology'),
(25, 'Bosnian A'),
(26, 'Bosnian A: Literature'),
(27, 'Brazilian Social Studies'),
(28, 'Bulgarian A'),
(29, 'Bulgarian A: Literature'),
(30, 'Burmese A'),
(31, 'Burmese A: Literature'),
(32, 'Business Management'),
(33, 'Catalan A'),
(34, 'Catalan A: Literature'),
(35, 'Chemistry'),
(36, 'Chichewa A'),
(37, 'Chichewa A: Literature'),
(38, 'Chile & Pac.'),
(39, 'Chinese A'),
(40, 'Chinese A: Language and Literature'),
(41, 'Chinese A: Literature'),
(42, 'Chinese B'),
(43, 'Chinese B - Cantonese'),
(44, 'Chinese B - Mandarin'),
(45, 'Chinese Studies'),
(46, 'Classical Greek'),
(47, 'Classical Greek and Roman Studies'),
(48, 'Computer Science'),
(49, 'Croatian A'),
(50, 'Croatian A: Literature'),
(51, 'Czech A'),
(52, 'Czech A: Literature'),
(53, 'Dance'),
(54, 'Danish A'),
(55, 'Danish A: Literature'),
(56, 'Danish B'),
(57, 'Design Tech.'),
(58, 'Dhivehi A'),
(59, 'Dutch A'),
(60, 'Dutch A: Language and Literatur'),
(61, 'Dutch A: Literature'),
(62, 'Dutch B'),
(63, 'DzongkhaA'),
(64, 'Dzongkha A: Literature'),
(65, 'Economics'),
(66, 'Efik A'),
(67, 'English A'),
(68, 'English A: Language and Literature'),
(69, 'English A: Literature'),
(70, 'English AB'),
(71, 'English B'),
(72, 'Environmental Systems and Societies'),
(73, 'Estonia n A'),
(74, 'Estonian A: Literature'),
(75, 'Fijian A'),
(76, 'Filipino A'),
(77, 'Filipino A: Literature'),
(78, 'Film'),
(79, 'Finnish A'),
(80, 'Finnish A: Literature'),
(81, 'Finnish B'),
(82, 'French A'),
(83, 'French A: Language and Literature'),
(84, 'French A: Literature'),
(85, 'French AB'),
(86, 'French B'),
(87, 'Further Mathematics'),
(88, 'Galician A'),
(89, 'Geography'),
(90, 'Georgian A'),
(91, 'Georgian A: Literature'),
(92, 'German A'),
(93, 'German A: Language and Literature'),
(94, 'German A: Literature'),
(95, 'German AB'),
(96, 'German B'),
(97, 'Global Politics'),
(98, 'Greenlandic A'),
(99, 'Gujarati A'),
(100, 'Hebrew A'),
(101, 'Hebrew A: Literature'),
(102, 'Hebrew B'),
(103, 'Hindi A'),
(104, 'Hindi A: Literature'),
(105, 'Hindi B'),
(106, 'His&Con B/Stu'),
(107, 'History'),
(108, 'History of Africa'),
(109, 'History of Asia and Oceana'),
(110, 'History of Europe and the Middle East'),
(111, 'History of the Americas'),
(112, 'Human Rights'),
(113, 'Hungarian A'),
(114, 'Hungarian A: Literature'),
(115, 'Icelandic A'),
(116, 'Icelandic A: Literature'),
(117, 'Igbo A: Literature'),
(118, 'Indonesian A'),
(119, 'Indonesian A: Language And Literature'),
(120, 'Indonesian A: Literature'),
(121, 'Indonesian B'),
(122, 'Information Technology ?n a Global Society'),
(123, 'Irish A: Literature'),
(124, 'Italian A'),
(125, 'Italian A: Language and Literature'),
(126, 'Italian A: Literature'),
(127, 'Italian AB'),
(128, 'Italian B'),
(129, 'Japanese A'),
(130, 'Japanese A: Language and Literature'),
(131, 'Japanese A: Literature'),
(132, 'Japanese AB'),
(133, 'Japanese B'),
(134, 'Kannada A'),
(135, 'Khmer A'),
(136, 'Khmer A: Literature'),
(137, 'Kinyarwanda A'),
(138, 'Kinyarwanda A: Literature'),
(139, 'Korean A'),
(140, 'Korean A: Language and Literature'),
(141, 'Korean A: Literature'),
(142, 'Korean B'),
(143, 'Kurdish A'),
(144, 'Kyrgyz A'),
(145, 'LaoA'),
(146, 'Lao A: Literature'),
(147, 'Lao A: Literature Self Taught'),
(148, 'Latin'),
(149, 'Latvian A'),
(150, 'Latvian A: Literature'),
(151, 'Literature and Performance'),
(152, 'Lithuanian A'),
(153, 'Lithuanian A: Literature'),
(154, 'Lozi A'),
(155, 'Luganda A'),
(156, 'Luganda A: Literature'),
(157, 'Lunda A'),
(158, 'Macedonian A'),
(159, 'Macedonian A: Literature'),
(160, 'Malay A'),
(161, 'Malay A: Literature'),
(162, 'Malay AB'),
(163, 'Malayalam A'),
(164, 'Mandarin AB'),
(165, 'Maori A'),
(166, 'Marathi A'),
(167, 'Marine Science'),
(168, 'Mathematical Studies'),
(169, 'Mathematics'),
(170, 'Modern Greek A'),
(171, 'Modern Greek A: Language and Literature'),
(172, 'Modern Greek A: Literature'),
(173, 'Mongolian A'),
(174, 'Mongolian A: Literature'),
(175, 'Music'),
(176, 'Music Creating'),
(177, 'Music Group Performance'),
(178, 'Music Solo Performance'),
(179, 'N debele A'),
(180, 'Nepali A'),
(181, 'Nepali A: Literature'),
(182, 'Norwegian A'),
(183, 'Norwegian A: Language and Literature'),
(184, 'Norwegian A: Literature'),
(185, 'Norwegian B'),
(186, 'Pashto A'),
(187, 'Pashlo A: Literature'),
(188, 'Peace and Conflict Studies'),
(189, 'Persian A'),
(190, 'Persian A: Literature'),
(191, 'Philosophy'),
(192, 'Physics'),
(193, 'Polish A'),
(194, 'Polish A: Literature'),
(195, 'Political Thought'),
(196, 'Politics'),
(197, 'Portuguese A'),
(198, 'Portuguese A: Language and Literature'),
(199, 'Portuguese A: Literature'),
(200, 'Portuguese B'),
(201, 'Psychology'),
(202, 'Punjabi A'),
(203, 'Punjabi A: Literature'),
(204, 'Ref Project'),
(205, 'Reflective Project Pilot'),
(206, 'Romanian A'),
(207, 'Romanian A: Literature'),
(208, 'Romansch A'),
(209, 'Russian A'),
(210, 'Russian A: Language and Literature'),
(211, 'Russian A: Literature'),
(212, 'Russian AB'),
(213, 'Russian B'),
(214, 'Samoan A'),
(215, 'Science, Technology and Society'),
(216, 'Serbian A'),
(217, 'Serbian A: Literature'),
(218, 'Sesotho A'),
(219, 'Sesotho A: Literature'),
(220, 'Setswana A'),
(221, 'Shona A'),
(222, 'Sinhalese A'),
(223, 'Sinhalese A: Literature'),
(224, 'Slovak A'),
(225, 'Slovak A'),
(226, 'Soene A'),
(227, 'Slovene A: Literature'),
(228, 'Soc.Cul.Anth.'),
(229, 'Somali A'),
(230, 'Spanish A'),
(231, 'Spanish A: Language and Literature'),
(232, 'Spanish A: Literature'),
(233, 'Spanish AB'),
(234, 'Spanish B'),
(235, 'Sports Exercise and Health Science'),
(236, 'Swahili A'),
(237, 'Swahili A: Literature'),
(238, 'Swahili AB'),
(239, 'Swahili B'),
(240, 'Swedish A'),
(241, 'Swedish A: Language and Literature'),
(242, 'Swedish A: Literature'),
(243, 'Swedish B'),
(244, 'Tajik A'),
(245, 'Tajik A: Literature'),
(246, 'Tamil A'),
(247, 'Telugu A'),
(248, 'Thai A'),
(249, 'Thai A: Language and Literature'),
(250, 'Thai A: Literature'),
(251, 'Thai A: Literature Self Taught'),
(252, 'Theatre'),
(253, 'Tibetan A'),
(254, 'Tibetan A: Literature'),
(255, 'Tigrinya A'),
(256, 'Tigrinya A: Literature'),
(257, 'Tonga A'),
(258, 'Turkey In The 20th Century'),
(259, 'Turkish A'),
(260, 'Turkish A: Language and Literature'),
(261, 'Turkish A: Literature'),
(262, 'Ukrainian A'),
(263, 'Ukrainian A: Literature'),
(264, 'Urdu A'),
(265, 'Urdu A: Literature'),
(266, 'Urdu A: Literature Self Taught'),
(267, 'Uzbek A'),
(268, 'Vietnamese A'),
(269, 'Vietnamese A: Literature'),
(270, 'Visual Arts'),
(271, 'Welsh A'),
(272, 'Welsh A: Literature'),
(273, 'World Arts and Cultures'),
(274, 'World Politics'),
(275, 'World Religions'),
(276, 'World Studies'),
(277, 'Xhosa A'),
(278, 'Yoruba A'),
(279, 'Zulu A');

-- --------------------------------------------------------

--
-- Table structure for table `lookupoccupations`
--

CREATE TABLE `lookupoccupations` (
  `id` int(10) NOT NULL,
  `occupation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupoccupations`
--

INSERT INTO `lookupoccupations` (`id`, `occupation`) VALUES
(1, 'Accountant or actuary'),
(2, 'Actor or entertainer'),
(3, 'Architect or Urban Planner'),
(4, 'Artist'),
(5, 'Business (clerical)'),
(6, 'Business Executive ( managemen'),
(7, 'Business owner or proprietor'),
(8, 'Business salesperson or buyer'),
(9, 'Clergy (minister, priest)'),
(10, 'Clergy (other religious)'),
(11, 'Clinical Psycologist'),
(12, 'College administrator/staff'),
(13, 'College teacher'),
(14, 'Computer Programmer/analyst'),
(15, 'Conservationalist or forester'),
(16, 'Dentist (including orthodontis'),
(17, 'Dietitian or Nutritionist'),
(18, 'Engineer'),
(19, 'Farmer or rancher'),
(20, 'Foreign service worker (includ'),
(21, 'Homemaker (Full-time)'),
(22, 'Interior decorator (including '),
(23, 'Lab technician or hygienist'),
(24, 'Laborer'),
(25, 'Law enforcement officer'),
(26, 'Lawyer (attorney) or Judge'),
(27, 'Military servie (career)'),
(28, 'Musician (performer,composer)'),
(29, 'Nurse'),
(30, 'Optometrist'),
(31, 'Pharmacist'),
(32, 'Physician'),
(33, 'Policymaker/Government'),
(34, 'School Counselor'),
(35, 'School principal or superinten'),
(36, 'Scientific researcher'),
(37, 'Skilled trades'),
(38, 'Social,welfare, or recreation '),
(39, 'Teacher or administrator (elem'),
(40, 'Teacher or administrator (Seco'),
(41, 'Therapist (physical,occupation'),
(42, 'Veterinarian'),
(43, 'Writer or journalist'),
(44, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `lookupplannedhighestedulvl`
--

CREATE TABLE `lookupplannedhighestedulvl` (
  `id` int(10) NOT NULL,
  `highestEduLvl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupplannedhighestedulvl`
--

INSERT INTO `lookupplannedhighestedulvl` (`id`, `highestEduLvl`) VALUES
(1, 'Specialized training or certificate program'),
(2, 'Two-year associate of arts or sciences degree (such as AA, AAS, or AS)'),
(3, 'Bachelors degree (such as BA or BS)'),
(4, 'Master\'s degree (such as MA, MBA, or MS)'),
(5, 'Doctoral or related degree (such as PhD, JD, MO, DVM)'),
(6, 'Other'),
(7, 'Undecided');

-- --------------------------------------------------------

--
-- Table structure for table `lookupsatsubjecttestsubjects`
--

CREATE TABLE `lookupsatsubjecttestsubjects` (
  `id` int(10) NOT NULL,
  `subjectName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookupsatsubjecttestsubjects`
--

INSERT INTO `lookupsatsubjecttestsubjects` (`id`, `subjectName`) VALUES
(1, 'Biology - Ecological'),
(2, 'Biology - Molecular'),
(3, 'Chemistry'),
(4, 'Chinese with Listening'),
(5, 'French Reading'),
(6, 'French with Listening'),
(7, 'German Reading'),
(8, 'German with Listening'),
(9, 'Italian Reading'),
(10, 'Japanese with Listening'),
(11, 'Korean with Listening'),
(12, 'Latin Reading'),
(13, 'Literature'),
(14, 'Math Level 1'),
(15, 'Math Level 2'),
(16, 'Modern Hebrew Reading'),
(17, 'Physics'),
(18, 'Spanish Reading'),
(19, 'Spanish with Listening'),
(20, 'US History'),
(21, 'World History'),
(22, 'Writing');

-- --------------------------------------------------------

--
-- Table structure for table `mobileotp`
--

CREATE TABLE `mobileotp` (
  `id` int(11) NOT NULL,
  `mobile_number` text NOT NULL,
  `verification_code` text NOT NULL,
  `verified` int(11) NOT NULL,
  `AddedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobileotp`
--

INSERT INTO `mobileotp` (`id`, `mobile_number`, `verification_code`, `verified`, `AddedOn`) VALUES
(7, '9996221717', '244037', 1, '2019-11-12 14:53:08'),
(2, '9686722010', '119472', 1, '2019-11-04 19:06:34'),
(3, '8901488776', '843694', 1, '2019-11-11 12:01:36'),
(4, '9608263368', '924802', 1, '2019-11-04 21:19:36'),
(5, '7393805453', '424772', 0, '2019-11-04 21:48:28'),
(14, '8222877714', '750783', 1, '2019-11-11 14:03:04'),
(11, '9896931751', '161251', 0, '2019-11-05 15:54:52'),
(15, '8898721781', '718142', 1, '2019-11-12 14:21:06'),
(16, '9819729334', '777014', 0, '2019-11-06 14:08:46'),
(17, '7991737508', '928140', 1, '2019-11-07 12:57:41'),
(18, '6201808789', '652520', 1, '2019-11-08 22:53:36'),
(19, '9672499916', '790643', 0, '2019-11-08 23:06:33'),
(20, '9072512013', '139322', 1, '2019-11-10 11:58:34'),
(21, '9324397741', '696168', 1, '2019-11-10 18:40:15'),
(22, '9996221715', '515127', 0, '2019-11-11 12:29:30'),
(23, '9322294580', '824163', 1, '2019-11-11 18:49:27'),
(24, '9651321565', '777604', 1, '2019-11-12 14:42:35'),
(25, '919996221717', '925109', 1, '2019-11-12 14:58:30'),
(26, '913137511648', '562549', 0, '2019-11-12 20:11:06'),
(27, '919007266280', '139521', 1, '2019-11-12 20:59:46'),
(28, '918051190089', '640543', 1, '2019-11-12 21:17:02'),
(29, '919038381171', '681400', 1, '2019-11-12 21:21:52'),
(30, '917545975901', '333346', 1, '2019-11-12 22:11:04'),
(31, '917340870720', '331485', 1, '2019-11-12 23:53:12'),
(32, '917061502058', '678138', 1, '2019-11-12 23:57:09'),
(33, '919593880787', '846360', 1, '2019-11-13 00:15:08'),
(34, '918787793303', '873213', 0, '2019-11-13 02:54:38'),
(35, '918770758713', '193003', 1, '2019-11-13 08:53:00'),
(36, '919840090069', '643704', 0, '2019-11-13 12:44:00'),
(37, '917375047395', '284073', 0, '2019-11-13 14:54:44'),
(38, '919205516785', '207180', 1, '2019-11-13 20:57:47'),
(39, '918657426162', '710004', 1, '2019-11-13 23:28:14'),
(40, '918758462699', '380900', 1, '2019-12-03 14:32:01'),
(41, '913094741725', '243513', 0, '2019-11-14 13:59:48'),
(42, '913095168344', '858945', 0, '2019-11-15 08:51:12'),
(43, '918888825841', '639601', 0, '2019-11-15 09:48:06'),
(44, '913322424770', '973017', 0, '2019-11-15 12:41:27'),
(45, '913068182903', '449893', 0, '2019-11-17 08:57:05'),
(46, '919672499916', '670872', 1, '2019-11-17 19:22:07'),
(47, '919820132905', '372038', 1, '2019-11-20 14:51:38'),
(48, '918897673031', '138677', 1, '2019-11-26 18:47:25'),
(49, '918113994013', '944007', 1, '2019-11-27 08:28:18'),
(50, '919352338028', '954771', 1, '2019-12-04 17:49:02'),
(51, '918209338860', '527647', 1, '2019-12-04 18:23:21'),
(52, '917304699768', '170328', 1, '2019-12-05 14:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `schoolName` varchar(100) NOT NULL,
  `schoolDateOfEntry` date NOT NULL,
  `schoolCity` varchar(50) NOT NULL,
  `schoolCountry` int(10) NOT NULL,
  `schoolZipCode` varchar(10) NOT NULL,
  `boarindSchool` varchar(11) NOT NULL,
  `guaduatedFromSchool` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `stuId`, `schoolName`, `schoolDateOfEntry`, `schoolCity`, `schoolCountry`, `schoolZipCode`, `boarindSchool`, `guaduatedFromSchool`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Katial', '2019-10-17', 'Navi Mumbai', 102, '400709', 'No', 'Yes', 0, '2019-10-04 21:51:31', '0000-00-00 00:00:00'),
(2, 4, 'Sarvodaya Vidyalaya', '2016-06-08', 'Delhi', 102, '110085', 'No', 'Yes', 0, '2019-10-05 04:21:27', '0000-00-00 00:00:00'),
(3, 8, 'Guru nanak high school', '2019-10-05', 'Mumbai', 102, '400052', 'No', 'No', 0, '2019-10-05 04:37:40', '0000-00-00 00:00:00'),
(4, 18, 'Mks memorial high school', '2004-10-07', 'Mahmaudabad', 102, '235305', 'No', 'Yes', 0, '2019-10-05 05:23:24', '0000-00-00 00:00:00'),
(5, 25, 'Abhinav', '2019-07-18', 'Pune ', 102, '411058', 'No', 'Yes', 0, '2019-10-05 05:52:26', '0000-00-00 00:00:00'),
(6, 31, 'Gbsss', '2013-04-05', 'Delhi', 102, '110041', 'No', 'No', 0, '2019-10-05 08:13:01', '0000-00-00 00:00:00'),
(7, 49, 'Best High School Ever', '2007-06-01', 'Thane', 102, '400600', 'No', 'Yes', 0, '2019-10-05 08:50:46', '0000-00-00 00:00:00'),
(8, 66, 'Saraswathi vidhyalaya matric hr sec school', '2010-06-03', 'Thiruvarur', 0, '614704', 'Yes', 'Yes', 0, '2019-10-05 08:59:55', '0000-00-00 00:00:00'),
(9, 66, 'Saraswathi vidhyalaya matric hr sec school', '2010-06-03', 'Thiruvarur', 102, '614704', 'Yes', 'Yes', 0, '2019-10-05 09:00:28', '0000-00-00 00:00:00'),
(10, 68, 'Pretty Average High Scholl', '2001-01-01', 'Earth', 0, '123455', 'No', 'No', 0, '2019-10-05 11:46:45', '0000-00-00 00:00:00'),
(11, 81, 'Anandalaya', '2006-03-27', 'Anand', 102, '388001', 'No', 'Yes', 0, '2019-10-17 14:34:25', '0000-00-00 00:00:00'),
(12, 84, 'Guru Nanak Khalsa Senior Secondary School', '2018-05-12', 'Chandigarh', 102, '160030', 'No', 'Yes', 0, '2019-10-20 06:52:28', '0000-00-00 00:00:00'),
(13, 88, 'Bodhi International School', '2019-03-25', 'Jodhpur', 102, '342001', 'No', 'Yes', 0, '2019-10-23 11:23:53', '0000-00-00 00:00:00'),
(14, 94, 'Delhi public school Ruby Park kolkata', '2007-04-05', 'Kolkata', 102, '700106', 'No', 'Yes', 0, '2019-10-25 08:22:03', '0000-00-00 00:00:00'),
(15, 95, 'Delhi Public School', '2019-01-21', 'Kolkata  Westbengal India', 102, '700107', 'No', 'Yes', 0, '2019-10-25 08:37:48', '0000-00-00 00:00:00'),
(16, 101, 'Delhi Public School Ruby Park', '2018-04-18', 'KOLKATA', 102, '700107', 'No', 'No', 0, '2019-10-25 12:10:24', '0000-00-00 00:00:00'),
(17, 100, 'Delhi Public School Ruby Park', '2019-10-25', 'Kolkata', 0, '700107', 'No', 'Yes', 0, '2019-10-25 12:27:42', '0000-00-00 00:00:00'),
(18, 104, 'Bodhicariya Senior Secondary School', '0000-00-00', 'Kolkata', 102, '700135', 'No', 'Yes', 0, '2019-10-25 15:18:28', '0000-00-00 00:00:00'),
(19, 104, 'Bodhicariya Senior Secondary School', '0000-00-00', 'Kolkata', 102, '700135', 'No', 'Yes', 0, '2019-10-25 15:22:00', '0000-00-00 00:00:00'),
(20, 104, 'Bodhicariya Senior Secondary School', '0000-00-00', 'Kolkata', 102, '700135', 'No', 'Yes', 0, '2019-10-25 15:25:13', '0000-00-00 00:00:00'),
(21, 111, 'DPS Ruby Park ', '2019-06-17', 'Kolkata ', 102, '700103', 'No', 'No', 0, '2019-10-25 17:09:00', '0000-00-00 00:00:00'),
(22, 115, 'Nirmala Public school', '2018-06-01', 'Muvatupuzha', 102, '686661', 'Yes', 'Yes', 0, '2019-10-26 04:59:01', '0000-00-00 00:00:00'),
(23, 116, 'Delhi Public School Ruby Park', '2019-04-15', 'Kolkata', 0, '700107', 'No', 'Yes', 0, '2019-10-26 07:14:59', '0000-00-00 00:00:00'),
(24, 117, 'Delhi Public School Ruby Park Kolkata', '2007-04-09', 'Kolkata', 102, '700084', 'No', 'Yes', 0, '2019-10-26 07:38:53', '0000-00-00 00:00:00'),
(25, 119, 'Mawprem modern high school', '1990-02-01', 'Shillong', 102, '793002', 'No', 'No', 0, '2019-10-26 10:42:51', '0000-00-00 00:00:00'),
(26, 121, 'Diwakar model school', '2019-06-18', 'Sahibabad', 102, '201005', 'No', 'No', 0, '2019-10-26 12:30:33', '0000-00-00 00:00:00'),
(27, 122, 'Sfs', '2005-06-01', 'Vizag', 102, '530001', 'No', 'Yes', 0, '2019-10-26 12:49:45', '0000-00-00 00:00:00'),
(28, 127, 'sachdeva high school', '2017-06-06', 'ramagundam', 102, '505215', 'No', 'No', 0, '2019-10-26 14:34:58', '0000-00-00 00:00:00'),
(29, 128, 'Delhi Public School', '2019-04-02', 'kolkata', 102, '700078', 'No', 'No', 0, '2019-10-26 15:19:35', '0000-00-00 00:00:00'),
(30, 124, 'Indira Gandhi Memorial High School', '2003-12-03', 'kolkata', 102, '700030', 'No', 'Yes', 0, '2019-10-26 16:26:45', '0000-00-00 00:00:00'),
(31, 132, 'Jiya Lal Mittal DAV Public School', '2018-04-10', 'Gurdaspur', 102, '143521', 'No', 'Yes', 0, '2019-10-26 16:49:16', '0000-00-00 00:00:00'),
(32, 134, 'Gyanavapi junior college ', '2018-06-11', 'Hyderabad', 102, '500005', 'No', 'Yes', 0, '2019-10-26 18:26:52', '0000-00-00 00:00:00'),
(33, 135, 'Dav public school', '2005-11-26', 'New Delhi', 102, '110032', 'No', 'Yes', 0, '2019-10-27 05:30:24', '0000-00-00 00:00:00'),
(34, 137, 'St Patricks Higher Secondary  School', '2018-10-22', 'Asansol', 0, '713301', 'No', 'Yes', 0, '2019-10-27 08:15:43', '0000-00-00 00:00:00'),
(35, 141, 'International Indian school', '2017-10-27', 'Dammam', 194, '31952', 'No', 'No', 0, '2019-10-27 17:03:14', '0000-00-00 00:00:00'),
(36, 141, 'International Indian school', '2017-10-27', 'Dammam', 194, '31952', 'No', 'No', 0, '2019-10-27 17:03:14', '0000-00-00 00:00:00'),
(37, 142, 'Oxford Public School', '2018-07-01', 'Gorakhpur', 102, '273016', 'No', 'Yes', 0, '2019-10-27 17:29:36', '0000-00-00 00:00:00'),
(38, 142, 'St Josephs School', '2006-04-01', 'Gorakhpur', 102, '273015', 'No', 'Yes', 0, '2019-10-27 17:31:16', '0000-00-00 00:00:00'),
(39, 143, 'Mithibai College of Arts Chauhan Institute Of Science And Amrutben Jivanlal College Of Commerce And ', '2018-08-23', 'Mumbai', 102, '400066', 'No', 'Yes', 0, '2019-10-27 17:54:49', '0000-00-00 00:00:00'),
(40, 147, 'Vikas techno school', '2011-06-13', 'Vissannpeta', 102, '521215', 'Yes', 'Yes', 0, '2019-10-28 00:17:23', '0000-00-00 00:00:00'),
(41, 148, 'GSS COLLEGE BELGAUM', '2018-06-02', 'Belgaum', 102, '590005', 'Yes', 'No', 0, '2019-10-28 02:02:19', '0000-00-00 00:00:00'),
(42, 160, 'i n tekarawala', '2019-10-28', 'ramdevnagar society pushpak society palanpurpatia', 0, '395009', 'No', 'No', 0, '2019-10-28 09:46:42', '0000-00-00 00:00:00'),
(43, 166, 'Spring Dale Senior School', '2011-04-26', 'Amritsar', 102, '143001', 'No', 'Yes', 0, '2019-10-28 12:19:40', '0000-00-00 00:00:00'),
(44, 167, 'The Emerald Heights International School ', '2006-03-10', 'Indore', 102, '452009', 'No', 'Yes', 0, '2019-10-28 16:04:29', '0000-00-00 00:00:00'),
(45, 174, 'Royal college ', '2013-04-01', 'Dehradun ', 102, '248125', 'Yes', 'Yes', 0, '2019-10-29 01:53:46', '0000-00-00 00:00:00'),
(46, 116, 'Delhi Public School Ruby Park', '2019-04-17', 'Kolkata', 102, '700107', 'No', 'Yes', 0, '2019-10-29 05:45:05', '0000-00-00 00:00:00'),
(47, 183, 'GLM international school ', '2017-04-15', 'Ahmedabad ', 102, '382620 ', 'No', 'Yes', 0, '2019-10-29 09:01:02', '0000-00-00 00:00:00'),
(48, 187, 'Delhi Public School Ranipur', '2006-04-17', 'Haridwar', 0, '249403', 'No', 'Yes', 0, '2019-10-29 13:07:43', '0000-00-00 00:00:00'),
(49, 188, 'KDMA INTERNATIONAL', '2005-06-06', 'Kanpur', 0, '208027', 'No', 'Yes', 0, '2019-10-29 15:19:46', '0000-00-00 00:00:00'),
(50, 195, 'SIR CHAITANYA Techno School ', '2018-06-01', 'Bangalore ', 102, '560045', 'No', 'Yes', 0, '2019-10-30 02:50:04', '0000-00-00 00:00:00'),
(51, 200, 'Saraswati sishu Vidya Mandir Nimakhandi', '2011-05-01', 'Berhampur', 102, '760001', 'No', 'Yes', 0, '2019-10-30 07:31:33', '0000-00-00 00:00:00'),
(52, 162, 'College Protestant Csp ', '2016-10-10', 'Porto Novo ', 0, '36', 'No', 'Yes', 0, '2019-10-30 07:32:40', '0000-00-00 00:00:00'),
(53, 203, 'ASSISSI VIDYANIKETHAN PUBLIC SCHOOL', '2017-06-01', 'ERNAKULAM', 102, '682016', 'No', 'Yes', 0, '2019-10-30 10:10:19', '0000-00-00 00:00:00'),
(54, 206, 'SHIV ASHISH SCHOOL ', '2011-06-05', 'AHMEDABAD ', 102, '380058', 'No', 'Yes', 0, '2019-10-30 11:42:05', '0000-00-00 00:00:00'),
(55, 208, 'National English School', '2014-03-11', 'BaguiatiKolkata', 102, '700059', 'No', 'No', 0, '2019-10-30 12:25:46', '0000-00-00 00:00:00'),
(56, 207, 'RMK Senior Secondary School', '2011-04-01', 'Tiruvallur', 102, '600077', 'No', 'Yes', 0, '2019-10-30 13:02:12', '0000-00-00 00:00:00'),
(57, 211, 'NJURI HIGH SCHOOL', '2014-01-08', 'CHUKA', 115, '60400', 'Yes', 'Yes', 0, '2019-10-30 14:03:41', '0000-00-00 00:00:00'),
(58, 212, 'St Antonys Public School', '2018-06-04', 'Kottayam', 102, '686508', 'Yes', 'Yes', 0, '2019-10-30 14:26:47', '0000-00-00 00:00:00'),
(59, 212, 'St Antonys Public School', '2018-06-04', 'Kottayam', 102, '686508', 'Yes', 'Yes', 0, '2019-10-30 14:26:52', '0000-00-00 00:00:00'),
(60, 217, 'Somalwar High school nikalas branch and junior college ', '2009-06-26', 'Nagpur ', 102, '440025', 'No', 'No', 0, '2019-10-30 16:31:51', '0000-00-00 00:00:00'),
(61, 224, 'DAV Public School Lakkar Bazzar Shimla', '2011-03-20', 'Shimla', 102, '171001', 'No', 'Yes', 0, '2019-10-31 04:06:49', '0000-00-00 00:00:00'),
(62, 227, 'Greenwood Public School', '2007-07-07', 'Gwalior', 102, '474006', 'No', 'Yes', 0, '2019-10-31 05:15:00', '0000-00-00 00:00:00'),
(63, 228, 'Mt st joseph', '2003-04-30', 'Tiruvannamalai', 102, '606601', 'No', 'Yes', 0, '2019-10-31 06:36:21', '0000-00-00 00:00:00'),
(64, 233, 'DPS Ruby School', '2018-04-01', 'Kolkata', 102, '700107', 'No', 'Yes', 0, '2019-10-31 07:53:17', '0000-00-00 00:00:00'),
(65, 237, 'NATO came public school ', '2016-04-01', 'Bettiah ', 102, '835438', 'No', 'No', 0, '2019-10-31 10:23:23', '0000-00-00 00:00:00'),
(66, 244, 'Padma Seshadri Bala Bhavan School', '2010-06-10', 'Chennai', 102, '603103', 'No', 'Yes', 0, '2019-10-31 16:16:20', '0000-00-00 00:00:00'),
(67, 246, 'G D Birla Centre for Education', '2019-11-01', 'Kolkata', 102, '700047', 'No', 'Yes', 0, '2019-10-31 19:21:29', '0000-00-00 00:00:00'),
(68, 249, 'St Paul senior secondary coed school  Anand Nagar', '2008-05-07', 'Bhopal', 102, '462021', 'No', 'Yes', 0, '2019-11-01 02:10:40', '0000-00-00 00:00:00'),
(69, 252, 'Delhi public school', '2014-11-01', 'Bhilai', 102, '490020', 'No', 'Yes', 0, '2019-11-01 04:17:44', '0000-00-00 00:00:00'),
(70, 253, 'GLOBAL PUBLIC SCHOOL INTERNATIONAL', '2018-06-01', 'KOCHI', 0, '682308', 'Yes', 'Yes', 0, '2019-11-01 04:42:04', '0000-00-00 00:00:00'),
(71, 253, 'GPS INTERNATIONAL', '2018-06-04', 'KOCHI', 102, '6822308', 'Yes', 'Yes', 0, '2019-11-01 07:05:39', '0000-00-00 00:00:00'),
(72, 253, 'GPS INTERNATIONAL', '2018-06-01', 'KOCHI', 102, '682308', 'Yes', 'Yes', 0, '2019-11-01 07:16:06', '0000-00-00 00:00:00'),
(73, 264, 'St Xavier high school', '2006-04-01', 'Bathinda', 0, '151001', 'No', 'No', 0, '2019-11-01 15:07:31', '0000-00-00 00:00:00'),
(74, 266, 'The PSBB Millennium School', '2010-06-06', 'chennai', 102, '600121', 'No', 'Yes', 0, '2019-11-01 16:33:33', '0000-00-00 00:00:00'),
(75, 270, 'Swami Vivekananda Vidya Mandir Dattanagar', '2007-06-15', 'Dombivli', 102, '421201', 'No', 'No', 0, '2019-11-01 18:47:29', '0000-00-00 00:00:00'),
(76, 271, 'IKTHSS Cherukulamba', '2012-06-01', 'Malappuram', 102, '676507', 'No', 'Yes', 0, '2019-11-02 03:35:54', '0000-00-00 00:00:00'),
(77, 231, 'Jawahar Navodaya Vidyalaya ', '2012-08-13', 'Sangrur', 102, '148031', 'Yes', 'Yes', 0, '2019-11-02 04:47:02', '0000-00-00 00:00:00'),
(78, 263, 'Kendriya Vidyalaya', '2007-03-07', 'Lucknow', 102, '226010', 'No', 'Yes', 0, '2019-11-02 11:03:01', '0000-00-00 00:00:00'),
(79, 274, 'Chinmaya Vidyalaya Vaduthala ', '2017-06-04', 'Kochi', 102, '682023', 'No', 'Yes', 0, '2019-11-02 11:49:39', '0000-00-00 00:00:00'),
(80, 281, 'KENDRIYA VIDYALAYA TRIMULGHERRY SECUNDERABAD TL', '2014-11-22', 'SECUNDERABAD', 102, '500015', 'No', 'No', 0, '2019-11-02 15:53:29', '0000-00-00 00:00:00'),
(81, 285, 'Guru har Rai academy', '2002-05-04', 'Kanpur', 102, '208012', 'No', 'Yes', 0, '2019-11-03 02:13:24', '0000-00-00 00:00:00'),
(82, 286, 'DAV PUBLIC SCHOOL ECL PANDAVESWER', '2008-04-01', 'PANDAVESWER ', 102, '713346', 'Yes', 'No', 0, '2019-11-03 05:03:20', '0000-00-00 00:00:00'),
(83, 288, 'Sree ram Pampanga charya high school Sousa Arwal Bihar', '2004-09-12', 'Belsar high school', 102, '85510', 'Yes', 'Yes', 0, '2019-11-03 05:23:55', '0000-00-00 00:00:00'),
(84, 288, 'Sree ram Pampanga charya high school Sousa Arwal Bihar', '2004-09-12', 'Belsar high school', 102, '85510', 'Yes', 'Yes', 0, '2019-11-03 05:23:55', '0000-00-00 00:00:00'),
(85, 288, 'Sree ram Pampanga charya high school Sousa Arwal Bihar', '2004-09-12', 'Belsar high school', 102, '85510', 'Yes', 'Yes', 0, '2019-11-03 05:23:55', '0000-00-00 00:00:00'),
(86, 288, 'Sree ram Pampanga charya high school Sousa Arwal Bihar', '2004-09-12', 'Belsar high school', 102, '85510', 'Yes', 'Yes', 0, '2019-11-03 05:23:55', '0000-00-00 00:00:00'),
(87, 288, 'Sree ram Pampanga charya high school Sousa Arwal Bihar', '2004-09-12', 'Belsar high school', 102, '85510', 'Yes', 'Yes', 0, '2019-11-03 05:23:56', '0000-00-00 00:00:00'),
(88, 288, 'Sree ram Pampanga charya high school Sousa Arwal Bihar', '2004-09-12', 'Belsar high school', 102, '85510', 'Yes', 'Yes', 0, '2019-11-03 05:23:56', '0000-00-00 00:00:00'),
(89, 288, 'Sree ram Pampanga charya high school Sousa Arwal Bihar', '2004-09-12', 'Belsar high school', 102, '85510', 'Yes', 'Yes', 0, '2019-11-03 05:23:56', '0000-00-00 00:00:00'),
(90, 289, 'Cambridge International School for girls jalandhar', '2015-04-04', 'Jalandhar', 102, '144022', 'No', 'No', 0, '2019-11-03 07:21:48', '0000-00-00 00:00:00'),
(91, 218, 'Manav rachna international School', '2016-04-01', 'Gurgaon', 102, '122001', 'No', 'Yes', 0, '2019-11-03 09:36:12', '0000-00-00 00:00:00'),
(92, 321, 'Navrachana Vidyani Vidyalaya', '2005-06-16', 'Vadodara', 102, '390008', 'No', 'Yes', 0, '2019-11-04 07:34:53', '0000-00-00 00:00:00'),
(93, 91, 'Ann Mary school', '2006-01-30', 'Dehradun', 102, '248001', 'No', 'Yes', 0, '2019-11-06 14:00:54', '0000-00-00 00:00:00'),
(94, 350, '113 ARMY PUBLIC  SCHOOL', '2013-07-06', 'Lucknow', 102, '226002', 'No', 'Yes', 0, '2019-11-07 05:17:11', '0000-00-00 00:00:00'),
(95, 352, 'Army Public School', '2018-07-18', 'Lucknow', 102, '226002', 'No', 'No', 0, '2019-11-07 05:52:14', '0000-00-00 00:00:00'),
(96, 357, 'Army Public School', '2002-09-10', 'Lucknow', 102, '226002', 'No', 'Yes', 0, '2019-11-07 06:37:02', '0000-00-00 00:00:00'),
(97, 358, 'Army Public School', '2008-04-08', 'Lucknow', 102, '226002', 'No', 'No', 0, '2019-11-07 07:59:55', '0000-00-00 00:00:00'),
(98, 360, 'Jamnabai Narsee School', '0000-00-00', 'Mumbai', 102, '400049', 'No', 'Yes', 0, '2019-11-08 16:14:57', '0000-00-00 00:00:00'),
(99, 365, 'testschool', '2000-01-01', 'test', 0, '129921', 'Yes', 'Yes', 0, '2019-11-10 11:49:26', '0000-00-00 00:00:00'),
(100, 373, 'St Josephs Coed School', '2008-07-01', 'Bhopal', 102, '462039', 'No', 'No', 0, '2019-11-11 13:13:32', '0000-00-00 00:00:00'),
(101, 375, 'mayo college', '2012-04-01', 'ajmer', 102, '305008', 'Yes', 'Yes', 0, '2019-11-12 06:30:02', '0000-00-00 00:00:00'),
(102, 388, 'Modern School Barakhamba Road', '2019-07-01', 'Delhi', 0, '110001', 'No', 'Yes', 0, '2019-11-12 11:50:02', '0000-00-00 00:00:00'),
(103, 387, 'Expert international high school', '2017-01-15', 'Virar', 102, '401303', 'No', 'No', 0, '2019-11-12 11:59:50', '0000-00-00 00:00:00'),
(104, 392, 'Trinity International SS college ', '2018-06-16', 'Kathmandau ', 156, '44600', 'No', 'No', 0, '2019-11-12 13:38:53', '0000-00-00 00:00:00'),
(105, 397, 'Masroor senior secondary school ', '2014-09-12', 'Old yundum ', 80, '3830', 'No', 'Yes', 0, '2019-11-12 13:56:32', '0000-00-00 00:00:00'),
(106, 394, 'Government boys higher secondary school sogam lolab', '2017-01-02', 'Sogam', 102, '193223', 'No', 'No', 0, '2019-11-12 13:57:15', '0000-00-00 00:00:00'),
(107, 401, 'St Joseph Higher Secondary School', '2009-01-01', 'Dhaka', 19, '1207', 'No', 'Yes', 0, '2019-11-12 14:14:15', '0000-00-00 00:00:00'),
(108, 405, 'Dav public school Gandhingar', '2018-07-20', 'Ranchi', 0, '834001', 'No', 'Yes', 0, '2019-11-12 14:23:03', '0000-00-00 00:00:00'),
(109, 407, 'Steps college', '2017-09-01', 'Rawalpindi', 167, '4400', 'No', 'Yes', 0, '2019-11-12 14:47:13', '0000-00-00 00:00:00'),
(110, 406, 'The City School iqbal Campus', '2015-08-17', 'Sialkot', 0, '0000', 'No', 'No', 0, '2019-11-12 14:49:45', '0000-00-00 00:00:00'),
(111, 408, 'Cadet College Swat', '2017-08-16', 'Swat', 167, '19240', 'Yes', 'Yes', 0, '2019-11-12 15:04:22', '0000-00-00 00:00:00'),
(112, 412, 'Ghss udinur', '2012-05-03', 'Trikaripur', 102, '671310', 'No', 'Yes', 0, '2019-11-12 15:39:05', '0000-00-00 00:00:00'),
(113, 417, 'The city school jinnah campus', '2006-08-01', 'Hyderabad', 167, '76000', 'No', 'Yes', 0, '2019-11-12 16:08:40', '0000-00-00 00:00:00'),
(114, 419, 'Narayanganj Ideal school ', '2014-01-01', 'Narayanganj ', 19, '1400', 'No', 'Yes', 0, '2019-11-12 16:11:24', '0000-00-00 00:00:00'),
(115, 420, 'Pakturk', '2016-03-08', 'Hyderabad', 167, '71000', 'No', 'Yes', 0, '2019-11-12 16:18:38', '0000-00-00 00:00:00'),
(116, 414, 'NKM High School and Homes ', '2009-11-06', 'Narsingdi', 19, '1200', 'Yes', 'Yes', 0, '2019-11-12 16:30:59', '0000-00-00 00:00:00'),
(117, 413, 'Warsak Cadet College Peshawar ', '2019-11-12', 'Peshawar ', 167, '25000', 'Yes', 'Yes', 0, '2019-11-12 16:32:04', '0000-00-00 00:00:00'),
(118, 427, 'Pak lyceum school', '2003-10-04', 'lahore', 167, '54000', 'No', 'Yes', 0, '2019-11-12 16:48:40', '0000-00-00 00:00:00'),
(119, 429, 'St Xaviers School', '2006-04-10', 'Sahibganj jharkhand state', 0, '816109', 'No', 'No', 0, '2019-11-12 17:07:04', '0000-00-00 00:00:00'),
(120, 435, 'Saint marys high school', '2017-06-05', 'Lalitpur', 0, '446600', 'No', 'No', 0, '2019-11-12 17:24:06', '0000-00-00 00:00:00'),
(121, 434, 'Superior college sargodha', '2012-05-08', 'Sargodha', 167, '40100', 'No', 'No', 0, '2019-11-12 17:26:21', '0000-00-00 00:00:00'),
(122, 433, 'Karalda Baninikatan High School', '2014-01-12', 'Karalda', 102, '721429', 'No', 'No', 0, '2019-11-12 17:28:27', '0000-00-00 00:00:00'),
(123, 438, 'Sadiq Public School Bahawalpur', '2015-04-07', 'Bahawalpur', 167, '63100', 'Yes', 'Yes', 0, '2019-11-12 17:41:23', '0000-00-00 00:00:00'),
(124, 443, 'High secondary school no 1 umerkot ', '2011-03-31', 'Umerkot ', 167, '69100', 'Yes', 'Yes', 0, '2019-11-12 19:27:03', '0000-00-00 00:00:00'),
(125, 449, 'Punjab college', '2016-07-15', 'Dera ghazi Khan ', 167, '32200', 'No', 'Yes', 0, '2019-11-12 19:49:53', '0000-00-00 00:00:00'),
(126, 455, 'Bhadgoan Taherunnesa high school ', '2010-01-01', 'Moulovibazar ', 19, '3100', 'No', 'Yes', 0, '2019-11-13 02:02:09', '0000-00-00 00:00:00'),
(127, 453, 'Vishwa Adarsha College ', '2017-07-16', 'Itahari ', 156, '56705', 'Yes', 'Yes', 0, '2019-11-13 02:10:52', '0000-00-00 00:00:00'),
(128, 458, 'Chelsea international academy', '2016-09-13', 'Kathmandu ', 156, '44600', 'Yes', 'Yes', 0, '2019-11-13 02:30:59', '0000-00-00 00:00:00'),
(129, 464, 'Golden gate international college ', '2019-11-13', 'Kathmandu ', 156, '456', 'Yes', 'Yes', 0, '2019-11-13 03:15:26', '0000-00-00 00:00:00'),
(130, 466, 'Tilottama Higher Secondary School', '2017-06-17', 'Tilottama', 156, '33900', 'Yes', 'Yes', 0, '2019-11-13 04:46:12', '0000-00-00 00:00:00'),
(131, 466, 'Tilottama Higher Secondary School', '2017-06-17', 'Tilottama', 156, '33900', 'Yes', 'Yes', 0, '2019-11-13 04:46:13', '0000-00-00 00:00:00'),
(132, 469, 'Mirpur Bangla High school And College', '2006-01-05', 'Dhaka Mirpur', 19, '1216', 'No', 'No', 0, '2019-11-13 05:35:17', '0000-00-00 00:00:00'),
(133, 475, 'Barisal model school ', '2012-01-18', 'Barisal', 19, '8200', 'No', 'Yes', 0, '2019-11-13 06:34:14', '0000-00-00 00:00:00'),
(134, 477, 'Kendriya Vidyalaya', '2018-06-28', 'Dhenkanal', 102, '759001', 'No', 'Yes', 0, '2019-11-13 06:42:01', '0000-00-00 00:00:00'),
(135, 448, 'S R P College', '2018-06-04', 'Patna', 0, '800007', 'No', 'Yes', 0, '2019-11-13 07:03:58', '0000-00-00 00:00:00'),
(136, 479, 'University of the punjab', '2015-10-19', 'Lahore', 167, '54000', 'No', 'Yes', 0, '2019-11-13 07:49:23', '0000-00-00 00:00:00'),
(137, 480, 'SEEDS', '2015-11-28', 'Peshawar ', 167, '25000', 'No', 'Yes', 0, '2019-11-13 08:01:58', '0000-00-00 00:00:00'),
(138, 483, 'Sudhum children academy', '2012-11-13', 'Mardan', 167, '23200', 'Yes', 'Yes', 0, '2019-11-13 08:29:04', '0000-00-00 00:00:00'),
(139, 486, 'PIR MEHR ALI SHAH ARID AGRICULTURE UNIVERSITY RAWALPINDI', '2015-09-28', 'Rawalpindi', 0, '44000', 'No', 'Yes', 0, '2019-11-13 09:39:04', '0000-00-00 00:00:00'),
(140, 441, 'G H S S EW JATOI', '2006-01-03', 'YES', 167, '67130', 'Yes', 'Yes', 0, '2019-11-13 10:13:52', '0000-00-00 00:00:00'),
(141, 488, 'Madan Bhandari Memorial School', '2019-11-13', 'Ghorahi', 156, '22400', 'No', 'Yes', 0, '2019-11-13 10:28:44', '0000-00-00 00:00:00'),
(142, 489, 'Beaconhouse School System', '2017-08-30', 'Karachi', 167, '75500', 'No', 'Yes', 0, '2019-11-13 10:29:27', '0000-00-00 00:00:00'),
(143, 490, 'Global Science College Larkana', '2007-08-30', 'Larkana', 167, '77150', 'No', 'Yes', 0, '2019-11-13 10:39:56', '0000-00-00 00:00:00'),
(144, 494, 'Saint joseph higher secondary school', '2018-06-01', 'dhaka', 19, '1207', 'No', 'No', 0, '2019-11-13 11:28:11', '0000-00-00 00:00:00'),
(145, 416, 'Xavier international college ', '2017-06-05', 'Kathmandu ', 156, '44600', 'Yes', 'Yes', 0, '2019-11-13 11:59:46', '0000-00-00 00:00:00'),
(146, 495, 'NSS', '2019-11-13', 'Kathmandu', 156, '01', 'No', 'Yes', 0, '2019-11-13 12:09:23', '0000-00-00 00:00:00'),
(147, 151, 'Al galilee high school', '2016-09-01', 'Beirut', 124, 'No zip cod', 'No', 'Yes', 0, '2019-11-13 12:12:05', '0000-00-00 00:00:00'),
(148, 507, 'Gulshan technical high school', '2011-04-03', 'Karachi', 167, '75050', 'No', 'No', 0, '2019-11-13 15:57:53', '0000-00-00 00:00:00'),
(149, 510, 'FAZAIA INTEMEDIATE COLLEGE KORANGI CREEK KARACHI', '2016-04-01', 'Karachi', 167, '75190', 'No', 'Yes', 0, '2019-11-13 16:37:14', '0000-00-00 00:00:00'),
(150, 137, 'St Patricks Higher Secondary  School', '2018-10-15', 'Asansol', 102, '713301', 'No', 'Yes', 0, '2019-11-13 17:47:52', '0000-00-00 00:00:00'),
(151, 515, 'Government higher Secondary School Bakhar Jamali', '2012-04-02', 'Matiari ', 0, '70101', 'Yes', 'Yes', 0, '2019-11-13 17:52:47', '0000-00-00 00:00:00'),
(152, 518, 'Kinnaird college ', '2018-09-10', 'Lahore', 0, '00000', 'No', 'No', 0, '2019-11-13 19:59:05', '0000-00-00 00:00:00'),
(153, 519, 'Fatmiyah College ', '2012-08-06', 'Karachi', 167, '77650', 'No', 'Yes', 0, '2019-11-13 20:13:07', '0000-00-00 00:00:00'),
(154, 520, 'government boys high school sita road', '2014-12-04', 'sita road', 167, '76200', 'Yes', 'Yes', 0, '2019-11-13 20:31:37', '0000-00-00 00:00:00'),
(155, 522, 'Satkhira pn high school', '2006-05-01', 'Satkhira', 0, '9400', 'Yes', 'Yes', 0, '2019-11-14 02:24:53', '0000-00-00 00:00:00'),
(156, 529, 'Divisional public school', '2006-03-01', 'Lahore', 167, '54770', 'Yes', 'No', 0, '2019-11-14 06:48:15', '0000-00-00 00:00:00'),
(157, 468, 'Kathmandu Model Secondary college ', '2016-11-14', 'Kathmandu ', 156, '44600', 'Yes', 'Yes', 0, '2019-11-14 08:12:21', '0000-00-00 00:00:00'),
(158, 530, 'Rayden College', '2018-08-01', 'Karachi', 167, '00000', 'No', 'Yes', 0, '2019-11-14 10:02:01', '0000-00-00 00:00:00'),
(159, 512, 'Jamnabai Narsee School', '2018-07-16', 'Mumbai', 102, '400049', 'No', 'Yes', 0, '2019-11-14 10:20:03', '0000-00-00 00:00:00'),
(160, 531, 'Aga Khan Higher Secondary School ', '2016-08-01', 'Karachi ', 167, '75900', 'No', 'Yes', 0, '2019-11-14 10:44:39', '0000-00-00 00:00:00'),
(161, 532, 'National Infotech Higher secondary school ', '2015-04-04', 'Birgunj ', 156, '44600', 'Yes', 'Yes', 0, '2019-11-14 10:45:11', '0000-00-00 00:00:00'),
(162, 533, 'Shangri la', '2004-11-14', 'Jorpati', 0, '44600', 'Yes', 'Yes', 0, '2019-11-14 11:00:40', '0000-00-00 00:00:00'),
(163, 533, 'Shangri la', '2004-11-14', 'Jorpati', 0, '44600', 'Yes', 'Yes', 0, '2019-11-14 11:00:41', '0000-00-00 00:00:00'),
(164, 533, 'Shangri la', '2004-11-14', 'Jorpati', 0, '44600', 'Yes', 'Yes', 0, '2019-11-14 11:00:45', '0000-00-00 00:00:00'),
(165, 533, 'Shangri la', '2004-11-14', 'Jorpati', 0, '44600', 'Yes', 'Yes', 0, '2019-11-14 11:00:45', '0000-00-00 00:00:00'),
(166, 533, 'Shangri la', '2004-11-14', 'Jorpati', 0, '44600', 'Yes', 'Yes', 0, '2019-11-14 11:00:46', '0000-00-00 00:00:00'),
(167, 537, 'Punjab Group of Colleges ', '2018-08-28', 'Lahore', 167, '54782', 'No', 'Yes', 0, '2019-11-14 12:48:54', '0000-00-00 00:00:00'),
(168, 539, 'Bodhi international school', '0000-00-00', 'jodhpur', 102, '342001', 'No', 'Yes', 0, '2019-11-14 14:10:20', '0000-00-00 00:00:00'),
(169, 540, 'Dehli Government College', '2019-11-14', 'Karachi', 167, '12311', 'No', 'Yes', 0, '2019-11-14 14:29:32', '0000-00-00 00:00:00'),
(170, 543, 'Tilottama campus', '2018-07-07', 'Butwal', 156, '32907', 'Yes', 'Yes', 0, '2019-11-14 16:39:19', '0000-00-00 00:00:00'),
(171, 547, 'The usmania', '2005-03-05', 'Karachi', 167, '75300', 'No', 'Yes', 0, '2019-11-14 19:28:01', '0000-00-00 00:00:00'),
(172, 551, 'Loyola School', '2015-06-01', 'Trivandrum', 102, '695017', 'No', 'Yes', 0, '2019-11-15 00:11:16', '0000-00-00 00:00:00'),
(173, 554, 'read foundation college', '2016-02-04', 'nakyal azad kashmir', 167, '11170', 'No', 'No', 0, '2019-11-15 02:25:03', '0000-00-00 00:00:00'),
(174, 554, 'read foundation college', '2016-02-21', 'nakyal azad kashmir', 167, '11170', 'No', 'No', 0, '2019-11-15 02:30:24', '0000-00-00 00:00:00'),
(175, 555, 'Holyland high school', '2016-07-28', 'Nepalgunj', 156, '21900', 'Yes', 'Yes', 0, '2019-11-15 03:25:38', '0000-00-00 00:00:00'),
(176, 557, 'Mkoba 1 High School ', '2011-02-18', 'Gweru', 246, '0', 'No', 'Yes', 0, '2019-11-15 05:03:04', '0000-00-00 00:00:00'),
(177, 562, 'Sainik Awasiya Mahavidyalaya Bhaktapur', '2017-07-23', 'Bhaktapur', 0, '44800', 'Yes', 'Yes', 0, '2019-11-15 06:42:50', '0000-00-00 00:00:00'),
(178, 564, 'Cedar College', '2018-08-30', 'Karachi', 167, '75600', 'No', 'Yes', 0, '2019-11-15 06:46:55', '0000-00-00 00:00:00'),
(179, 566, 'Benchmark School System ', '2016-09-01', 'Rawalpindi', 167, '44000', 'No', 'Yes', 0, '2019-11-15 08:01:13', '0000-00-00 00:00:00'),
(180, 568, 'Adamjee Cantonment College', '2018-07-01', 'Dhaka', 19, '1206', 'No', 'No', 0, '2019-11-15 08:11:16', '0000-00-00 00:00:00'),
(181, 512, 'Jamnabai Narsee School', '2018-07-16', 'Mumbai', 102, '400049', 'No', 'Yes', 0, '2019-11-15 08:31:06', '0000-00-00 00:00:00'),
(182, 570, 'HITEC College for Men', '2018-03-13', 'Taxila', 167, '47080', 'Yes', 'Yes', 0, '2019-11-15 08:33:46', '0000-00-00 00:00:00'),
(183, 572, 'Allama Iqbal Public High School cantt', '2013-04-19', 'Sialkot', 167, '51300', 'No', 'No', 0, '2019-11-15 09:02:56', '0000-00-00 00:00:00'),
(184, 576, 'Delhi Public School Durg', '2019-11-15', 'Durg', 0, '490006', 'No', 'Yes', 0, '2019-11-15 11:27:33', '0000-00-00 00:00:00'),
(185, 576, 'Delhi Public School Durg', '2019-11-15', 'Durg', 102, '490006', 'No', 'Yes', 0, '2019-11-15 11:33:14', '0000-00-00 00:00:00'),
(186, 582, 'Swat public school and college Rahimabad campus mingora ', '2014-05-08', 'Mingora ', 167, '19130', 'Yes', 'Yes', 0, '2019-11-15 13:18:44', '0000-00-00 00:00:00'),
(187, 583, 'Saint Xaviers College', '2017-08-01', 'kathmandu', 0, '44600', 'No', 'Yes', 0, '2019-11-15 13:52:02', '0000-00-00 00:00:00'),
(188, 587, 'Aga Khan Higher Secondary School ', '2019-05-30', 'Karachi ', 167, '75950', 'No', 'No', 0, '2019-11-15 15:53:46', '0000-00-00 00:00:00'),
(189, 591, 'Ku City College ', '2016-07-03', 'Kathmandu', 156, '44620', 'Yes', 'Yes', 0, '2019-11-16 01:59:29', '0000-00-00 00:00:00'),
(190, 593, 'International Standard School', '2012-03-12', 'Lahore', 167, 'Opposite L', 'No', 'Yes', 0, '2019-11-16 02:25:20', '0000-00-00 00:00:00'),
(191, 574, 'Adamjee Government Science College', '2017-08-07', 'Karachi', 167, '74500', 'No', 'Yes', 0, '2019-11-16 06:36:16', '0000-00-00 00:00:00'),
(192, 599, 'FG sir Syed the mall Rawalpindi', '2017-08-15', 'Rawalpindi', 167, '46000', 'No', 'Yes', 0, '2019-11-16 09:41:53', '0000-00-00 00:00:00'),
(193, 604, 'Maharaja Sawai Bhawani Singh', '2015-04-06', 'Jaipur', 102, '303806', 'No', 'Yes', 0, '2019-11-16 11:38:08', '0000-00-00 00:00:00'),
(194, 603, 'Scienta Vision College', '2016-06-08', 'Islamabad', 167, '44100', 'No', 'Yes', 0, '2019-11-16 11:43:31', '0000-00-00 00:00:00'),
(195, 605, 'Whales College', '2018-08-01', 'Karachi', 167, '75290', 'No', 'Yes', 0, '2019-11-16 11:45:47', '0000-00-00 00:00:00'),
(196, 512, 'Jamnabai Narsee School', '2018-07-16', 'Mumbai', 102, '400049', 'No', 'Yes', 0, '2019-11-16 14:05:02', '0000-00-00 00:00:00'),
(197, 611, 'Bindubasini Government Boys High School', '2011-01-01', 'Tangail', 0, '1900', 'No', 'Yes', 0, '2019-11-16 14:23:53', '0000-00-00 00:00:00'),
(198, 617, 'FUUAST', '2015-01-15', 'Karachi', 167, '23157', 'No', 'Yes', 0, '2019-11-16 15:04:43', '0000-00-00 00:00:00'),
(199, 618, 'Govt Comprehensive School ', '2011-06-01', 'Multan', 167, '66000', 'Yes', 'No', 0, '2019-11-16 16:24:33', '0000-00-00 00:00:00'),
(200, 621, 'Narayangonj Govt Girls High School', '2010-01-01', 'Narayangonj', 0, '1400', 'No', 'Yes', 0, '2019-11-16 16:37:16', '0000-00-00 00:00:00'),
(201, 621, 'Narayangonj Govt Girls High School', '2010-01-01', 'Narayangonj', 0, '1400', 'No', 'Yes', 0, '2019-11-16 16:39:14', '0000-00-00 00:00:00'),
(202, 621, 'Narayangonj Govt Girls High School', '2010-01-01', 'Narayangonj', 0, '1400', 'No', 'Yes', 0, '2019-11-16 16:43:11', '0000-00-00 00:00:00'),
(203, 627, 'Multan board', '2012-11-17', 'Multan', 167, '66000', 'No', 'Yes', 0, '2019-11-16 19:25:18', '0000-00-00 00:00:00'),
(204, 629, 'Working folks Grammar higher secondary school', '2019-11-17', 'Swabi gadoon amazi', 167, '23454', 'Yes', 'Yes', 0, '2019-11-17 02:15:17', '0000-00-00 00:00:00'),
(205, 631, 'Nobel Academy', '2015-05-01', 'Kathmandu ', 156, '44600', 'Yes', 'Yes', 0, '2019-11-17 03:30:21', '0000-00-00 00:00:00'),
(206, 633, 'Playpen School', '2019-09-01', 'Dhaka', 19, '1229', 'No', 'Yes', 0, '2019-11-17 04:41:52', '0000-00-00 00:00:00'),
(207, 638, 'Shaheen Childrens Academy College of Sciences', '2015-05-08', 'Karak', 167, '27100', 'No', 'Yes', 0, '2019-11-17 07:00:05', '0000-00-00 00:00:00'),
(208, 608, 'Cadet College Palandri', '2017-06-23', 'Palandri', 167, '12010', 'No', 'Yes', 0, '2019-11-17 08:14:07', '0000-00-00 00:00:00'),
(209, 641, 'Aspire Group of Colleges', '2018-09-05', 'Mirpur', 167, '10250', 'No', 'No', 0, '2019-11-17 08:28:58', '0000-00-00 00:00:00'),
(210, 640, 'Muslim girls High School and college', '2003-01-20', 'Mymensingh', 19, '7273', 'Yes', 'Yes', 0, '2019-11-17 08:55:51', '0000-00-00 00:00:00'),
(211, 646, 'Forman Christian College ', '2018-09-11', 'Lahore', 167, '54600', 'No', 'Yes', 0, '2019-11-17 10:15:24', '0000-00-00 00:00:00'),
(212, 643, 'Govt high school for boys Tajpura scheme mughal pura road Lahore', '2014-03-03', 'Lahore', 167, '54870', 'No', 'Yes', 0, '2019-11-17 10:18:58', '0000-00-00 00:00:00'),
(213, 604, 'Maharaja Sawai Bhawani Singh', '0000-00-00', 'Jaipur', 102, '303806', 'No', 'Yes', 0, '2019-11-17 12:29:03', '0000-00-00 00:00:00'),
(214, 471, 'Cherry Blossom international School', '2008-06-11', 'Dhaka', 19, '1216', 'No', 'No', 0, '2019-11-17 15:08:14', '0000-00-00 00:00:00'),
(215, 634, 'University of Engineering and Technology Lahore', '2014-09-30', 'Lahore', 0, '53720', 'Yes', 'Yes', 0, '2019-11-17 17:10:27', '0000-00-00 00:00:00'),
(216, 656, 'Sylhet Govt College', '2014-02-15', 'Sylhet', 19, '3100', 'No', 'No', 0, '2019-11-17 17:39:46', '0000-00-00 00:00:00'),
(217, 660, 'Mohammadpur Government  College', '2018-04-10', 'Dhaka', 19, '1207', 'No', 'Yes', 0, '2019-11-17 21:34:35', '0000-00-00 00:00:00'),
(218, 664, 'Govt high school', '2013-01-08', 'Gojra', 167, '56000', 'Yes', 'Yes', 0, '2019-11-18 04:40:21', '0000-00-00 00:00:00'),
(219, 669, 'Aga Khan higher secondary school', '2017-08-01', 'Karachi', 167, '74600', 'No', 'Yes', 0, '2019-11-18 09:50:24', '0000-00-00 00:00:00'),
(220, 442, 'Delsol The School', '2013-08-01', 'Karachi', 167, '77735', 'No', 'Yes', 0, '2019-11-18 14:16:46', '0000-00-00 00:00:00'),
(221, 649, 'Fouji Foundation Model High School', '2014-09-18', 'Haroonabad', 167, '62100', 'No', 'Yes', 0, '2019-11-18 16:06:26', '0000-00-00 00:00:00'),
(222, 647, 'St bonaventures high school', '2000-10-21', 'Hyderabad', 167, '0059', 'No', 'Yes', 0, '2019-11-18 16:33:34', '0000-00-00 00:00:00'),
(223, 493, 'Government high school wania wala', '2014-04-21', 'Gujranwala', 167, '52250', 'No', 'Yes', 0, '2019-11-19 13:30:42', '0000-00-00 00:00:00'),
(224, 675, 'Jamnabai Narsee School', '2006-06-12', 'Mumbai', 102, '400049', 'No', 'Yes', 0, '2019-11-20 08:21:38', '0000-00-00 00:00:00'),
(225, 662, 'dsfsdffd', '2017-04-01', 'sdfsdfsd', 146, '55800', 'No', 'Yes', 0, '2019-11-21 14:52:17', '0000-00-00 00:00:00'),
(226, 610, 'Dhaka Residential Model College', '2009-01-15', 'Dhaka', 19, '1225', 'No', 'Yes', 0, '2019-11-21 20:13:51', '0000-00-00 00:00:00'),
(227, 538, 'Farooqi Girls High School', '1995-04-01', 'Lahore', 167, '54000', 'No', 'Yes', 0, '2019-11-22 16:44:39', '0000-00-00 00:00:00'),
(228, 677, 'Lotus Valley International School Gurugram', '2015-04-01', 'Gurugram', 102, '122018', 'No', 'Yes', 0, '2019-11-23 10:44:29', '0000-00-00 00:00:00'),
(229, 625, 'Cadet College Palandri', '2017-05-24', 'Palandri', 167, '12010', 'No', 'Yes', 0, '2019-11-23 16:31:32', '0000-00-00 00:00:00'),
(230, 678, 'Marthoma Central School', '2019-11-24', 'Trivandrum', 102, '695142', 'No', 'Yes', 0, '2019-11-24 03:26:09', '0000-00-00 00:00:00'),
(231, 399, 'Halwasiya Vidya vihar', '2019-08-05', 'Bhiwani', 102, '127021', 'No', 'No', 0, '2019-11-26 04:18:12', '0000-00-00 00:00:00'),
(232, 693, 'Mahatma Gandhi International School', '2017-06-25', 'Ahmedabad', 102, '380006', 'No', 'Yes', 0, '2019-11-26 18:24:51', '0000-00-00 00:00:00'),
(233, 694, 'INFANT JESUS ENGLISH MEDIUM SCHOOL THIRUVAMBADY', '2010-06-01', 'THIRUVAMBADY', 102, '673603', 'No', 'Yes', 0, '2019-11-27 01:42:20', '0000-00-00 00:00:00'),
(234, 563, 'Superior College Of Science ', '2018-08-01', 'Hyderabad ', 167, '17000', 'No', 'Yes', 0, '2019-11-27 14:45:03', '0000-00-00 00:00:00'),
(235, 717, 'Siru shinning sec school', '2019-12-01', 'Sirutar', 0, '44800', 'Yes', 'Yes', 0, '2019-12-01 16:13:18', '0000-00-00 00:00:00'),
(236, 718, 'Ambition Academy Secondary School', '2017-08-15', 'New baneshwor', 156, '44600', 'No', 'Yes', 0, '2019-12-02 12:01:03', '0000-00-00 00:00:00'),
(237, 719, 'Mahatma Gandhi International School', '0000-00-00', 'Ahmedabad', 102, '380006', 'No', 'Yes', 0, '2019-12-03 07:36:50', '0000-00-00 00:00:00'),
(238, 720, 'M H High School', '1979-07-01', 'Thane', 102, '400602', 'No', 'Yes', 0, '2019-12-03 16:32:05', '0000-00-00 00:00:00'),
(239, 723, 'Shri Bansidhar Aggarwal High School', '2004-06-06', 'Mumbai', 102, '400031', 'No', 'No', 0, '2019-12-05 08:10:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `siblings`
--

CREATE TABLE `siblings` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `middleInitial` varchar(5) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `age` int(10) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `educationLevel` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siblings`
--

INSERT INTO `siblings` (`id`, `stuId`, `firstName`, `middleInitial`, `lastName`, `age`, `relationship`, `educationLevel`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ronak', 'R', 'Katial', 25, 'Brother', 'Graduated from college/University', 0, '2019-10-04 22:35:34', '0000-00-00 00:00:00'),
(2, 88, 'Rhydum', '', 'Kejriwal', 10, 'Brother', 'Some grade/primary school', 0, '2019-10-23 11:29:10', '0000-00-00 00:00:00'),
(3, 187, 'Nayaan ', '', 'Ghai', 10, 'Brother', 'completed grade/primary school', 0, '2019-10-29 13:15:32', '0000-00-00 00:00:00'),
(4, 212, 'Arya', '', 'R', 15, 'Sister', 'some high/secondary school', 0, '2019-10-30 14:32:24', '0000-00-00 00:00:00'),
(5, 233, 'Aviroop', '', 'Majumdar', 19, 'Brother', 'Graduate School', 0, '2019-10-31 08:21:11', '0000-00-00 00:00:00'),
(6, 274, 'Nikhita', '', 'Ganesh', 25, 'Sister', 'Graduated from college/University', 0, '2019-11-02 11:54:30', '0000-00-00 00:00:00'),
(7, 274, 'Nikil ', '', 'Ganesh', 21, 'Brother', 'Graduated from college/University', 0, '2019-11-02 11:54:55', '0000-00-00 00:00:00'),
(8, 360, 'SANJITI', '', 'SAHA', 14, 'Sister', 'some high/secondary school', 0, '2019-11-10 13:38:17', '0000-00-00 00:00:00'),
(9, 392, 'Sriyana ', '', 'Kc', 12, 'Sister', 'Some grade/primary school', 0, '2019-11-12 13:42:47', '0000-00-00 00:00:00'),
(10, 392, 'Sriyana ', '', 'Kc', 12, 'Sister', 'Some grade/primary school', 0, '2019-11-12 13:42:48', '0000-00-00 00:00:00'),
(11, 479, 'Zeerak', '', 'Jamshaid', 21, 'Brother', 'Graduated from college/University', 0, '2019-11-13 07:53:11', '0000-00-00 00:00:00'),
(12, 479, 'Shayan', '', 'Jamshaid', 18, 'Brother', 'Graduated from college/University', 0, '2019-11-13 07:53:51', '0000-00-00 00:00:00'),
(13, 519, 'Ambareen', 'A', 'Golani', 20, 'Sister', 'some college/University', 0, '2019-11-13 20:24:50', '0000-00-00 00:00:00'),
(14, 519, 'Salima', 'S', 'Alyshan', 27, 'Sister', 'Graduated from college/University', 0, '2019-11-13 20:25:22', '0000-00-00 00:00:00'),
(15, 537, 'Kainat', '', 'Fayaz', 20, 'Sister', 'Graduated from college/University', 0, '2019-11-14 12:55:06', '0000-00-00 00:00:00'),
(16, 162, 'Joyce', 'R', 'Houngbo', 17, 'Brother', 'Graduated from high/secondary school (or equivalent)', 0, '2019-11-14 17:05:03', '0000-00-00 00:00:00'),
(17, 162, 'Joyce ', 'R', 'Houngbo ', 17, 'Brother', 'Graduated from high/secondary school (or equivalent)', 0, '2019-11-14 17:47:40', '0000-00-00 00:00:00'),
(18, 547, 'Amna', '', 'Tariq', 19, 'Sister', 'Graduated from high/secondary school (or equivalent)', 0, '2019-11-14 19:31:49', '0000-00-00 00:00:00'),
(19, 604, 'Yashank', '', 'Bansal', 22, 'Brother', 'Graduated from college/University', 0, '2019-11-17 12:31:46', '0000-00-00 00:00:00'),
(20, 718, 'Dev', 'R', 'Acharya', 13, 'Brother', 'completed grade/primary school', 0, '2019-12-02 12:07:54', '0000-00-00 00:00:00'),
(21, 719, 'Pal', '', 'Shah', 22, 'Sister', 'some college/University', 0, '2019-12-04 05:27:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `middleInitial` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `countryOfResidence` int(10) NOT NULL,
  `countryOfBirth` int(10) NOT NULL,
  `cityOfBirth` varchar(100) NOT NULL,
  `streetAddress1` varchar(100) NOT NULL,
  `streetAddress2` varchar(100) NOT NULL,
  `streetAddress3` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postalCode` varchar(10) NOT NULL,
  `regionOrProvince` varchar(30) NOT NULL,
  `countryCode` int(5) NOT NULL,
  `mobileNumber` varchar(10) NOT NULL,
  `emailAddress` varchar(150) NOT NULL,
  `plannedHighestEduLvl` varchar(100) NOT NULL,
  `collegeHousingPlan` varchar(20) NOT NULL,
  `financialAid` varchar(20) NOT NULL,
  `partTimeJob` varchar(20) NOT NULL,
  `noOfYrsInUS` varchar(20) NOT NULL,
  `noOfYrsOutOfUS` varchar(20) NOT NULL,
  `citizenshipStatus` varchar(100) NOT NULL,
  `parentsMaritalStatus` varchar(100) NOT NULL,
  `permenantHomeGuardian` varchar(50) NOT NULL,
  `Parent1type` varchar(200) NOT NULL,
  `parent1Living` varchar(100) NOT NULL,
  `Parent1prefix` varchar(100) NOT NULL,
  `Parent1FirstName` varchar(100) NOT NULL,
  `Parent1MiddleInitial` varchar(10) NOT NULL,
  `Parent1LastName` varchar(100) NOT NULL,
  `Parent1FormerLastName` varchar(100) NOT NULL,
  `Parent1Suffix` varchar(100) NOT NULL,
  `Parent1CountryOfBirth` int(10) NOT NULL,
  `Parent1Occupation` int(10) NOT NULL,
  `Parent1EducationLevel` varchar(100) NOT NULL,
  `Parent2type` varchar(200) NOT NULL,
  `Parent2Living` varchar(100) NOT NULL,
  `Parent2Prerix` varchar(100) NOT NULL,
  `Parent2FirstName` varchar(100) NOT NULL,
  `Parent2MiddleInitial` varchar(10) NOT NULL,
  `Parent2LastName` varchar(100) NOT NULL,
  `Parent2FormerLastName` varchar(100) NOT NULL,
  `Parent2Suffix` varchar(100) NOT NULL,
  `Parent2CountryOfBirth` int(10) NOT NULL,
  `Parent2Occupation` int(10) NOT NULL,
  `Parent2EducationLevel` varchar(100) NOT NULL,
  `careerIntrest` int(10) NOT NULL,
  `essayOption` varchar(1000) NOT NULL,
  `essay` varchar(2000) NOT NULL,
  `areasOfStudyId` int(11) NOT NULL,
  `majorId` int(11) NOT NULL,
  `transcript9th` varchar(100) NOT NULL,
  `transcript10th` varchar(100) NOT NULL,
  `transcript11th` varchar(100) NOT NULL,
  `transcript12th` varchar(100) NOT NULL,
  `lor1` varchar(100) NOT NULL,
  `lor2` varchar(100) NOT NULL,
  `lor3` varchar(100) NOT NULL,
  `addedTranscripts` tinyint(1) NOT NULL,
  `ferpaunderstood` varchar(5) NOT NULL,
  `ferpaack` varchar(5) NOT NULL,
  `selectopt` varchar(100) NOT NULL,
  `ferpawaiver` varchar(5) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `ferpaDate` date NOT NULL,
  `isApply` tinyint(1) NOT NULL,
  `personel_form` tinyint(1) NOT NULL,
  `contact_form` tinyint(1) NOT NULL,
  `parent_1` tinyint(1) NOT NULL,
  `parent_2` tinyint(1) NOT NULL,
  `college_plans_form` tinyint(1) NOT NULL,
  `majorSelect_form` tinyint(1) NOT NULL,
  `highSchool_form` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `isMandatory` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `userId`, `firstName`, `middleInitial`, `lastName`, `gender`, `dateOfBirth`, `countryOfResidence`, `countryOfBirth`, `cityOfBirth`, `streetAddress1`, `streetAddress2`, `streetAddress3`, `city`, `postalCode`, `regionOrProvince`, `countryCode`, `mobileNumber`, `emailAddress`, `plannedHighestEduLvl`, `collegeHousingPlan`, `financialAid`, `partTimeJob`, `noOfYrsInUS`, `noOfYrsOutOfUS`, `citizenshipStatus`, `parentsMaritalStatus`, `permenantHomeGuardian`, `Parent1type`, `parent1Living`, `Parent1prefix`, `Parent1FirstName`, `Parent1MiddleInitial`, `Parent1LastName`, `Parent1FormerLastName`, `Parent1Suffix`, `Parent1CountryOfBirth`, `Parent1Occupation`, `Parent1EducationLevel`, `Parent2type`, `Parent2Living`, `Parent2Prerix`, `Parent2FirstName`, `Parent2MiddleInitial`, `Parent2LastName`, `Parent2FormerLastName`, `Parent2Suffix`, `Parent2CountryOfBirth`, `Parent2Occupation`, `Parent2EducationLevel`, `careerIntrest`, `essayOption`, `essay`, `areasOfStudyId`, `majorId`, `transcript9th`, `transcript10th`, `transcript11th`, `transcript12th`, `lor1`, `lor2`, `lor3`, `addedTranscripts`, `ferpaunderstood`, `ferpaack`, `selectopt`, `ferpawaiver`, `signature`, `ferpaDate`, `isApply`, `personel_form`, `contact_form`, `parent_1`, `parent_2`, `college_plans_form`, `majorSelect_form`, `highSchool_form`, `status`, `isMandatory`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ronak', 'R', 'Katial', 'Male', '2019-10-17', 102, 16, 'Navi Mumbai', ' Gurukul Campus ', 'Behind McDonald Gokhale Road', 'Naupada Thane West', 'Thane', '400602', 'Maharashtra', 880, '0889872178', 'ronakkatial@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'No', '', '2', '7', 'Other (Non-US)', 'Widowed', 'Parent 2', 'Mother', 'Yes', 'Mr.', 'Seema', 'R', 'Katial', '', '', 16, 0, '', 'Father', 'No', '', 'Ravi', 'R', ' Katial', '', '', 17, 0, '', 4, 'The lessons we take from obstacles we encounter can be fundamental to later success. Recount a time when you faced a challenge, setback, or failure. How did it affect you, and what did you learn from the experience?', 'The essay demonstrates your ability to write clearly and concisely on a selected topic and helps you distinguish yourself in your own voice. What do you want the readers of your application to know about you apart from courses, grades, and test scores? Choose the option that best helps you answer that question and write an essay of no more than 650 words, using the prompt to inspire and structure your response. Remember: 650 words is your limit, not your goal. Use the full range if you need it, but don\'t feel obligated to do so. (The application won\'t accept a response shorter than 250 words.)*\r\n14', 7, 70, '394546offline-mail-search-your-entire-history-of-email-in-seconds-3047.png', '984188180-1804091_2019-supply-chain-solutions-linkedin-email-signature-linkedin.png', '24457offline-mail-search-your-entire-history-of-email-in-seconds-3047.png', '662016SS_Logo_Black_Large.png', '497874linkedin-icon-19.png', '64021180-1804091_2019-supply-chain-solutions-linkedin-email-signature-linkedin.png', '237275SS_Logo_Black_Large.png', 0, 'Yes', 'Yes', 'I waive my right to review all recommendations and supporting documents.', 'Yes', 'dsfgf', '2019-10-10', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-04 22:50:03', '0000-00-00 00:00:00'),
(2, 2, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-11 06:25:38', '0000-00-00 00:00:00'),
(3, 3, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 03:27:59', '0000-00-00 00:00:00'),
(4, 4, 'ARCHIT', '', 'GOYAL', 'Male', '2001-10-11', 102, 102, 'DELHI', 'SECTOR4 ROHINI', 'VIJAY VIHAR PHASE 2', 'SECTOR 4 ROHINI', 'DELHI', '110085', 'Delhi', 91, '9716935183', 'ARCHITGOELDELHI162@GMAIL.COM', 'Specialized training or certificate program', 'On-Campus Housing', 'No', '', '10', '0', 'Other (Non-US)', 'Separated', 'Other', 'Father', 'Yes', 'Mr.', 'Mukesh', '', 'Goyal', '', 'X', 102, 5, 'some high/secondary school', 'I have limited Information about this Parent', 'Yes', 'Mr.', 'Mukesh', '', ' goyal', '', '', 102, 6, 'Graduate School', 6, '', '', 38, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-05 04:24:40', '0000-00-00 00:00:00'),
(5, 5, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 04:19:05', '0000-00-00 00:00:00'),
(6, 6, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 04:20:13', '0000-00-00 00:00:00'),
(7, 7, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 04:24:42', '0000-00-00 00:00:00'),
(8, 8, 'Ashish', '', 'Gupta', 'Male', '2001-09-13', 0, 0, 'India', ' Anand society', 'Chaal 3rd road', 'Golibar naka', 'Mumbai', '400055', 'National', 0, '8424936561', 'ashusallo1713@gmail.com', 'Undecided', 'I dont know', 'No', '', '0', '0', 'Other (Non-US)', 'Separated', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Gautam', '', 'Gupta', 'Gupta', 'X', 0, 5, 'Some grade/primary school', 'Mother', 'Yes', 'Mrs.', 'Anita', '', ' Gupta', 'Gupta', 'X', 102, 44, 'Some grade/primary school', 1, '', '', 1, 4, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-05 04:40:51', '0000-00-00 00:00:00'),
(9, 9, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 04:26:03', '0000-00-00 00:00:00'),
(10, 10, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 04:26:04', '0000-00-00 00:00:00'),
(11, 11, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 04:26:04', '0000-00-00 00:00:00'),
(12, 12, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 04:26:37', '0000-00-00 00:00:00'),
(13, 13, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 04:27:26', '0000-00-00 00:00:00'),
(15, 15, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 04:38:27', '0000-00-00 00:00:00'),
(17, 17, 'Nutan', '', 'Singh', 'Male', '1995-09-01', 102, 102, 'Lucknow', ' C507 vibhutikhand', 'Gomtinagar', 'Phais second', 'Lucknow', '226018', 'Hindu', 0, '8430515151', 'Nrgsingh0@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Shailendra', '', 'Singh', '', 'IX', 102, 19, 'Graduated from college/University', 'I have limited Information about this Parent', 'I have limited Information about this Parent', 'Mrs.', 'Chanderkanta', '', ' Singh', '', 'IX', 102, 19, 'Graduated from high/secondary school (or equivalent)', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-10-05 05:32:08', '0000-00-00 00:00:00'),
(18, 18, 'Shivpoojan', '', 'Gupta', 'Male', '2019-10-10', 102, 102, 'Barabanki', ' Barabanki', 'Barabanki', 'Barabanki', 'Barabanki', '225305', 'Hindu', 91, '8400241237', 'shivpoojangupta2@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', '2', '', 'Gupta', 'Gupta', 'Sr.', 0, 0, 'Graduate School', 'Mother', 'Yes', 'Mrs.', '1', '', 'Devi ', 'Devi', 'Jr.', 102, 21, 'Some grade/primary school', 19, '', '', 1, 1, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-05 05:24:50', '0000-00-00 00:00:00'),
(20, 20, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 05:33:07', '0000-00-00 00:00:00'),
(23, 23, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 05:37:36', '0000-00-00 00:00:00'),
(25, 25, 'Shivaji ', 'A', 'Punewale ', 'Male', '1991-01-02', 102, 102, 'Osmanabad ', ' S B  Road ', '', '', 'Pune', '411058', 'A', 0, '9665368533', 'shivajipunewale99@gmail.com', 'Undecided', 'I dont know', 'No', '', '0', '0', 'Other (Non-US)', 'Separated', 'Both Parents', 'Father', 'Yes', 'Mr.', 'S ', '', 'Punewale ', '', '', 102, 19, 'None', 'Mother', 'I have limited Information about this Parent', 'Ms.', 'S ', 'S', ' Punewale ', '', '', 102, 21, 'None', 5, '', '', 1, 2, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-05 05:54:21', '0000-00-00 00:00:00'),
(26, 26, 'Jayesh', '', 'Patil', 'Male', '1995-10-30', 0, 0, 'Jalgaon', ' 41  dhankwadi', 'Rajmudra society', '', 'Pine', '411043', 'Pune', 0, '9730675901', 'janddmedia95@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:37:55', '0000-00-00 00:00:00'),
(27, 27, 'Amit', '', 'Singh', 'Male', '1998-10-05', 0, 0, 'Delhi', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:38:25', '0000-00-00 00:00:00'),
(28, 28, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:36:36', '0000-00-00 00:00:00'),
(29, 29, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:44:24', '0000-00-00 00:00:00'),
(30, 30, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:45:22', '0000-00-00 00:00:00'),
(31, 31, 'Sourabh', '', 'Gupta', 'Male', '2000-08-28', 0, 0, 'Delhi', ' Gourav nagar', 'Prem nagar', '', 'Delhi', '110086', 'Rural', 91, '9716917721', 'sourabhgupta9716@gmail.com', 'Other', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Separated', 'Other', 'Father', 'Yes', 'Mr.', 'Umashankar', '', 'Gupta', '', 'Sr.', 102, 31, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Ms.', 'Sushma', '', ' Gupta', 'Gupta', 'Sr.', 102, 44, 'None', 31, '', '', 37, 339, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-05 08:16:11', '0000-00-00 00:00:00'),
(32, 32, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:47:35', '0000-00-00 00:00:00'),
(33, 33, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:50:22', '0000-00-00 00:00:00'),
(34, 34, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:51:56', '0000-00-00 00:00:00'),
(35, 35, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:55:25', '0000-00-00 00:00:00'),
(36, 36, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 06:57:37', '0000-00-00 00:00:00'),
(37, 37, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:02:56', '0000-00-00 00:00:00'),
(38, 38, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:03:38', '0000-00-00 00:00:00'),
(39, 39, 'Nisarg', 'N', 'Kothari', 'Male', '2019-10-28', 0, 0, 'Mumbai', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:20:35', '0000-00-00 00:00:00'),
(40, 40, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:07:18', '0000-00-00 00:00:00'),
(41, 41, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:08:57', '0000-00-00 00:00:00'),
(42, 42, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:10:57', '0000-00-00 00:00:00'),
(43, 43, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:20:01', '0000-00-00 00:00:00'),
(44, 44, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:21:45', '0000-00-00 00:00:00'),
(45, 45, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:22:38', '0000-00-00 00:00:00'),
(46, 46, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:23:02', '0000-00-00 00:00:00'),
(47, 47, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:35:07', '0000-00-00 00:00:00'),
(48, 48, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:37:08', '0000-00-00 00:00:00'),
(49, 49, 'TestDS', 'D', 'Test', 'Male', '1991-01-01', 101, 0, 'Mumbai', ' 123 Main Street', '', '', 'Brooklyn', '11229', 'NewYork', 1, '1231123111', 'dineshsadhwani4@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Other', 'Father', 'Yes', '', 'Parent', 'N', 'One', '', '', 0, 0, '', 'Mother', 'Yes', '', 'Parent', 'N', 'Two', '', '', 102, 0, '', 7, '', '', 9, 79, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-05 08:51:50', '0000-00-00 00:00:00'),
(50, 50, 'Hrishikesh', 'R', 'Patil', 'Male', '1995-04-16', 0, 0, 'Chopda', 'B1101 ', 'Anusha residency', 'Pashan pune', 'Pune', '411021', 'Pune', 91, '8483020245', 'patilhrishikesh85@yahoo.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Ms.', 'Lalita', 'R', 'Patil', '', 'Sr.', 102, 44, 'completed grade/primary school', 'Father', 'Yes', 'Mr.', 'Ravindra', 'D', ' Patil', '', 'Sr.', 102, 44, 'Graduated from high/secondary school (or equivalent)', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-10-05 08:00:41', '0000-00-00 00:00:00'),
(51, 51, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:50:09', '0000-00-00 00:00:00'),
(52, 52, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:50:32', '0000-00-00 00:00:00'),
(53, 53, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:53:37', '0000-00-00 00:00:00'),
(54, 54, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:54:06', '0000-00-00 00:00:00'),
(55, 55, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:54:12', '0000-00-00 00:00:00'),
(56, 56, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:55:36', '0000-00-00 00:00:00'),
(57, 57, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:57:50', '0000-00-00 00:00:00'),
(58, 58, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:58:01', '0000-00-00 00:00:00'),
(59, 59, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:58:09', '0000-00-00 00:00:00'),
(60, 60, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 07:59:53', '0000-00-00 00:00:00'),
(61, 61, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 08:18:28', '0000-00-00 00:00:00'),
(62, 62, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 08:22:43', '0000-00-00 00:00:00'),
(63, 63, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 08:27:26', '0000-00-00 00:00:00'),
(64, 64, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 08:42:56', '0000-00-00 00:00:00'),
(65, 65, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 08:44:47', '0000-00-00 00:00:00'),
(66, 66, 'Muthu', '', 'Vel', 'Male', '2002-04-12', 102, 102, 'Thiruvarur', ' South Street', 'Perugavazhndhan', 'Mannargudi takul', 'Thiruvarur', '614705', 'Peruvai', 0, '9361077477', 'muthuvel.r1204@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '4', '4', 'U.S. Citizen or U.S. National', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Ravindran', '', 'Sanmugam', '', '', 102, 19, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Kavitha', '', ' Ravindran', '', '', 102, 21, 'Some grade/primary school', 36, '', '', 37, 339, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-05 09:03:04', '0000-00-00 00:00:00'),
(67, 67, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 11:09:10', '0000-00-00 00:00:00'),
(68, 68, 'Dinesh', 'D', 'T2', 'Male', '1991-01-01', 102, 102, 'Thane', ' 1234 William Street', '', '', 'Queens', '12211', 'NewYork', 20, '1221221112', 'dineshsadhwani4@gmail.com', 'Undecided', 'I dont know', 'Yes', '', '0', '0', 'U.S. Permanent Resident', 'Married', 'Both Parents', 'I have limited Information about this Parent', 'Yes', '', 'Parr', '', 'No1', '', '', 0, 0, '', 'I have limited Information about this Parent', 'I have limited Information about this Parent', '', 'Parr2', '', ' No1', '', '', 101, 0, '', 37, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, '2019-10-05 11:48:10', '0000-00-00 00:00:00'),
(69, 69, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 18:29:07', '0000-00-00 00:00:00'),
(70, 70, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 18:30:14', '0000-00-00 00:00:00'),
(71, 71, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-06 17:23:28', '0000-00-00 00:00:00'),
(72, 72, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-06 21:57:07', '0000-00-00 00:00:00'),
(73, 73, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2019-10-10 11:59:50', '0000-00-00 00:00:00'),
(74, 74, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-07 08:56:57', '0000-00-00 00:00:00'),
(75, 75, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-07 09:03:07', '0000-00-00 00:00:00'),
(76, 76, 'karthik', 's', 'kumar', 'Male', '1980-12-09', 199, 102, 'singapore', '', '', '', '', '', '', 0, '', '', '', '', '', '', '6', '8', 'U.S. Dual Citizen', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-11 06:29:02', '0000-00-00 00:00:00'),
(77, 77, 'Annanya', '', 'Panagala', 'Female', '2000-03-03', 102, 102, 'Chennai', ' 8', 'Sri Krishna Apartments', 'Officers Colony', 'Chennai', '600050', 'Tamilnadu', 0, '9176882094', 'annanya2000p@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Sunitha', 'B', 'Nallani', '', '', 0, 0, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Srihari', '', ' Panagala', '', '', 102, 6, 'Some trade school or community college', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-10-12 13:40:43', '0000-00-00 00:00:00'),
(78, 78, 'Ankit', 'U', 'Jha', 'Male', '2001-10-27', 102, 102, 'Bihar', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-15 11:46:42', '0000-00-00 00:00:00'),
(79, 79, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-15 13:13:24', '0000-00-00 00:00:00'),
(80, 80, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-16 13:26:47', '0000-00-00 00:00:00'),
(81, 81, 'Surabhi', '', 'Jha', 'Female', '2002-03-22', 102, 102, 'Jamshedpur', ' A1 Chaitanya Township 1  ', 'Opposite Amin Bajaj', 'Juna Mogri Road', 'Anand', '388001', 'Gujarat', 91, '9427635856', 'ejha08@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sanjeev', '', 'Jha', '', '', 102, 7, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Ela', '', 'Jha', '', '', 102, 18, 'Graduated from college/University', 36, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 15:48:33', '0000-00-00 00:00:00'),
(82, 82, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-19 05:53:43', '0000-00-00 00:00:00'),
(83, 83, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-19 09:00:09', '0000-00-00 00:00:00'),
(84, 84, 'Chirag', '', 'Bhardwaj', 'Male', '2002-01-18', 102, 102, 'Chandigarh', ' flat no 302 tower no B 14', 'nirmal chayya towers VIP road Zirakpur', '', 'SAS NAGAR', '140603', 'PUNJAB', 0, '9888607018', 'sushilbhardwaj16@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sushil', '', 'Bhardwaj', '', '', 102, 18, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Anu', '', ' Bhardwaj', '', '', 102, 21, 'Graduated from college/University', 18, '', '', 11, 116, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-20 06:55:02', '0000-00-00 00:00:00'),
(85, 85, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-21 13:27:23', '0000-00-00 00:00:00'),
(86, 86, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 06:37:52', '0000-00-00 00:00:00'),
(87, 87, 'Meghal', '', 'Jain', 'Female', '2002-07-13', 0, 102, 'Jodhpur', ' B 29', 'Dharam narayan ji ka hatha', 'Paota', 'Jodhpur', '342001', 'Rajasthan', 0, '8003264999', 'Meghaljain2017@gmail.com', '', '', '', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Prafful ', '', 'Jain', '', 'Sr.', 102, 6, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Pooja ', '', ' Jain', '', '', 102, 6, 'Graduated from college/University', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-10-23 13:59:31', '0000-00-00 00:00:00'),
(88, 88, 'Soham', '', 'Kejriwal', 'Male', '2005-06-05', 102, 102, 'Bikaner', ' Type 6 3 GPRA ', 'Kendranchal Vivek VIhar', 'Pali Road', 'Jodhpur', '342005', 'Rajasthan', 91, '9557303657', 'kejriwal.soham@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '14', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Hitesh', '', 'Kejriwal', 'Kejriwal', '', 102, 18, 'Graduated from college/University', 'Mother', 'No', 'Mrs.', 'Atika', '', 'Kejriwal', 'Agrawal', '', 102, 18, 'Graduated from college/University', 18, '', '', 11, 117, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-23 11:27:50', '0000-00-00 00:00:00'),
(89, 89, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 15:09:50', '0000-00-00 00:00:00'),
(90, 90, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-24 06:06:32', '0000-00-00 00:00:00'),
(91, 91, 'Rajat', 'S', 'Sharma', 'Male', '2001-10-17', 0, 0, 'Dehradun', ' House no19 lane no10', 'Mohit nagar', 'Gms road', 'Dehradun', '248006', 'Uttarakhand ', 91, '7456998036', 'shailysharma408@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Naresh', 'K', 'Sharma', '', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Banjeet', 'K', ' Sharma', '', '', 102, 44, 'Graduated from college/University', 6, '', '', 5, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-06 14:03:55', '0000-00-00 00:00:00'),
(92, 92, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-24 15:02:35', '0000-00-00 00:00:00'),
(93, 93, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-24 15:15:13', '0000-00-00 00:00:00'),
(94, 94, 'Kavya ', '', 'Jain', 'Female', '2003-09-12', 102, 102, 'Kolkata ', ' 10 Dr Abani Dutta road', 'Mohini building block A flat no 104', '', 'Kolkata', '711106', 'Howrah', 0, '9748408161', 'kavyaj364@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 2', 'Mother', 'Yes', 'Mrs.', 'Shelza', '', 'Jain', '', '', 102, 21, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Sohit', '', ' Jain', '', '', 102, 7, 'Graduated from college/University', 32, '', '', 4, 35, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-25 08:24:15', '0000-00-00 00:00:00'),
(95, 95, 'Soumik', '', 'Mondal', 'Male', '2002-02-06', 102, 102, 'Krishnanagar', 'Sabaipur Billagram Nadia Westbengal India', '', '', 'Kolkata', '741138', 'West-Bengal', 0, '7001682482', 'soumikmondal2002@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Swapan', 'K', 'Mondal', '', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Sukla', '', ' Mondal', 'Biswas', '', 102, 21, 'Graduated from college/University', 36, '', '', 28, 276, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-25 08:39:47', '0000-00-00 00:00:00'),
(96, 96, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 08:17:19', '0000-00-00 00:00:00'),
(97, 97, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 09:31:04', '0000-00-00 00:00:00'),
(98, 98, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 09:34:01', '0000-00-00 00:00:00'),
(99, 99, 'Sugandha ', '', 'Srivastava', 'Female', '2002-12-06', 102, 102, 'KOLKATA', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '16', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 09:36:40', '0000-00-00 00:00:00'),
(100, 100, 'Anisha ', '', 'Sarkar', 'Female', '2002-11-09', 102, 234, 'Birkenhead', ' 85 Prince Answer Shah Road', '', '', 'Kolkata', '700033', 'Kolkata', 91, '9748605609', 'anishasarkar91102@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Dr.', 'Abhijit', '', 'Sarkar', '', '', 19, 44, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Anupama', '', ' Sarkar', 'Roy', '', 19, 21, 'some college/University', 6, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-25 12:31:00', '0000-00-00 00:00:00'),
(101, 101, 'Swagatam', '', 'Saha', 'Male', '2002-12-21', 102, 102, 'KOLKATA', ' 114 HEM CHANDRA NASKAR ROAD', 'PHOOLBAGAN', '', 'KOLKATA', '700010', 'Bengal', 0, '9836221968', 'swagatamsaha2002@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Surajit', '', 'Saha', '', '', 102, 7, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Shilpi', '', ' Saha', '', '', 102, 21, 'Graduated from college/University', 18, '', '', 11, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-25 12:12:18', '0000-00-00 00:00:00'),
(102, 102, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 13:41:27', '0000-00-00 00:00:00'),
(103, 103, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 13:41:53', '0000-00-00 00:00:00'),
(104, 104, 'Rajarshi', '', 'Basu', 'Male', '0000-00-00', 102, 102, 'Kolkata', ' G 8 3 NBCC VIBGYOR TOWERS', 'New Town', '', 'Kolkata', '700156', 'WestBengal', 91, '8240773908', 'rajobasu@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Kaustuv', '', 'Basu', '', '', 102, 6, 'Graduate School', 'Mother', 'Yes', '', 'Piyali', '', 'Basu ', '', '', 102, 1, 'Graduated from college/University', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-25 15:26:15', '0000-00-00 00:00:00'),
(105, 105, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 14:44:03', '0000-00-00 00:00:00'),
(106, 106, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 14:49:25', '0000-00-00 00:00:00'),
(107, 107, 'Chandrima', '', 'Das', 'Male', '2001-10-04', 102, 102, 'Kolkata', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '18', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 15:14:19', '0000-00-00 00:00:00'),
(108, 108, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 15:42:40', '0000-00-00 00:00:00'),
(109, 109, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 15:43:22', '0000-00-00 00:00:00'),
(110, 110, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 16:45:30', '0000-00-00 00:00:00'),
(111, 111, 'Aindri', '', 'Bajpai', 'Female', '2003-12-19', 102, 102, 'Raebareli', ' FF 502', 'Ashabari Housing Complex', 'Patuli', 'Kolkata', '700094', 'Kolkata', 91, '8558934128', 'aindri2003@gmail.com', 'Undecided', 'On-Campus Housing', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Mahendra', '', 'Bajpai', '', '', 102, 44, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Rachna', '', ' Bajpai', 'Tripathi', '', 102, 21, 'Graduated from college/University', 18, '', '', 11, 108, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2019-10-25 17:10:14', '0000-00-00 00:00:00'),
(112, 112, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 16:59:51', '0000-00-00 00:00:00'),
(113, 113, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-25 20:57:04', '0000-00-00 00:00:00'),
(114, 114, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 04:30:32', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `userId`, `firstName`, `middleInitial`, `lastName`, `gender`, `dateOfBirth`, `countryOfResidence`, `countryOfBirth`, `cityOfBirth`, `streetAddress1`, `streetAddress2`, `streetAddress3`, `city`, `postalCode`, `regionOrProvince`, `countryCode`, `mobileNumber`, `emailAddress`, `plannedHighestEduLvl`, `collegeHousingPlan`, `financialAid`, `partTimeJob`, `noOfYrsInUS`, `noOfYrsOutOfUS`, `citizenshipStatus`, `parentsMaritalStatus`, `permenantHomeGuardian`, `Parent1type`, `parent1Living`, `Parent1prefix`, `Parent1FirstName`, `Parent1MiddleInitial`, `Parent1LastName`, `Parent1FormerLastName`, `Parent1Suffix`, `Parent1CountryOfBirth`, `Parent1Occupation`, `Parent1EducationLevel`, `Parent2type`, `Parent2Living`, `Parent2Prerix`, `Parent2FirstName`, `Parent2MiddleInitial`, `Parent2LastName`, `Parent2FormerLastName`, `Parent2Suffix`, `Parent2CountryOfBirth`, `Parent2Occupation`, `Parent2EducationLevel`, `careerIntrest`, `essayOption`, `essay`, `areasOfStudyId`, `majorId`, `transcript9th`, `transcript10th`, `transcript11th`, `transcript12th`, `lor1`, `lor2`, `lor3`, `addedTranscripts`, `ferpaunderstood`, `ferpaack`, `selectopt`, `ferpawaiver`, `signature`, `ferpaDate`, `isApply`, `personel_form`, `contact_form`, `parent_1`, `parent_2`, `college_plans_form`, `majorSelect_form`, `highSchool_form`, `status`, `isMandatory`, `created_at`, `updated_at`) VALUES
(115, 115, 'Diya', '', 'Xavier', 'Female', '2002-03-27', 102, 102, 'Kothamangalam', ' Nellippillil House', 'Adooparambu', 'Muvattupuzha PO', 'Ernakulam', '686661', 'Kerala', 91, '8281800883', 'donxavier9@gmail.com', 'Specialized training or certificate program', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Other', 'Mother', 'Yes', 'Mrs.', 'RANI ', '', 'XAVIER', '', '', 102, 44, 'some college/University', 'Father', 'Yes', 'Mr.', 'Xavier', '', 'Mathew ', '', '', 102, 5, 'some college/University', 44, '', '', 11, 113, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-26 05:05:28', '0000-00-00 00:00:00'),
(116, 116, 'Richik', '', 'Sinha', 'Male', '2003-12-25', 102, 102, 'Kolkata', ' 4C Dharmatala Road', 'Kasba', '', 'Kolkata', '700039', 'WestBengal', 0, '9073666343', 'sinha.richik@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '6', '9', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Chiradip', '', 'Sinha', 'Sinha', 'Sr.', 102, 37, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Piyali', '', ' Sinha', 'Mohanta', '', 102, 21, 'Graduated from college/University', 36, '', '', 28, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-29 05:46:35', '0000-00-00 00:00:00'),
(117, 117, 'Akshat', 'N', 'Banerjee', 'Male', '2003-04-07', 102, 102, 'Kolkata', ' 971 majumdar para garia Fartabad Sunny Dew apartment Block 1 Flat 2D kolkata700084', '', '', 'kolkata', '700084', 'WestBengal', 0, '6289373730', 'akshat@banerjeeonline.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Nirmalyo', '', 'Banerjee', '', '', 102, 7, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Jyoti', 'K', ' Banerjee', '', '', 102, 6, 'Graduated from college/University', 14, '', '', 7, 69, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-26 07:42:16', '0000-00-00 00:00:00'),
(118, 118, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 08:54:51', '0000-00-00 00:00:00'),
(119, 119, 'Pankaj', '', 'Joshi', 'Male', '1980-03-30', 102, 102, 'Shillong', 'Upper mawprem', 'Mylliem cottage', 'Near PHE water tank', 'Shillong', '793002', 'Meghalaya', 91, '9774656630', 'pankajjossy7@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Hem', '', 'Joshi', 'Joshi', 'Jr.', 102, 44, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Jaya', '', ' Joshi', 'Sharma', 'Jr.', 102, 44, 'some high/secondary school', 13, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-26 10:44:25', '0000-00-00 00:00:00'),
(120, 120, 'Pritam', '', 'Bhuiya', 'Male', '1999-12-04', 102, 102, 'Kolkata', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 11:06:33', '0000-00-00 00:00:00'),
(121, 121, 'Praney', '', 'Agarwal', 'Male', '2001-07-26', 102, 102, 'Ghaziabad', ' Plot 163 house 203 gyan khand 4', 'Indirapuram ', '', 'Ghaziabad', '201014', 'Uttar-pradesh', 91, '9910253851', 'Praney2607@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Mridul', '', 'Chandra', '', '', 102, 21, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Vikas', '', ' Chandra', '', '', 102, 6, 'Graduated from college/University', 11, '', '', 30, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-26 12:31:03', '0000-00-00 00:00:00'),
(122, 122, 'Angelin', 'S', 'Shiphra', 'Female', '2019-07-27', 0, 0, 'Vizag', ' Doctors Colony Hill View Park', 'Near vuda appartments', 'Vuda appartments', 'Vizag', '530001', 'Andhrapradesh', 0, '7032633912', 'angelinepraisy091@gmail.com', 'Bachelors degree (such as BA or BS)', 'Off-Campus Housing', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Bharani', '', 'S', 'Kumar', 'Sr.', 102, 6, 'Graduated from college/University', 'Mother', 'Yes', '', 'Sangamitra', '', ' Kavala', '', 'Sr.', 0, 0, 'Graduated from college/University', 32, '', '', 4, 20, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-26 12:51:53', '0000-00-00 00:00:00'),
(123, 123, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 12:40:19', '0000-00-00 00:00:00'),
(124, 124, 'Annesha', '', 'Paul', 'Female', '1993-06-30', 182, 102, 'kolkata', ' 358', '', '', 'kolkata', '700030', '700030', 0, '0903838117', 'brownfiona3939@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sandip', 'K', 'Paul', 'Paul', '', 0, 0, 'Graduate School', 'Mother', 'Yes', 'Mrs.', 'Seema', '', 'Paul', 'Paul', '', 102, 21, 'some high/secondary school', 43, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 14:23:16', '0000-00-00 00:00:00'),
(125, 125, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 13:25:56', '0000-00-00 00:00:00'),
(126, 126, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 13:28:21', '0000-00-00 00:00:00'),
(127, 127, 'srija', 'B', 'baireddy', 'Female', '2003-03-11', 0, 0, 'siddipet', ' 2 10 1837 A', 'BAGYANAGAR', '', 'KARIMNAGAR', '505001', 'TELANGANA', 0, '9505104262', 'sagarreddy927@gmail.com', 'Other', 'I dont know', 'No', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mrs.', 'sagar-reddy123', 'B', 'baireddy', 'baireddy', 'Sr.', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'malathi-123', 'b', ' baireddy', 'baireddy', 'Sr.', 102, 44, 'some high/secondary school', 18, '', '', 11, 115, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-26 14:46:23', '0000-00-00 00:00:00'),
(128, 128, 'anurup', 'c', 'mondal', 'Male', '2003-03-14', 102, 102, 'Kolkata', ' 9 kayastha para 1st lane  ', '', '', 'kolkata', '700078', 'westbengal', 91, '9836374110', 'anup.mondal.101@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'anup', 'k', 'mondal', 'mondal', '', 102, 6, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'rupa', '', ' mondal  ', 'das', '', 102, 21, 'Graduate School', 18, '', '', 12, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-26 15:34:10', '0000-00-00 00:00:00'),
(129, 129, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 15:02:45', '0000-00-00 00:00:00'),
(130, 130, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 15:02:47', '0000-00-00 00:00:00'),
(131, 131, 'NAVED', 'I', 'MANDAL', 'Male', '1996-11-26', 0, 0, 'Krishnanagar', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Separated', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 15:23:04', '0000-00-00 00:00:00'),
(132, 132, 'Puneet', 'K', 'Aulakh', 'Female', '2001-10-19', 0, 0, 'Gurdaspur', ' House Number 79 of 10 Marla', 'Improvement Trust Colony scheme 5', 'Jail road', 'Gurdaspur', '143521', 'PUNJAB', 0, '9569612024', 'puneetkauraulakh4@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Harinder', '', 'Singh', 'Aulakh', '', 102, 6, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Gaganjit', '', ' Kaur', 'Aulakh ', '', 102, 13, 'Graduated from college/University', 44, '', '', 33, 306, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-26 16:55:02', '0000-00-00 00:00:00'),
(133, 133, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-26 17:48:05', '0000-00-00 00:00:00'),
(134, 134, 'Harsh', 'A', 'Shelwatkar', 'Male', '2002-05-17', 0, 0, 'Hyderabad', ' Plot number 85 Nakshtra colony', 'Beside Salzee Function Hall Balapur Village', 'Hyderabad Telangana', 'Hyderabad', '500005', 'Balapur', 0, '9441899899', 'hshelwatkar@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Arvind ', 'T', 'Shelwatkar ', 'Shelwatkar ', '', 102, 36, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Deepjyoti', 'A', ' Shelwatkar ', 'Patil', '', 102, 36, 'Graduated from college/University', 18, '', '', 12, 137, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-26 18:29:48', '0000-00-00 00:00:00'),
(135, 135, 'Dhruv', '', 'Sharma', 'Male', '2002-07-23', 102, 102, 'New Delhi', ' 164 Street no 13 14', 'Balbir nagar  Shahadra Delhi 32', '', 'New Delhi', '110032', 'Delhi', 0, '0966775369', 'dhrisha2315@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Manoj', 'K', 'Sharma', '', '', 0, 0, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Mrs.', 'Sangeeta', '', ' Sharma', '', '', 102, 21, 'Graduated from high/secondary school (or equivalent)', 18, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, '2019-10-27 05:30:50', '0000-00-00 00:00:00'),
(136, 136, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-27 07:30:26', '0000-00-00 00:00:00'),
(137, 137, 'Soumodeep', '', 'Chakraborty', 'Male', '2002-09-23', 102, 102, 'Asansol', ' Shantiniketan Complex Upper Chelidanga', '', '', 'Asansol', '713304', '482', 0, '9933795009', 'mauhachakraborty@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Mahua ', '', 'Chakraborty', '', '', 102, 39, 'Graduate School', 'Father', 'Yes', 'Mr.', 'Sadhan', '', ' Chakraborty', '', '', 102, 27, 'Graduate School', 36, '', '', 4, 20, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 17:48:43', '0000-00-00 00:00:00'),
(138, 138, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-27 12:26:07', '0000-00-00 00:00:00'),
(139, 139, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-27 12:53:36', '0000-00-00 00:00:00'),
(140, 140, 'Rajiv', '', 'Singh', 'Male', '1987-06-09', 0, 0, 'Kishanganj', ' Kajlamani', '', '', 'Kishanganj', '855107', 'English ', 91, '9934601155', 'rajivsingh.kne09@gmail.com', '', '', '', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Other', 'Mother', 'Yes', 'Mrs.', 'Manju', '', 'Devi', '', 'Sr.', 102, 44, 'None', 'Father', 'No', 'Mr.', 'Rajeshwer', '', ' Singh ', '', 'Sr.', 102, 1, 'Graduated from high/secondary school (or equivalent)', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-10-27 13:03:11', '0000-00-00 00:00:00'),
(141, 141, 'Joseph', '', 'Roy', 'Male', '2003-07-30', 194, 102, 'Palakkad', ' Fatma Alzahra street', 'Abdullah Faud', '', 'Dammam', '32235', 'Dammam', 0, '0553477806', 'josephroy07011@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'Off-Campus Housing', 'No', '', '0', '16', 'U.S. Citizen or U.S. National', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Reshmi', '', 'Jose', '', '', 102, 13, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Roy', '', ' Joseph', '', '', 102, 8, 'Graduated from college/University', 1, '', '', 5, 37, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-27 17:07:19', '0000-00-00 00:00:00'),
(142, 142, 'Soumik', '', 'Kundu', 'Male', '2002-05-12', 102, 102, 'Patna', ' The Kundu Medical Hall', 'Zafra Bazar', '', 'Gorakhpur', '273001', 'Uttar_Pradesh', 91, '9140332039', 'jeetkundu43@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Dr.', 'Sudeep', '', 'Kundu', '', '', 102, 32, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Chaitali', '', 'Kundu', '', '', 102, 44, 'some high/secondary school', 14, '', '', 7, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 13:58:02', '0000-00-00 00:00:00'),
(143, 143, 'Ayushi', 'K', 'Nagrawala', 'Female', '2002-10-22', 102, 102, 'Mumbai ', ' 5 1st floor  Prabha Kunj  1st Carter Road', 'Borivali East', '', 'Mumbai', '400066', 'Maharashtra', 0, '9819425803', 'Ayushinagrawala22@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', '', 'Ketan', '', 'Nagrawala', '', '', 102, 0, '', 'Mother', 'Yes', '', 'Krishna', 'K', ' Nagrawala', '', '', 102, 0, '', 44, '', '', 36, 321, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-27 17:57:25', '0000-00-00 00:00:00'),
(144, 144, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-27 19:27:35', '0000-00-00 00:00:00'),
(145, 145, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-27 19:35:43', '0000-00-00 00:00:00'),
(146, 146, 'Jhalak', '', 'Bansal', 'Female', '2003-12-02', 102, 102, 'Rohtak', ' D 2502 bhumiraj hermitage palm beach service lane sector 18 sanpada 400705', '', '', 'Sanpada', '400705', 'India', 91, '9820032048', 'shefalibansal77@gmail.com', 'Undecided', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Shefali', '', 'Bansal', 'Bansal', '', 102, 7, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Vishal', '', ' Bansal', 'Bansal', '', 102, 7, 'Graduated from college/University', 26, '', '', 37, 339, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, '2019-10-28 16:22:00', '0000-00-00 00:00:00'),
(147, 147, 'Abhi', 'B', 'Ram', 'Male', '2003-10-13', 0, 0, 'Nuzivid', ' Putrela', '', 'Main road', 'Vijayawada', '521227', 'andhrapradesh', 0, '9951961196', 'abhiram.1234.dsab@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'No', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Ms.', 'Swaruparani', 'B', 'B', 'K', 'Sr.', 0, 0, 'some college/University', 'Father', 'Yes', 'Mr.', 'Dharmaiah', 'B', ' B', 'B', 'Sr.', 102, 24, 'Graduated from college/University', 37, '', '', 11, 115, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-28 00:21:00', '0000-00-00 00:00:00'),
(148, 148, 'Mahmadsadiq', 'M', 'killedar', 'Male', '2002-08-15', 0, 0, 'Belgaum', ' SAI NAGAR VADGAON BELGAUM KARNATAKA', '', '', 'BELGAUM', '590005', 'BELGAUM', 0, '8050770560', 'mdsadiqkilledar786@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'moulali', 'A', 'Killedar', 'Killedar', '', 102, 44, 'Some grade/primary school', 'Mother', 'Yes', 'Mrs.', 'shakeera', 'm', ' killedar', 'killedar', '', 102, 44, 'some high/secondary school', 18, '', '', 11, 109, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-28 02:04:38', '0000-00-00 00:00:00'),
(149, 149, 'Krishna', '', 'Tomar', 'Male', '2003-08-20', 102, 102, 'Agra', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 02:01:56', '0000-00-00 00:00:00'),
(150, 150, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 03:04:48', '0000-00-00 00:00:00'),
(151, 151, 'Rami', 'I', 'Hassoun', 'Male', '2001-10-05', 0, 0, 'Beirut', ' Aramoun', 'Mont liban', 'Al thanawiya stret', 'Beirut', 'No postal ', 'Aley', 0, '78816858', 'ramihassoun10@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Joanna ', 'A', 'Hassoun', 'Smolikowska', 'Jr.', 176, 44, 'Graduated from college/University', 'Father', 'Yes', 'Dr.', 'Iyad', 'Y', ' Hassoun', 'Hassoun', 'Jr.', 124, 16, 'Graduated from college/University', 5, '', '', 5, 45, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 12:18:08', '0000-00-00 00:00:00'),
(152, 152, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 03:55:12', '0000-00-00 00:00:00'),
(153, 153, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 05:38:54', '0000-00-00 00:00:00'),
(154, 154, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 06:02:44', '0000-00-00 00:00:00'),
(155, 155, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 06:04:03', '0000-00-00 00:00:00'),
(156, 156, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 06:05:09', '0000-00-00 00:00:00'),
(157, 157, 'Amulya', '', 'Kalyani', 'Female', '2002-03-03', 102, 102, 'Godda', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 08:36:13', '0000-00-00 00:00:00'),
(158, 158, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 08:45:28', '0000-00-00 00:00:00'),
(159, 159, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 09:01:02', '0000-00-00 00:00:00'),
(160, 160, 'jaimin', 'm', 'chokhawala', 'Male', '2002-05-30', 0, 0, 'patan', ' nakshatraplatinum', 'oppsaitirth', 'palanpur gam', 'Surat', '395009', 'Gujarat', 0, '0760026081', 'jaimin.chokhawala@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'mahesh', 's', 'chokhawala', '-', '', 102, 18, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Asha', 'm', 'chokhawala', '-', '', 102, 21, 'some college/University', 32, '', '', 8, 78, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-28 09:48:56', '0000-00-00 00:00:00'),
(161, 161, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 09:27:47', '0000-00-00 00:00:00'),
(162, 162, 'Houngbo ', '', 'Joyce ', 'Female', '2002-03-24', 24, 24, 'Porto Novo ', ' 2', '', '', 'Porto Novo', '36', 'OUEME', 229, '62338506 ', 'ramahoungbo@gmail.com ', 'Masters degree (such as MA, MBA, or MS)', 'Off-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Never Married', 'Parent 2', 'Father', 'Yes', 'Mr.', 'Houngbo ', '', 'Gilbert ', 'Gilbert ', 'Sr.', 24, 27, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Ayite ', '', ' Sylvie ', 'Sylvie ', 'Sr.', 24, 8, 'Graduate School', 2, 'Some students have a background, identity, interest, or talent that is so meaningful they believe their application would be incomplete without it. If this sounds like you, then please share your story.', 'My name is Joyce and I think it\'s really important that you know my talents. Indeed I love the cinema I am a good actress I dream of being a great actress in Hollywood in United States of America and internationally. I dance and I do modeling also I like everything related to art and audio-visual. It\'s since little when my love for the cinema is born and since it is my dream I feel that it is my domain and I will do my utmost to realize that like Jimon Hounsou the Beninese like me and Lupita Nyong\'o Nigerian. Indeed in my country the cinema is not very developed or very supported contrary to the United States of America where this sector is very advanced. Thus, in addition to my studies in the United States of America , I would also like to do cinema, for example auditions and everything to be noticed in the middle and why not start a career as an actress. By the way I was admitted to the Bac this year with honorable mention I met 15,42 on 20 points of average I am the first of my school all series confused and they stuck my photo up to the entrance of the school i\'m proud of and i make proud my parents, i pass the baccalaureate of the literary series called A2. I grew up in Benin and was born there but I want to continue my studies in the USA. In summary I am a young girl of 17 years very ambitious time who loves cinema, dance, art and justice also I am intelligent and beautiful too.Now I think that my application is complete.\r\n\r\n       In the hope that you give me good news, take good and thank you for reading.', 19, 219, '454417349B0957-69AD-4781-A4EA-FA6C92438698.jpeg', '857339DF673A98-1D46-4D68-89FB-E5C35F0990C1.jpeg', '1688772916BDBC-0682-4647-8E49-22946A968AA2.jpeg', '312896939E9D88-DAE5-417B-9445-089069146D1A.jpeg', '5997654D56E808-A29F-412A-8C3A-505C873F9986.jpeg', '646797E062EB46-D707-4A9F-B93A-DA85311EF351.jpeg', '836167776843FB-88FD-4AE1-A449-169571D2951C.jpeg', 0, 'Yes', 'Yes', 'I waive my right to review all recommendations and supporting documents.', 'Yes', 'Joyce Houngbo ', '2019-11-14', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 20:11:22', '0000-00-00 00:00:00'),
(163, 163, 'Subhasri', '', 'Arjunan', 'Female', '2002-11-13', 102, 102, 'Trichy', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 09:28:55', '0000-00-00 00:00:00'),
(164, 164, 'Harsh', '', 'Agarwal', 'Male', '2001-12-26', 102, 102, 'Rourkela', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 11:56:33', '0000-00-00 00:00:00'),
(165, 165, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 12:00:51', '0000-00-00 00:00:00'),
(166, 166, 'Vanshraj ', 'S', 'Chawla', 'Male', '2002-02-09', 0, 0, 'Amritsar', '196 Medical Enclave', '', '', 'Amritsar', '143001', 'Punjab', 91, '7508168913', 'vanshraj.singh09.vs@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sukhwinder', '', 'Singh', '', '', 102, 6, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Hardeep', '', 'Kaur ', '', '', 102, 40, 'Graduate School', 18, '', '', 11, 109, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-28 12:22:39', '0000-00-00 00:00:00'),
(167, 167, 'Rohit', '', 'Jeswani', 'Male', '2004-01-17', 102, 102, 'Indore', ' 18B', 'Model town colony', 'Kesar bagh road', 'Indore', '452009', 'MP', 91, '7566622000', 'jeswanirohit958@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '15', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Jagdish', '', 'Jeswani', '', 'Sr.', 102, 7, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Divya', '', ' Jeswani', '', '', 102, 21, 'some high/secondary school', 14, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-28 16:06:37', '0000-00-00 00:00:00'),
(168, 168, 'Ashok', '', 'K', 'Male', '2000-12-20', 102, 102, 'India', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 08:04:25', '0000-00-00 00:00:00'),
(169, 169, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 17:19:57', '0000-00-00 00:00:00'),
(170, 170, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 17:22:47', '0000-00-00 00:00:00'),
(171, 171, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 17:59:31', '0000-00-00 00:00:00'),
(172, 172, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-28 17:59:31', '0000-00-00 00:00:00'),
(173, 173, 'Akshat', '', 'Awasthi', 'Male', '2003-11-01', 102, 102, 'Kanpur', '', '', '', '', '', '', 0, '', '', '', '', '', '', '1 Year', '0', 'Other (Non-US)', 'Never Married', 'Legal Guardian', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 00:45:42', '0000-00-00 00:00:00'),
(174, 174, 'Pawanjot', '', 'Kaur', 'Female', '2001-10-13', 102, 102, 'Ambala cantt ', ' Village Hema Majra ', 'Post office Mullana ', '', 'Ambala ', '133203', 'Haryana ', 91, '9416178954', 'Pawanjotboparai@gmail.com ', 'Masters degree (such as MA, MBA, or MS)', 'Off-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Haribinder ', '', 'Singh', '', '', 102, 19, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Parvinder ', '', ' Kaur ', '', '', 102, 21, 'completed grade/primary school', 6, '', '', 5, 36, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-29 01:55:51', '0000-00-00 00:00:00'),
(175, 175, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 04:25:48', '0000-00-00 00:00:00'),
(176, 176, 'Jeevan', 'Y', 'Varghese', 'Male', '2002-06-02', 102, 102, 'Mavelikara', ' Poovannal House', 'Mattom South', 'Thattarambalam PO', 'Mavelikara', '690103', 'Alappuzha', 91, '965645180', 'jeevanyohan@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Rajan', '', 'Varghese', '', '', 102, 14, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Asha', ' ', ' Alexander', '', '', 102, 40, 'Graduated from college/University', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-10-29 08:29:10', '0000-00-00 00:00:00'),
(177, 177, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 06:04:06', '0000-00-00 00:00:00'),
(178, 178, 'Akash', 'R', 'Noubade', 'Male', '2003-05-19', 0, 0, 'Bangalore', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '16', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 07:16:04', '0000-00-00 00:00:00'),
(179, 179, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 07:24:25', '0000-00-00 00:00:00'),
(180, 180, 'JEFFREY', '', 'SHIJO', 'Male', '2003-02-25', 102, 102, 'thrissur', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 07:43:09', '0000-00-00 00:00:00'),
(181, 181, 'Nikhil', '', 'Santhosh', 'Male', '2019-08-29', 102, 102, 'THIRUVANANTHAPURAM', ' Chiramel', '2nd Street kootapara', 'Karakulam', 'THIRUVANANTHAPURAM', '695564', 'Keltron', 0, '0999535739', 'nikhilsanthosh89@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Other', 'Mother', 'Yes', 'Ms.', 'Sunitha', 'T', 'B', 'Chiramel', '', 102, 44, 'some high/secondary school', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-10-29 08:06:40', '0000-00-00 00:00:00'),
(182, 182, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 07:55:50', '0000-00-00 00:00:00'),
(183, 183, 'Shreyansh', 'K ', 'Summi', 'Male', '2019-09-29', 0, 0, 'Surat', ' R 233 2nd floor Ashirwad palace', 'Near jivkor nagar society', 'Bhatar road', 'Surat', '395007', 'Gujarat', 0, '9978882012', 'Shreyanshsummi@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Kuldeep ', '', 'Kumar ', 'Summi ', '', 102, 7, 'Graduate School', 'Mother', 'Yes', '', 'Pooja', 'K', ' Summi ', '', '', 102, 7, 'Graduated from college/University', 6, '', '', 5, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 07:45:14', '0000-00-00 00:00:00'),
(184, 184, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 10:46:25', '0000-00-00 00:00:00'),
(185, 185, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 12:11:55', '0000-00-00 00:00:00'),
(186, 186, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 12:11:56', '0000-00-00 00:00:00'),
(187, 187, 'Gehnna ', '', 'Ghai', 'Female', '2003-01-06', 102, 102, 'Haridwar', ' 160', 'Sharvan Nath Nagar', 'Near harmilap bhawan', 'Haridwar', '249401', 'Uttarakhand', 91, '9719076600', 'gehnnaghai2003@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Richa ', '', 'Ghai', 'Sapra ', '', 102, 0, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Chetan ', '', ' Ghai', '', '', 102, 7, 'Graduated from college/University', 11, '', '', 30, 283, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-29 13:10:01', '0000-00-00 00:00:00'),
(188, 188, 'Bhavishya', '', 'Chauhan', 'Male', '2002-12-07', 102, 102, 'Kanpur', ' 525 D Barra 8', '', '', 'Kanpur', '208027', 'UttarPradesh', 0, '6387923202', 'bhavishya.chauhan777@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Vijay', '', 'Chauhan', '', '', 102, 44, 'some college/University', 'Mother', 'Yes', '', 'Archana', '', ' Chauhan ', '', '', 102, 21, 'Graduated from high/secondary school (or equivalent)', 26, '', '', 27, 261, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-29 15:21:17', '0000-00-00 00:00:00'),
(189, 189, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 15:19:46', '0000-00-00 00:00:00'),
(190, 190, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 17:05:42', '0000-00-00 00:00:00'),
(191, 191, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 17:12:08', '0000-00-00 00:00:00'),
(192, 192, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 17:37:37', '0000-00-00 00:00:00'),
(193, 193, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-29 18:15:25', '0000-00-00 00:00:00'),
(194, 194, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 00:44:07', '0000-00-00 00:00:00'),
(195, 195, 'HARSHITHAVALLI', '', 'Noname', 'Female', '2002-05-08', 102, 102, 'Gulbarga', 'PLOT NO 39 BILGUNDI LAYOUT', 'Near Old MB Nagar ps ', 'SWASTHIK NAGAR SEDAM ROAD', 'Gulbarga', '585105', 'Karnataka', 91, '9448133303', 'naidu24ka.co@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Chandrashekhar', '', 'Naidu', '', '', 102, 18, 'Graduated from college/University', 'Mother', 'Yes', '', 'Padmaja', '', ' Naidu', '', '', 102, 21, 'Graduated from college/University', 14, '', '', 11, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 02:57:35', '0000-00-00 00:00:00'),
(196, 196, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 04:38:59', '0000-00-00 00:00:00'),
(197, 197, 'Pravesh', '', 'Shukla', 'Male', '2002-11-17', 0, 0, 'Gonda', ' Gonda', 'Katra bazar', 'Dubha ', 'Gonda', '271503', 'India', 91, '8115294078', 'praveshshukla2146940@gmail.com', '', '', '', '', '0', '17', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Deepnarayan', 'N', 'Shukla', '', '', 0, 0, 'Graduated from high/secondary school (or equivalent)', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-10-30 06:17:24', '0000-00-00 00:00:00'),
(198, 198, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 06:06:50', '0000-00-00 00:00:00'),
(199, 199, 'Saurav', '', 'Sivaprasad', 'Male', '2002-07-14', 102, 102, 'Kannur', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 07:14:56', '0000-00-00 00:00:00'),
(200, 200, 'Devprasad', '', 'Gouda', 'Male', '1998-04-04', 102, 102, 'Daringbadi odisha', ' PWD office daringbadi', 'Po ps daringbadi', 'Dist kandhamal', 'Phulbani', '762104', 'East', 91, '9078050766', 'devprasadgouda@gmail.com', 'Undecided', 'Off-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 2', 'I have limited Information about this Parent', 'No', 'Mr.', 'Dharma ', '', 'Gouda', 'Gouda', '', 102, 44, 'None', 'Mother', 'Yes', 'Mrs.', 'Rajkumari', '', ' Gouda', 'Nayak', '', 102, 33, 'some high/secondary school', 3, '', '', 2, 12, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 07:34:06', '0000-00-00 00:00:00'),
(201, 201, 'Pranav', '', 'Naik', 'Male', '2001-09-25', 102, 102, 'Kumta', ' Near APMC Madakihonnalli', 'Pitra chaya building', '', 'Kalaghatagi', '581204', 'Belagavi', 0, '9886468387', 'pranavnaik250901@gmail.com', '', '', '', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 07:41:20', '0000-00-00 00:00:00'),
(202, 202, 'Navpreet', '', 'kaur', 'Female', '2001-08-29', 0, 0, 'Ferozepur city ', 'Saddlecreek crescent', '', '', 'Brampton', 'L6Y4V6', 'ontario', 1, '6475285359', 'mehakgill00@gmail.com', 'Bachelors degree (such as BA or BS)', 'Off-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 31, '', '', 37, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, '2019-10-30 10:05:22', '0000-00-00 00:00:00'),
(203, 203, 'ADARSH', 'J', 'JOSEPH', 'Male', '2002-02-05', 0, 0, 'ERNAKULAM', ' PSARA 60', 'THUNDIYIL', 'PADAMUGAL KAKKANAD', 'Kochi', '682030', 'Kerala', 0, '0989513333', 'alphaniemini@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'JOSEPH', 'M', 'GEORGE', '', '', 102, 44, 'Graduated from college/University', 'Mother', 'Yes', '', 'ALPH', 'A', ' JOY', '', '', 0, 0, 'Graduated from college/University', 3, '', '', 2, 11, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 10:11:41', '0000-00-00 00:00:00'),
(204, 204, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 09:57:44', '0000-00-00 00:00:00'),
(205, 205, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 10:22:49', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `userId`, `firstName`, `middleInitial`, `lastName`, `gender`, `dateOfBirth`, `countryOfResidence`, `countryOfBirth`, `cityOfBirth`, `streetAddress1`, `streetAddress2`, `streetAddress3`, `city`, `postalCode`, `regionOrProvince`, `countryCode`, `mobileNumber`, `emailAddress`, `plannedHighestEduLvl`, `collegeHousingPlan`, `financialAid`, `partTimeJob`, `noOfYrsInUS`, `noOfYrsOutOfUS`, `citizenshipStatus`, `parentsMaritalStatus`, `permenantHomeGuardian`, `Parent1type`, `parent1Living`, `Parent1prefix`, `Parent1FirstName`, `Parent1MiddleInitial`, `Parent1LastName`, `Parent1FormerLastName`, `Parent1Suffix`, `Parent1CountryOfBirth`, `Parent1Occupation`, `Parent1EducationLevel`, `Parent2type`, `Parent2Living`, `Parent2Prerix`, `Parent2FirstName`, `Parent2MiddleInitial`, `Parent2LastName`, `Parent2FormerLastName`, `Parent2Suffix`, `Parent2CountryOfBirth`, `Parent2Occupation`, `Parent2EducationLevel`, `careerIntrest`, `essayOption`, `essay`, `areasOfStudyId`, `majorId`, `transcript9th`, `transcript10th`, `transcript11th`, `transcript12th`, `lor1`, `lor2`, `lor3`, `addedTranscripts`, `ferpaunderstood`, `ferpaack`, `selectopt`, `ferpawaiver`, `signature`, `ferpaDate`, `isApply`, `personel_form`, `contact_form`, `parent_1`, `parent_2`, `college_plans_form`, `majorSelect_form`, `highSchool_form`, `status`, `isMandatory`, `created_at`, `updated_at`) VALUES
(206, 206, 'MAJJI ', 'P', 'KUMAR', 'Male', '1998-04-10', 102, 102, 'TATANAGAR', ' A 368', 'ZONE 6', 'BIRSANAGAR', 'TATANAGAR', '861004', 'EAST_SINGHBHUM', 0, '7320944303', 'majjipawankumar@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'LAKSHMI', '', 'MAJJI', '', '', 102, 21, 'Graduate School', 'Father', 'Yes', 'Mr.', 'ANAND', 'K', ' MAJJI ', '', '', 102, 1, 'Graduate School', 18, '', '', 11, 123, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 11:44:47', '0000-00-00 00:00:00'),
(207, 207, 'Asilaa', '', 'Abbas', 'Female', '2002-03-17', 102, 102, 'Chennai', ' V G N MAHALAKSHMI NAGAR Ayappakkam', 'Ayapakkam', '', 'Tiruvallur', '600077', 'Tamilnadu', 0, '9790933103', 'asilaaabbas1703@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '0', 'U.S. Citizen or U.S. National', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Abbas', 'A ', 'R', '', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Malathi', '', ' Abbas', '', '', 102, 41, 'Graduated from college/University', 11, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 13:07:20', '0000-00-00 00:00:00'),
(208, 208, 'Shibam', '', 'Sarkar', 'Male', '2002-07-04', 102, 102, 'Kolkata', ' 236 5 South', 'Dum Dum East Purba Sinthee Road Kolkata 30', '', 'Kolkata', '700030', 'SouthDumDum', 91, '8017229822', 'shibamss715@gmail.com', 'Undecided', 'I dont know', 'No', '', '1 Year', '0', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Debabrata', '', 'Sarkar', '', '', 102, 44, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Mrs.', 'Kanan', '', ' Sarkar', '', '', 102, 44, 'some high/secondary school', 44, '', '', 37, 339, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 12:27:00', '0000-00-00 00:00:00'),
(209, 209, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 12:50:02', '0000-00-00 00:00:00'),
(210, 210, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 13:19:53', '0000-00-00 00:00:00'),
(211, 211, 'RONNY', '', 'MURIMI', 'Male', '1998-09-05', 102, 115, 'NKUBU', '360003', '', '', 'RAJKOT', '360003', 'GUJARAT', 0, '8238168592', 'ronnymurimi@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'AGRIPPINA', 'K', 'KABIRU', '', '', 0, 0, 'Graduated from college/University', 'Father', 'No', '', 'MORRIS', 'M', ' KIRIMI', '', '', 115, 0, 'some college/University', 29, '', '', 16, 191, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 14:07:19', '0000-00-00 00:00:00'),
(212, 212, 'Arun', ' ', 'Unnikrishnan', 'Male', '2002-10-14', 102, 102, 'Alappuzha', 'gurupriya', 'neerkunnam', '', 'alappuzha', '688005', 'kerala', 91, '9847695387', 'arununni2008@gmail.com', 'Other', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Unnikrishnan', '', 'M', '', '', 102, 5, 'Graduated from college/University', 'Mother', 'Yes', 'Ms.', 'Raji', '', ' V', '', '', 102, 29, 'Graduated from high/secondary school (or equivalent)', 18, '', '', 7, 69, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 14:29:21', '0000-00-00 00:00:00'),
(213, 213, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 15:58:15', '0000-00-00 00:00:00'),
(214, 214, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 15:59:03', '0000-00-00 00:00:00'),
(215, 215, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 16:00:05', '0000-00-00 00:00:00'),
(216, 216, 'Sharmistha', '', 'Das', 'Female', '1998-10-11', 0, 0, 'Kolkata', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Other', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 16:07:14', '0000-00-00 00:00:00'),
(217, 217, 'Aditya', 'P', 'Balpande', 'Male', '2003-03-15', 102, 102, 'Nagpur ', 'Somalwada Akhada Chowk Wardha road Nagpur', '', '', 'Nagpur ', '440025', 'Nagpur', 91, '8788396416', 'adityabalpande66@gmail.com', 'Undecided', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Vandana', 'P', 'Balpande', '', 'Jr.', 102, 21, 'some college/University', 'Father', 'Yes', 'Mr.', 'Prashant ', 'D', 'Balpande', '', 'Sr.', 102, 7, 'Graduated from college/University', 36, '', '', 11, 109, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-30 16:34:18', '0000-00-00 00:00:00'),
(218, 218, 'Vipasha', '', 'Bisht', 'Female', '2001-10-08', 102, 102, 'Gurgaon', 'Gandhi Nagar', '', '', 'Gurgaon', '122001', 'Haryana', 0, '9899845898', 'vips7.08@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Kala', '', 'Bisht', '', 'Sr.', 102, 39, 'Graduated from college/University', 'Father', 'Yes', '', 'Chander', 'B', ' Singh', '', 'Sr.', 0, 0, 'Graduated from college/University', 44, '', '', 6, 61, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-03 09:37:52', '0000-00-00 00:00:00'),
(219, 219, 'Irfan', '', 'Ali', 'Male', '2000-07-01', 102, 102, 'Fazilnagar', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Other', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-30 20:08:04', '0000-00-00 00:00:00'),
(220, 220, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 01:15:30', '0000-00-00 00:00:00'),
(221, 221, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 01:33:12', '0000-00-00 00:00:00'),
(222, 222, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 01:50:29', '0000-00-00 00:00:00'),
(223, 223, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 03:07:40', '0000-00-00 00:00:00'),
(224, 224, 'Devesh', '', 'Vyas', 'Male', '2001-03-27', 102, 102, 'Udaipur', ' House no 479', 'Behind Ambamata Sr Sec School', 'Girwa Shastri Circle', 'Udaipur', '313001', 'Rajasthan', 0, '8619763852', 'dev272.dv@icloud.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Hemant', '', 'Vyas', '', '', 102, 44, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Kalpana', '', ' Ameta', '', '', 102, 21, 'Graduated from college/University', 18, '', '', 7, 0, '', '', '', '', '', '', '', 0, 'Yes', 'Yes', 'I waive my right to review all recommendations and supporting documents.', 'Yes', 'Devesh', '2019-10-31', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-31 04:22:51', '0000-00-00 00:00:00'),
(225, 225, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 04:17:38', '0000-00-00 00:00:00'),
(226, 226, 'Pawan', 'K', 'Agrawal', 'Male', '1976-10-12', 0, 0, 'Kichha', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 04:33:54', '0000-00-00 00:00:00'),
(227, 227, 'Tejas', 'S', 'Bhadoria', 'Male', '2002-09-07', 102, 102, 'Bhind', 'GL460', 'Deen Dayal Nagar', '', 'Gwalior', '474020', 'Madhyapradesh', 0, '9131181651', 'tejasbhadouriya2@gmail.com', 'Other', 'Off-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Rajendra', 'S', 'Bhadauriya', '', '', 102, 44, 'Graduated from trade school or community college', 'Mother', 'Yes', 'Mrs.', 'Sandhya', 'S', ' Bhadauriya', '', '', 102, 21, 'Graduated from trade school or community college', 18, '', '', 11, 109, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-31 05:17:31', '0000-00-00 00:00:00'),
(228, 228, 'Manikandan', '', 'Ramanujam', 'Male', '1988-02-25', 102, 102, 'Tiruvannamalai', ' Uma diva flat no2 1st flr saravana nagar 6th right st', 'manikandapuram', '', 'chennai', '600062', 'tamilnadu', 0, '8939457464', 'rmanikanda88@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'Shanthi', '', 'Ramanujam', '', '', 102, 44, 'None', 'Father', 'No', '', 'Ramanujam', '', 'Adhinarayanan', '', '', 102, 44, 'completed grade/primary school', 14, '', '', 7, 68, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-31 06:56:10', '0000-00-00 00:00:00'),
(229, 229, 'Sampreeth', '', 'Reddy', 'Male', '2002-10-30', 102, 102, 'Kothagudem', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 06:43:10', '0000-00-00 00:00:00'),
(230, 230, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 06:40:59', '0000-00-00 00:00:00'),
(231, 231, 'Jaspreet', '', 'Kaur', 'Female', '2000-02-14', 102, 102, 'Sangrur', ' 366', '', '', 'Sangrur', '148031', 'Punjab', 0, '8176376687', 'Jaspreetsrah10@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'Off-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Sukhwinder', '', 'Singh', '', '', 102, 44, 'some high/secondary school', 'I have limited Information about this Parent', 'I have limited Information about this Parent', 'Ms.', 'Sukhwinder ', '', ' Kaur', '', '', 102, 44, 'Some grade/primary school', 18, '', '', 11, 109, '', '', '', '', '', '', '', 0, 'Yes', 'Yes', 'I waive my right to review all recommendations and supporting documents.', 'Yes', 'Jaspreet kaur', '2019-11-13', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 02:36:40', '0000-00-00 00:00:00'),
(232, 232, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 07:33:18', '0000-00-00 00:00:00'),
(233, 233, 'Adhiraj', '', 'Majumdar', 'Male', '2002-09-15', 102, 102, 'kolkata', '37A Central Road near Ram Thakur Ashram Jadavpur', 'Flat 3C and 3D', 'Jadavpur', 'kolkata', '700032', 'westbengal700032', 91, '9830777986', 'adhirajmajumdar2017@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'Off-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Ms.', 'Anindita', '', 'Majumdar', 'Majumdar', '', 102, 7, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Rajatkanti', '', ' Majumdar', 'Majumdar', '', 102, 44, 'Graduated from college/University', 18, '', '', 7, 69, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-31 07:59:38', '0000-00-00 00:00:00'),
(234, 234, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 08:18:07', '0000-00-00 00:00:00'),
(235, 235, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 08:20:26', '0000-00-00 00:00:00'),
(236, 236, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 08:33:32', '0000-00-00 00:00:00'),
(237, 237, 'Anwar ', '', 'Alam ', 'Male', '2004-12-25', 102, 102, 'Bettiah ', ' Chawni', '', '', 'Bettiah', '835438', 'Students ', 0, '9304305920', 'abdulqaiyumbth@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'U.S. Citizen or U.S. National', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Ms.', 'Tajba', '', ' khatoon ', 'Ansari ', 'II', 102, 44, 'Graduated from high/secondary school (or equivalent)', 'Father', 'Yes', 'Mr.', 'Abdul', '', '  qaiyum ', 'Ansari ', 'II', 102, 5, 'some college/University', 36, '', '', 28, 276, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-31 10:26:27', '0000-00-00 00:00:00'),
(238, 238, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 10:04:38', '0000-00-00 00:00:00'),
(239, 239, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 10:06:02', '0000-00-00 00:00:00'),
(240, 240, 'Farhan', '', 'ahmad', 'Male', '2003-01-18', 102, 102, 'Darbhanga', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Separated', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 10:24:21', '0000-00-00 00:00:00'),
(241, 241, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 10:22:37', '0000-00-00 00:00:00'),
(242, 242, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 13:43:32', '0000-00-00 00:00:00'),
(243, 243, 'Vipin', '', 'Bhadauria', 'Male', '2002-03-04', 102, 102, 'Bhind', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '17', 'Other (Non-US)', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 14:17:20', '0000-00-00 00:00:00'),
(244, 244, 'Abhinav', 'S', 'Krishnan', 'Male', '2002-01-30', 102, 0, 'Shenendoah', ' 304 ', 'M R ', 'Siru', 'chennai', '603103', 'Tamilnadu', 0, '90030', 'abhi@gmail.com', 'Undecided', 'I dont know', 'Yes', '', '8', '9', 'U.S. Dual Citizen', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'm', '', 'S', '', '', 0, 44, 'None', 'Mother', 'Yes', '', 'B', 'S', ' K', '', '', 102, 44, 'None', 44, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 08:27:14', '0000-00-00 00:00:00'),
(245, 245, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 16:07:17', '0000-00-00 00:00:00'),
(246, 246, 'Urvashi ', '', 'Debroy ', 'Female', '2000-08-28', 102, 102, 'Durgapur ', 'Vivekanda Park', 'Garia', '', 'Kolkata', '700084', 'East', 0, '8961960876', 'debroyurvashi@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Pratik', '', 'Debroy ', '', '', 102, 12, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Sonali', '', ' Roy', 'Roy', '', 102, 7, 'some college/University', 43, '', '', 6, 64, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-10-31 19:27:52', '0000-00-00 00:00:00'),
(247, 247, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-31 23:57:29', '0000-00-00 00:00:00'),
(248, 248, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 01:12:21', '0000-00-00 00:00:00'),
(249, 249, 'Ishita', '', 'Deshmukh', 'Female', '2001-11-30', 102, 102, 'Bhopal', ' 164 n2 d sector Berkhera BHEL', 'BHOPAL Madhya Pradesh', '', 'Bhopal', '462022', 'Madhyapardesh', 91, '7489384587', 'golu70_74@hotmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Nitin', '', 'Deshmukh', '', '', 102, 43, 'Graduate School', 'Mother', 'Yes', 'Mrs.', 'Mamta', '', 'Deshmukh', '', '', 102, 21, 'Graduated from college/University', 32, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-02 05:19:53', '0000-00-00 00:00:00'),
(250, 250, 'Ashutosh ', '', 'Yadav', 'Male', '2000-06-01', 102, 102, 'Bareli', ' Ashutosh ', '', 'Yadav', 'Bareli', '3985', 'Work ', 91, '7075976086', 'Ashu555up@gmail.com ', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 02:02:31', '0000-00-00 00:00:00'),
(251, 251, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 02:29:06', '0000-00-00 00:00:00'),
(252, 252, 'Aditya', '', 'Padmakar', 'Male', '2004-08-17', 102, 102, 'Delhi', ' B 198 street 7', 'Smriti nagar ', 'Bhilai', 'Durg', '490020', 'Chhattisgarh', 91, '8878226671', 'm.naik1971@yahoo.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '15', 'Other (Non-US)', 'Divorced', 'Parent 1', 'Mother', 'Yes', 'Dr.', 'Meena', '', 'Naik', '', '', 102, 32, 'Graduated from college/University', 'Father', 'Yes', '', 'Milind', 'P', ' Hote', '', '', 0, 0, 'Graduated from college/University', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-01 04:19:45', '0000-00-00 00:00:00'),
(253, 253, 'AMAL', 'C', 'KUZHIKATTU', 'Male', '2000-04-29', 102, 138, 'VALLETTA', ' 9227 DUPONT PLACE', '', '', 'WELLINGTON', '33414', 'FLORIDA', 1, '5619511055', 'amalck2020amal@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'No', '', '12', '7', 'U.S. Dual Citizen', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'MINIMOL', '', 'KUZHIKATTU', 'KADAPLACKAL', '', 102, 29, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'CHRISTOPHER', 'J', 'KUZHIKATTU', 'KUZHIKATTU', '', 102, 44, 'Graduated from college/University', 2, '', '', 36, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-01 07:17:35', '0000-00-00 00:00:00'),
(254, 254, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 05:00:36', '0000-00-00 00:00:00'),
(255, 255, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 05:03:22', '0000-00-00 00:00:00'),
(256, 256, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 07:32:29', '0000-00-00 00:00:00'),
(257, 257, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 07:58:31', '0000-00-00 00:00:00'),
(258, 258, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 09:42:24', '0000-00-00 00:00:00'),
(259, 259, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 10:50:20', '0000-00-00 00:00:00'),
(260, 260, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 11:35:47', '0000-00-00 00:00:00'),
(261, 261, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 11:55:47', '0000-00-00 00:00:00'),
(262, 262, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 13:16:57', '0000-00-00 00:00:00'),
(263, 263, 'Nidhi', '', 'Pandey', 'Female', '2000-08-28', 102, 102, 'New delhi', ' 216', 'Khargapur', 'Gomtinagar', 'Lucknow', '226010', 'Uttar_Pradesh', 0, '9519012909', 'nidhi.intelligent@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Jai_Prakash', '', 'Pandey', 'Jai_Prakash_Pandey', '', 0, 0, 'Graduate School', 'Mother', 'Yes', 'Mrs.', 'Kalpana', '', ' Pandey', 'Kalpana_Pandey', '', 102, 21, 'some high/secondary school', 6, '', '', 38, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-02 11:05:33', '0000-00-00 00:00:00'),
(264, 264, 'Aryan', '', 'Jain', 'Male', '2002-08-19', 102, 102, 'Bathinda', ' H No 303 Model Town', 'Phase 3', '', 'Bathinda', '151001', 'Punjab', 91, '9872850125', 'deputy.jain@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Never Married', 'Parent 2', 'Father', 'Yes', 'Mr.', 'Deputy', '', 'Jain', 'Jain', '', 102, 7, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Seema', '', ' Jain', 'Jain', '', 102, 1, 'Graduated from college/University', 18, '', '', 28, 263, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-01 15:12:01', '0000-00-00 00:00:00'),
(265, 265, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 14:47:33', '0000-00-00 00:00:00'),
(266, 266, 'Vinisha', 'G', 'Faith', 'Female', '2002-09-25', 0, 0, 'chennai', ' Srinivasapuram', 'Sriram nagar', 'Alliance bougainvillea', 'chennai', '600056', '600056', 0, '0996213664', 'vinisha2514@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Godwin', 'B', 'Thomas', '', '', 102, 44, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Shyamala', 'S', ' Godwin', '', '', 102, 7, 'Graduated from college/University', 44, '', '', 36, 322, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-01 16:35:43', '0000-00-00 00:00:00'),
(267, 267, 'Abdu', '', 'Faridi', 'Male', '1999-06-20', 0, 0, 'Karimnagar', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 16:41:56', '0000-00-00 00:00:00'),
(268, 268, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 16:53:55', '0000-00-00 00:00:00'),
(269, 269, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-01 18:15:32', '0000-00-00 00:00:00'),
(270, 270, 'Tina', 'D', 'Dalvi', 'Male', '2004-04-03', 0, 0, 'Dombivli', ' Room no 303 Sai Dwarka society', 'Tukaramnagar Dombivli', 'East PIN 421201', 'Mumbai', '421201', 'Maharashtra', 0, '7977516363', 'shinetina169@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Reena ', 'D', 'Dalvi', 'Sase', 'Sr.', 102, 21, 'some high/secondary school', 'Father', 'Yes', 'Mr.', 'Dattatray', 'K', ' Dalvi', 'Dalvi', 'Sr.', 102, 8, 'some high/secondary school', 36, '', '', 28, 277, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-01 18:57:58', '0000-00-00 00:00:00'),
(271, 271, 'Hamdan', '', 'Bin_Aboobacker', 'Male', '1999-11-09', 0, 0, 'Malappuram', ' Hamdanghar House Paravakkal Perithalmanna Taluk', 'Hamdanghar', '', 'Malappuram', '676507', 'Kerala', 0, '0894350656', 'abuhamdan807@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Aboobacker', '', 'Kc', '', '', 102, 19, 'Some grade/primary school', 'Mother', 'Yes', 'Mrs.', 'Subaida', '', ' Ck', '', '', 102, 44, 'Some grade/primary school', 44, '', '', 7, 72, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-02 03:44:49', '0000-00-00 00:00:00'),
(272, 272, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 03:57:37', '0000-00-00 00:00:00'),
(273, 273, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 04:51:01', '0000-00-00 00:00:00'),
(274, 274, 'Nithin', '', 'Ganesh', 'Male', '2000-10-11', 102, 102, 'Kochi', ' Flat no 901', 'National Regent Court', 'Palarivattom Thammanam Road', 'Kochi', '682025', 'Kerala', 0, '9061984269', 'nithinganesh@yahoo.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '19', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Vidya', '', 'Ganesh', '', 'Sr.', 102, 21, 'completed grade/primary school', 'Father', 'Yes', '', 'Ganesh', 'P', 'Subramanion', '', '', 102, 7, 'completed grade/primary school', 6, '', '', 5, 41, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-02 11:51:32', '0000-00-00 00:00:00'),
(275, 275, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 11:36:39', '0000-00-00 00:00:00'),
(276, 276, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 12:16:22', '0000-00-00 00:00:00'),
(277, 277, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 12:16:23', '0000-00-00 00:00:00'),
(278, 278, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 12:26:31', '0000-00-00 00:00:00'),
(279, 279, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 13:29:48', '0000-00-00 00:00:00'),
(280, 280, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 14:02:16', '0000-00-00 00:00:00'),
(281, 281, 'SONAM', '', 'NEGI', 'Female', '2002-08-17', 102, 102, 'JAMMU', ' P 48 TRISHUL LINE', 'ALWAL', '', 'SECUNDERABAD', '500010', 'TELANGANA', 0, '9555965777', 'negisonam02@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'VIKRAM', '', 'SINGH', '', '', 102, 27, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Mrs.', 'BIMLA', '', ' DEVI', '', '', 102, 21, 'Some grade/primary school', 14, '', '', 7, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-02 15:56:20', '0000-00-00 00:00:00'),
(282, 282, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 19:49:17', '0000-00-00 00:00:00'),
(283, 283, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 23:38:17', '0000-00-00 00:00:00'),
(284, 284, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-02 23:40:10', '0000-00-00 00:00:00'),
(285, 285, 'Nirvikar', '', 'Gupta', 'Male', '2002-05-04', 102, 102, 'Uttar Pradesh', ' 19 mig Swarn jayanti vihar Koyla Nagar kanpur', '19 mig Swarn jayanti vihar Koyla Nagar kanpur', '19 mig Swarn jayanti vihar Koyla Nagar', 'Kanpur', '208011', 'State1', 0, '9450835204', 'nirvikargupta0@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'No', '', '0', '17', 'U.S. Citizen or U.S. National', 'Never Married', 'Both Parents', 'I have limited Information about this Parent', 'No', 'Mr.', 'Nirvikar', '', 'Gupta', 'Gupta', '', 102, 44, 'Graduate School', 'I have limited Information about this Parent', 'I have limited Information about this Parent', 'Mr.', 'Nirvikar', '', ' Gupta', 'Gupta', '', 102, 44, 'Graduate School', 44, '', '', 5, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-03 02:16:01', '0000-00-00 00:00:00'),
(286, 286, 'AKSHAY', 'K', 'YADAV', 'Male', '2003-03-15', 102, 102, 'Deoria', ' Khottadih colliery', 'Asansol', 'Westbengal', 'Asansol', '713378', 'Westbengal', 91, '8918332630', 'qwertylg431@gmail.com', 'Undecided', 'I dont know', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'RAMBYAS', '', 'YADAV', '', '', 102, 44, 'None', 'Mother', 'Yes', 'Mrs.', 'TARA', '', ' DEVI', '', '', 102, 44, 'None', 36, '', '', 38, 340, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-03 05:06:15', '0000-00-00 00:00:00'),
(287, 287, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 04:50:54', '0000-00-00 00:00:00'),
(288, 288, 'Lavkush', '', 'Kumar', 'Male', '2004-09-12', 102, 3, 'Arwal', ' Belsar Arwal', '', '', 'Arwal', '805125', 'Bihar', 0, '+917061297', 'lkbelsar@gmail.com', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Lavkush', '', 'Kumar', 'Kumar', 'Sr.', 0, 44, 'None', 'Father', 'Yes', 'Mr.', 'Lavkush', '', 'Kumar', 'Kumar', '', 0, 44, 'some high/secondary school', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, '2019-11-03 05:23:55', '0000-00-00 00:00:00'),
(289, 289, 'Urvashi ', '', 'Sharma', 'Female', '2001-10-07', 102, 102, 'Jalandhar', ' MAIN ROAD DAKOHA JALANDHAR CANTT', '', '', 'DAKOHA', '144023', 'Punjab', 0, '9878308304', 'Rachna5417@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'Rachna', '', 'Sharma', '', '', 102, 39, 'Graduated from college/University', 'Father', 'Yes', '', 'Vasudev', '', ' Sharma', '', '', 0, 0, 'Graduated from high/secondary school (or equivalent)', 3, '', '', 2, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-03 07:24:55', '0000-00-00 00:00:00'),
(290, 290, 'Nikunj', '', 'Katariya', 'Male', '2002-09-12', 0, 0, 'Indore', ' Shiv Moti nagar ', '', '', 'Indore ', '452001', 'Indore ', 91, '9893966803', 'nikunjkatariya786@gmail.com ', '', '', '', '', '0', '16', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 07:27:09', '0000-00-00 00:00:00'),
(291, 291, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 09:23:41', '0000-00-00 00:00:00'),
(292, 292, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 09:24:53', '0000-00-00 00:00:00'),
(293, 293, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 09:28:59', '0000-00-00 00:00:00'),
(294, 294, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 12:11:41', '0000-00-00 00:00:00'),
(295, 295, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 12:12:44', '0000-00-00 00:00:00'),
(296, 296, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 12:21:39', '0000-00-00 00:00:00'),
(297, 297, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 13:56:55', '0000-00-00 00:00:00'),
(298, 298, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 5, 40, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '2019-11-04 06:37:06', '0000-00-00 00:00:00'),
(299, 299, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 15:16:01', '0000-00-00 00:00:00'),
(300, 300, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-03 15:16:56', '0000-00-00 00:00:00'),
(301, 301, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:31', '0000-00-00 00:00:00'),
(302, 302, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:32', '0000-00-00 00:00:00'),
(303, 303, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:34', '0000-00-00 00:00:00'),
(304, 304, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:34', '0000-00-00 00:00:00'),
(305, 305, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:35', '0000-00-00 00:00:00'),
(306, 306, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:35', '0000-00-00 00:00:00'),
(307, 307, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:35', '0000-00-00 00:00:00'),
(308, 308, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:36', '0000-00-00 00:00:00'),
(309, 309, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:36', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `userId`, `firstName`, `middleInitial`, `lastName`, `gender`, `dateOfBirth`, `countryOfResidence`, `countryOfBirth`, `cityOfBirth`, `streetAddress1`, `streetAddress2`, `streetAddress3`, `city`, `postalCode`, `regionOrProvince`, `countryCode`, `mobileNumber`, `emailAddress`, `plannedHighestEduLvl`, `collegeHousingPlan`, `financialAid`, `partTimeJob`, `noOfYrsInUS`, `noOfYrsOutOfUS`, `citizenshipStatus`, `parentsMaritalStatus`, `permenantHomeGuardian`, `Parent1type`, `parent1Living`, `Parent1prefix`, `Parent1FirstName`, `Parent1MiddleInitial`, `Parent1LastName`, `Parent1FormerLastName`, `Parent1Suffix`, `Parent1CountryOfBirth`, `Parent1Occupation`, `Parent1EducationLevel`, `Parent2type`, `Parent2Living`, `Parent2Prerix`, `Parent2FirstName`, `Parent2MiddleInitial`, `Parent2LastName`, `Parent2FormerLastName`, `Parent2Suffix`, `Parent2CountryOfBirth`, `Parent2Occupation`, `Parent2EducationLevel`, `careerIntrest`, `essayOption`, `essay`, `areasOfStudyId`, `majorId`, `transcript9th`, `transcript10th`, `transcript11th`, `transcript12th`, `lor1`, `lor2`, `lor3`, `addedTranscripts`, `ferpaunderstood`, `ferpaack`, `selectopt`, `ferpawaiver`, `signature`, `ferpaDate`, `isApply`, `personel_form`, `contact_form`, `parent_1`, `parent_2`, `college_plans_form`, `majorSelect_form`, `highSchool_form`, `status`, `isMandatory`, `created_at`, `updated_at`) VALUES
(310, 310, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:36', '0000-00-00 00:00:00'),
(311, 311, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:37', '0000-00-00 00:00:00'),
(312, 312, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:38', '0000-00-00 00:00:00'),
(313, 313, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:38', '0000-00-00 00:00:00'),
(314, 314, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:38', '0000-00-00 00:00:00'),
(315, 315, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:40', '0000-00-00 00:00:00'),
(316, 316, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 00:45:41', '0000-00-00 00:00:00'),
(317, 317, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 02:57:37', '0000-00-00 00:00:00'),
(318, 318, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 02:58:45', '0000-00-00 00:00:00'),
(319, 319, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 04:44:57', '0000-00-00 00:00:00'),
(320, 320, 'Hina', '', 'Parveen', 'Female', '1993-07-13', 102, 0, 'lucknow', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 04:47:32', '0000-00-00 00:00:00'),
(321, 321, 'Devanshi', 'h', 'Thakkar', 'Female', '2003-04-29', 102, 102, 'vadodara', ' 301  aries 5 shuklanagar sama vadodara', '', '', 'vadodara', '390008', 'Gujarat', 0, '9925026478', 'devanshi2942003@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Hemal', '', 'Thakkar', '', '', 102, 7, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Swati', '', ' Thakkar', '', '', 102, 0, '', 7, '', '', 11, 115, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-04 07:36:34', '0000-00-00 00:00:00'),
(322, 322, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 08:42:31', '0000-00-00 00:00:00'),
(323, 323, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 08:43:16', '0000-00-00 00:00:00'),
(324, 324, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 09:08:58', '0000-00-00 00:00:00'),
(325, 325, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 09:09:34', '0000-00-00 00:00:00'),
(326, 326, 'Saurav', '', 'singh', 'Male', '2001-11-06', 102, 102, 'MATHURA', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 10:29:49', '0000-00-00 00:00:00'),
(327, 327, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 11:25:31', '0000-00-00 00:00:00'),
(328, 328, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 12:07:05', '0000-00-00 00:00:00'),
(329, 329, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 12:13:51', '0000-00-00 00:00:00'),
(330, 330, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 12:19:33', '0000-00-00 00:00:00'),
(331, 331, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 14:18:21', '0000-00-00 00:00:00'),
(332, 332, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 14:20:23', '0000-00-00 00:00:00'),
(333, 333, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-04 16:43:56', '0000-00-00 00:00:00'),
(334, 334, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-05 06:29:59', '0000-00-00 00:00:00'),
(335, 335, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-05 07:11:52', '0000-00-00 00:00:00'),
(336, 336, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-05 08:59:41', '0000-00-00 00:00:00'),
(337, 337, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-05 09:30:06', '0000-00-00 00:00:00'),
(338, 338, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-05 09:37:09', '0000-00-00 00:00:00'),
(339, 339, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-05 09:55:29', '0000-00-00 00:00:00'),
(341, 341, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-05 11:30:50', '0000-00-00 00:00:00'),
(342, 342, 'Jayaditya', '', 'Sethi', 'Male', '2002-07-24', 102, 102, 'Kolkata', ' 311 Akshay Girikunj', 'Paliram Road', 'Andheri West', 'Mumbai ', '4000058', 'Maharashtra', 91, '9820680807', 'jayadityavsethi@gmail.com', '', '', '', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 14:22:28', '0000-00-00 00:00:00'),
(343, 343, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-06 06:16:38', '0000-00-00 00:00:00'),
(344, 344, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-06 06:31:26', '0000-00-00 00:00:00'),
(345, 345, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-06 06:35:24', '0000-00-00 00:00:00'),
(346, 346, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-06 07:02:23', '0000-00-00 00:00:00'),
(347, 347, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-06 07:42:26', '0000-00-00 00:00:00'),
(348, 348, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-06 07:44:20', '0000-00-00 00:00:00'),
(349, 349, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-06 16:21:57', '0000-00-00 00:00:00'),
(350, 350, 'KALAI', 'G', 'SELVAN', 'Male', '2002-11-13', 0, 0, 'Virudhunagar', ' 573 GFA LINE', 'Near  TpT coy', '', 'Lucknow', '226002', 'Uttar-pradesh', 0, '9682273908', 'kalai131102@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Ganesan', 'S', 'Subburaj', '', 'Sr.', 0, 0, 'some college/University', 'Mother', 'Yes', 'Mrs.', 'Meenakshi', 'G ', ' Sundari', '', 'Jr.', 102, 21, 'Graduated from high/secondary school (or equivalent)', 11, '', '', 30, 284, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-07 05:18:41', '0000-00-00 00:00:00'),
(351, 351, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-07 05:10:30', '0000-00-00 00:00:00'),
(352, 352, 'Vivek', 'S', 'Polywal', 'Male', '2003-08-15', 0, 0, 'Azamgarh', ' House Number 153 Pragati Nagar Kolbazbahadur Azamgarh', '', '', 'Azamgarh', '276001', 'Uttar-Pradesh', 0, '8736895455', 'viveksinghpolywalviveksinghpolywalvsp1508@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Ajai', '', 'Kumar', 'Singh', '', 102, 27, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Garima', '', ' Singh', '', '', 102, 44, 'Graduated from college/University', 18, '', '', 7, 68, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-07 05:57:56', '0000-00-00 00:00:00'),
(353, 353, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-07 05:42:48', '0000-00-00 00:00:00'),
(354, 354, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-07 05:54:10', '0000-00-00 00:00:00'),
(355, 355, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-07 05:58:05', '0000-00-00 00:00:00'),
(356, 356, 'Shahzeb', '', 'Khan', 'Male', '2002-10-18', 0, 0, 'Najibabad', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-07 06:14:48', '0000-00-00 00:00:00'),
(357, 357, 'Vibha', '', 'Tomar', 'Female', '2002-09-10', 102, 102, 'Lucknow', ' 425 Usman Road', 'Sadar bazar', 'Lucknow cantt', 'Lucknow', '226002', 'UttarPradesh', 91, '9919566738', 'singhvivek2430@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Satnam', '', 'Tomar', '', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Sangeeta', '', ' Tomar', '', '', 102, 21, 'some high/secondary school', 43, '', '', 30, 288, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-07 06:48:38', '0000-00-00 00:00:00'),
(358, 358, 'Nikita', '', 'Bisht', 'Female', '2002-05-26', 102, 102, 'Almora', ' Sharda Nagar', 'Nilmatha Cantt', 'Near Town Hall Public School', 'Lucknow', '226002', 'Uttar_Pradesh', 91, '9532099694', 'agreatwwefan@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Janki ', '', 'Bisht', '', '', 102, 21, '', 'Father', 'Yes', 'Mr.', 'Pawan ', '', ' Singh', '', '', 102, 0, '', 18, '', '', 11, 115, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-07 08:02:48', '0000-00-00 00:00:00'),
(359, 359, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-07 13:17:50', '0000-00-00 00:00:00'),
(360, 360, 'SRINJAYI', '', 'SAHA', 'Female', '0000-00-00', 102, 102, 'New Delhi', ' 402 Parimal Building 17th Road Khar West', '', '', 'Mumbai', '400052', 'Maharashtra', 0, '8879703146', 'srinjayisaha25@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Dr.', 'Anjana', '', 'Saha', 'Saha', '', 102, 44, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Shubhabrata', '', ' Saha', 'Saha', '', 102, 6, 'Graduated from college/University', 36, '', '', 4, 23, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-08 16:18:13', '0000-00-00 00:00:00'),
(361, 361, 'Ishani', '', 'Priya', 'Female', '2003-07-04', 102, 102, 'Patna', ' Bailey Road', '', '', 'Patna', '800014', 'Bihar', 91, '6201808789', 'ishani_priya2019@gmail.com', '', '', '', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Pawan', '', 'Kumar', '', '', 102, 44, 'Graduated from college/University', 'Mother', 'Yes', 'Dr.', 'Gita', '', ' Kumari', '', '', 102, 42, 'Graduated from college/University', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-08 16:21:34', '0000-00-00 00:00:00'),
(362, 362, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-08 16:10:05', '0000-00-00 00:00:00'),
(363, 363, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-08 16:13:42', '0000-00-00 00:00:00'),
(364, 364, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-08 18:18:18', '0000-00-00 00:00:00'),
(365, 365, 'Din', 'E', 'Ssshhh', 'Male', '1991-01-01', 2, 1, 'Russia', ' 123 Email Avenue', '', '', 'Test', '112299', 'TestRegion', 0, '1234567890', 'dsadhwa1@binghamton.edu', 'Specialized training or certificate program', '', '', '', '0', '0', 'U.S. Refugee or Asylee', 'Married', 'Other', 'Mother', 'Yes', '', 'testparent', '', 'TestFamily', '', '', 1, 0, '', 'Mother', 'Yes', '', 'test', 'T', ' test', '', '', 0, 0, '', 1, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-10 11:53:26', '0000-00-00 00:00:00'),
(366, 366, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-10 19:21:43', '0000-00-00 00:00:00'),
(367, 367, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-11 04:21:21', '0000-00-00 00:00:00'),
(368, 368, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-11 07:09:12', '0000-00-00 00:00:00'),
(369, 369, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-11 07:12:32', '0000-00-00 00:00:00'),
(371, 371, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-11 08:29:50', '0000-00-00 00:00:00'),
(372, 372, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-11 08:36:00', '0000-00-00 00:00:00'),
(373, 373, 'Pragati', '', 'Maheshwary', 'Female', '2002-04-25', 102, 102, 'Bhopal', ' D 5 Tilak Nagar', 'E 8 Ext', '', 'Bhopal', '462039', 'MadhyaPradesh', 91, '9424100731', 'pragatisjcs@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Pramod', '', 'Maheshwary', '', '', 102, 7, 'Graduated from college/University', 'Mother', 'Yes', 'Dr.', 'Priti', '', 'Maheshwary', '', '', 102, 13, 'Graduate School', 18, '', '', 36, 336, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-11 13:17:31', '0000-00-00 00:00:00'),
(374, 374, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 18, 218, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '2019-11-12 00:41:54', '0000-00-00 00:00:00'),
(375, 375, 'tanay', '', 'mehta', 'Male', '2002-05-24', 102, 102, 'neemuch', ' 216 vikas nagar', 'nirogdham nursing home', '', 'neemuch', '458441', 'MP', 0, '8120006264', 'mehtat2002@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'No', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Dr.', 'manishi', '', 'mehta', '', '', 102, 44, 'Graduate School', 'Mother', 'Yes', 'Dr.', 'shomita', '', 'mehta', '', '', 102, 44, 'Graduate School', 18, 'Share an essay on any topic of your choice. It can be one you\'ve already written, one that responds to a different prompt, or one of your own design.', 'Some people strike such a chord inside us that they change our perspectives completely.\r\n\r\nI have come across many friends and family members who have influenced me but the man who has probably influenced me most was someone I hardly knew, not a stranger exactly but no relation either; Mr. Madhav, the only porter in my small town\'s railway station or Madhav kaka as everyone fondly calls him.  \r\n\r\n\r\n\r\nAt sixty-five, Madhav kaka has been working on the railway for over five decades. He has seen the railways transform from steam to diesel and to electric locomotives; narrow gauge to broad gauge and handwritten tickets to e-tickets. He picked up the luggage when my grandparents took my father on vacation. He was present when my father returned home after qualifying as a doctor. He was there to gather the gifts when my dad and mom appeared as a newly-married couple. And he has seen me metamorphose from a smiley, new born in his mother\'s arms to a venturesome, young teenager returning from his school trips.\r\n\r\n\r\n\r\nA principal aspect of Madhav kaka\'s constancy of character manifests itself in high moral and human values. I have long been aware that he is the sole breadwinner of his family and the only way he earns enough to put food on his family table is by transporting luggage at the station. In good faith, we always tip him whenever we travel by train. When my great-grandmother died, there were many elderly relatives who came to pay their last respects. This man who depends on this income, did not charge a single paisa as porterage because he recognized the atmosphere in our household. To most, the cost of porterage did not mean a lot in terms of money, but his thoughtfulness touched something deep inside me and others as his gesture became more widely known. I realized how small deeds can convey a much greater message.\r\n\r\n\r\n\r\nEven as a sexagenarian, Madhav kaka\'s daily life includes lots of labour and backbreaking work. But he keeps on trying to push himself harder and', 11, 112, '', '', '', '', '', '', '', 0, 'Yes', 'Yes', 'I waive my right to review all recommendations and supporting documents.', 'Yes', 'tanay mehta', '2019-11-12', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 04:19:41', '0000-00-00 00:00:00'),
(377, 377, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 06:42:33', '0000-00-00 00:00:00'),
(378, 378, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 06:45:00', '0000-00-00 00:00:00'),
(379, 379, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 06:50:10', '0000-00-00 00:00:00'),
(380, 380, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 07:07:41', '0000-00-00 00:00:00'),
(381, 381, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 07:11:11', '0000-00-00 00:00:00'),
(382, 382, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 07:17:04', '0000-00-00 00:00:00'),
(383, 383, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 07:20:34', '0000-00-00 00:00:00'),
(386, 386, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 07:58:49', '0000-00-00 00:00:00'),
(387, 387, 'Rujula', 'S', 'Sharma', 'Female', '2003-10-16', 102, 102, 'Bilaspur', ' 403 H30', 'Global city near McDonalds', 'Virar west', 'Mumbai', '401303', 'Maharashtra', 91, '9307184587', 'rujulasharma09@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sachin', 'R', 'Sharma', 'Sharma', '', 102, 18, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Anuradha', 'S', ' Sharma', 'Sharma', '', 102, 21, 'some college/University', 18, '', '', 7, 69, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 12:02:39', '0000-00-00 00:00:00'),
(388, 388, 'Navya', '', 'Joshi', 'Female', '2003-05-04', 0, 0, 'NEW DELHI', 'D 35 SHIV MANDIR OLD GUPTA COLONY', '', '', 'NEW DELHI', '110009', 'Delhi', 91, '9315583104', 'navyatheinquisitive@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Aditya', '', 'Joshi', 'Joshi', '', 102, 44, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Lipi', '', ' Joshi', '', '', 102, 21, 'Graduated from college/University', 18, '', '', 11, 108, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 11:52:31', '0000-00-00 00:00:00'),
(389, 389, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 12:06:06', '0000-00-00 00:00:00'),
(390, 390, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 13:07:19', '0000-00-00 00:00:00'),
(391, 391, 'Muhammad', '', 'Yaqoob', 'Male', '2000-01-01', 167, 167, 'Gwadar', ' Baloch ward gwadar', 'Baloch ward gwadar ', 'Shamby Ismail ward gwadar', 'Gwadar', '91200', 'Balochistan', 92, '0321242406', 'yaqoobbaloch363@gmail.com', '', '', '', '', '2', '1 Year', 'U.S. Citizen or U.S. National', 'Separated', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Liaqat', '', 'Ali', 'Baloch', '', 167, 44, 'Some grade/primary school', 'Mother', 'Yes', 'Ms.', 'Ayesha', '', ' Hayatan', '', '', 167, 0, 'Some grade/primary school', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-12 15:45:23', '0000-00-00 00:00:00'),
(392, 392, 'simran', '', 'kc', 'Female', '2002-12-31', 156, 156, 'jhapa ', ' bhaktapur', '', '', 'kathmandau', '44600', 'Asia', 977, '9808417139', 'kavyakc888@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Tika', '', 'karki', 'Kc', '', 0, 0, 'completed grade/primary school', 'Father', 'Yes', 'Mr.', 'Dipen', '', ' Kc', 'Kc', '', 156, 44, 'completed grade/primary school', 18, '', '', 11, 109, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 13:42:07', '0000-00-00 00:00:00'),
(393, 393, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 13:24:04', '0000-00-00 00:00:00'),
(394, 394, 'Musadiq', '', 'Lone', 'Male', '2002-04-11', 0, 0, 'Srinagar', ' Sogam lolab kupwara kashmir', 'Jummu and Kashmir', 'Sogam', 'Srinagar', '193223', 'Srinagar', 0, '6006011077', 'shahnazlolabi42@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'I have limited Information about this Parent', 'No', '', 'Ghulam ', '', 'Lone', '', '', 102, 19, 'some high/secondary school', 'Mother', 'Yes', 'Ms.', 'Haneefa', '', ' Bagum', '', '', 102, 44, 'None', 36, '', '', 28, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 14:01:19', '0000-00-00 00:00:00'),
(395, 395, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 13:41:59', '0000-00-00 00:00:00'),
(396, 396, 'Sahid', '', 'Sekh', 'Male', '2001-10-28', 156, 156, 'JHAPA', ' JHAPA', '', '', 'JHAPA', 'No code', 'ONE', 977, '9815993075', 'Sajan.hkh16@gmail.com', '', '', '', '', '0', '0', 'U.S. Permanent Resident', 'Never Married', 'Legal Guardian', 'Father', 'No', 'Mr.', 'Farman ', '', 'Sekh', 'Sekh', 'Sr.', 156, 24, 'Some grade/primary school', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-12 14:03:19', '0000-00-00 00:00:00'),
(397, 397, 'Saihou ', '', 'Sankareh ', 'Male', '1998-08-25', 102, 80, 'Basse', ' Chinna waltar ', '', '', 'Visakhapatnam', '530003', 'Andhra-Pradesh', 91, '6304907817', 'ssankareh2@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'Fatoumata ', '', 'Jabbie', '', 'Jr.', 80, 40, 'Graduated from college/University', 'Father', 'Yes', '', 'Abba ', '', ' Sankareh  ', '', '', 80, 44, 'Graduated from college/University', 14, '', '', 7, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 16:25:34', '0000-00-00 00:00:00'),
(398, 398, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 13:49:17', '0000-00-00 00:00:00'),
(399, 399, 'Aman', '', 'Sharma', 'Male', '2002-11-02', 0, 0, 'Jhajjar', ' House no 85', 'Vidya nagar', '', 'Bhiwani', '127021', 'Haryana', 0, '8519939051', 'aman95026@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Widowed', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'Kamlesh', '', 'Sharma', '', '', 102, 0, 'some high/secondary school', 'Father', 'No', 'Mr.', 'Mukesh', '', ' Sharma', '', '', 102, 7, 'some high/secondary school', 36, '', '', 28, 276, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-26 04:20:26', '0000-00-00 00:00:00'),
(400, 400, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 13:57:22', '0000-00-00 00:00:00'),
(401, 401, 'Masuk', 'R', 'Saumo', 'Male', '2001-01-25', 0, 0, 'Dhaka', ' House no 327 Road no 3', 'Baitul Aman Housing Society  Adabor', '', 'Dhaka', '1207', 'Dhaka', 0, '1537060237', 'masuksaumo56@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Zan-E', 'A', 'Mridha', '', '', 19, 32, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Selina', '', ' Momtaz', '', '', 19, 36, 'Graduated from college/University', 36, '', '', 28, 276, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2019-11-12 14:16:50', '0000-00-00 00:00:00'),
(402, 402, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 14:01:36', '0000-00-00 00:00:00'),
(403, 403, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 14:11:47', '0000-00-00 00:00:00'),
(404, 404, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 14:16:09', '0000-00-00 00:00:00'),
(405, 405, 'Ankush', '', 'Arya', 'Male', '2002-02-27', 102, 102, 'Patna', 'Near RLSY High School', 'Lohia Park', 'Kokar', 'Ranchi', '834001', 'Jharkhand', 91, '+918051190', 'ankusharya2728@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sanjeeva', '', 'Suman', '', 'Sr.', 102, 18, 'Graduated from college/University', 'Mother', 'Yes', '', 'Sapna', '', ' Suman ', '', 'Sr.', 102, 21, 'Graduated from college/University', 6, '', '', 5, 40, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 14:25:29', '0000-00-00 00:00:00'),
(406, 406, 'Salman', '', 'Abid', 'Male', '2000-11-27', 167, 167, 'Sialkot', '78 Sutluj Block Allama Iqbal town', '', '', 'Lahore', '54000', 'Punjab', 0, '3080088886', 'sal6666@outlook.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '19', 'Other (Non-US)', 'Widowed', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'Uzma', '', 'Abid', 'Abid', '', 0, 0, 'Graduated from high/secondary school (or equivalent)', 'Father', 'No', 'Mr.', 'Mohammed', '', ' Abid', 'Latif', '', 167, 44, 'some college/University', 14, '', '', 7, 74, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 14:51:14', '0000-00-00 00:00:00'),
(407, 407, 'Faizan', '', 'Abbasi', 'Male', '2001-06-08', 0, 0, 'Islamabad', ' House 6 street 12 nain sukh town barakahu Islamabad', '', '', 'Islamabad', '4400', 'Punjan', 92, '0304564386', 'Pogbafaizi6@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Legal Guardian', 'Father', 'Yes', 'Mr.', 'Ghulam', '', 'Abbasi', '', 'Sr.', 167, 8, 'some high/secondary school', 'Mother', 'Yes', 'Ms.', 'Zara', '', ' Abbasi', '', 'Sr.', 167, 44, 'Some grade/primary school', 18, '', '', 11, 114, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 14:50:18', '0000-00-00 00:00:00'),
(408, 408, 'Shahir ', '', 'Hadi', 'Male', '2001-08-13', 167, 167, 'Swat', ' Hadi Medical store GT Road barikot swat', '', '', 'Swat', '19240', 'Khyberpakhtunkhwa', 92, '0347941688', 'shaheerhadi43@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Abdul', '', 'Hadi', '', '', 167, 31, 'some college/University', 'Mother', 'Yes', '', 'Bahr', '', ' Haram', '', '', 167, 44, 'Graduated from high/secondary school (or equivalent)', 26, '', '', 18, 216, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 15:09:16', '0000-00-00 00:00:00'),
(409, 409, 'Manish', '', 'Basnet ', 'Male', '2000-09-24', 156, 156, 'Palung', ' Kathmandu', '', '', 'balkhu', '477', '03', 977, '9851106860', 'manishbasnet2058@gmail.com', '', '', '', '', '0', '18', 'Other (Non-US)', 'Separated', 'Parent 1', 'I have limited Information about this Parent', 'Yes', 'Mr.', 'Manish', '', 'Basnet', '', 'III', 0, 0, 'Graduated from high/secondary school (or equivalent)', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-12 14:53:06', '0000-00-00 00:00:00'),
(410, 410, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 15:11:45', '0000-00-00 00:00:00'),
(411, 411, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 15:14:03', '0000-00-00 00:00:00'),
(412, 412, 'Jayakrishna', 'S', 'Kumar', 'Male', '1998-01-14', 0, 0, 'Payyanur', ' soubhagya udinur via trikaripur', 'Kasargod', '', 'Payyanur', '671310', 'Indian', 0, '9496841565', 'jayakrishnaskumar@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'No', '', '0', '20', 'U.S. Citizen or U.S. National', 'Married', 'Both Parents', 'Father', 'Yes', 'Mrs.', 'Santhosh', 'K', 'Av', '', 'Sr.', 102, 39, 'Graduated from college/University', 'Mother', 'Yes', 'Ms.', 'Sujatha ', 'C', ' K', '', 'Sr.', 102, 39, 'some college/University', 18, '', '', 11, 127, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 15:42:24', '0000-00-00 00:00:00'),
(413, 413, 'Abdullah ', '', 'Zahir', 'Male', '2002-09-01', 167, 167, 'Peshawar ', ' Block M2 Gulshan Rehman', 'Colony', 'Kohat Road', 'Peshawar', '25000', 'Pakhtunkhwa ', 0, '3359399676', 'abdullahzahir30@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 2', 'Father', 'Yes', 'Mr.', 'Zahir', '', 'Muhamad ', 'Khan', 'Jr.', 167, 44, 'Graduated from college/University', 'Mother', 'Yes', '', 'Sabrina', '', 'Batool', 'Zahir', 'Sr.', 0, 0, 'Graduated from college/University', 33, '', '', 31, 293, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 16:41:22', '0000-00-00 00:00:00'),
(414, 414, 'Mohammad', 'R', 'Islam', 'Male', '1999-06-02', 19, 19, 'Dhaka', 'Narsingdi', '', '', 'Dhaka', '1604', 'Dhaka', 880, '+880633546', 'rakib3012@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'Off-Campus Housing', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Rakibul', 'I', 'Islam', 'Islam', 'Jr.', 19, 44, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Mrs.', 'Rubina', 'I', ' Islam', 'Rubina', 'Jr.', 19, 44, 'some high/secondary school', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 16:33:41', '0000-00-00 00:00:00'),
(415, 415, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 15:57:22', '0000-00-00 00:00:00'),
(416, 416, 'Sudha', '', 'Pantha', 'Female', '2000-12-25', 156, 156, 'Gulmi', ' House no 29', 'Bhandari marg', 'Kamaladi', 'Kathmandu', '44600', '3', 977, '9840249601', 'sudhapantha111@gmail.com ', 'Other', 'Off-Campus Housing', 'No', '', '0', '18', 'U.S. Citizen or U.S. National', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Himlal', '', 'Pantha', 'Pantha', 'Sr.', 156, 44, 'Some grade/primary school', 'Mother', 'Yes', 'Mrs.', 'Nandakala ', '', ' Pantha', 'Pantha', 'Jr.', 156, 44, 'Some grade/primary school', 14, '', '', 7, 76, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 12:03:13', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `userId`, `firstName`, `middleInitial`, `lastName`, `gender`, `dateOfBirth`, `countryOfResidence`, `countryOfBirth`, `cityOfBirth`, `streetAddress1`, `streetAddress2`, `streetAddress3`, `city`, `postalCode`, `regionOrProvince`, `countryCode`, `mobileNumber`, `emailAddress`, `plannedHighestEduLvl`, `collegeHousingPlan`, `financialAid`, `partTimeJob`, `noOfYrsInUS`, `noOfYrsOutOfUS`, `citizenshipStatus`, `parentsMaritalStatus`, `permenantHomeGuardian`, `Parent1type`, `parent1Living`, `Parent1prefix`, `Parent1FirstName`, `Parent1MiddleInitial`, `Parent1LastName`, `Parent1FormerLastName`, `Parent1Suffix`, `Parent1CountryOfBirth`, `Parent1Occupation`, `Parent1EducationLevel`, `Parent2type`, `Parent2Living`, `Parent2Prerix`, `Parent2FirstName`, `Parent2MiddleInitial`, `Parent2LastName`, `Parent2FormerLastName`, `Parent2Suffix`, `Parent2CountryOfBirth`, `Parent2Occupation`, `Parent2EducationLevel`, `careerIntrest`, `essayOption`, `essay`, `areasOfStudyId`, `majorId`, `transcript9th`, `transcript10th`, `transcript11th`, `transcript12th`, `lor1`, `lor2`, `lor3`, `addedTranscripts`, `ferpaunderstood`, `ferpaack`, `selectopt`, `ferpawaiver`, `signature`, `ferpaDate`, `isApply`, `personel_form`, `contact_form`, `parent_1`, `parent_2`, `college_plans_form`, `majorSelect_form`, `highSchool_form`, `status`, `isMandatory`, `created_at`, `updated_at`) VALUES
(417, 417, 'Laiba', 'A', 'Qureshi', 'Female', '2002-06-18', 0, 0, 'Hyderabad', ' Isra village hala naka', '', '', 'Hyderabad', '76000', 'Sindh', 0, '9231737550', 'Qureshilaiba215@gmail.com', 'Bachelors degree (such as BA or BS)', 'Off-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Dr.', 'Farzana ', '', 'Qazi', '', 'Jr.', 167, 32, 'Graduated from college/University', 'Father', 'Yes', 'Dr.', 'Aminullah', 'S', ' Qureshi', '', '', 167, 32, 'Graduated from college/University', 14, '', '', 7, 68, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 16:10:15', '0000-00-00 00:00:00'),
(418, 418, 'Rakibu', 'L', 'Islam', 'Male', '1999-06-02', 0, 0, 'Narsingdi', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 16:06:10', '0000-00-00 00:00:00'),
(419, 419, 'Zobayer', 'B', 'Tanvir ', 'Male', '1999-02-22', 19, 19, 'Comilla', 'Comilla', '', '', 'Comilla', '3500', 'Chittagong ', 880, '+880174494', 'zbtanvir2018@gmail.com ', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Md', 'B', 'Shahabuddin ', '', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Zobayeda ', 'B', ' Jannat', '', '', 19, 21, 'some high/secondary school', 14, '', '', 7, 69, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 16:12:38', '0000-00-00 00:00:00'),
(420, 420, 'Zakria', '', 'Chandio', 'Male', '2000-07-28', 167, 167, 'Jamshoro', ' House  No A2 Sindh University Society  Jamshoro', '', '', 'Hyderabad', '70000', 'Sindh', 0, '+923002071', 'ronaldozakria@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '19', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sultan ', '', 'Chandio', '', '', 167, 4, 'Graduated from college/University', 'Mother', 'Yes', 'Ms.', 'Samia', '', 'Chandio', '', '', 167, 44, 'Graduated from high/secondary school (or equivalent)', 6, '', '', 5, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 16:21:08', '0000-00-00 00:00:00'),
(421, 421, 'Md', 'R', 'Hossain', 'Male', '1998-08-21', 0, 0, 'Dhaka', 'Muradpur ', '', '', 'Dhaka', '1204', 'Islam', 0, '+880199267', 'rabbemd549@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 16:35:58', '0000-00-00 00:00:00'),
(422, 422, 'Aniket ', '', 'garg', 'Male', '2001-12-13', 102, 102, 'Haryana', ' kath mndi nnl hryana', 'anaaj mndi nnl haryana', '', 'haryana', '123001', 'hindu', 91, '8307846964', 'garganiket397@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Mother', 'No', 'Mr.', 'Aniket', '', 'garg', 'garg', 'Sr.', 102, 7, 'Graduate School', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-13 12:55:36', '0000-00-00 00:00:00'),
(423, 423, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 16:28:32', '0000-00-00 00:00:00'),
(424, 424, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 16:31:45', '0000-00-00 00:00:00'),
(425, 425, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 16:38:51', '0000-00-00 00:00:00'),
(426, 426, 'Syed ', 'B', 'Jafar', 'Male', '2000-02-15', 0, 0, 'Chittagong', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '>20 Years', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 11, 125, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, '2019-11-14 03:16:12', '0000-00-00 00:00:00'),
(427, 427, 'muazz', '', 'naseer', 'Male', '2000-02-03', 167, 167, 'lahore', 'joyshah road sanda kalan lahore', '', '', 'lahore', '54000', 'punjab', 92, '0336453877', 'muaaznaseer18@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '19', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'muazz', '', 'naseer', 'malik', 'Sr.', 167, 7, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Mrs.', 'Safeeda', '', 'malik', 'Malik', '', 167, 21, 'Graduated from high/secondary school (or equivalent)', 32, '', '', 4, 35, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 16:50:47', '0000-00-00 00:00:00'),
(428, 428, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 16:48:13', '0000-00-00 00:00:00'),
(429, 429, 'Himanshu', '', 'kumar', 'Male', '2002-11-01', 102, 102, 'Sahibganj jharkhand India', ' Samlapur near lal kothi', 'sahibganj near district jaail', '', 'Sahibganj', '816109', 'nothing', 91, '7061502058', 'himrishu2214@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '19', 'Other (Non-US)', 'Never Married', 'Legal Guardian', 'Father', 'Yes', 'Mr.', 'Anil', '', 'Singh', 'Singh', 'Sr.', 0, 0, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Sabita', '', ' devi', 'Devi', 'X', 102, 44, 'some high/secondary school', 5, '', '', 37, 339, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 17:08:44', '0000-00-00 00:00:00'),
(430, 430, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 17:00:44', '0000-00-00 00:00:00'),
(431, 431, 'Rashadul', '', 'Islam ', 'Male', '2001-09-17', 0, 0, 'Feni', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 17:10:36', '0000-00-00 00:00:00'),
(432, 432, 'soumo', '', 'biswas', 'Male', '2019-11-24', 0, 0, 'khulna', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 17:19:41', '0000-00-00 00:00:00'),
(433, 433, 'Arpam', 'K', 'Singh', 'Male', '2002-10-10', 102, 102, 'Contai', ' Jamuasankarpur', '', '', 'Contai', '721427', 'Indiana', 91, '9593880787', 'Arpankumarsinghak47@gmail.com', 'Other', 'On-Campus Housing', 'No', '', '0', '17', 'Other (Non-US)', 'Never Married', 'Legal Guardian', 'I have limited Information about this Parent', 'No', 'Mrs.', 'Shyamali', '', 'Singh', 'Singh', 'Jr.', 102, 44, 'Graduated from high/secondary school (or equivalent)', 'Father', 'No', 'Mr.', 'Rajesh', 'K', ' Singh', 'Singh', 'Jr.', 102, 38, 'completed grade/primary school', 5, '', '', 23, 235, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 17:30:48', '0000-00-00 00:00:00'),
(434, 434, 'Shahzaib', '', 'Haider', 'Male', '1997-08-20', 0, 0, 'Sargodha', '242 block y iqbal colony', '242 block y iqbal colony', '', 'Sargodha', '40100', 'Punjab', 0, '0092305600', 'shabbircloth@yahoo.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Shabbir', '', 'Ahmad', '', 'Sr.', 167, 6, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Fahmeda', '', ' Shabbir', '', 'Jr.', 167, 44, 'some high/secondary school', 1, '', '', 38, 340, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2019-11-12 17:33:09', '0000-00-00 00:00:00'),
(435, 435, 'Shraya', '', 'Rajkarnikar', 'Female', '2001-02-01', 0, 0, 'Lalitpur', ' Jawalakhel', 'Jawalakhel ', 'Jawalakhel ', 'Lalitpur ', '446600', '3', 977, '9803316230', 'shraya.rajkarnikar@gmail.com', 'Undecided', 'Off-Campus Housing', 'No', '', '0', '18', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Rajkumar', '', 'Rajkarnikar', 'Rajkarnikar', 'X', 156, 44, 'some high/secondary school', 'Mother', 'Yes', '', 'Gauri', '', ' Rajkarnikar', 'Tamrakar', 'X', 0, 0, 'Graduated from high/secondary school (or equivalent)', 44, '', '', 30, 283, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 17:26:40', '0000-00-00 00:00:00'),
(436, 436, 'Asfa', 'A', 'Syed', 'Female', '1996-09-16', 0, 0, 'Karachi', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 19:52:33', '0000-00-00 00:00:00'),
(437, 437, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 17:29:45', '0000-00-00 00:00:00'),
(438, 438, 'Mahad', '', 'Imran', 'Male', '2003-06-29', 167, 167, 'Bahawalpur', ' Hous No 20 A', 'Street 2 Anwarabad Colony', '', 'Bahawalpur', '63100', 'Punjab', 92, '9230550103', 'mahadimrangujjar1@gmail.com', 'Undecided', 'On-Campus Housing', 'Yes', '', '0', '16', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'dudjdjd', '', 'dhshhdhd', '', '', 170, 33, 'Graduate School', 'Mother', 'Yes', 'Mrs.', 'Farhat', '', ' Imran', '', '', 167, 44, 'Graduated from college/University', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 06:54:46', '0000-00-00 00:00:00'),
(439, 439, 'Fahad', '', 'Hussain', 'Male', '1996-06-16', 0, 0, 'Karachi', ' Sarah View ', '', '', 'Karachi', '75850', 'Sindh', 0, '0311244533', 'Fahadmarkalogic@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Widowed', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 06:39:30', '0000-00-00 00:00:00'),
(440, 440, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 18:13:50', '0000-00-00 00:00:00'),
(441, 441, 'Zahid', 'H', 'Hussain', 'Male', '2001-05-02', 0, 0, 'New Jatoi Sindh', ' NEW JATOI JANWAY MOHLA POST OFFICE NEW JATOI', 'NEW JATOI JANWAY MOHLA POST OFFICE NEW JATOI', 'NEW JATOI JANWAY MOHLA POST OFFICE NEW JATOI', 'Pakistan New Jatoi', '67130', 'ISLAM', 0, '0306324157', 'zahidhussainjanwary5@gmail.com', 'Other', 'I dont know', 'Yes', '', '0', '0', 'U.S. Citizen or U.S. National', 'Separated', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Zahid', 'h', 'janwary', 'janway', 'Sr.', 167, 44, 'Graduated from college/University', 'I have limited Information about this Parent', 'I have limited Information about this Parent', 'Mr.', 'zahid', 'h', ' janwary', 'janwary', 'II', 167, 1, 'Some trade school or community college', 1, '', '', 17, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-20 11:57:36', '0000-00-00 00:00:00'),
(442, 442, 'Suhail', '', 'Sattat', 'Male', '2001-05-17', 167, 167, 'Larkana', ' Street6', 'House25A71Azad Jamhuria Colony Smchs Block B', '', 'Karachi', '77735', 'Sindhi', 0, '0348084602', 'suhaildelsol@hotmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'No', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Razia', 'B', 'Unar', 'Lanjar', '', 0, 0, 'some high/secondary school', 'Father', 'Yes', 'Mr.', 'Abdul', 'S', ' Unar', 'Unar', '', 167, 40, 'Graduated from high/secondary school (or equivalent)', 18, '', '', 7, 68, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-18 14:18:32', '0000-00-00 00:00:00'),
(443, 443, 'Abdul', 'A', 'Nohri', 'Male', '2019-09-20', 0, 0, 'Umerkot', ' Karachi ', 'Schal ghot ', 'B block ', 'Karachi ', '75280', 'Sindh ', 92, '0346113085', 'Abdulaziznohri786@gmail.com ', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Sultan ', 'S', 'Nohri ', 'Nohri ', '', 167, 44, 'Some grade/primary school', 'Mother', 'Yes', 'Ms.', 'Mehran ', 'M', ' Nohri ', 'Nohri ', '', 167, 44, 'None', 6, '', '', 5, 41, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 19:30:09', '0000-00-00 00:00:00'),
(444, 444, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 18:57:45', '0000-00-00 00:00:00'),
(445, 445, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 19:03:21', '0000-00-00 00:00:00'),
(446, 446, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 19:20:02', '0000-00-00 00:00:00'),
(447, 447, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 19:29:44', '0000-00-00 00:00:00'),
(448, 448, 'Kaif', '', 'Ahmad', 'Male', '2001-05-23', 102, 102, 'Ranchi', 'Kaiser colony ', 'Jora talab', 'Bariyatu', 'Ranchi', '834009', 'Jharkhand', 91, '8789298285', 'kaifhesham@gmail.com', 'Undecided', 'Off-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Shakil', '', 'Ahmad', '', '', 102, 44, 'Graduated from college/University', 'Mother', 'Yes', 'Ms.', 'Shabista', '', ' Naznin', '', '', 102, 44, 'Graduated from high/secondary school (or equivalent)', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 07:06:55', '0000-00-00 00:00:00'),
(449, 449, 'Zoha', '', 'Khan', 'Female', '2000-03-07', 0, 0, 'Multan', ' Dg cement housing colony House No C 35 Dera Ghazi Khan Pakistan', 'Dg cement housing colony House No C 35 Dera Ghazi Khan Pakistan', 'Dg cement housing colony House No C 35 Dera Ghazi Khan Pakistan', 'Dera Ghazi Khan Pakistan', '32200', 'Punjab ', 0, '0332330240', 'Zohaaykhan777@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '19', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Ashfaq', '', 'Ahmed', 'Ahmed', '', 167, 18, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Bushra', '', ' Ashfaq', 'Ashfaq', '', 167, 39, 'Graduated from college/University', 17, '', '', 4, 19, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-12 19:52:53', '0000-00-00 00:00:00'),
(450, 450, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 20:57:52', '0000-00-00 00:00:00'),
(451, 451, 'Azlan', '', 'Rakib', 'Male', '1998-11-27', 19, 19, 'Dhaka', 'Road 2', '', '', 'Dhaka', '1362', 'Dhaka', 0, '+880196180', 'azlanshahraqib@gmail.com', '', '', '', '', '0', '>20 Years', 'Other (Non-US)', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-12 22:52:34', '0000-00-00 00:00:00'),
(452, 452, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 01:32:15', '0000-00-00 00:00:00'),
(453, 453, 'Alka', '', 'Shrestha', 'Female', '2001-05-22', 156, 156, 'Itahari', ' 19', 'Bhawanipur', 'Sunsari', 'Itahari', '56717', '1', 0, '+977982936', 'alkastha7@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '19', 'Other (Non-US)', 'Separated', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'Anju', '', 'Pradhan', 'Shrestha', '', 0, 44, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Anju', '', ' Pradhan ', 'Shrestha', '', 156, 44, 'some high/secondary school', 18, '', '', 11, 109, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 02:12:09', '0000-00-00 00:00:00'),
(454, 454, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 01:49:07', '0000-00-00 00:00:00'),
(455, 455, 'Dilshad', '', 'Khan', 'Male', '2000-01-01', 0, 0, '2000', ' 179 no house  5 no road', '', '', 'Sylhet', '3200', 'Islam', 0, '0177974704', 'dilshadkhan508@yahoo.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Legal Guardian', 'Father', 'Yes', 'Mr.', 'Diluwar', '', 'Khan', 'Khan', 'VII', 0, 0, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Shana ', '', ' Begum', 'Begum', 'VI', 19, 44, 'some high/secondary school', 6, '', '', 5, 37, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 02:04:01', '0000-00-00 00:00:00'),
(456, 456, 'Abhiraj', '', 'Sharma', 'Male', '2004-12-08', 102, 102, 'Gwalior', ' Shivaji', 'Nagar', 'Amkho', 'Gwalior', '474001', 'India', 0, '8770758713', 'abhiraj1234sharma@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 01:56:23', '0000-00-00 00:00:00'),
(457, 457, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 02:08:15', '0000-00-00 00:00:00'),
(458, 458, 'Sujit', '', 'Adhikari ', 'Male', '2000-11-30', 156, 156, 'Kathmandu ', 'Sinamangal', '', '', 'Kathmandu ', '44600', '3', 977, '9862494139', 'Sujitadhikari2000@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '19', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Bindeshwar ', '', 'Ray', 'Ray', 'Jr.', 156, 44, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Indu', '', ' Yadav', '', '', 156, 0, 'Some grade/primary school', 6, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 02:33:03', '0000-00-00 00:00:00'),
(459, 459, 'Saqlain', '', 'Saeed', 'Female', '2001-07-08', 167, 167, 'Bhimber', ' Village Chillah District Bhimber Azad Kashmir Post Office Panjeri', '', '', 'Bhimber', '10400', 'AzadKashmir', 92, '3417215157', 'saqlainsaeed422@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Saqlain', '', 'Saeed', '', 'Sr.', 167, 24, 'Some grade/primary school', 'Mother', 'Yes', 'Ms.', 'Saqlain', '', 'Saeed', '', 'Sr.', 167, 44, 'Some grade/primary school', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-13 02:32:35', '0000-00-00 00:00:00'),
(460, 460, 'Prem', '', 'Prajapat', 'Male', '2003-08-24', 102, 102, 'SUJANGARh Rajasthan', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 07:40:14', '0000-00-00 00:00:00'),
(461, 461, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 02:33:31', '0000-00-00 00:00:00'),
(462, 462, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 02:58:01', '0000-00-00 00:00:00'),
(463, 463, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 03:02:21', '0000-00-00 00:00:00'),
(464, 464, 'Rakesh ', '', 'Yadav', 'Male', '2003-03-29', 0, 0, 'Mirchaiya', ' Rampur birta ', 'Malhaniya chowk ', 'Piradi', 'Mirchaiya', '7890', '2', 0, '02', 'racaseyadav@gmail.com', 'Undecided', 'I dont know', 'Yes', '', '0', '0', 'U.S. Citizen or U.S. National', 'Civil Union/Domestic Partners', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Rakesh', '', 'Yadav', 'Yadav', 'V', 156, 44, 'Graduated from college/University', 'Father', 'Yes', '', 'Rakesh', '', ' Yadav', 'Yadav ', 'VI', 156, 11, 'Graduated from college/University', 15, '', '', 38, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 03:19:31', '0000-00-00 00:00:00'),
(465, 465, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 03:16:31', '0000-00-00 00:00:00'),
(466, 466, 'Binita', '', 'Ale', 'Female', '2002-04-10', 156, 156, 'Butwal ', ' Belbas', 'Belbas ', 'Belbas', 'Butwal', '33900', 'Province-5', 977, '9869930836', 'alemagarbinii@gmail.com', 'Two-year associate of arts or sciences degree (such as AA, AAS, or AS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Legal Guardian', 'Father', 'Yes', 'Mr.', 'Khim', 'B', 'Ale', 'Ale', 'Sr.', 156, 19, 'some high/secondary school', 'Mother', 'Yes', '', 'Jaisari', '', ' Sinjapati', 'Sinjapati', 'Sr.', 0, 0, 'completed grade/primary school', 18, '', '', 11, 115, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 04:48:26', '0000-00-00 00:00:00'),
(467, 467, 'Anuja', '', 'Shrestha', 'Female', '1999-06-20', 0, 0, 'Gorkha', ' Kathmandu ', '', '', 'Gorkha', '3600', '4', 977, '9808912155', 'anujastha10@gmail.com', '', '', '', '', '0', '19', 'Other (Non-US)', 'Divorced', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Arjun', '', 'Shrestha ', '', '', 156, 44, 'completed grade/primary school', 'Mother', 'I have limited Information about this Parent', '', 'Sabina', '', ' Shrestha ', '', '', 156, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-13 04:32:28', '0000-00-00 00:00:00'),
(468, 468, 'Bivek', 'K', 'Sharma', 'Male', '2000-08-23', 156, 156, 'Kalaiya', 'Pachrauta ', '', '', 'Kalaiya', '44400', 'Nepal', 977, '9811212055', 'bivekkumarsharma8@gmail.com ', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '19', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Pramanand ', '', 'Thakur ', '', '', 156, 19, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Mrs.', 'Urmila ', '', ' Devi ', '', '', 156, 44, 'None', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 08:14:12', '0000-00-00 00:00:00'),
(469, 469, 'Farhan', '', 'Ahmed', 'Male', '1999-06-09', 19, 19, 'Dhaka', ' House 04 Road 01 Block E Section 06', 'Mirpur Dhaka 1216', '', 'Dhaka', '1216', 'Mirpur', 0, '+880192805', 'durjoy619@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'Farida', '', 'Akther', 'Akther', 'V', 19, 44, 'Some grade/primary school', 'Father', 'No', '', 'Noor-Mohammed', '', ' Khan', 'Khan', 'V', 19, 44, 'Some grade/primary school', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, '2019-11-13 05:35:17', '0000-00-00 00:00:00'),
(470, 470, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 05:45:02', '0000-00-00 00:00:00'),
(471, 471, 'Sanjana', '', 'Sabira', 'Female', '2003-09-29', 19, 19, 'Dhaka', 'Mirpur 6', '', '', 'Dhaka', '1216', 'Mirpur', 0, '0190310314', 'itachizoldyck539@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '15', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Shamsunnahar', '', 'Doly', '', '', 19, 21, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Showkat', '', ' Hossain', '', '', 19, 44, 'Graduate School', 7, '', '', 38, 340, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 15:15:28', '0000-00-00 00:00:00'),
(472, 472, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 05:58:31', '0000-00-00 00:00:00'),
(473, 473, 'Muhammad_Bilal', '', 'Ashraf', 'Male', '1999-05-24', 167, 167, 'Karachi', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '20', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 06:06:41', '0000-00-00 00:00:00'),
(474, 474, 'Zareen', '', 'Prapti', 'Female', '2002-03-03', 0, 0, 'Dhaka', 'B13E1AGBcolonyAlhelalzoneMotijheelDhaka ', '', '', 'Dhaka', '1222', 'Motijheel ', 880, '0188195470', 'zareen.prapti@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 17:13:54', '0000-00-00 00:00:00'),
(475, 475, 'Afifa', 'B', 'Razzak', 'Female', '2000-12-07', 0, 0, 'Barisal', ' 147 green road dhaka', '', '', 'Dhaka', '1215', 'Bangladesh', 0, '0174815212', 'afifa.brz@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Abdur', '', 'Razzak ', '', '', 19, 1, 'some college/University', 'Mother', 'I have limited Information about this Parent', 'Mrs.', 'Rehana', '', ' Begum', '', '', 19, 44, 'completed grade/primary school', 14, '', '', 7, 73, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 06:36:47', '0000-00-00 00:00:00'),
(476, 476, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 06:24:19', '0000-00-00 00:00:00'),
(477, 477, 'Manmath', '', 'Pradhan', 'Male', '2003-01-30', 102, 102, 'Dhenkanal', 'Kathagada', 'Near college bye pass road', '', 'Dhenkanal', '759001', 'Odisha', 91, '9938273335', 'manmathmanmath4@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Gagan', '', 'Pradhan', '', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Priyadarshini', '', 'Pradhan', '', '', 102, 21, 'some college/University', 36, '', '', 12, 140, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 06:45:19', '0000-00-00 00:00:00'),
(478, 478, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 06:51:47', '0000-00-00 00:00:00'),
(479, 479, 'Daniyal', '', 'Jamshaid', 'Male', '1996-10-17', 167, 167, 'Lahore', ' 233 Umer Block Allama Iqbal Town Lahore Pakistan', '', '', 'Lahore', '54000', 'Punjab', 0, '3144019168', 'daniyaljamshaid7@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', 'Mother', 'Yes', 'Ms.', 'Shahida', '', 'Jamshaid', '', '', 167, 21, 'some high/secondary school', 'Father', 'No', '', 'Jamshaid', '', ' Ahmad ', 'Ahmad', '', 0, 0, 'None', 6, '', '', 5, 36, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 07:50:53', '0000-00-00 00:00:00'),
(480, 480, 'Mohsin', '', 'Ahsan ', 'Male', '2001-02-01', 167, 167, 'Peshawar ', ' HNO 22', 'Street no 1  Sector F4', 'Phase 6  Hayatabad', 'Peshawar', '25000', 'KhyberPakhtunkhwa', 92, '3349777723', 'mohsinahsanma@yahoo.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Ahsan ', '', 'Ullah ', '', 'Jr.', 167, 7, 'None', 'Mother', 'Yes', 'Mrs.', 'Firasat', '', ' Ahsan ', '', 'Jr.', 167, 21, 'None', 26, '', '', 11, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 08:05:56', '0000-00-00 00:00:00'),
(481, 481, 'Omprkash', 'J', 'Bhamu', 'Male', '2019-11-13', 0, 0, 'Rajsthan', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '1 Year', 'Other (Non-US)', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 08:00:50', '0000-00-00 00:00:00'),
(482, 482, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 08:00:21', '0000-00-00 00:00:00'),
(483, 483, 'Ashfaq', '', 'Ahmad', 'Male', '2002-01-10', 167, 167, 'Mardan', ' Village saeedabad', '', '', 'Mardan', '23200', 'KpK', 0, '0317140993', 'link2ashfaqahmad@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Parent 1', 'Mother', 'Yes', 'Mr.', 'Sadia', '', 'Sadia', '', '', 167, 19, 'some college/University', 'Father', 'Yes', '', 'Saif', 'U', ' Islam', '', '', 0, 0, 'some high/secondary school', 3, '', '', 2, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 08:30:43', '0000-00-00 00:00:00'),
(484, 484, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 08:31:56', '0000-00-00 00:00:00'),
(485, 485, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 09:30:17', '0000-00-00 00:00:00'),
(486, 486, 'Syed_Muhammad_Hussna', '', 'Haider', 'Male', '2000-02-03', 0, 0, 'Taxila', 'House 4 Street 2 Dhoke Haider', 'Rawat Islamabad', '', 'Islamabad', '44000', 'Islamabad', 0, '3155135165', 'hazhayder@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '20', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Syed_Zaheer', '', 'Haider', '', '', 0, 0, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Ms.', 'Syeda_Farhat', '', 'Bashir', '', '', 167, 39, 'Graduated from high/secondary school (or equivalent)', 14, '', '', 7, 74, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 09:40:04', '0000-00-00 00:00:00'),
(487, 487, 'ashok ', '', 'nepali', 'Male', '2000-12-17', 156, 156, 'baitadi', ' baskot', '', '', 'baitadi', '10200', 'sudurpashchim', 977, '9869656407', 'ashoknepali2057@gmail.com', '', '', '', '', '0', '18', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'dhani', 'r', 'damai', 'damai', '', 0, 0, 'None', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-13 10:23:17', '0000-00-00 00:00:00'),
(488, 488, 'Dinesh', '', 'Chaudhary', 'Male', '1999-09-19', 156, 156, 'Ghorahi', ' Campus Road', '', '', 'Ghorahi', '22400', 'Province-5', 0, '9806239835', 'dynceechy4@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Bintiram', '', 'Chaudhary', '', '', 0, 0, 'Some grade/primary school', 'Mother', 'Yes', '', 'Ramkumari', '', ' Chaudhary', '', '', 0, 0, 'Some grade/primary school', 1, '', '', 5, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 10:30:07', '0000-00-00 00:00:00'),
(489, 489, 'Shahwaz', '', 'Khan', 'Male', '2000-04-05', 167, 167, 'Karachi', ' House NO 568 Street NO 11', 'Block D Shershah', '', 'Karachi', '75730', 'Sindh', 0, '3122837575', 'Cool.shahwaz@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '19', 'Other (Non-US)', 'Widowed', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'Munazza', '', 'Bibi', '', '', 167, 44, 'Graduated from high/secondary school (or equivalent)', 'Father', 'No', 'Mr.', 'Tasleem ', '', ' Khan', '', '', 167, 7, 'Graduated from high/secondary school (or equivalent)', 18, '', '', 11, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 10:32:29', '0000-00-00 00:00:00'),
(490, 490, 'Naveed', 'E', 'Rasool', 'Male', '2002-12-25', 167, 167, 'Larkana', ' Quaid E Azam Colony Gulshan E Iqbal Block 4A', '', '', 'Karachi', '75300', 'Sindh', 0, '3420349330', 'aadilaiey1@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Qadeer', '', 'Bhutto', '', 'Sr.', 0, 0, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Mrs.', 'Seema ', '', ' Bhutto', '', '', 167, 21, 'some high/secondary school', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 10:41:53', '0000-00-00 00:00:00'),
(491, 491, 'Asmita', '', 'Mainali', 'Female', '1999-09-28', 156, 156, 'Porkhara', ' Suryabinayak01 Bhaktapur Kathmandu', '', '', 'Kathmandu', '44600', 'Bagbati', 0, '9803183487', 'mainaliasmita46@gmail.com', '', '', '', '', '0', '20', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Deepak ', 'K', 'Mainali', '', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Ms.', 'Susma', '', 'Acharya', '', '', 156, 39, 'Graduated from college/University', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-13 10:42:22', '0000-00-00 00:00:00'),
(492, 492, 'Abdullah', '', 'Bhiriya', 'Male', '2001-12-04', 167, 167, 'Karachi', ' Pechs ', '', '', 'Karachi', '75400', 'Sindh', 92, '9234383188', 'abdullahbhiriya@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 10:48:14', '0000-00-00 00:00:00'),
(493, 493, 'Tayyab', '', 'ALI', 'Male', '2000-04-27', 167, 167, 'Gujranwala', ' Sialkot Road', 'Jagna', '', 'Gujranwala', '52250', 'Punjab', 0, '+923360491', 'kardartayyab@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Muhammad', '', 'Asghar', '', '', 167, 8, 'Some grade/primary school', 'Mother', 'Yes', 'Mrs.', 'Sajjda', '', ' Asghar', '', '', 167, 44, 'None', 44, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-19 13:34:13', '0000-00-00 00:00:00'),
(494, 494, 'Gourab ', '', 'paul', 'Male', '2002-08-26', 19, 19, 'brahmanbaria', 'mohammadpur', '', '', 'dhaka', '1207', 'dhaka', 880, '+880197781', 'gourabpaulsparsha2001@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Subrata', '', 'paul', '', '', 19, 7, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Soma', '', 'paul', '', '', 19, 21, 'some high/secondary school', 18, '', '', 12, 138, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 11:31:45', '0000-00-00 00:00:00'),
(495, 495, 'Aaradhyaa', '', 'Gyawali', 'Female', '2003-02-13', 156, 156, 'Gulmi', ' Samakhushi', '', '', 'Kathmandu', '01', '3', 977, '9863393993', 'aaradhyaa.2002@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Bharat', '', 'Gyawali', 'Gyawali', '', 156, 44, 'some college/University', 'Mother', 'Yes', 'Mrs.', 'Laxmi', '', ' Gyawali', 'Gyawali', '', 156, 44, 'some college/University', 14, '', '', 7, 74, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 12:11:11', '0000-00-00 00:00:00'),
(496, 496, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 12:39:46', '0000-00-00 00:00:00'),
(497, 497, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 12:48:38', '0000-00-00 00:00:00'),
(498, 498, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 13:06:33', '0000-00-00 00:00:00'),
(499, 499, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 13:09:30', '0000-00-00 00:00:00'),
(500, 500, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 13:10:55', '0000-00-00 00:00:00'),
(501, 501, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 13:31:36', '0000-00-00 00:00:00'),
(502, 502, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 13:58:06', '0000-00-00 00:00:00'),
(503, 503, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 14:02:02', '0000-00-00 00:00:00'),
(504, 504, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 15:18:19', '0000-00-00 00:00:00'),
(505, 505, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 15:20:46', '0000-00-00 00:00:00'),
(506, 506, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 15:21:52', '0000-00-00 00:00:00'),
(507, 507, 'SyedMustafa', 'R', 'Ali', 'Male', '1995-08-26', 0, 0, 'Karachi', ' House no 514', 'Shah faisal colony ', 'Block 4', 'Karachi', '75230', 'Sindh', 92, '9231522341', 'syedmustafaali0315@gmail.com ', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'At Home', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'SyedQasim', 'A', 'Syed', 'Syed', '', 0, 0, 'Some grade/primary school', 'Mother', 'Yes', '', 'Sarwat', 'J', ' Sarwat', 'Jhan', '', 0, 0, 'Some grade/primary school', 18, '', '', 4, 23, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 16:02:44', '0000-00-00 00:00:00'),
(508, 508, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 15:44:43', '0000-00-00 00:00:00'),
(509, 509, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 16:11:46', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `userId`, `firstName`, `middleInitial`, `lastName`, `gender`, `dateOfBirth`, `countryOfResidence`, `countryOfBirth`, `cityOfBirth`, `streetAddress1`, `streetAddress2`, `streetAddress3`, `city`, `postalCode`, `regionOrProvince`, `countryCode`, `mobileNumber`, `emailAddress`, `plannedHighestEduLvl`, `collegeHousingPlan`, `financialAid`, `partTimeJob`, `noOfYrsInUS`, `noOfYrsOutOfUS`, `citizenshipStatus`, `parentsMaritalStatus`, `permenantHomeGuardian`, `Parent1type`, `parent1Living`, `Parent1prefix`, `Parent1FirstName`, `Parent1MiddleInitial`, `Parent1LastName`, `Parent1FormerLastName`, `Parent1Suffix`, `Parent1CountryOfBirth`, `Parent1Occupation`, `Parent1EducationLevel`, `Parent2type`, `Parent2Living`, `Parent2Prerix`, `Parent2FirstName`, `Parent2MiddleInitial`, `Parent2LastName`, `Parent2FormerLastName`, `Parent2Suffix`, `Parent2CountryOfBirth`, `Parent2Occupation`, `Parent2EducationLevel`, `careerIntrest`, `essayOption`, `essay`, `areasOfStudyId`, `majorId`, `transcript9th`, `transcript10th`, `transcript11th`, `transcript12th`, `lor1`, `lor2`, `lor3`, `addedTranscripts`, `ferpaunderstood`, `ferpaack`, `selectopt`, `ferpawaiver`, `signature`, `ferpaDate`, `isApply`, `personel_form`, `contact_form`, `parent_1`, `parent_2`, `college_plans_form`, `majorSelect_form`, `highSchool_form`, `status`, `isMandatory`, `created_at`, `updated_at`) VALUES
(510, 510, 'Shehroze', 'K', 'Jilani', 'Male', '2001-01-23', 0, 0, 'Karachi', ' 489 4 Camp No 2 PAF Airmen Academy Korangi Creek Karachi', '', '', 'Karachi', '75190', 'SINDH', 0, '3082650356', 'shehrozemallik@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Ghulam', '', 'Jilani', '', '', 167, 0, '', 'Mother', 'Yes', 'Mrs.', 'Mussarat', '', 'Parveen', '', '', 167, 0, '', 6, '', '', 5, 40, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 16:38:49', '0000-00-00 00:00:00'),
(511, 511, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 16:33:33', '0000-00-00 00:00:00'),
(512, 512, 'Suryadeep', '', 'Ghoshdastidar', 'Male', '2002-04-04', 102, 102, 'Thane', 'I 2 503 Happy Home Complex ', 'Shanti Park', 'Mira Road East', 'Thane', '401107', 'Maharashtra', 91, '8657426162', 'suryadeep04@hotmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Rajesh ', '', 'Ghoshdastidar', '', '', 102, 44, 'Graduated from college/University', 'Mother', 'Yes', '', 'Sujata ', '', 'Ghoshdastidar ', 'Das', '', 102, 39, 'Graduated from high/secondary school (or equivalent)', 44, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-28 14:03:09', '0000-00-00 00:00:00'),
(513, 513, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 17:06:20', '0000-00-00 00:00:00'),
(514, 514, 'Shayan', 'S', 'Haider', 'Male', '1999-02-12', 0, 0, 'Karachi', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Other', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 17:24:17', '0000-00-00 00:00:00'),
(515, 515, 'AbdulQayoom', 'A', 'Jamali', 'Male', '2002-06-17', 0, 0, 'Hyder abad', ' Village Dhingano Jamali talka New Saeed abad district Matiari ', 'Village Dhingano Jamali talka new Saeed abad district matiari ', 'VillaGe Dhingano Jamali talka new Saeed abad district matiari ', 'Hyder abad', '70101', 'Sindh', 92, '0305389778', 'aqayoomjamali66@gmail.com ', 'Bachelors degree (such as BA or BS)', 'At Home', 'No', '', '0', '17', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'AbdulKhalique', 'A', 'Jamali', 'Jamali', 'V', 0, 0, 'some high/secondary school', 'Mother', 'Yes', 'Ms.', 'Shamshad', 'S', ' Jamali', 'Jamali', 'II', 167, 44, 'None', 18, '', '', 13, 151, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 17:57:05', '0000-00-00 00:00:00'),
(516, 516, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 18:44:31', '0000-00-00 00:00:00'),
(517, 517, 'Abdul_Sattar', 'S', 'Sanny', 'Male', '2002-10-19', 0, 0, 'Dhaka', ' Abdul Hadi Lane Bangshal', '', '', 'Dhaka', '1000', 'Dhaka', 880, '0177647837', 'sattar.sunny55@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 19:30:30', '0000-00-00 00:00:00'),
(518, 518, 'Haleema', '', 'Sadia', 'Female', '2001-08-09', 167, 167, 'Lahore', ' 14 jinnah block multan road lahore', '', '', 'Lahore', '54780', 'Punjab', 0, '0322425336', 'haleemahussain837@gmail.com', 'Specialized training or certificate program', 'I dont know', 'Yes', '', '0', '0', 'U.S. Citizen or U.S. National', 'Married', 'Both Parents', 'Father', 'Yes', '', 'Bussiness', '', 'Gondal', '', '', 0, 0, '', 'Mother', 'Yes', '', 'Housewife', '', ' Gondal', '', '', 0, 0, '', 1, '', '', 5, 37, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 20:00:47', '0000-00-00 00:00:00'),
(519, 519, 'Azeema', 'A', 'Golani', 'Female', '1996-09-15', 0, 0, 'Karachi', 'sopariwala street', 'Al zahra Garden', '', 'Karachi', '776540', 'Sindh', 0, '0332236537', 'azeemagolani23@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'At Home', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Aziz', 'A', 'Golani', 'NA', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Sultana', 'S', ' Golani', 'NA', '', 167, 39, 'Graduated from high/secondary school (or equivalent)', 29, '', '', 16, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 20:20:16', '0000-00-00 00:00:00'),
(520, 520, 'Javed ', 'H', 'hussain', 'Male', '2001-01-08', 167, 167, 'Sita road', 'sita road dadu', 'sita road dadu', 'sita road dadu', 'Sita Road', '76200', 'islam', 0, '0309310054', 'javedbhaijavedprince905@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Separated', 'Both Parents', 'Father', 'Yes', 'Mr.', 'javed', 'h', 'abbasi', 'abbasi', 'II', 167, 44, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'javed', 'H', ' Hussain', 'abbasi', 'II', 167, 14, 'Graduated from college/University', 14, '', '', 4, 19, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-13 20:37:19', '0000-00-00 00:00:00'),
(521, 521, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 01:58:07', '0000-00-00 00:00:00'),
(522, 522, 'Sandip', '', 'Saha', 'Male', '1995-05-20', 19, 19, 'Satkhira', ' Sultanpur', 'Sahapara', '', 'Satkhira', '9400', 'Hindu', 880, '1989806392', 'sandipsaha93@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '>20 Years', 'U.S. Citizen or U.S. National', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Madan', '', 'Saha', 'Saha', '', 19, 19, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Ms.', 'Kolpana', '', ' Saha', 'saha', '', 19, 44, 'Some grade/primary school', 18, '', '', 11, 114, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 02:30:22', '0000-00-00 00:00:00'),
(523, 523, 'Reyanus', '', 'Salehin', 'Male', '2001-11-24', 0, 0, 'Gaibandha', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '17', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 02:28:42', '0000-00-00 00:00:00'),
(524, 524, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 04:57:39', '0000-00-00 00:00:00'),
(525, 525, 'Muhammad', '', 'Shahrukh', 'Male', '1994-06-17', 167, 167, 'Karachi ', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 05:46:16', '0000-00-00 00:00:00'),
(526, 526, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 05:52:21', '0000-00-00 00:00:00'),
(527, 527, 'Muhammad', '', 'Yousaf', 'Male', '1999-11-15', 0, 0, 'Faisalabad', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '18', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 06:00:31', '0000-00-00 00:00:00'),
(528, 528, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 06:25:54', '0000-00-00 00:00:00'),
(529, 529, 'Jahanzaib', '', 'Hussain', 'Male', '2002-02-06', 167, 167, 'Lahore', 'Plot 431', 'Block 4', 'Sector A2 township', 'Lahore', '5400', 'Punjab', 0, '0309474172', 'hussainjahanzaib2@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'Off-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'zahid', '', 'Abbas', '', '', 167, 44, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'khalida', '', 'Zahid', '', '', 167, 21, 'completed grade/primary school', 7, '', '', 5, 40, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 06:56:48', '0000-00-00 00:00:00'),
(530, 530, 'Sadiq', '', 'Abbas', 'Male', '2001-11-27', 167, 167, 'Karachi', ' A6 Furva Homes PECHS Block 3', '', '', 'Karachi', '00000', 'Sindh', 92, '3343289399', 'sadiq78611092@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Anis', '', 'Abbas', '', '', 167, 7, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Anisa', '', ' Anis', '', '', 167, 21, 'Graduated from college/University', 6, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 10:04:28', '0000-00-00 00:00:00'),
(531, 531, 'Hasan', 'M', 'Ali', 'Male', '1999-05-13', 0, 0, 'Karachi', ' Flat No C7', 'Uk Appartment phase 1', 'Gulshan e Iqbal block 14', 'Karachi', '74800', 'Sindh', 0, '0311222914', 'hasanmotiwala9@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Muhammad', 'A', 'Motiwala', 'Motiwala', '', 0, 0, 'some high/secondary school', 'Mother', 'No', '', 'Hadia', 'M', ' Motiwala', 'Naviwala', '', 0, 0, 'some high/secondary school', 16, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 10:49:47', '0000-00-00 00:00:00'),
(532, 532, 'Allanur ', '', 'Ansari ', 'Male', '1996-10-07', 156, 156, 'Birgunj ', ' Belahiya 6', '', '', 'Bara', '44600', '2', 977, '9845853703', 'ansariallanur123@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Hasmuddin', '', 'Ansari ', '', 'Sr.', 156, 44, 'Some grade/primary school', 'Mother', 'Yes', 'Ms.', 'Najbun ', '', ' Nesa', '', '', 156, 44, 'None', 44, '', '', 28, 266, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 10:47:11', '0000-00-00 00:00:00'),
(533, 533, 'Suresh', '', 'Tamang', 'Male', '2002-11-26', 156, 156, 'Kathmandu', ' Jorpati', '', '', 'Kathmandu', '44600', '3', 977, '9813536275', 'sureshhh7887@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Maila', '', 'Tamang', '', '', 156, 7, 'Some grade/primary school', 'Mother', 'Yes', 'Mrs.', 'Anita', '', ' Tamang', '', '', 156, 0, '', 7, '', '', 5, 37, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 11:02:53', '0000-00-00 00:00:00'),
(534, 534, 'Sazia', '', 'Ahmed', 'Female', '1995-09-30', 19, 19, 'Dhaka', ' Dhaka dhanmondi ', 'Dhanmondi Dhaka ', '', 'Dhaka', '1209', 'Dhaka', 880, '0191445998', 'Shazia_usha@hotmail.com', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Never Married', 'Other', 'I have limited Information about this Parent', 'No', 'Dr.', 'Setara', '', 'Faruque', 'Ahmed', 'Jr.', 19, 7, 'None', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-16 01:20:52', '0000-00-00 00:00:00'),
(535, 535, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 12:12:23', '0000-00-00 00:00:00'),
(536, 536, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 12:31:08', '0000-00-00 00:00:00'),
(537, 537, 'Ali', '', 'Zain-Ul-Abideen', 'Male', '2002-03-18', 0, 0, 'Bhalwal', 'RATTOKALA ', 'Tehsil Bhalwal ', 'District Sargodha ', 'Bhalwal', '40570', 'Punjab', 92, '3056053951', 'ali1240.azp@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Fayaz', '', 'Ahmad', '', '', 167, 19, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Sabiha', '', ' Fayaz', '', '', 167, 21, 'Some grade/primary school', 14, '', '', 7, 77, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 12:51:33', '0000-00-00 00:00:00'),
(538, 538, 'Iqra', 'i', 'Fatima', 'Female', '1990-08-30', 0, 0, 'Lahore', ' House 200 Block 4 Street 3 Karim Park Ravi Road Lahore', 'House 200 Block 4 Street 3 Karim Park Ravi Road Lahore', 'House 200 Block 4 Street 3 Karim Park Ravi Road Lahore', 'Lahore', '54000', 'Punjab', 92, '0320042596', 'iqrafatimaeco@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '>20 Years', 'U.S. Permanent Resident', 'Widowed', 'Parent 1', 'Mother', 'Yes', 'Mrs.', 'Shabnam ', 'S', 'Firdous', 'Sheikh', 'Jr.', 167, 44, 'Graduate School', 'Father', 'No', 'Mr.', 'Shahzad', 'S', ' Mahmood', 'Sheikh', 'Sr.', 167, 44, 'Graduated from college/University', 39, '', '', 33, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-22 17:27:14', '0000-00-00 00:00:00'),
(539, 539, 'Meghal', '', 'jain', 'Female', '0000-00-00', 102, 102, 'Jodhpur', ' B 29 ', 'Dharam narayanji ka hatha', 'paota', 'jodhpur', '342001', 'rajasthan', 91, '8290752222', 'meghaljain2017@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'pooja', '', 'jain', 'dhariwal', '', 102, 6, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'prafful', '', ' jain', '', '', 102, 6, 'some high/secondary school', 7, '', '', 5, 44, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 14:13:51', '0000-00-00 00:00:00'),
(540, 540, 'SyedFaiz', '', 'Ahmed', 'Male', '1999-07-27', 0, 0, 'Karachi', ' R14 Sector Z2 Gulshan e maymar  Karachi Pakistan', '', '', 'Karachi', '75340', 'Sindh', 0, '3363970372', '24faizahmed@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'SyedFozail', '', 'Ahmed', '', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Momi', '', ' Ahmed', '', '', 167, 44, 'Some grade/primary school', 1, '', '', 5, 40, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 14:32:01', '0000-00-00 00:00:00'),
(541, 541, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 14:34:09', '0000-00-00 00:00:00'),
(542, 542, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 15:58:56', '0000-00-00 00:00:00'),
(543, 543, 'Amrit ', '', 'Shakya', 'Male', '2002-08-19', 156, 156, 'Butwal', ' Pharsatikar chowk', 'To the 400 msouth of chowk', 'Bajar side', 'Butwal', '32909', '5', 0, '9817438112', 'amritshakya0503@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Ambika', '', 'Shakya', '', '', 156, 8, 'some high/secondary school', 'Father', 'Yes', 'Mr.', 'Rajendra', '', ' Shakya', '', '', 156, 44, 'completed grade/primary school', 3, '', '', 12, 147, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 16:42:01', '0000-00-00 00:00:00'),
(544, 544, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 16:46:07', '0000-00-00 00:00:00'),
(545, 545, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 17:15:23', '0000-00-00 00:00:00'),
(546, 546, 'Wayna', '', 'Ali', 'Female', '2004-05-10', 167, 167, 'Muzaffarabad', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 17:22:13', '0000-00-00 00:00:00'),
(547, 547, 'Yamna', '', 'Tariq', 'Female', '1998-02-26', 167, 167, 'Karachi', ' E 16 sultan hydes gulshan e iqbal block 11 karachi', 'E 16 sultan hydes gulshan e iqbal block 11 karachi', 'E 16 sultan hydes gulshan e iqbal block 11', 'Karachi', '75300', 'Sindh', 92, '0300707185', 'Yamna97@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Tariq', '', 'Ahmed', 'Ahmed', 'Sr.', 167, 44, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Shaista', '', ' Tariq', 'Ishrat', 'Sr.', 167, 44, 'completed grade/primary school', 36, '', '', 4, 23, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-14 19:30:51', '0000-00-00 00:00:00'),
(548, 548, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 20:11:55', '0000-00-00 00:00:00'),
(549, 549, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 20:21:07', '0000-00-00 00:00:00'),
(550, 550, 'Ahmed', 'H', 'Khan', 'Male', '1992-12-02', 0, 0, 'Multan', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-14 21:24:38', '0000-00-00 00:00:00'),
(551, 551, 'Neil', 'S', 'George', 'Male', '2002-08-11', 102, 102, 'Trivandrum', ' Mizpah  KRA 120A', 'Mudavancode   Kavadithalakkal', 'Karakulam PO', 'Trivandrum', '695564', 'Kerala', 91, '9633660351', 'neilsajeevgeorge@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sajeev', 'G', 'S', '', '', 102, 40, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Roshan', '', ' R', '', '', 102, 13, 'Graduated from college/University', 18, '', '', 11, 109, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 00:13:36', '0000-00-00 00:00:00'),
(552, 552, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 01:09:32', '0000-00-00 00:00:00'),
(553, 553, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 01:49:34', '0000-00-00 00:00:00'),
(554, 554, 'muhammad', 'h', 'akbar', 'Male', '2000-01-01', 167, 167, 'nakyal azad kashmir', 'gala hotel nakyal azad kashmir', 'kkf3kf', 'rise school of accountancy garden town', 'lahore', '54840', 'punjab', 0, '0348451806', 'sardarjalil102@gmail.com', 'Other', 'At Home', 'No', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'muhammad', 'A', 'khan', 'khan', 'Jr.', 167, 26, 'Graduated from college/University', 'Mother', 'Yes', 'Ms.', 'zaheen ', 'a', ' akhtar', 'akhtar', 'Jr.', 167, 44, 'completed grade/primary school', 1, '', '', 7, 67, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 08:27:51', '0000-00-00 00:00:00'),
(555, 555, 'Abha', 'S', 'Pariyar', 'Female', '2000-04-23', 156, 156, 'Nepalgunj', 'kamalpokhari kathmandu ', '', '', 'kathmandu', '44600', '3', 977, '9866874095', 'abhasinghp1281@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 2', 'Father', 'Yes', 'Mr.', 'Suresh', 'S', 'Pariyar', '', '', 156, 7, 'completed grade/primary school', 'Mother', 'Yes', 'Mrs.', 'Sushila', 'S', ' Pariyar', '', '', 156, 21, 'Graduated from high/secondary school (or equivalent)', 6, '', '', 5, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 03:28:58', '0000-00-00 00:00:00'),
(556, 556, 'Adeel', '', 'Shehzad', 'Male', '1997-12-26', 167, 167, 'CTN', ' Street no 1', 'Street no 4', '', 'Chishtian', '63000', 'Punjab', 92, '3022993928', 'adeelshehzad5@gmail.com', '', '', '', '', '0', '>20 Years', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 05:00:11', '0000-00-00 00:00:00'),
(557, 557, 'Tryphine', 'C', 'Dzimbanete', 'Female', '1994-02-21', 0, 0, 'Harare', ' 1', '2', '3', 'Harare', '00263', 'Harare', 0, '+263776266', 'tryphineclarad@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Mother', 'Yes', 'Ms.', 'ITAI', '', 'Dzimbanete', '', '', 246, 44, 'Graduated from college/University', 'I have limited Information about this Parent', 'I have limited Information about this Parent', '', 'None', '', ' None', '', '', 0, 0, '', 38, '', '', 19, 221, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 05:10:43', '0000-00-00 00:00:00'),
(558, 558, 'Sudeshna', '', 'Nepal', 'Female', '1990-02-27', 156, 156, 'Kathmandu', ' 109 Nyalma Marga Handigaun Kathmandu Bagmati BA 44600 Nepal', '', '', 'Kathmandu', '44600', '3', 0, '9801097233', 'usersudeshna101@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 05:03:11', '0000-00-00 00:00:00'),
(559, 559, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 05:01:12', '0000-00-00 00:00:00'),
(560, 560, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 05:32:14', '0000-00-00 00:00:00'),
(561, 561, 'Falak', '', 'Zehra', 'Female', '2001-10-28', 167, 167, 'Quetta', 'Faisal apartment near EOBI house', 'Flat 01', 'PECHS block 2', 'Karachi', '75400', 'Sindh', 0, '0321307797', 'fzehra116@gmail.com', '', '', '', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-24 09:51:24', '0000-00-00 00:00:00'),
(562, 562, 'Supriya', '', 'Aryal', 'Female', '2001-04-12', 156, 156, 'Sindhupalchok', ' Koteshwor', '', '', 'Kathmandu', '44600', 'Province3', 0, '9823342200', 'supriyaaryal100@gmail.com', 'Undecided', 'Off-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Chok', 'B', 'Aryal', '', '', 0, 0, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Parbati', '', ' Aryal', 'Pandit', '', 156, 44, 'Graduated from high/secondary school (or equivalent)', 18, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2019-11-15 06:45:17', '0000-00-00 00:00:00'),
(563, 563, 'Uswa', '', 'Hafeez', 'Female', '2002-01-04', 167, 167, 'Hyderabad', ' House no 2 Cotton Research Colony Near workshop stop', '', '', 'TANDOJAM', '70060', 'Sindh', 92, '0307267120', 'uswahafeez412@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Hafeezullah ', '', 'Babar', 'Babar', '', 167, 36, 'Graduated from college/University', 'Mother', 'Yes', '', 'Umrah', '', ' Babar', 'Babar', '', 0, 0, 'None', 36, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-27 14:53:36', '0000-00-00 00:00:00'),
(564, 564, 'Sameer', '', 'Ahmed', 'Male', '2001-12-21', 167, 167, 'Karachi', ' 26 N Block 2', 'PECHS', '', 'Karachi', '74000', 'Sindh', 0, '3041323545', 'seeninunseen@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Faraz', '', 'Ahmed', '', '', 167, 7, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Samia', '', ' Faraz', '', '', 167, 44, 'some high/secondary school', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 06:48:19', '0000-00-00 00:00:00'),
(565, 565, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 06:39:37', '0000-00-00 00:00:00'),
(566, 566, 'Arooj', '', 'Nasim', 'Female', '1999-08-19', 167, 167, 'Rawalpindi ', ' House no eighteen street one executive lodges phase three Bahria town Rawalpindi', '', '', 'Rawalpindi', '466000', 'Punjab', 0, '0315059057', 'aroojnasim1999@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '5', '15', 'U.S. Refugee or Asylee', 'Never Married', 'Parent 1', 'Mother', 'Yes', 'Ms.', 'Imtiaz ', '', 'Nasim', '', 'Jr.', 167, 7, 'Graduate School', 'Father', 'No', 'Mr.', 'Nasim', '', ' Khan', '', '', 167, 44, 'Graduated from college/University', 6, '', '', 38, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 08:05:05', '0000-00-00 00:00:00'),
(567, 567, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 07:48:16', '0000-00-00 00:00:00'),
(568, 568, 'Jaodun', '', 'Muntasir', 'Male', '2002-09-19', 0, 0, 'Dhaka', ' MIRPUR 14 DHAKA', 'Chayaneer Eastern', '', 'DHAKA', '1206', 'DHAKA', 0, '0155775939', 'mjmm340@gmai.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Mosleha', '', 'Begum', '', '', 19, 21, 'Graduated from high/secondary school (or equivalent)', 'Father', 'Yes', 'Mr.', 'Mamoonur', '', ' Rashid', '', '', 19, 44, 'Graduated from college/University', 6, '', '', 5, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 08:15:10', '0000-00-00 00:00:00'),
(569, 569, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 08:17:51', '0000-00-00 00:00:00'),
(570, 570, 'Hamza', 'A', 'Janjua', 'Male', '2000-04-10', 0, 0, 'Islamabad', ' House no A1 HFF Housing Colony HMC Taxila', '', '', 'Taxila', '47080', 'Punjab', 92, '9230750176', 'hamzaajaz48@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '19', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Dr.', 'Ajaz', 'B', 'Janjua', '', '', 167, 18, 'Graduate School', 'Mother', 'Yes', 'Mrs.', 'Saima', 'A', ' Janjua', 'Baig', '', 167, 4, 'Graduated from high/secondary school (or equivalent)', 3, '', '', 2, 11, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 08:37:01', '0000-00-00 00:00:00'),
(571, 571, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 08:46:47', '0000-00-00 00:00:00'),
(572, 572, 'Abdullah', '', 'Ahmed', 'Male', '2000-06-28', 167, 167, 'Sialkot', ' Chowk adda pasruria gali sunehri masjid wali', 'Mohalla dharowal house 33 320', '', 'Sialkot', '51300', 'Punjab', 0, '3354219250', 'Abdu.hampks@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Ahmed', '', 'Nawaz', '', '', 167, 44, 'completed grade/primary school', 'Mother', 'Yes', '', 'Abida', '', ' Ahmed', '', '', 167, 44, 'Some grade/primary school', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 09:04:54', '0000-00-00 00:00:00'),
(573, 573, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 09:32:03', '0000-00-00 00:00:00'),
(574, 574, 'Syed-Khizar', '', 'Rayaz', 'Male', '2000-02-07', 167, 167, 'Karachi ', ' D10 Anarkali Plaza', '', '', 'Karachi', '75850', 'Sindh', 0, '0311228270', 'khizar.rayaz98@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Syed-Rayaz', '', 'Uddin', '', 'Sr.', 167, 12, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', '', 'Irfana', '', ' Rayaz', '', '', 0, 0, 'Graduated from high/secondary school (or equivalent)', 44, '', '', 7, 68, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 06:40:13', '0000-00-00 00:00:00'),
(575, 575, 'Muhammad_Ahmad', 'A', 'Mushtaq', 'Male', '1999-08-15', 167, 167, 'Lahore', ' House 08 Street  02 Kot Khawaja Saeed Lahore', 'House 08 Street 02 Kot Khawaja Saeed Lahore', 'House 08 Street  02 Kot Khawaja Saeed Lahore', 'Lahore', '54810', 'Punjab', 0, '0304451904', 'muhammadahmadmushtaq95@gmail.com', '', '', '', '', '0', '20', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-18 17:19:46', '0000-00-00 00:00:00'),
(576, 576, 'Chaitanya', '', 'V', 'Male', '2002-07-31', 102, 102, 'Bhilai', ' Qr 7 St 15 Sec 10', '', '', 'Bhilai', '490006', 'Chattisgarh', 0, '7987714947', 'vch3107@gmail.com', 'Undecided', 'On-Campus Housing', 'Yes', '', '>20 Years', '>20 Years', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Srilaxmi', '', 'Gubbala', 'Vasarla', '', 102, 21, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Shrinivas', '', ' Kumar', 'Vasarla', '', 102, 18, 'Graduated from college/University', 7, '', '', 5, 50, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 11:32:27', '0000-00-00 00:00:00'),
(577, 577, 'Fizza ', '', 'Malik ', 'Female', '2000-12-18', 167, 167, 'Attock', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 11:31:58', '0000-00-00 00:00:00'),
(578, 578, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 12:14:09', '0000-00-00 00:00:00'),
(579, 579, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 12:30:54', '0000-00-00 00:00:00'),
(580, 580, 'Bhumika ', '', 'Shrestha', 'Female', '2002-03-17', 156, 156, 'Arghakhanchi ', ' Sukkhanagar ', '', '', 'Butwal', '071', '05', 0, '9869672346', 'Sthbhumi.5@gmail.com', '', '', '', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 12:51:59', '0000-00-00 00:00:00'),
(581, 581, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 12:57:57', '0000-00-00 00:00:00'),
(582, 582, 'Bilal', '', 'Ihsan', 'Male', '1998-03-03', 167, 167, 'Mingora', ' Javed cloth house new road new sharif market', '', '', 'Mingora', '19130', 'Kpk', 0, '3427928331', 'Ihsan789@yahoo.com', 'Two-year associate of arts or sciences degree (such as AA, AAS, or AS)', 'On-Campus Housing', 'Yes', '', '2', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Ihsan', '', 'UdDin', 'Ihsan', 'Sr.', 0, 0, 'Some grade/primary school', 'Mother', 'Yes', 'Ms.', 'Yasmeen', '', ' Bibi', '', 'Jr.', 167, 21, 'Some grade/primary school', 38, '', '', 31, 293, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 13:23:31', '0000-00-00 00:00:00'),
(583, 583, 'Angel', '', 'gurung', 'Female', '2001-10-01', 156, 156, 'kathmandu', 'samakhusi 26', '', '', 'kathmandu', '44600', 'bagmati', 977, '9813835269', 'anzelgrg001@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', '', 'Shanti', '', 'Gurung', '', '', 156, 7, 'Graduated from college/University', 'Father', 'Yes', '', 'sujit', '', 'gurung', '', '', 156, 7, 'Graduated from high/secondary school (or equivalent)', 3, '', '', 2, 10, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 13:53:05', '0000-00-00 00:00:00'),
(584, 584, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 14:01:21', '0000-00-00 00:00:00'),
(585, 585, 'QURAT ', 'U', 'LAIN', 'Female', '2000-03-07', 0, 0, 'Lahore', ' St 20 H 185', '', '', 'Lahore', '54000', 'Punjab', 0, '0307421606', 'quarat.ul.ain.abidhussain@gmail.com', '', '', '', '', '0', '19', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Ms.', 'QURAT-UL-AIN', '', 'Abid', '', '', 0, 0, 'some high/secondary school', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-15 14:16:45', '0000-00-00 00:00:00'),
(586, 586, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 14:36:20', '0000-00-00 00:00:00'),
(587, 587, 'Mihir ', '', 'Motwani ', 'Male', '2003-05-11', 167, 167, 'Karachi', ' A30 5th Floor Naeem Uddin Centre', 'Nishter Road', 'Garden East', 'Karachi', '74500', 'Sindh', 0, '3102804376', 'Mihirjagdesh@hotmail.com', 'Masters degree (such as MA, MBA, or MS)', 'Off-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Jagdesh ', '', 'Motwani', '', '', 167, 7, 'Graduated from college/University', 'Mother', 'Yes', '', 'Pushpa', '', ' Jagdesh ', '', '', 0, 0, 'Graduate School', 18, '', '', 11, 113, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-15 15:56:50', '0000-00-00 00:00:00'),
(588, 588, 'Adish', '', 'Sajeev', 'Male', '2002-06-09', 102, 102, 'faridabad', ' 47B IIfloor', 'Indraprasth colony Sector 30 33', 'Faridabad', 'Faridabad', '121003', 'Haryana', 91, '0981024828', 'sajpvs@yahoo.com', '', '', '', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sajeev', '', 'Vishwanath-', '', '', 102, 37, 'Graduated from college/University', 'Mother', 'Yes', '', 'G-V', '', ' Siji', '', '', 102, 21, 'Graduated from college/University', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-15 15:19:26', '0000-00-00 00:00:00'),
(589, 589, 'Tayyaba', '', 'Mukhtar', 'Female', '1999-12-31', 167, 167, 'Islamabad', ' Street 38 sector G 7 2 House 2 4 C ', '', '', 'Islamabad', '44000', 'Islamabad', 92, '+923340552', 'mukhtartayyaba99@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-15 15:40:17', '0000-00-00 00:00:00'),
(590, 590, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 00:50:07', '0000-00-00 00:00:00'),
(591, 591, 'Anil', '', 'Pariyar', 'Male', '1998-02-20', 156, 156, 'Kathmandu', ' Kageshwori manahara ', '', '', 'Kathmandu', '44620', '3', 977, '9861442363', 'developeriam001@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'Off-Campus Housing', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Sanukanchha', '', 'Pariyar', '', '', 156, 7, 'completed grade/primary school', 'Mother', 'Yes', 'Mrs.', 'Sannani', '', ' Pariyar', '', '', 156, 7, 'Some grade/primary school', 14, '', '', 12, 138, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 02:02:10', '0000-00-00 00:00:00'),
(592, 592, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 01:59:35', '0000-00-00 00:00:00'),
(593, 593, 'Muhammad', 'B', 'Bajwa', 'Male', '2001-08-20', 0, 0, 'Lahore', ' H 38 rehman block rizwan garden lhr cantt', '', '', 'Lahore', '54000', 'Punjab', 0, '3161475636', 'muhammadbilal10341046@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'At Home', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Muhammad ', '', 'Qasim', 'Bajwa', '', 0, 0, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Ms.', 'Fozia', '', ' Parveen', '', '', 167, 44, 'Graduated from high/secondary school (or equivalent)', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 02:29:25', '0000-00-00 00:00:00'),
(594, 594, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 02:22:35', '0000-00-00 00:00:00'),
(595, 595, 'Shaily', '', 'Chetani', 'Female', '2001-09-21', 156, 156, 'Kathmandu', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 03:15:50', '0000-00-00 00:00:00'),
(596, 596, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 04:18:45', '0000-00-00 00:00:00'),
(597, 597, 'Laiba', 'R', 'Arain', 'Female', '2000-01-19', 0, 0, 'Mirpurkhas', ' Village chaudhry gulam muhammad mirwah gorchani ', '', '', 'Mirpurkhas', '69370', 'Sindh', 92, '0308330514', 'Waqas9112.wa.wa@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Raiz', 'A', 'Arain', '', '', 167, 19, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Riaz', 'A', ' Arain', '', '', 167, 21, 'Some grade/primary school', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-16 04:58:27', '0000-00-00 00:00:00'),
(598, 598, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 08:21:25', '0000-00-00 00:00:00'),
(599, 599, 'Saboor', 'A', 'Khawaja', 'Male', '2001-03-01', 0, 0, 'Skardu', ' House CIV4', '', '', 'Skardu', '16100', 'Gilgit_Baltistan', 0, '0345089170', 'saboorahmed39@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Ms.', 'Gulshan', '', 'Nisa', 'Nisa', '', 167, 25, 'Graduated from high/secondary school (or equivalent)', 'Father', 'Yes', 'Mr.', 'Mukhtar', '', ' Khawaja', '', '', 167, 44, 'some high/secondary school', 43, '', '', 6, 60, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 09:44:02', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `userId`, `firstName`, `middleInitial`, `lastName`, `gender`, `dateOfBirth`, `countryOfResidence`, `countryOfBirth`, `cityOfBirth`, `streetAddress1`, `streetAddress2`, `streetAddress3`, `city`, `postalCode`, `regionOrProvince`, `countryCode`, `mobileNumber`, `emailAddress`, `plannedHighestEduLvl`, `collegeHousingPlan`, `financialAid`, `partTimeJob`, `noOfYrsInUS`, `noOfYrsOutOfUS`, `citizenshipStatus`, `parentsMaritalStatus`, `permenantHomeGuardian`, `Parent1type`, `parent1Living`, `Parent1prefix`, `Parent1FirstName`, `Parent1MiddleInitial`, `Parent1LastName`, `Parent1FormerLastName`, `Parent1Suffix`, `Parent1CountryOfBirth`, `Parent1Occupation`, `Parent1EducationLevel`, `Parent2type`, `Parent2Living`, `Parent2Prerix`, `Parent2FirstName`, `Parent2MiddleInitial`, `Parent2LastName`, `Parent2FormerLastName`, `Parent2Suffix`, `Parent2CountryOfBirth`, `Parent2Occupation`, `Parent2EducationLevel`, `careerIntrest`, `essayOption`, `essay`, `areasOfStudyId`, `majorId`, `transcript9th`, `transcript10th`, `transcript11th`, `transcript12th`, `lor1`, `lor2`, `lor3`, `addedTranscripts`, `ferpaunderstood`, `ferpaack`, `selectopt`, `ferpawaiver`, `signature`, `ferpaDate`, `isApply`, `personel_form`, `contact_form`, `parent_1`, `parent_2`, `college_plans_form`, `majorSelect_form`, `highSchool_form`, `status`, `isMandatory`, `created_at`, `updated_at`) VALUES
(600, 600, 'Ram ', 'P', 'Dumre ', 'Male', '1999-06-23', 156, 156, 'Nawalparasi ', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '20', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 10:44:57', '0000-00-00 00:00:00'),
(601, 601, 'Aasma', '', 'yaseem', 'Female', '1997-07-20', 167, 167, 'Sargodha', ' Shadab colony street no 2', '', '', 'Sargodha', '0420', 'punjab', 92, '0316776859', 'asimayaseen30@gmail.com', '', '', '', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Muhammad', '', 'Yaseen', '', '', 0, 0, 'Some grade/primary school', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-16 11:20:41', '0000-00-00 00:00:00'),
(602, 602, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 11:03:05', '0000-00-00 00:00:00'),
(603, 603, 'Mahadullah', '', 'Shaikh', 'Male', '2000-05-28', 167, 167, 'Karachi', ' House 5 Street 1 Block I Soan Gardens CECHS', '', '', 'Islamabad', '45710', 'ICT', 92, '3305384183', 'smahadullah7@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '19', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Zahooruddin', '', 'Shaikh', '', '', 167, 13, 'Graduated from college/University', 'Mother', 'Yes', '', 'Aliya', '', ' Shaikh', '', '', 167, 39, 'Graduated from college/University', 2, '', '', 5, 36, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 11:46:46', '0000-00-00 00:00:00'),
(604, 604, 'Hemakshi', '', 'Bansal', 'Female', '0000-00-00', 102, 102, 'Dehradun', ' Q44', 'Raaj Aangan', 'Pratap Nagar', 'Jaipur', '302033', 'Rajasthan', 91, '9672499916', 'hemakshibansal9@gmail.com', 'Undecided', 'On-Campus Housing', 'Yes', '', '0', '15', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Dr.', 'Savita', '', 'Bansal', 'Agarwal', '', 102, 44, 'Graduated from college/University', 'Father', 'Yes', 'Dr.', 'Krishan', 'K', ' Bansal', 'Bansal', '', 102, 44, 'Graduated from college/University', 44, '', '', 19, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 12:30:52', '0000-00-00 00:00:00'),
(605, 605, 'Taha', '', 'Alam', 'Male', '2001-11-22', 0, 0, 'Karachi', 'Ramsha Avenue', 'Block 13', 'Gulistan e jauhar', 'Karachi', '75290', 'Sindh', 92, '3363035411', 'alamtaha88@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Muhammad', '', 'Mughal', '', '', 0, 0, 'None', 'Father', 'Yes', '', 'Muhammad', '', ' Alam', '', '', 0, 0, '', 6, '', '', 5, 40, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 15:30:27', '0000-00-00 00:00:00'),
(606, 606, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 12:00:03', '0000-00-00 00:00:00'),
(607, 607, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 12:05:04', '0000-00-00 00:00:00'),
(608, 608, 'GHULAM', '', 'MOHIUDDIN', 'Male', '2002-10-02', 7, 167, 'Palandri', ' Executive boys youth hostel near chandni chock Rawalpindi', 'chak shahzada wala tehsil shahpur district Sargodha', 'Sehr hafiz abad tehsil palandri district Sudhnoti', 'Rawalpindi', '46000', 'Punjab', 92, '3496899560', 'gmd2171@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'Off-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Anees', '', 'Fatima', '', 'Jr.', 167, 44, 'some college/University', 'Father', 'Yes', 'Mr.', 'Muhammad', '', ' Farooq', '', 'Sr.', 167, 27, 'some high/secondary school', 18, '', '', 12, 138, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 08:17:51', '0000-00-00 00:00:00'),
(609, 609, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 13:14:58', '0000-00-00 00:00:00'),
(610, 610, 'Azmain', 'I', 'Kausar', 'Male', '2001-06-12', 0, 0, 'Dhaka', 'HOUSE 2 AVENUE 2 BLOCK A SECTION 11 MIRPUR DHAKA', '', '', 'Dhaka', '1216', 'Mirpur', 0, '+880178580', 'azmainibnkausarn@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Hoor', 'E', 'Jannat', '', '', 0, 0, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Kausarur', '', ' Rahman', '', '', 19, 8, 'Some trade school or community college', 18, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-21 20:15:38', '0000-00-00 00:00:00'),
(611, 611, 'raiyan', 'r', 'Rahman', 'Male', '2000-10-03', 19, 19, 'Tangail', ' house 38 road 12 DIT project merul badda', '', '', 'Dhaka', '1212', 'Dhaka', 880, '0170917555', 'rrkhandaker@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '20', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'KM', '', 'Rahman', '', '', 0, 0, 'Graduated from college/University', 'Mother', 'Yes', '', 'Jahanara ', '', ' rahman', '', '', 19, 21, 'Graduated from high/secondary school (or equivalent)', 18, '', '', 7, 73, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 14:28:28', '0000-00-00 00:00:00'),
(612, 612, 'Mureed ', '', 'Jan', 'Male', '1996-06-09', 167, 167, 'Karachi', ' Baloch Building ', 'Karachi', '', 'Karachi', '74600', 'Balochistan', 92, '0312337341', 'Mureed_jan@hotmail.com ', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 14:31:59', '0000-00-00 00:00:00'),
(613, 613, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 14:23:46', '0000-00-00 00:00:00'),
(614, 614, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 14:35:34', '0000-00-00 00:00:00'),
(615, 615, 'Agrima', 'K', 'Rajvanshi', 'Female', '2004-02-03', 102, 102, 'Chandimandir', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '15', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 14:51:45', '0000-00-00 00:00:00'),
(616, 616, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 14:52:49', '0000-00-00 00:00:00'),
(617, 617, 'Syed', 'M', 'Sajjad', 'Male', '1995-05-03', 167, 167, 'Karachi', ' SFC', '', '', 'Karachi', '75230', 'Sindh', 92, '3438010547', 'iamsajjad3@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Other', 'Mother', 'Yes', 'Mr.', 'Zehra', '', 'Khatoon', '', 'IV', 167, 21, 'Graduated from trade school or community college', 'Father', 'Yes', 'Mrs.', 'S', 'M', ' Aftab', '', 'IV', 167, 1, 'Graduated from trade school or community college', 14, '', '', 7, 73, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 15:07:44', '0000-00-00 00:00:00'),
(618, 618, 'Saif', '', 'Rehman', 'Male', '1998-10-13', 0, 0, 'Multan', 'Mew street house no 22 khan village near northern bypass road', '', '', 'Multan', '66000', 'Punjab', 92, '0306928116', 'saifrehman7896@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Muhammad', '', 'Yaqoob', '', 'Sr.', 0, 0, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'No', 'Mrs.', 'Kousar ', '', ' Parveen', '', 'Jr.', 167, 44, 'some college/University', 40, '', '', 10, 106, '470987scan6.jpg', '477925scan6.jpg', '736012scan2.jpg', '97552scan2.jpg', '15162scan3.jpg', '588374scan5.jpg', '774470saif cv ok.docx', 0, 'Yes', 'Yes', 'I waive my right to review all recommendations and supporting documents.', 'Yes', 'saif', '0000-00-00', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 17:09:14', '0000-00-00 00:00:00'),
(619, 619, 'Prasanna', '', 'Gautam', 'Male', '2001-09-10', 156, 156, 'Pokhara', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '18', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 16:24:11', '0000-00-00 00:00:00'),
(620, 620, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 16:23:57', '0000-00-00 00:00:00'),
(621, 621, 'Noshin', 'T', 'Barsha', 'Female', '1998-06-13', 0, 0, 'Dhaka', ' 18 Sabbir Alam Khandokar Road', 'Masdair', 'Narayangonj', 'Narayangonj', '1400', 'Dhaka', 0, '0197777581', 'barshaadury@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Divorced', 'Parent 1', 'Mother', 'Yes', 'Ms.', 'Nasima', '', 'Akter', '', '', 19, 7, 'Graduated from college/University', 'I have limited Information about this Parent', 'Yes', 'Mr.', 'Ashraful', '', ' Alam', '', '', 19, 0, '', 7, '', '', 5, 47, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-16 16:48:53', '0000-00-00 00:00:00'),
(622, 622, 'Tajamul', '', 'Hussain', 'Male', '2000-03-24', 167, 167, 'Karachi', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '19', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 16:58:50', '0000-00-00 00:00:00'),
(623, 623, 'Rimsha', '', 'Hanif', 'Female', '2000-02-18', 167, 167, 'Karachi', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 17:12:40', '0000-00-00 00:00:00'),
(624, 624, 'Choyan', '', 'Halder', 'Male', '2019-10-18', 19, 19, 'Jessore', '', '', '', '', '', '', 0, '', '', '', '', '', '', '>20 Years', '0', 'U.S. Permanent Resident', 'Never Married', 'Parent 2', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 17:51:59', '0000-00-00 00:00:00'),
(625, 625, 'Ghulam ', '', 'Mohiuddin', 'Male', '2002-10-02', 167, 167, 'Palandri', 'Executive boys youth hostel near chandni chock Rawalpindi ', '', '', 'Rawalpindi', '46000', 'Punjab', 92, '+923496899', 'gmd2171@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Anees', '', 'Fatima', '', 'IV', 167, 44, 'some college/University', 'Father', 'Yes', 'Mr.', 'Muhammad', '', ' Farooq', '', 'IV', 167, 27, 'some high/secondary school', 18, '', '', 7, 68, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-23 16:35:45', '0000-00-00 00:00:00'),
(626, 626, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 18:43:33', '0000-00-00 00:00:00'),
(627, 627, 'Muzammil', '', 'Azhar', 'Male', '1996-11-28', 167, 167, 'Multan', 'MDA road pul bararn', '', '', 'Multan', '66000', 'Pakistan', 92, '0301712148', 'muzamilazhar05@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Azhar', '', 'Khan', '', '', 167, 0, 'some high/secondary school', 'Mother', 'Yes', '', 'Nighat', '', 'Parveen ', '', '', 167, 0, 'Some grade/primary school', 6, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2019-11-16 19:28:10', '0000-00-00 00:00:00'),
(628, 628, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-16 19:37:34', '0000-00-00 00:00:00'),
(629, 629, 'SAQIB', '', 'AHMAD', 'Male', '1999-06-20', 167, 167, 'Swabi', ' Mohallah marghuz yara khel tehsil swabi', 'Mohallah marghuz yara khel tehsil swabi', 'Mohallah marghuz yara khel tehsil swabi', 'Swabi', '23530', 'Kpk', 0, '3068182903', 'Saqibahmad847@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '20', 'U.S. Permanent Resident', 'Separated', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Fazal ', '', 'Hayat', 'Luhar', '', 167, 44, 'Some grade/primary school', 'Mother', 'Yes', 'Mrs.', 'Khalida', '', ' Begum', 'Luhar', '', 167, 44, 'some high/secondary school', 17, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 02:19:21', '0000-00-00 00:00:00'),
(630, 630, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 02:25:41', '0000-00-00 00:00:00'),
(631, 631, 'Pradish', '', 'Shrestha', 'Male', '1999-03-12', 156, 156, 'Kathmandu', ' M9', '', '', 'Lokanthali', '44600', 'Bhaktapur', 0, '9803207887', 'Pradishshrestha001@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Phadindra', '', 'Kumai', 'Shrestha', '', 156, 8, 'None', 'Father', 'Yes', '', 'Prem', '', 'Das', 'Shrestha ', '', 156, 7, 'Some grade/primary school', 18, '', '', 11, 114, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 03:33:17', '0000-00-00 00:00:00'),
(632, 632, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 04:34:10', '0000-00-00 00:00:00'),
(633, 633, 'Kynaat', 'K', 'Chowdhury', 'Female', '2000-10-03', 19, 19, 'Sohar', ' Road 11 Block I', '', '', 'Dhaka', '1229', 'Dhaka', 0, '0174902591', 'kynaatkareemc@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Mohiuddin', '', 'Chowdhury', '', '', 19, 7, 'Graduated from college/University', 'Mother', 'Yes', '', 'Ghazala', '', ' Chowdhury', '', '', 0, 0, '', 6, '', '', 5, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 04:42:59', '0000-00-00 00:00:00'),
(634, 634, 'Fahid', '', 'TajDin', 'Male', '1994-04-30', 0, 0, 'Gujranwala', '16', '', '', 'Gujranwala', '52250', 'Punjab', 0, '0311078745', 'fahidansari015@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Haji', '', 'TajDin', '', '', 0, 0, 'some high/secondary school', 'I have limited Information about this Parent', 'Yes', 'Mrs.', 'Naseem', '', ' Akhtar', '', '', 167, 44, 'None', 18, '', '', 11, 114, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 17:13:02', '0000-00-00 00:00:00'),
(635, 635, 'Sagar', '', 'Ganeju', 'Male', '2000-12-18', 156, 156, 'Bhaktapur', ' Suryamadhi', '', '', 'Bhaktapur', '44800', 'Province-third', 977, '9860614927', 'sagarganeju123@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Sunkeahari', '', 'Ganeju', '', '', 156, 44, 'None', 'Father', 'Yes', 'Mr.', 'Radheshyam', '', ' Ganeju', '', '', 0, 44, 'some high/secondary school', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-17 04:48:57', '0000-00-00 00:00:00'),
(636, 636, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 05:00:21', '0000-00-00 00:00:00'),
(637, 637, 'Umair', '', 'Jameel', 'Male', '1998-02-07', 167, 167, 'Karachi', ' House No A 079 Samdani Town Future colony Landhi Karachi', '', '', 'Karachi', '75120', 'Sindh', 0, '0312181501', 'umairmughal676@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 07:44:29', '0000-00-00 00:00:00'),
(638, 638, 'Hasnain', '', 'Ali', 'Male', '1998-03-20', 167, 167, 'Karak', ' Esak Chountra post office Dabb Tehsil District Karak', 'Same as above', 'same as above', 'Karak', '27900', 'Khyberpakthunkhwa', 0, '+920331371', 'waqarali12345ktk@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Other', 'Father', 'Yes', 'Mr.', 'Doctor ', '', 'Khan', '', 'Sr.', 167, 27, 'some high/secondary school', 'Mother', 'Yes', 'Mrs.', 'Doctor ', '', ' Khan', '', '', 167, 44, 'None', 31, '', '', 4, 19, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 07:06:06', '0000-00-00 00:00:00'),
(639, 639, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 07:33:39', '0000-00-00 00:00:00'),
(640, 640, 'Nazrin', 'A', 'Sumy', 'Female', '1993-01-10', 0, 0, 'Mymensingh', ' 380 South kafrul cantonment Dhaka 1206', '', '', 'Dhaka', '1206', 'Dhaka', 880, '0163688349', 'nas1o.oni.1393@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Ahmed', 'U', 'Gias', 'Gias', 'Sr.', 19, 19, 'some college/University', 'Mother', 'Yes', 'Mrs.', 'Nargis', 'B', ' Begum', 'Nargis', 'Sr.', 19, 34, 'Graduated from high/secondary school (or equivalent)', 39, '', '', 10, 90, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 09:03:34', '0000-00-00 00:00:00'),
(641, 641, 'Ali', '', 'Raza', 'Male', '2002-01-11', 167, 167, 'Mirpur', ' 204 f2', '', '', 'Mirpur', '10250', 'ajk', 0, '0315757300', 'alirazakalis@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Muhammad', '', 'Ismail', '', '', 167, 8, 'some high/secondary school', 'Father', 'Yes', '', 'Muhammad', '', ' Ismail', '', '', 167, 8, 'some high/secondary school', 18, '', '', 28, 271, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2019-11-17 08:33:16', '0000-00-00 00:00:00'),
(642, 642, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 08:17:12', '0000-00-00 00:00:00'),
(643, 643, 'Muhammad', '', 'Umar', 'Male', '2000-04-02', 167, 167, 'Lahore', ' H NO 248 BLOCK D TAJPURA SCHEME MUGHAL PURA ROAD LAHORE CANTT ', '', '', 'Lahore', '54870', 'Punjab', 92, '0315705031', 'Umarjamshaid25@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'I dont know', 'Yes', '', '0', '19', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Ms.', 'Ruby', '', 'Shaheen', '', '', 167, 39, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'Jamshaid', '', ' Iqbal', '', '', 167, 5, 'some high/secondary school', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 10:21:43', '0000-00-00 00:00:00'),
(644, 644, 'Humna', '', 'Saif', 'Female', '1999-11-02', 167, 167, 'Gujrat', 'Behind eid gah near haider model school gt road gujrat', '', '', 'Gujrat', '50700', 'Punjab', 92, '0311647905', 'abanahmed704@gmail.com ', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Saif', '', 'Ullah', '', '', 167, 7, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Mrs.', 'Saiqa', '', ' Khanam', '', '', 167, 21, 'Graduated from high/secondary school (or equivalent)', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-17 08:44:13', '0000-00-00 00:00:00'),
(645, 645, 'Mukhtiar', '', 'Shah', 'Male', '2001-03-30', 167, 167, 'Daggar', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '19', 'Other (Non-US)', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 09:10:02', '0000-00-00 00:00:00'),
(646, 646, 'Hassan', '', 'Ali', 'Male', '2002-01-21', 167, 167, 'Nankana Sahib', ' House 29 Street 3 Madina Park Lahore Cantt Punjab Pakistan', '', '', 'Lahore', '54810', 'Punjab', 0, '+923214794', 'hassanaliramay@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Asif', '', 'Hameed', '', '', 167, 1, 'some college/University', 'Mother', 'Yes', 'Mrs.', 'Shakeela', '', ' Yasmeen', '', '', 167, 0, 'some high/secondary school', 6, '', '', 5, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 10:17:34', '0000-00-00 00:00:00'),
(647, 647, 'Fiza', '', 'Rind', 'Female', '2000-10-21', 0, 0, 'Hyderabad', ' Industries Housing Society B 5', 'Near Politechnical College', 'Qasimabad Hyderabad', 'Hyderabad', '41000', 'Sindh', 0, '+923322042', 'zohabaloch53@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'No', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Mohmmad ', '', 'Ali', 'Rind', '', 167, 26, 'some college/University', 'Mother', 'Yes', '', 'Khairunisa', '', ' Ali', 'Rind', '', 167, 0, 'some college/University', 26, '', '', 18, 218, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-18 16:43:27', '0000-00-00 00:00:00'),
(648, 648, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 11:24:03', '0000-00-00 00:00:00'),
(649, 649, 'Mohammad', '', 'Hasaan', 'Male', '2000-03-20', 167, 167, 'Lahore', ' House No 321', 'Gulshan Iqbal Colony', '', 'Haroonabad', '62100', 'Pakistan', 92, '+923377625', 'hassanchjavaid31@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '19', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Shagufta', '', 'Javaid', '', '', 167, 40, 'Graduated from college/University', 'Father', 'No', 'Mr.', 'Akhter', '', ' Javaid', '', '', 167, 0, 'some college/University', 18, '', '', 11, 117, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-18 16:06:37', '0000-00-00 00:00:00'),
(650, 650, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 11:55:50', '0000-00-00 00:00:00'),
(651, 651, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 12:45:52', '0000-00-00 00:00:00'),
(652, 652, 'Sushant ', '', 'Chaudhary ', 'Male', '2002-01-15', 0, 0, 'Janakpur', ' Janakpur', 'Mahottari', 'Aurahi', 'Janakpur', '45700', '02', 977, '9818980818', 'Sushant8888chaudhary@gmail.com', '', '', '', '', '0', '0', 'U.S. Citizen or U.S. National', 'Married', 'Other', 'Mother', 'Yes', 'Mrs.', 'Binita', 'K', 'Chaudhary', 'Chaudhary', '', 0, 0, 'Graduated from high/secondary school (or equivalent)', 'Father', 'Yes', 'Mr.', 'Shyam', '', ' Chaudhary ', 'Chaudhary ', '', 156, 8, 'Graduated from high/secondary school (or equivalent)', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-17 14:14:48', '0000-00-00 00:00:00'),
(653, 653, 'Sarim', '', 'Alvi', 'Male', '2001-02-20', 0, 0, 'karachi', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 14:27:40', '0000-00-00 00:00:00'),
(654, 654, 'VENGUS', '', 'PIRZADO', 'Female', '2001-07-01', 167, 167, 'Karachi', ' House no 51 street sector B  2nd floor Akhtar colony Karachi', '', '', 'Karachi', '75500', 'Sindh', 92, '0313897545', 'vengusp@gmail.com', '', '', '', '', '0', '18', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Khalida', '', 'Pirzado', 'Pirzado', '', 167, 39, 'Graduated from college/University', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-19 05:42:12', '0000-00-00 00:00:00'),
(655, 655, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 15:13:22', '0000-00-00 00:00:00'),
(656, 656, 'Omor', '', 'Faruque', 'Male', '1998-04-18', 19, 19, 'Sunamgonj', 'Amborkhana', '', '', 'Sylhet', '3100', 'Bangladesh', 880, '0178962959', 'omorthebrave@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Oheda ', '', 'Begum', '', '', 19, 19, 'some high/secondary school', 'Father', 'No', '', 'Abdul', '', ' Hasem', '', '', 19, 19, 'Some grade/primary school', 6, '', '', 7, 67, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 17:44:19', '0000-00-00 00:00:00'),
(657, 657, 'Roj', '', 'Lama', 'Male', '2000-11-13', 0, 0, 'Kabhrepalanchok', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '19', 'U.S. Citizen or U.S. National', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 16:54:51', '0000-00-00 00:00:00'),
(658, 658, 'Farjad', 'A', 'khan', 'Male', '1998-05-16', 167, 167, 'Karachi', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '>20 Years', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 17:09:16', '0000-00-00 00:00:00'),
(659, 659, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 18:54:26', '0000-00-00 00:00:00'),
(660, 660, 'AKIF', '', 'NIHAL', 'Male', '2000-08-20', 19, 19, 'DHAKA', ' Mohammadpur', '', '', 'Dhaka', '1207', 'Dhaka', 880, '1971665585', 'nihalakif665585@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'I dont know', 'Yes', '', '0', '19', 'Other (Non-US)', 'Married', 'Other', 'Mother', 'Yes', 'Mrs.', 'MUNNI', '', 'AFIFA', '', '', 19, 35, 'Graduate School', 'Father', 'Yes', 'Mr.', 'OBAEDULLAH', '', ' SIDDIQUE ', '', 'Sr.', 19, 7, 'Graduated from college/University', 18, '', '', 11, 109, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-17 21:38:56', '0000-00-00 00:00:00'),
(661, 661, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-17 21:44:23', '0000-00-00 00:00:00'),
(662, 662, 'sadsd', '', 'aagrgdd', 'Male', '0001-02-05', 153, 147, 'eded', 'tooqqp', '', '', 'itea', '76800', 'ghththty', 45, '8945563127', 'sdrhbgghr@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'rtdfdsf', '', 'fdsfdsfdsfdsff', '', '', 143, 44, 'some high/secondary school', 'Mother', 'Yes', '', 'wdfdsf', '', 'fdsfsdf', '', '', 146, 14, 'completed grade/primary school', 14, '', '', 7, 72, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-21 14:51:56', '0000-00-00 00:00:00'),
(663, 663, 'Lochan', '', 'Acharya', 'Male', '2001-06-18', 156, 156, 'Damak', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-18 02:47:51', '0000-00-00 00:00:00'),
(664, 664, 'Shabir', '', 'Ahmad', 'Male', '2002-01-11', 167, 167, 'Toba take sing', ' 514 R2 block johar town Lahore', ' 514 R2 block johar town Lahore', ' 514 R2 block johar town Lahore', 'Lahore', '52700', 'Punjab', 92, '0341078344', 'Shabirahmad245245@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '17', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Bashir', '', 'ahmad', '', 'Sr.', 0, 0, 'Some grade/primary school', 'Mother', 'Yes', 'Ms.', 'Nazeera', '', ' Bibi', '', 'Sr.', 167, 24, 'Some grade/primary school', 2, '', '', 6, 61, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-18 04:44:39', '0000-00-00 00:00:00'),
(665, 665, 'Adil', '', 'Jamik', 'Male', '1998-05-26', 167, 167, 'Sialkot', ' Mughal manzil mughal street mubarakpura sialkot ', '', '', 'Sialkot', '51310', 'Punjab', 92, '+923348031', 'madilj598@gmail.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Faiza', '', 'Jamil', 'Hameed', 'Sr.', 167, 5, 'some college/University', 'Father', 'Yes', 'Mr.', 'Jamil', '', 'Arshad ', 'Arshad', 'Sr.', 167, 5, 'some high/secondary school', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, '2019-11-18 04:53:59', '0000-00-00 00:00:00'),
(666, 666, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-18 05:41:17', '0000-00-00 00:00:00'),
(667, 667, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-18 06:42:11', '0000-00-00 00:00:00'),
(668, 668, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-18 08:36:24', '0000-00-00 00:00:00'),
(669, 669, 'Ali', 'A', 'Hashwani', 'Male', '2001-12-29', 167, 167, 'Karachi Sindh', 'Sultanabad colony', 'Near gulbahar police station', '', 'Karachi', '74600', 'Sindh', 0, '0316100440', 'Hashwanialiahmed@gmail.com', 'Bachelors degree (such as BA or BS)', 'On-Campus Housing', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Shahsultana', '', 'Hashwani', '', '', 0, 0, 'Graduated from high/secondary school (or equivalent)', 'Father', 'Yes', '', 'Aslam', 'A', ' Hashwani', '', '', 167, 8, 'some high/secondary school', 18, '', '', 11, 108, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-18 09:53:24', '0000-00-00 00:00:00'),
(670, 670, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-18 09:34:43', '0000-00-00 00:00:00'),
(671, 671, 'yasir', '', 'maroof', 'Male', '2000-02-15', 167, 167, 'fatehpur kotli', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '19', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-18 10:32:07', '0000-00-00 00:00:00'),
(672, 672, 'Ronald', 'S', 'Halder', 'Male', '2000-06-22', 0, 0, 'Rajshahi', ' Plot 98 Toad 5 Block I', 'Bashundhara RA', '', 'Dhaka', '1229', 'Bangladesh', 0, '1730310498', 'ssmbiswas_12@yahoo.com', '', '', '', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Mother', 'Yes', 'Ms.', 'Scandecy', 'S', 'Biswas', '', 'Sr.', 0, 0, 'Graduated from high/secondary school (or equivalent)', 'Father', 'Yes', 'Mr.', 'Remon', '', ' Halder', '', 'Jr.', 19, 44, 'some high/secondary school', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, '2019-11-19 02:29:18', '0000-00-00 00:00:00'),
(673, 673, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-20 06:43:49', '0000-00-00 00:00:00'),
(674, 674, 'Farah', 'H', 'Fernandes', 'Female', '2005-01-02', 102, 179, 'Doha', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '14', 'Other (Non-US)', 'Divorced', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-20 06:52:15', '0000-00-00 00:00:00'),
(675, 675, 'SANA', 'R', 'GAYA', 'Female', '2002-06-21', 102, 102, 'Mumbai', 'Kalumal Estate', ' A B Nair Road', '', 'Mumbai', '400049', 'Maharashtra', 0, '9769495445', 'sanagaya10@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '17', 'U.S. Citizen or U.S. National', 'Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'KOMAL', 'R', 'GAYA', 'CHADHA', '', 102, 7, 'Graduated from college/University', 'Father', 'Yes', 'Mr.', 'RIZWAN', 'S', ' GAYA', 'GAYA', '', 102, 3, 'Graduated from trade school or community college', 14, 'The lessons we take from obstacles we encounter can be fundamental to later success. Recount a time when you faced a challenge, setback, or failure. How did it affect you, and what did you learn from the experience?', '  Kill it!\r\n\r\nSandalwood incense and fresh jasmine mingled to create a nauseating smell. The air felt saturated with grief: It hung heavy, clinging to every surface like a film of condensation. I looked around the room - from his family to my teammates - trying not to look, not to look.\r\n\r\nBut there he was, lying in the center of the room,a white sheet covering his body. In the 8 years that I\'d been swimming with Coach Danke, he\'d been my pillar, standing tall and strong to support me. His eyes always had this look of steely calm - however, that day, the very last day I saw him, they were blank. Though the room racked with sobs, I was engulfed by the silence of shock. \r\n\r\nI tried to wash off the feeling, diving into the swimming pool, but I couldn\'t kick fast enough to escape it. It weighed me down like lead. We had been training for the National Swimming Competition, only a few days ago. And now, with a week to go, I felt rudderless; I didn\'t know how to navigate the water without him. \r\n\r\nAt the Nationals, while other athletes were getting last-minute tips from their coaches, I looked for mine: my subconscious yearned for the ritualistic \'Kill it!\' but it never came. In my 50m backstroke race, my stroke was slack. My heart broke a little more; not simply because I lost, but because I knew that after 2 years of intense training, my coach would be disappointed in me. \r\n\r\nAfter my failure at the nationals, I could almost hear Danke sir say, \'Sana, my absence is not an excuse for your failure!\' I realized that the only way to honor his memory was by finding my way back to the winner\'s podium. I decided I would make the journey there by myself. Unlike my teammates who\'d all joined new clubs, I would continue swimming at the Khar Gymkhana pool, and I would be my own coach.\r\n\r\nTraining alone was hard. But harder still was living up to my coach\'s standard. The milliseconds ticking away mercilessly on the stopwatch pushed me further than any competitor ever had. \'Practice ', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-20 08:46:56', '0000-00-00 00:00:00'),
(676, 676, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-21 11:33:13', '0000-00-00 00:00:00'),
(677, 677, 'Ameya', 'A', 'Dehade', 'Male', '2002-04-25', 102, 102, 'Vadodara', ' M 404 Tarapore Towers', 'Off New Link Rd', 'Andheri West', 'Mumbai', '400053', 'Maharashtra', 91, '9820237322', 'ameyadehade@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'No', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Ashish', '', 'Dehade', '', '', 102, 7, 'Graduate School', 'Mother', 'Yes', '', 'Rupali', '', ' Dehade', '', '', 102, 21, 'Graduated from college/University', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-23 10:45:55', '0000-00-00 00:00:00'),
(678, 678, 'Shafeek', '', 'Sidhiq', 'Male', '2002-02-11', 102, 102, 'Trivandrum', ' Telephone exchange road cherukunnam', '', '', 'Trivandrum', '695141', 'Varkala', 91, '9061067123', 'shafeeksidhiq10@gmail.com', 'Other', 'At Home', 'Yes', '', '0', '0', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Sidhiq', '', 'Sainudeen', '', '', 102, 24, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', '', 'Jasmi', '', ' A', '', '', 102, 21, 'Graduated from high/secondary school (or equivalent)', 18, '', '', 11, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-24 03:28:16', '0000-00-00 00:00:00'),
(679, 679, 'Mohammed', '', 'Ayaz', 'Male', '2006-10-21', 102, 102, 'hyderabad', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '13', 'Other (Non-US)', 'Never Married', 'Both Parents', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 11:53:17', '0000-00-00 00:00:00'),
(680, 680, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 13:41:01', '0000-00-00 00:00:00'),
(681, 681, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 14:19:34', '0000-00-00 00:00:00'),
(682, 682, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 15:19:17', '0000-00-00 00:00:00'),
(683, 683, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 15:28:00', '0000-00-00 00:00:00'),
(684, 684, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 16:53:49', '0000-00-00 00:00:00'),
(685, 685, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 16:58:10', '0000-00-00 00:00:00'),
(686, 686, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 17:01:39', '0000-00-00 00:00:00'),
(687, 687, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 17:07:54', '0000-00-00 00:00:00'),
(688, 688, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 17:09:16', '0000-00-00 00:00:00'),
(689, 689, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 17:13:28', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `userId`, `firstName`, `middleInitial`, `lastName`, `gender`, `dateOfBirth`, `countryOfResidence`, `countryOfBirth`, `cityOfBirth`, `streetAddress1`, `streetAddress2`, `streetAddress3`, `city`, `postalCode`, `regionOrProvince`, `countryCode`, `mobileNumber`, `emailAddress`, `plannedHighestEduLvl`, `collegeHousingPlan`, `financialAid`, `partTimeJob`, `noOfYrsInUS`, `noOfYrsOutOfUS`, `citizenshipStatus`, `parentsMaritalStatus`, `permenantHomeGuardian`, `Parent1type`, `parent1Living`, `Parent1prefix`, `Parent1FirstName`, `Parent1MiddleInitial`, `Parent1LastName`, `Parent1FormerLastName`, `Parent1Suffix`, `Parent1CountryOfBirth`, `Parent1Occupation`, `Parent1EducationLevel`, `Parent2type`, `Parent2Living`, `Parent2Prerix`, `Parent2FirstName`, `Parent2MiddleInitial`, `Parent2LastName`, `Parent2FormerLastName`, `Parent2Suffix`, `Parent2CountryOfBirth`, `Parent2Occupation`, `Parent2EducationLevel`, `careerIntrest`, `essayOption`, `essay`, `areasOfStudyId`, `majorId`, `transcript9th`, `transcript10th`, `transcript11th`, `transcript12th`, `lor1`, `lor2`, `lor3`, `addedTranscripts`, `ferpaunderstood`, `ferpaack`, `selectopt`, `ferpawaiver`, `signature`, `ferpaDate`, `isApply`, `personel_form`, `contact_form`, `parent_1`, `parent_2`, `college_plans_form`, `majorSelect_form`, `highSchool_form`, `status`, `isMandatory`, `created_at`, `updated_at`) VALUES
(690, 690, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 17:23:09', '0000-00-00 00:00:00'),
(691, 691, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 17:38:57', '0000-00-00 00:00:00'),
(692, 692, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-26 18:16:48', '0000-00-00 00:00:00'),
(693, 693, 'Dhairya', 'H', 'Gandhi', 'Male', '2002-05-04', 102, 102, 'Ahmedabad', ' 119', 'gandhi building bhrumpuri', 'patasa pole gandhi road', 'ahmedabad', '380001', 'Gujarat', 0, '0823822848', 'dhairya5402@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'No', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Both Parents', 'Father', 'Yes', '', 'Hardik', 'V', 'Gandhi', '', '', 102, 7, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Minal', 'H', 'Gandhi', 'Shah', '', 102, 21, 'Graduated from college/University', 14, 'Some students have a background, identity, interest, or talent that is so meaningful they believe their application would be incomplete without it. If this sounds like you, then please share your story.', 'It all started with man\'s need to develop an aid that could help him crunch seven figure numbers. That was the beginning of a new era, one that would change the world forever!\r\n\r\nComputers have forever attracted attention, and I am no different. I love how computers have connected the world and helped us really understand the meaning of the world global. As we now advance towards making computers and machines more like us, through giving them the emotional and cognitive intelligence that we have, we are at the brink of another transformative era. And it is this speed, this innovation and this power to change the world that attracts me to the world of binaries! When I understood how our alphabet is perceived by the machine as numbers, I was fascinated. I started coding religiousy every single day and spend every minute of my free time discovering the magic of binaries. I was 11 when I first coded.\r\n\r\nAs I started thinking more seriously of pursuing a higher formal education in computer science, I looked for avenues that could take my ammateur love for the field a little further. I thus enrolled myself in Royal Technosoft, an academy where I could learn the basics of the field. I learned various areas of computer science such as programming, website development, app development and so on. I was 14 when I could officially code in C, C++ and Java.\r\n\r\nThe coursework at Royal Technosoft was exhaustive and with my IB curriculum I was managing them both. Yet, each day was a pleasant experience and I was exhilarated to learn new concepts of Computer Science. I slowly was adept with programming and my grip over languages strengthened over the time. I felt it was crucial to augment my knowledge by applying the concepts that I had learned and I appeared for the OCJP examination to become an Oracle certified developer. I was 15 years old and I became a certified programmer.\r\n\r\nI interned at Royal to work on projects and real-world assignments so that I would learn to apply my kn', 7, 70, '', '', '', '', '', '', '', 0, 'Yes', 'Yes', 'I waive my right to review all recommendations and supporting documents.', 'Yes', 'Dhairya', '2019-11-27', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-26 19:06:12', '0000-00-00 00:00:00'),
(694, 694, 'Alphonsa', '', 'Thomas', 'Female', '1999-10-10', 102, 102, 'Calicut', ' Koodaranhi  673604', '', '', 'Kozhikode', '673604', 'Kuliramutty', 0, '8113994013', 'alphonsathomas152@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '20', 'Other (Non-US)', 'Married', 'Parent 1', 'Father', 'Yes', 'Mr.', 'Thomas', '', 'Mathew', '', '', 102, 19, 'Graduated from high/secondary school (or equivalent)', 'Mother', 'Yes', 'Mrs.', 'Jessy', '', ' Thomas', '', '', 102, 21, 'some high/secondary school', 29, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-11-27 11:14:00', '0000-00-00 00:00:00'),
(695, 695, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 03:47:44', '0000-00-00 00:00:00'),
(696, 696, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 07:13:34', '0000-00-00 00:00:00'),
(697, 697, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 07:17:07', '0000-00-00 00:00:00'),
(698, 698, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 14:12:33', '0000-00-00 00:00:00'),
(699, 699, 'taran', 'S', 'singh', 'Male', '1993-11-07', 0, 0, 'mohali', '', '', '', '', '', '', 0, '', '', '', '', '', '', '0', '>20 Years', 'Other (Non-US)', 'Never Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 15:28:43', '0000-00-00 00:00:00'),
(700, 700, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 15:32:20', '0000-00-00 00:00:00'),
(701, 701, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 16:01:20', '0000-00-00 00:00:00'),
(702, 702, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 16:04:26', '0000-00-00 00:00:00'),
(703, 703, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 16:09:59', '0000-00-00 00:00:00'),
(704, 704, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 16:12:34', '0000-00-00 00:00:00'),
(705, 705, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 18:33:39', '0000-00-00 00:00:00'),
(706, 706, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 00:59:00', '0000-00-00 00:00:00'),
(707, 707, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 12:25:22', '0000-00-00 00:00:00'),
(708, 708, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 12:44:13', '0000-00-00 00:00:00'),
(709, 709, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 13:00:11', '0000-00-00 00:00:00'),
(710, 710, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 13:01:14', '0000-00-00 00:00:00'),
(711, 711, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 13:03:22', '0000-00-00 00:00:00'),
(712, 712, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 14:10:13', '0000-00-00 00:00:00'),
(713, 713, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 15:34:16', '0000-00-00 00:00:00'),
(714, 714, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 15:59:44', '0000-00-00 00:00:00'),
(715, 715, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 16:03:40', '0000-00-00 00:00:00'),
(716, 716, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-28 16:05:31', '0000-00-00 00:00:00'),
(717, 717, 'Smita', '', 'Tamang', 'Female', '2019-12-01', 156, 156, 'Okaldhunga', ' Balkot bhaktapur nepal', 'Kathmandu nepal', '', 'Bhaktapur', '44811', 'Suryabinayak', 977, '9803202311', 'victoriatamang50@gmail.com', 'Bachelors degree (such as BA or BS)', 'I dont know', 'Yes', '', '0', '0', 'Other (Non-US)', 'Never Married', 'Parent 1', 'Mother', 'No', '', 'Sabina', '', 'Dhakal', '', 'IX', 0, 0, 'None', 'I have limited Information about this Parent', 'No', 'Ms.', 'No ', '', ' No ', '', '', 0, 0, '', 29, '', '', 4, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-12-01 16:18:52', '0000-00-00 00:00:00'),
(718, 718, 'Lochan', '', 'Acharya', 'Male', '2001-06-18', 156, 156, 'Damak', 'kamal binayak', '', '', 'bhaktapur', '44800', 'Bagmati', 977, '9825920476', 'acharyalochan21@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'Yes', '', '0', '18', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Puspa', 'L', 'Acharya', '', '', 156, 40, 'Graduated from college/University', 'Mother', 'Yes', 'Mrs.', 'Mamata', '', 'Acharya ', '', '', 156, 44, 'some high/secondary school', 14, '', '', 7, 70, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-12-02 12:02:01', '0000-00-00 00:00:00'),
(719, 719, 'Krish', '', 'Shah', 'Male', '0000-00-00', 102, 159, 'Auckland', ' C 702 Tulip Citadel Flats', 'Shreyas Tekra', '', 'Ahmedabad', '380015', 'Gujarat', 0, '8758462699', 'shawcross09@gmail.com', 'Masters degree (such as MA, MBA, or MS)', 'On-Campus Housing', 'No', '', '0', '17', 'Other (Non-US)', 'Married', 'Both Parents', 'Mother', 'Yes', 'Ms.', 'Ami', '', 'Shah', 'Shah', '', 102, 21, 'Graduated from college/University', 'Father', 'Yes', '', 'Ashish', '', 'Shah', '', '', 102, 7, 'Graduated from college/University', 14, 'Describe a problem you\'ve solved or a problem you\'d like to solve. It can be an intellectual challenge, a research query, an ethical dilemma-anything that is of personal importance, no matter the scale. Explain its significance to you and what steps you took or could be taken to identify a solution.', 'The implementation of technological innovation provides a better quality of life for those that maximise its utility. But, only about 40% of the world has access to it. Moreover, a large proportion of these people do not have the necessary skills to use it. But, what about people who don’t know how to use technology a lot? How does technical innovation affect them? My story is one that tackles this exact issue. \r\n\r\nin 2013, my family and I moved from Taiwan to India. Within the first year of moving, my mother was hospitalised twice for increased pulse rate and absurdly high blood sugar. With further diagnosis, we were told that she had diabetes and tachycardia. On average she takes 7-11 pills a day. My father and grandfather share a history of cardiovascular diseases as well. Certain incidents occurred where my family members had to be admitted at a hospital due to forgetting a dose of their medicine. After tirelessly implementing multiple methods such as charts, acronyms and customised medicine boxes, to remind them of their medicines, I decided to implement a new and promising approach.\r\n\r\nGiven the unique nature of the case at hand and my own growing interest in the realm of programming, I decided that designing and deploying an app which can organise medicinal schedules would benefit them greatly. One of the obstacles that immediately stood against me was how do I teach people who are older than 40 to use a dynamic application. My application intended to keep a record of the stock of medicines, a shareable spreadsheet, a taken or missed feature, a push notification reminder and an elaborate database of the medicines entered in the app. After multiple iterations, I implemented a calendar user interface to make my app more user friendly. \r\n\r\nAfter my first prototype was ready, I sat down with my test group for a primary focus testing. I installed the app on my family members’ phones and instructed them to add a medicine reminder scheduled for every alternate day o', 7, 69, '638002Krish Shah grade 9 marksheet.pdf', '416811KRISH SHAH MARK SHEET 1.jpg', '211408Krish Shah DP1 Academic grades.pdf', '98688Krish Shah predicted grades.pdf', '256810KrishShah_SCLOR_WP.docx', '475844KrishShah_ITGSLOR_WP.docx', '676038LOR Math krish.docx', 0, 'Yes', 'Yes', 'I waive my right to review all recommendations and supporting documents.', 'Yes', 'Krish Shah', '2019-12-04', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-12-04 16:55:52', '0000-00-00 00:00:00'),
(720, 720, 'Sunil', 'S', 'Shah', 'Male', '1969-08-24', 0, 0, 'Bijapur', ' A602 Mahavir Umang', 'Kolbad', '', 'Thane', '400601', 'Maharashtra', 91, '9987889113', 'sun3shah@gmail.com', 'Doctoral or related degree (such as PhD, JD, MO, DVM)', 'On-Campus Housing', 'Yes', '', '0', '5', 'Other (Non-US)', 'Married', 'Both Parents', 'Father', 'Yes', 'Mr.', 'Subhash ', '', 'Shah', '', '', 102, 1, 'Graduate School', 'Mother', 'Yes', 'Mrs.', 'Sushama', 'S', 'Shah', '', '', 102, 21, 'Graduated from college/University', 18, '', '', 11, 116, '', '', '', '', '', '', '', 0, 'Yes', 'Yes', 'I waive my right to review all recommendations and supporting documents.', 'Yes', 'Sunil', '2019-12-03', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-12-03 16:36:45', '0000-00-00 00:00:00'),
(721, 721, 'Sonam', '', 'Chhipa', 'Female', '2001-06-13', 102, 102, 'Jaipur', ' Delhi', 'Delhi', 'Delhi', 'Delhi', '110068', 'Hindu', 91, '9352338028', 'sonamchhipa8750@gmail.com', '', '', '', '', '0', '19', 'U.S. Citizen or U.S. National', 'Married', 'Parent 1', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '2019-12-04 10:55:49', '0000-00-00 00:00:00'),
(722, 722, '', '', '', '', '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-12-04 11:23:38', '0000-00-00 00:00:00'),
(723, 723, 'Sadashiv', 'R', 'Neesad', 'Male', '2001-11-30', 102, 102, 'Mumbai', ' Room No 135 Mahatma Phule Society', 'Barkat Ali Road', 'Antop Hill Wadala East', 'Mumbai', '400037', 'Mumbai', 91, '7304699768', 'sadashivneesad@gmail.com', 'Specialized training or certificate program', 'On-Campus Housing', 'Yes', '', '0', '18', 'U.S. Citizen or U.S. National', 'Never Married', 'Both Parents', 'Mother', 'Yes', 'Mrs.', 'Shivkumari', 'R', 'Mallah', 'Mallah', 'V', 102, 21, 'completed grade/primary school', 'Father', 'Yes', 'Mr.', 'Rajendra', 'R', ' Mallah', 'Mallah', 'X', 102, 44, 'some high/secondary school', 7, '', '', 35, 314, '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2019-12-05 08:12:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testibsubject`
--

CREATE TABLE `testibsubject` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `testDate` date NOT NULL,
  `subject` int(10) NOT NULL,
  `level` varchar(200) NOT NULL,
  `score` int(10) NOT NULL,
  `scoreCard` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testibsubject`
--

INSERT INTO `testibsubject` (`id`, `stuId`, `testDate`, `subject`, `level`, `score`, `scoreCard`, `status`, `created_at`, `updated_at`) VALUES
(1, 162, '2019-06-19', 67, 'Higher Level (HL)', 6, '208373B45FAC68-CFD7-41FB-A13E-D59328CBC3BC.jpeg', 0, '2019-11-13 20:48:44', '0000-00-00 00:00:00'),
(2, 162, '2019-06-19', 67, 'Higher Level (HL)', 6, '870853A5BDE2EE-E80D-44C3-9B30-59DBDA7A80AC.jpeg', 0, '2019-11-14 16:40:09', '0000-00-00 00:00:00'),
(3, 162, '2019-06-19', 67, 'Higher Level (HL)', 6, '90086267315931-2EA9-4DFF-8226-CC9DD6E9122C.jpeg', 0, '2019-11-14 16:56:07', '0000-00-00 00:00:00'),
(4, 162, '2019-06-19', 67, 'Higher Level (HL)', 6, '925548CF7743C6-A22F-4C63-A19A-447257080C9A.jpeg', 0, '2019-11-14 17:43:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testsact`
--

CREATE TABLE `testsact` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `testDate` date NOT NULL,
  `englishScore` int(10) NOT NULL,
  `mathScore` int(10) NOT NULL,
  `readingScore` int(10) NOT NULL,
  `scienceScore` int(10) NOT NULL,
  `writingScore` int(10) NOT NULL,
  `scoreCard` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testsact`
--

INSERT INTO `testsact` (`id`, `stuId`, `testDate`, `englishScore`, `mathScore`, `readingScore`, `scienceScore`, `writingScore`, `scoreCard`, `status`, `created_at`, `updated_at`) VALUES
(1, 162, '2019-06-19', 35, 33, 35, 31, 35, '6872468515C7A4-D882-45DC-B11D-495409860068.jpeg', 1, '2019-11-13 19:14:36', '0000-00-00 00:00:00'),
(2, 162, '2019-06-19', 35, 33, 34, 33, 35, '271752E2D85417-69DF-4DF4-ACFF-F856713BA982.jpeg', 1, '2019-11-14 16:14:51', '0000-00-00 00:00:00'),
(3, 162, '2019-06-19', 35, 34, 34, 33, 35, '6278863124F0DE-7602-4D9B-B0C4-6003081F3600.jpeg', 1, '2019-11-14 16:49:17', '0000-00-00 00:00:00'),
(4, 162, '2019-06-19', 35, 34, 34, 33, 34, '276387B06D8BDA-210F-453D-BF0C-BDC18E769DA0.jpeg', 1, '2019-11-14 17:36:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testsapsubject`
--

CREATE TABLE `testsapsubject` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `testDate` date NOT NULL,
  `subject` int(10) NOT NULL,
  `score` int(10) NOT NULL,
  `scoreCard` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testsapsubject`
--

INSERT INTO `testsapsubject` (`id`, `stuId`, `testDate`, `subject`, `score`, `scoreCard`, `status`, `created_at`, `updated_at`) VALUES
(1, 162, '2019-06-19', 17, 5, '86818386F3EB6F-E0A8-4B69-B8FE-D46C8A91F158.jpeg', 0, '2019-11-13 20:54:46', '0000-00-00 00:00:00'),
(2, 162, '2019-06-19', 43, 4, '23709901560F70-8DAF-4F44-BA93-F9BD85296D29.jpeg', 0, '2019-11-14 16:42:16', '0000-00-00 00:00:00'),
(3, 162, '2019-06-19', 43, 4, '27688864A61BA9-0495-473E-B4C3-98719460C140.jpeg', 0, '2019-11-14 16:57:03', '0000-00-00 00:00:00'),
(4, 162, '2019-06-19', 43, 4, '216103D0FDCFB1-208B-4708-AC90-F1741ECA1244.jpeg', 0, '2019-11-14 17:46:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testsielts`
--

CREATE TABLE `testsielts` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `testDate` date NOT NULL,
  `readingScore` double NOT NULL,
  `listeningScore` double NOT NULL,
  `speakingScore` double NOT NULL,
  `writingScore` double NOT NULL,
  `scoreCard` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testsielts`
--

INSERT INTO `testsielts` (`id`, `stuId`, `testDate`, `readingScore`, `listeningScore`, `speakingScore`, `writingScore`, `scoreCard`, `status`, `created_at`, `updated_at`) VALUES
(3, 271, '2018-08-25', 6.5, 6.5, 6.5, 6, '129055SCAN001  ielts-1.jpg', 1, '2019-11-02 03:56:26', '0000-00-00 00:00:00'),
(4, 231, '2019-07-06', 8, 7.5, 6.5, 6, '290106IELTS TRF.pdf', 1, '2019-11-13 02:33:38', '0000-00-00 00:00:00'),
(5, 162, '2019-06-19', 8.5, 8, 8, 8.5, '490203B626747F-D0E2-4441-8B5F-53C40CF38726.jpeg', 1, '2019-11-13 19:23:28', '0000-00-00 00:00:00'),
(6, 522, '2019-09-28', 5.5, 6, 6, 5.5, '40917114.jpg', 1, '2019-11-14 02:32:12', '0000-00-00 00:00:00'),
(7, 162, '2019-06-19', 8.5, 8, 8, 8.5, '23850596A71EE7-820E-4A94-A0A4-9CD7F240C3A8.jpeg', 1, '2019-11-14 16:36:24', '0000-00-00 00:00:00'),
(8, 162, '2019-06-19', 8, 7.5, 8, 8.5, '98288942A3C525-ED58-4365-BD56-CAF1AC13CF0E.jpeg', 1, '2019-11-14 16:52:39', '0000-00-00 00:00:00'),
(9, 162, '2019-06-19', 8, 7.5, 8, 8.5, '643209B84AD4BC-FBFB-41EF-8E3E-279D1FC60277.jpeg', 1, '2019-11-14 17:41:21', '0000-00-00 00:00:00'),
(10, 611, '2019-08-25', 6, 7, 7, 6.5, '573929IELTS pdf.pdf', 1, '2019-11-16 14:32:17', '0000-00-00 00:00:00'),
(11, 618, '2019-05-18', 5.5, 6, 5.5, 5, '942966scan1.jpg', 1, '2019-11-16 16:34:33', '0000-00-00 00:00:00'),
(12, 656, '2019-09-14', 7, 6.5, 6.5, 6, '897244--- 9165.jpg', 1, '2019-11-17 17:47:31', '0000-00-00 00:00:00'),
(13, 675, '2019-03-23', 9, 9, 7.5, 7.5, '893716SG-IELTS-TEST-REPORT.pdf', 1, '2019-11-20 08:37:01', '0000-00-00 00:00:00'),
(14, 693, '2019-08-17', 6.5, 7.5, 7, 7, '741296WhatsApp Image 2019-10-16 at 4.27.04 PM.jpeg', 1, '2019-11-26 18:54:09', '0000-00-00 00:00:00'),
(15, 719, '2019-09-21', 8, 9, 8.5, 7.5, '21765IELTS report_20191204105129.pdf', 1, '2019-12-04 05:24:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testssatexam`
--

CREATE TABLE `testssatexam` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `testDate` date NOT NULL,
  `verbalScore` int(10) NOT NULL,
  `quantsScore` int(10) NOT NULL,
  `essayScore` int(10) NOT NULL,
  `scoreCard` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testssatexam`
--

INSERT INTO `testssatexam` (`id`, `stuId`, `testDate`, `verbalScore`, `quantsScore`, `essayScore`, `scoreCard`, `status`, `created_at`, `updated_at`) VALUES
(3, 104, '2019-10-05', 740, 790, 20, '82841SATStudentScoreReport_1571915011698.pdf', 1, '2019-10-25 15:29:28', '0000-00-00 00:00:00'),
(4, 142, '2019-10-05', 560, 740, 16, '587528SAT new score.pdf', 1, '2019-10-27 17:34:34', '0000-00-00 00:00:00'),
(5, 137, '2019-10-05', 710, 760, 24, '594557SATStudentScoreReport_1572202199928.pdf', 1, '2019-10-27 18:51:56', '0000-00-00 00:00:00'),
(6, 187, '2019-10-05', 620, 700, 16, '644989Screenshot_20191029-184328_Word.jpg', 1, '2019-10-29 13:13:59', '0000-00-00 00:00:00'),
(7, 188, '2019-05-05', 640, 730, 11, '120001SATStudentScoreReport_1572362610578.pdf', 1, '2019-10-29 15:27:42', '0000-00-00 00:00:00'),
(8, 212, '2019-10-05', 500, 680, 9, '378958SATStudentScoreReport_1572445877896.pdf', 1, '2019-10-30 14:31:51', '0000-00-00 00:00:00'),
(9, 224, '2018-10-06', 490, 690, 6, '481167sat.pdf', 1, '2019-10-31 04:11:43', '0000-00-00 00:00:00'),
(10, 233, '2019-10-05', 500, 650, 6, '242318SATStudentScoreReport_1572509371022.pdf', 1, '2019-10-31 08:20:01', '0000-00-00 00:00:00'),
(11, 264, '2019-10-05', 610, 790, 20, '998938SATStudentScoreReport_1572265490091.pdf', 1, '2019-11-02 17:03:41', '0000-00-00 00:00:00'),
(12, 231, '2019-10-05', 520, 740, 12, '902556SATStudentScoreReport_1571981133465.pdf', 1, '2019-11-03 08:01:00', '0000-00-00 00:00:00'),
(13, 321, '2019-05-04', 620, 710, 15, '185523may sat score.pdf', 1, '2019-11-04 07:38:07', '0000-00-00 00:00:00'),
(17, 375, '2019-10-05', 620, 710, 12, '597528SATStudentScoreReport_1573540372187.pdf', 1, '2019-11-12 06:35:45', '0000-00-00 00:00:00'),
(18, 375, '2018-10-06', 640, 640, 11, '993176SATStudentScoreReport_1573540388849.pdf', 1, '2019-11-12 06:35:09', '0000-00-00 00:00:00'),
(19, 231, '2019-10-05', 520, 740, 12, '899391SATStudentScoreReport_1571981133465.pdf', 1, '2019-11-13 02:34:55', '0000-00-00 00:00:00'),
(20, 264, '2019-10-05', 610, 790, 20, '795353SATStudentScoreReport_1572265490091.pdf', 1, '2019-11-13 14:42:22', '0000-00-00 00:00:00'),
(21, 162, '2019-06-19', 770, 780, 23, '846107F281CA4D-1F1F-44D8-AECA-9ABC3159A70D.jpeg', 1, '2019-11-13 19:12:00', '0000-00-00 00:00:00'),
(22, 81, '2019-10-05', 610, 650, 16, '291244SATStudentScoreReport_1573660633309.pdf', 1, '2019-11-14 06:23:19', '0000-00-00 00:00:00'),
(23, 81, '2019-10-05', 610, 650, 16, '810108SATStudentScoreReport_1573660633309.pdf', 1, '2019-11-14 06:23:37', '0000-00-00 00:00:00'),
(24, 81, '2019-10-05', 610, 650, 16, '761017SATStudentScoreReport_1573660633309.pdf', 1, '2019-11-14 06:23:58', '0000-00-00 00:00:00'),
(25, 537, '2019-10-05', 520, 720, 14, '171169SATStudentScoreReport_1572052345237.pdf', 1, '2019-11-14 12:52:53', '0000-00-00 00:00:00'),
(26, 162, '2019-06-19', 780, 770, 22, '91506991E063F6-0425-40FC-9957-B699AF3A264B.jpeg', 1, '2019-11-14 16:12:48', '0000-00-00 00:00:00'),
(27, 162, '2019-06-19', 780, 770, 22, '6569110C717EC0-8D5C-45CC-A3AB-C87597476783.jpeg', 1, '2019-11-14 16:46:35', '0000-00-00 00:00:00'),
(28, 162, '2019-06-19', 780, 770, 22, '900105EA763828-AE3D-4A5D-B628-49D601888CA9.jpeg', 1, '2019-11-14 17:33:48', '0000-00-00 00:00:00'),
(29, 564, '2019-10-05', 530, 640, 10, '847673SATStudentScoreReport_1573800794914.pdf', 1, '2019-11-15 06:55:06', '0000-00-00 00:00:00'),
(30, 583, '2019-10-05', 530, 740, 6, '2021859061561F-0B80-450C-B392-4A5A2232C192.png', 1, '2019-11-15 13:56:52', '0000-00-00 00:00:00'),
(31, 512, '2019-10-05', 580, 600, 6, '704993SATStudentScoreReport_1573914472021.pdf', 1, '2019-11-16 14:37:18', '0000-00-00 00:00:00'),
(32, 618, '2016-09-17', 200, 200, 18, '981643scan6.jpg', 1, '2019-11-16 17:08:00', '0000-00-00 00:00:00'),
(33, 675, '2019-05-04', 720, 800, 17, '484659SATStudentScoreReport_1574238667873.pdf', 1, '2019-11-20 08:33:16', '0000-00-00 00:00:00'),
(34, 662, '2019-10-05', 240, 330, 6, '232257New Text Document (4).txt', 1, '2019-11-21 14:53:27', '0000-00-00 00:00:00'),
(35, 693, '2019-05-05', 640, 730, 12, '623594SATStudentScoreReport_1574792973576.pdf', 1, '2019-11-26 18:31:14', '0000-00-00 00:00:00'),
(36, 512, '2019-10-05', 580, 600, 19, '146930SATStudentScoreReport_1574017698215.pdf', 1, '2019-11-28 14:05:35', '0000-00-00 00:00:00'),
(37, 718, '2019-08-05', 520, 650, 14, '399795SATStudentScoreReport_1575288310615.pdf', 1, '2019-12-02 12:06:15', '0000-00-00 00:00:00'),
(38, 719, '0000-00-00', 640, 700, 14, '483226SATStudentScoreReport_1575358873760.pdf', 1, '2019-12-03 07:42:39', '0000-00-00 00:00:00'),
(39, 720, '2019-10-06', 670, 600, 19, '103083Sunil Shah.jpg', 1, '2019-12-03 16:35:10', '0000-00-00 00:00:00'),
(40, 719, '2019-05-04', 640, 700, 16, '524253SATStudentScoreReport_1575358873760.pdf', 1, '2019-12-04 05:25:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testssatsubject`
--

CREATE TABLE `testssatsubject` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `testDate` date NOT NULL,
  `subject` int(10) NOT NULL,
  `score` int(10) NOT NULL,
  `scoreCard` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testssatsubject`
--

INSERT INTO `testssatsubject` (`id`, `stuId`, `testDate`, `subject`, `score`, `scoreCard`, `status`, `created_at`, `updated_at`) VALUES
(2, 188, '2019-06-01', 21, 750, '621269SATStudentScoreReport_1572362918136.pdf', 0, '2019-10-29 15:29:09', '0000-00-00 00:00:00'),
(3, 162, '2019-06-19', 21, 770, '533183D523FD29-E2B0-45E5-A44D-245FB3255F70.jpeg', 0, '2019-11-13 19:33:59', '0000-00-00 00:00:00'),
(4, 162, '2019-06-19', 21, 780, '25961700592BD8-387C-46BE-9FFD-827462EBCD74.jpeg', 0, '2019-11-13 20:24:25', '0000-00-00 00:00:00'),
(5, 162, '2019-06-19', 21, 780, '788399811BD5B8-A783-45B7-9CA5-EB00930B71D9.jpeg', 0, '2019-11-14 16:37:28', '0000-00-00 00:00:00'),
(6, 162, '2019-06-19', 21, 780, '65097622046A5F-3EB8-4513-BE79-A05A864C6CC5.jpeg', 0, '2019-11-14 16:53:54', '0000-00-00 00:00:00'),
(7, 162, '2019-06-19', 21, 780, '490275F88A789B-7CE4-4ED0-B3B5-FD5C6C54C141.jpeg', 0, '2019-11-14 17:42:15', '0000-00-00 00:00:00'),
(8, 618, '2017-09-17', 14, 200, '273603scan2.jpg', 0, '2019-11-16 17:02:13', '0000-00-00 00:00:00'),
(9, 675, '2019-06-01', 15, 780, '319735Subject SAT Scores.pdf', 0, '2019-11-20 08:40:47', '0000-00-00 00:00:00'),
(10, 675, '2019-06-01', 17, 740, '352464Subject SAT Scores.pdf', 0, '2019-11-20 08:41:47', '0000-00-00 00:00:00'),
(11, 693, '2019-10-05', 15, 750, '112780SATStudentScoreReport_1574794629234.pdf', 0, '2019-11-26 18:58:27', '0000-00-00 00:00:00'),
(12, 693, '2019-10-05', 17, 670, '688225SATStudentScoreReport_1574794640138.pdf', 0, '2019-11-26 18:59:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teststoeflibt`
--

CREATE TABLE `teststoeflibt` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `testDate` date NOT NULL,
  `readingScore` int(10) NOT NULL,
  `listeningScore` int(10) NOT NULL,
  `speakingScore` int(10) NOT NULL,
  `writingScore` int(10) NOT NULL,
  `scoreCard` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teststoeflibt`
--

INSERT INTO `teststoeflibt` (`id`, `stuId`, `testDate`, `readingScore`, `listeningScore`, `speakingScore`, `writingScore`, `scoreCard`, `status`, `created_at`, `updated_at`) VALUES
(2, 224, '2018-12-15', 20, 22, 19, 22, '280935ETSNGTCR_0000000035007122.pdf', 1, '2019-10-31 04:13:31', '0000-00-00 00:00:00'),
(3, 375, '2019-08-24', 29, 27, 23, 26, '4367189752008190755696.pdf', 1, '2019-11-12 06:37:13', '0000-00-00 00:00:00'),
(4, 162, '2019-06-19', 28, 28, 28, 29, '473848355D2E8A-0E6A-4FC8-ADF4-01293CBC674C.jpeg', 1, '2019-11-13 19:20:20', '0000-00-00 00:00:00'),
(5, 162, '2019-06-19', 29, 28, 28, 29, '53424719ECC396-28D4-428A-8057-E79E2914C64D.jpeg', 1, '2019-11-14 16:34:44', '0000-00-00 00:00:00'),
(6, 162, '2019-06-19', 29, 27, 28, 28, '188406CEC8F7B5-C904-49AA-B799-2A554ABD489F.jpeg', 1, '2019-11-14 16:51:13', '0000-00-00 00:00:00'),
(7, 162, '2019-06-19', 28, 27, 28, 29, '503628DDC8949A-3E8E-4634-8576-5FDA2B839BF4.jpeg', 1, '2019-11-14 17:38:41', '0000-00-00 00:00:00'),
(8, 720, '2019-11-11', 23, 25, 23, 23, '400377Sunil Shah.jpg', 1, '2019-12-03 16:36:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `uploadtranscripts`
--

CREATE TABLE `uploadtranscripts` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `schoolId` varchar(100) NOT NULL,
  `typeOfTranscript` varchar(100) NOT NULL,
  `uploadedTranscript` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `emailAddress` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sfb_id` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mobile_number` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `emailAddress`, `status`, `sfb_id`, `created_at`, `updated_at`, `mobile_number`) VALUES
(1, 'Ronak Katial', '', 'ravikatial@yahoo.com', 1, '2734197063267279', '2019-10-04 21:49:35', '0000-00-00 00:00:00', NULL),
(2, 'Nitin', 'nitin123', 'nadeore@gmail.com', 1, NULL, '2019-10-11 05:54:12', '0000-00-00 00:00:00', NULL),
(3, 'Antil7678', 'antil7678', 'antilbaghel123k@gmail.com', 0, NULL, '2019-10-05 03:27:59', '0000-00-00 00:00:00', NULL),
(4, 'Archit123', 'archit123', 'architgoeldelhi162@gmail.com', 1, NULL, '2019-10-05 04:11:48', '0000-00-00 00:00:00', NULL),
(5, 'Sapidy', '9004500512', 'gsandeep911@gmail.com', 1, NULL, '2019-10-05 04:25:34', '0000-00-00 00:00:00', NULL),
(6, 'Spidy', '9004500512', 'gsandeep911@gmail.com', 0, NULL, '2019-10-05 04:20:13', '0000-00-00 00:00:00', NULL),
(7, 'Akashgupta', '12345', 'akashgupt958805@gamil.com', 0, NULL, '2019-10-05 04:24:42', '0000-00-00 00:00:00', NULL),
(8, 'Ashu', 'ashleha', 'ashusallo1713@gmail.com', 1, NULL, '2019-10-05 04:28:13', '0000-00-00 00:00:00', NULL),
(9, 'Ashu', 'ashleha', 'ashusallo1713@gmail.com', 0, NULL, '2019-10-05 04:26:03', '0000-00-00 00:00:00', NULL),
(10, 'Ashu', 'ashleha', 'ashusallo1713@gmail.com', 0, NULL, '2019-10-05 04:26:04', '0000-00-00 00:00:00', NULL),
(11, 'Ashu', 'ashleha', 'ashusallo1713@gmail.com', 0, NULL, '2019-10-05 04:26:04', '0000-00-00 00:00:00', NULL),
(12, 'Ashu', 'ashleha', 'ashusallo1713@gmail.cim', 0, NULL, '2019-10-05 04:26:37', '0000-00-00 00:00:00', NULL),
(13, 'Ashu', 'ashleha', 'ashusallo1713@gmail.cim', 0, NULL, '2019-10-05 04:27:26', '0000-00-00 00:00:00', NULL),
(15, 'narweriya', 'Riya@1410', 'narweriya@gmail.com', 1, NULL, '2019-10-05 04:40:30', '0000-00-00 00:00:00', NULL),
(17, 'Nutan singh', '9760303210', 'nrgsingh0@gmail.com', 1, NULL, '2019-10-05 05:02:38', '0000-00-00 00:00:00', NULL),
(18, 'Shivpoojan Gupta', 'shiv123@@@', 'shivpoojangupta2@gmail.com', 1, NULL, '2019-10-05 05:05:21', '0000-00-00 00:00:00', NULL),
(20, 'Sagar Bhatt', '', 'sagarbhatt.48@gmail.com', 1, '1463403607131458', '2019-10-05 05:33:07', '0000-00-00 00:00:00', NULL),
(23, 'Ankit', 'ankit', 'ankitvsrock@gmail.com', 1, NULL, '2019-10-05 06:48:18', '0000-00-00 00:00:00', NULL),
(25, 'Shivajipunewale99@gmail.com', '147123147123', 'shivajipunewale99@gmail.com', 1, NULL, '2019-10-05 05:43:47', '0000-00-00 00:00:00', NULL),
(26, 'Jayesh Patil', '', 'jp7387598334j@gmail.com', 1, '789709961498865', '2019-10-05 06:26:32', '0000-00-00 00:00:00', NULL),
(27, 'Amit7678', 'amit7678', 'jimataprinter@gmail.com', 1, NULL, '2019-10-05 06:34:56', '0000-00-00 00:00:00', NULL),
(28, 'Anuradha sudke', 'Anuradha@1234', 'anuradhasudke1998@gmail.com', 1, NULL, '2019-10-05 06:38:06', '0000-00-00 00:00:00', NULL),
(29, 'Sumit8467', 'sumit8467', 'sumit8467@icloudgmail.com', 0, NULL, '2019-10-05 06:44:24', '0000-00-00 00:00:00', NULL),
(30, 'Ankit1234', 'ankit1234', 'ankitvsrock@gmail.com', 0, NULL, '2019-10-05 06:45:22', '0000-00-00 00:00:00', NULL),
(31, 'Sourabh9716', 'sourabh9716', 'sourabhgupta9716@gmail.com', 1, NULL, '2019-10-05 07:57:01', '0000-00-00 00:00:00', NULL),
(32, 'Nansi2216', 'Nansi2216', 'ng2216960@gmail.com', 0, NULL, '2019-10-05 06:47:35', '0000-00-00 00:00:00', NULL),
(33, 'Shees123', 'shees123', 'shees26@gmail.com', 0, NULL, '2019-10-05 06:50:22', '0000-00-00 00:00:00', NULL),
(34, 'Ankit1234', 'Ankit1234', 'ankitvsrock@gmail.com', 0, NULL, '2019-10-05 06:51:56', '0000-00-00 00:00:00', NULL),
(35, '8087949225', 'pushpakpatil', 'patilpushpak956154@gmail.com', 0, NULL, '2019-10-05 06:55:25', '0000-00-00 00:00:00', NULL),
(36, '8087949225', 'pushpakpatil', 'patilpushpak956154@gmail.com', 0, NULL, '2019-10-05 06:57:37', '0000-00-00 00:00:00', NULL),
(37, 'ronakk', 'ronak123', 'ronakkatial@gmail.com', 1, NULL, '2019-10-05 07:04:20', '0000-00-00 00:00:00', NULL),
(38, 'Pratishmeghe', 'radha4737', 'pratishmeghe3748@gmail.com', 0, NULL, '2019-10-05 07:03:38', '0000-00-00 00:00:00', NULL),
(39, 'Nisarg', 'Nisarg@75', 'nisarg75kothari@gmail.com', 1, NULL, '2019-10-05 07:11:10', '0000-00-00 00:00:00', NULL),
(40, 'Nisarg', 'nisarg75', 'nisarg75kothari@gmail.com', 0, NULL, '2019-10-05 07:07:18', '0000-00-00 00:00:00', NULL),
(41, 'Sajid123', 'sajid123', 'mds72399@gmail.com', 1, NULL, '2019-10-05 07:53:30', '0000-00-00 00:00:00', NULL),
(42, 'Sazid', 'sazid234', 'mds72399@gmail.com', 0, NULL, '2019-10-05 07:10:57', '0000-00-00 00:00:00', NULL),
(43, 'wridhi', '8669106275', 'wridhi8669@gmail.com', 0, NULL, '2019-10-05 07:20:01', '0000-00-00 00:00:00', NULL),
(44, 'Sanjay', 'sanjay9953', 'sanjaykumar06276@gmail.com', 0, NULL, '2019-10-05 07:21:45', '0000-00-00 00:00:00', NULL),
(45, 'Sanjay', 'sanjay9953', 'sanjaykumar06276@gmail.com', 0, NULL, '2019-10-05 07:22:38', '0000-00-00 00:00:00', NULL),
(46, 'Sanjay mandal', 'sanjay9953', 'sanjaykumar06276@gmail.com', 0, NULL, '2019-10-05 07:23:02', '0000-00-00 00:00:00', NULL),
(47, '8669106275', 'Pushpak', 'wridhi8669@gmail.com', 0, NULL, '2019-10-05 07:35:07', '0000-00-00 00:00:00', NULL),
(48, 'Giridesh', 'giridesh', 'aboorvasekar@gmail.com', 0, NULL, '2019-10-05 07:37:08', '0000-00-00 00:00:00', NULL),
(49, 'Dineshtest', 'GTS@1234', 'dineshsadhwani4@gmail.com', 1, NULL, '2019-10-05 07:38:37', '0000-00-00 00:00:00', NULL),
(50, 'hrishikesh', 'Patil85@', 'patilhrishikesh85@yahoo.com', 1, NULL, '2019-10-05 07:52:32', '0000-00-00 00:00:00', NULL),
(51, 'Sarthak00', 'johncena', 'sarthakchanana9@gmail.com', 1, NULL, '2019-10-05 07:51:33', '0000-00-00 00:00:00', NULL),
(52, 'Ankit1234', 'ankit1234', 'ankitvsrock@gmail.com', 0, NULL, '2019-10-05 07:50:32', '0000-00-00 00:00:00', NULL),
(53, 'Simi123', 'simi123', 'simineongirl@gmail.com', 1, NULL, '2019-10-05 07:54:59', '0000-00-00 00:00:00', NULL),
(54, 'Akshay', 'akkibhao', 'akshaydarade20@gmail.com', 1, NULL, '2019-10-05 07:56:28', '0000-00-00 00:00:00', NULL),
(55, 'Sourabh9716', 'sourabh9716', 'sourabhgupta9716@gmail.com', 0, NULL, '2019-10-05 07:54:12', '0000-00-00 00:00:00', NULL),
(56, 'antil9001', 'antil9001', 'antilbaghel@gmail.com', 1, NULL, '2019-10-05 07:57:44', '0000-00-00 00:00:00', NULL),
(57, '8669106275', 'Pushpak', 'wridhi8669@gmail.com', 0, NULL, '2019-10-05 07:57:50', '0000-00-00 00:00:00', NULL),
(58, 'Pulkit', 'psk', 'pulkitsansi2@gmail.com', 1, NULL, '2019-10-05 07:59:15', '0000-00-00 00:00:00', NULL),
(59, 'Rohan123', 'rohan123', 'atomr.webs.com@gmail.com', 1, NULL, '2019-10-05 08:00:36', '0000-00-00 00:00:00', NULL),
(60, '8669106275', 'anilwagh', 'arwadh110@gmail.com', 0, NULL, '2019-10-05 07:59:53', '0000-00-00 00:00:00', NULL),
(61, '8669106275', 'wridhi', 'wridhi8669@gmail.com', 0, NULL, '2019-10-05 08:18:28', '0000-00-00 00:00:00', NULL),
(62, 'nakradeepak@gmail.com', 'realme2019', 'nakradeepak@gmail.com', 0, NULL, '2019-10-05 08:22:43', '0000-00-00 00:00:00', NULL),
(63, 'joompol', 'joompol', 'joompolk@yahoo.com', 0, NULL, '2019-10-05 08:27:26', '0000-00-00 00:00:00', NULL),
(64, 'Muthuvel', 'muthu@1204', 'muthuvel.r1204@gmail.com', 0, NULL, '2019-10-05 08:42:56', '0000-00-00 00:00:00', NULL),
(65, 'Muthuvel', 'muthu@1204', 'muthuvel.r1204@gmail.com', 0, NULL, '2019-10-05 08:44:47', '0000-00-00 00:00:00', NULL),
(66, 'Muthu Vel', '', 'www.muthuvel.r2001@gmail.com', 1, '506918976795543', '2019-10-05 08:45:13', '0000-00-00 00:00:00', NULL),
(68, 'DineshT2', 'gts@1234', 'dineshsadhwani4@gmail.com', 1, NULL, '2019-10-05 11:27:53', '0000-00-00 00:00:00', NULL),
(69, 'Sanjit Narwekar', '', 'sanjit@hotmail.com', 1, '10157720758064421', '2019-10-05 18:29:07', '0000-00-00 00:00:00', NULL),
(70, 'Sanjit Narwekar', '', 'sanjitn@gmail.com', 1, '105847372124544339573', '2019-10-05 18:30:14', '0000-00-00 00:00:00', NULL),
(72, 'DUBE BAPAMHIDZI', 'casemoyo1', 'dubebapamhidzi2000@gmail.com', 0, NULL, '2019-10-06 21:57:07', '0000-00-00 00:00:00', NULL),
(73, 'Dinesh Sadhwani', '', 'dinesh.sadhwani@globaltalentsearch.us', 1, '115313640354581184487', '2019-10-07 08:54:12', '0000-00-00 00:00:00', NULL),
(74, 'TestDInesh', 'gts@111', 'dinesh.sadhwani@globaltalentsearch.us', 0, NULL, '2019-10-07 08:56:57', '0000-00-00 00:00:00', NULL),
(75, 'TestDinesh', 'gts@111', 'dineshsadhwani4@gmail.com', 0, NULL, '2019-10-07 09:03:07', '0000-00-00 00:00:00', NULL),
(76, 'Karthick Kumar', '', 'geogatedproject265@gmail.com', 1, '10150073278954141', '2019-10-11 06:28:06', '0000-00-00 00:00:00', NULL),
(77, 'Annanya', 'qwert369', 'annanya2000p@gmail.com', 1, NULL, '2019-10-12 13:31:44', '0000-00-00 00:00:00', NULL),
(78, 'Ankit', 'ankit81041', 'anki06905@gmail.com', 1, NULL, '2019-10-15 11:39:42', '0000-00-00 00:00:00', NULL),
(79, 'tanmayagrawal21', 'priyaagrawal2004', 'tanmayagrawal2004@gmail.com', 0, NULL, '2019-10-15 13:13:24', '0000-00-00 00:00:00', NULL),
(80, 'Mustakim Khan', 'mastermind702', 'mustakimkhan5392@gmail.com', 0, NULL, '2019-10-16 13:26:47', '0000-00-00 00:00:00', NULL),
(81, 'SURABHIJHA', 'PAPACID', 'ejha08@gmail.com', 1, NULL, '2019-10-17 11:28:26', '0000-00-00 00:00:00', NULL),
(82, 'RAJ110', 'Dhrumin@123', 'raj@dhanadal.com', 1, NULL, '2019-10-19 06:00:56', '0000-00-00 00:00:00', NULL),
(83, 'Arnav Verma', 'arnavverma', 'arnavv25@gmail.com', 0, NULL, '2019-10-19 09:00:09', '0000-00-00 00:00:00', NULL),
(84, 'Chirag182002', 'Cb_180102', 'sushilbhardwaj16@gmail.com', 1, NULL, '2019-10-20 06:44:50', '0000-00-00 00:00:00', NULL),
(85, 'Dinesh test', 'gts@1234', 'dinesh.sadhwani@globaltalentsearch.us', 0, NULL, '2019-10-21 13:27:23', '0000-00-00 00:00:00', NULL),
(86, 'Sneha Dhariwal', '7424855678', 'snehadhariwal22@gmail.com', 0, NULL, '2019-10-23 06:37:52', '0000-00-00 00:00:00', NULL),
(87, 'Meghal jain', 'Ppmrhjain123', 'meghaljain2017@gmail.com', 1, NULL, '2019-10-23 13:53:56', '0000-00-00 00:00:00', NULL),
(88, 'sohamkej', 'Soham@123', 'kejriwal.soham@gmail.com', 1, NULL, '2019-10-23 11:15:52', '0000-00-00 00:00:00', NULL),
(89, 'Jahnavi', 'iamjuno', 'janavirao19@gmail.com', 0, NULL, '2019-10-23 15:09:50', '0000-00-00 00:00:00', NULL),
(90, 'Keshav', 'keshav18062007', '9798371611.neetu@gmail.com', 1, NULL, '2019-10-24 06:07:49', '0000-00-00 00:00:00', NULL),
(91, 'rajatsharma2680', 'sairam@0203', 'shailysharma408@gmail.com', 1, NULL, '2019-10-24 08:39:04', '0000-00-00 00:00:00', NULL),
(92, 'nellippillilind@gmail.com', 'godblessyou', 'nellippillilind@gmail.com', 1, NULL, '2019-10-26 04:38:25', '0000-00-00 00:00:00', NULL),
(93, 'nellippillilind@gmail.com', 'godblessyou', 'nellippillilind@gmail.com', 0, NULL, '2019-10-26 04:38:25', '0000-00-00 00:00:00', NULL),
(94, 'Kavya_jain', 'kavya1209', 'kavyaj364@gmail.com', 1, NULL, '2019-10-25 08:16:12', '0000-00-00 00:00:00', NULL),
(95, 'Soumik Mondal', 'iamsoumik123', 'soumikmondal2002@gmail.com', 1, NULL, '2019-10-25 08:21:27', '0000-00-00 00:00:00', NULL),
(96, 'Soumik Mondal', 'iamsoumik123', 'soumikmondal2002@gmail.com', 0, NULL, '2019-10-25 08:17:19', '0000-00-00 00:00:00', NULL),
(97, 'Harsh Agarwal', 'hellousa09', '2002harsh@gmail.com', 0, NULL, '2019-10-25 09:31:04', '0000-00-00 00:00:00', NULL),
(98, 'Sugandha007', 'sugandha7', 'sugandha1704@gmail.com', 1, NULL, '2019-10-25 09:39:16', '0000-00-00 00:00:00', NULL),
(99, 'Sugandha Srivastava', '', 'sugandha2002@gmail.com', 1, '1156122091247710', '2019-10-25 09:34:31', '0000-00-00 00:00:00', NULL),
(100, 'Anisha Sarkar', 'lobster2002', 'anishasarkar91102@gmail.com', 1, NULL, '2019-10-25 11:45:47', '0000-00-00 00:00:00', NULL),
(101, 'Swagatam Saha', 'Swaggy2112$', 'swagatamsaha2002@gmail.com', 1, NULL, '2019-10-25 12:02:50', '0000-00-00 00:00:00', NULL),
(102, 'Annesha Sarkar', 'annesha_2003', 'anneshasarkar11062003@gmail.com', 0, NULL, '2019-10-25 13:41:27', '0000-00-00 00:00:00', NULL),
(103, 'Param Lodha', 'param2002', 'paramlodha5@gmail.com', 0, NULL, '2019-10-25 13:41:53', '0000-00-00 00:00:00', NULL),
(104, 'rajarshi_basu', 'rajo2002', 'rajobasu@gmail.com', 1, NULL, '2019-10-25 15:12:29', '0000-00-00 00:00:00', NULL),
(105, 'rajarshi_basu', 'rajo2002', 'rajobasu@gmail.com', 0, NULL, '2019-10-25 14:44:03', '0000-00-00 00:00:00', NULL),
(106, 'rajarshi_basu', 'rajo2002', 'rajobasu@gmail.com', 0, NULL, '2019-10-25 14:49:25', '0000-00-00 00:00:00', NULL),
(107, 'Chandrima', 'bssdps', 'chandrimabss@gmail.com', 1, NULL, '2019-10-25 15:11:01', '0000-00-00 00:00:00', NULL),
(108, 'Saunak', 'CHARIZAURD', 'saunak.saha321@gmail.com', 0, NULL, '2019-10-25 15:42:40', '0000-00-00 00:00:00', NULL),
(109, 'Saunak', 'CHARIZAURD', 'debjani.saha011@gmail.com', 0, NULL, '2019-10-25 15:43:22', '0000-00-00 00:00:00', NULL),
(110, 'Sneha', 'sneha22', 'barmansubashchandra@gmail.com', 0, NULL, '2019-10-25 16:45:30', '0000-00-00 00:00:00', NULL),
(111, 'aindribajpai', 'aindri1929', 'aindri2003@gmail.com', 1, NULL, '2019-10-25 17:01:06', '0000-00-00 00:00:00', NULL),
(112, 'aindribajpai', 'aindri1929', 'aindri2003@gmail.com', 0, NULL, '2019-10-25 16:59:51', '0000-00-00 00:00:00', NULL),
(113, 'Adrija Nandy', 'cbse2021', 'nadrija810@gmail.com', 1, NULL, '2019-10-25 21:01:13', '0000-00-00 00:00:00', NULL),
(114, 'diyaxavier', 'godblessyou', 'nellippillilind@gmail.com', 0, NULL, '2019-10-26 04:38:25', '0000-00-00 00:00:00', NULL),
(115, 'Don Xavier', '', 'donxavier9@gmail.com', 1, '3113214775417690', '2019-10-26 04:40:40', '0000-00-00 00:00:00', NULL),
(116, 'Richirs', 'papa1234', 'sinha.richik@gmail.com', 1, NULL, '2019-10-29 05:13:53', '0000-00-00 00:00:00', NULL),
(117, 'Akshat Banerjee', 'Vodafone@123', 'akshat@banerjeeonline.com', 1, NULL, '2019-10-26 07:28:00', '0000-00-00 00:00:00', NULL),
(118, 'Ritwik', 'rcdps@01', 'ritwik.chakrabarti01@gmail.com', 1, NULL, '2019-10-26 08:56:03', '0000-00-00 00:00:00', NULL),
(119, 'Pankaj_Joshi', 'guitar123#', 'pankajjossy7@gmail.com', 1, NULL, '2019-10-26 10:31:28', '0000-00-00 00:00:00', NULL),
(120, 'Pritam', 'Pritam@123', 'Pritam.bhuiya99@gmail.com', 1, NULL, '2019-10-26 11:03:15', '0000-00-00 00:00:00', NULL),
(121, 'Praney', 'purupankh', 'praney2607@gmail.com', 1, NULL, '2019-10-26 12:12:28', '0000-00-00 00:00:00', NULL),
(122, 'Angelin', 'pranaivallentyne', 'angelinepraisy091@gmail.com', 1, NULL, '2019-10-26 12:40:51', '0000-00-00 00:00:00', NULL),
(123, 'Angelin', 'pranaivallentyne', 'angelinepraisy091@gmail.com', 0, NULL, '2019-10-26 12:40:19', '0000-00-00 00:00:00', NULL),
(124, 'Annesha', 'fiona@123', 'brownfiona3939@gmail.com', 1, NULL, '2019-10-26 16:16:07', '0000-00-00 00:00:00', NULL),
(125, 'Rishitagulani', 'jaimatadi122', 'rishitagulani08@gmail.com', 0, NULL, '2019-10-26 13:25:56', '0000-00-00 00:00:00', NULL),
(126, 'Jayanta Majumder', 'lokgatha', 'debimajumder28@gmail.com', 0, NULL, '2019-10-26 13:28:21', '0000-00-00 00:00:00', NULL),
(127, 'Srija', 'Srija.gts03', 'sagarreddy927@gmail.com', 1, NULL, '2019-10-26 13:50:16', '0000-00-00 00:00:00', NULL),
(128, 'anurupmondal75', 'Anurup@14032003', 'anup.mondal.101@gmail.com', 1, NULL, '2019-10-26 15:03:46', '0000-00-00 00:00:00', NULL),
(129, 'Manuj Mittal', '', 'xxxxx1234error@gmail.com', 1, '3027746847254366', '2019-10-26 15:02:45', '0000-00-00 00:00:00', NULL),
(130, 'anurupmondal75', 'Anurup@14032003', 'anup.mondal.101@gmail.com', 0, NULL, '2019-10-26 15:02:47', '0000-00-00 00:00:00', NULL),
(131, 'NAVED ISHA MANDAL', 'naved1996', 'naved96isha@gmail.com', 1, NULL, '2019-10-26 15:18:53', '0000-00-00 00:00:00', NULL),
(132, 'Puneetkaur', 'sarab121103', 'puneetkauraulakh4@gmail.com', 1, NULL, '2019-10-26 16:30:43', '0000-00-00 00:00:00', NULL),
(133, 'Sarbari Chatterjee', '', 'sarbarichatterjee@ymail.com', 1, '2494872550590256', '2019-10-26 17:48:05', '0000-00-00 00:00:00', NULL),
(134, 'HARSH ARVIND SHELWATKAR', 'HARSH0585', 'hshelwatkar@gmail.com', 1, NULL, '2019-10-26 18:17:39', '0000-00-00 00:00:00', NULL),
(135, 'dhruv23', '#Jaigurudev', 'dhrisha2315@gmail.com', 1, NULL, '2019-10-27 05:21:01', '0000-00-00 00:00:00', NULL),
(136, 'Sayani Ghosh', '', 'shawanighos1997@gmail.com', 1, '1147111735678142', '2019-10-27 07:30:26', '0000-00-00 00:00:00', NULL),
(137, 'Soumodeep23', 'Soumodeep@2002', 'mauhachakraborty@gmail.com', 1, NULL, '2019-10-27 08:06:43', '0000-00-00 00:00:00', NULL),
(138, 'Mathew thomas', 'Pandy@2019', 'mathewthomas2019@hotmail.com', 1, NULL, '2019-10-27 12:27:45', '0000-00-00 00:00:00', NULL),
(139, 'Mustakim Khan', '12345670', 'mustakimkhan5392@gmail.com', 0, NULL, '2019-10-27 12:53:36', '0000-00-00 00:00:00', NULL),
(140, 'Raj Singh', '', 'rajivsingh.kne09@gmail.com', 1, '10211846871967639', '2019-10-27 12:54:02', '0000-00-00 00:00:00', NULL),
(141, 'Josephroy', 'ronaldo07', 'josephroy07011@gmail.com', 1, NULL, '2019-10-27 16:42:06', '0000-00-00 00:00:00', NULL),
(142, 'Sksoumik', 'Sudeep7877', 'jeetkundu43@gmail.com', 1, NULL, '2019-10-27 17:25:45', '0000-00-00 00:00:00', NULL),
(143, 'Ayushinagrawala', 'iloveonedirection', 'ayushinagrawala22@gmail.com', 1, NULL, '2019-10-27 17:47:29', '0000-00-00 00:00:00', NULL),
(144, 'ritvik', 'Global@916', 'ritvik916@gmail.com', 1, NULL, '2019-10-27 19:29:14', '0000-00-00 00:00:00', NULL),
(145, 'Rohit rawat', '789628', 'rr8639155@gmail.com', 0, NULL, '2019-10-27 19:35:43', '0000-00-00 00:00:00', NULL),
(146, 'Jhalak.02', 'jhalak0201', 'jhalakbansal02@gmail.com', 1, NULL, '2019-10-27 20:20:01', '0000-00-00 00:00:00', NULL),
(147, 'Abhi Ram', 'abhiram123', 'abhiram.1234.dsab@gmail.com', 1, '2415202082133393', '2019-11-19 12:09:05', '0000-00-00 00:00:00', NULL),
(148, 'Mdsadiq Killedar', '', 'mdsadiqkilledar786@gmail.com', 1, '521228895100346', '2019-10-28 01:54:54', '0000-00-00 00:00:00', NULL),
(149, 'Thakurkrishna Tomar', '', 'tomarkrishna280@gmail.com', 1, '550157229134640', '2019-10-28 02:00:24', '0000-00-00 00:00:00', NULL),
(150, 'Ashendrasingh', '09/08/2002', 'singhashendra12@gmail.com', 1, NULL, '2019-10-28 03:06:43', '0000-00-00 00:00:00', NULL),
(151, 'Rami', 'iscoalarcon22', 'ramihassoun10@gmail.com', 1, NULL, '2019-11-13 12:02:16', '0000-00-00 00:00:00', NULL),
(152, 'George Jogi', '', 'georgejogi2002@gmail.com', 1, '1556105401196436', '2019-10-28 03:55:12', '0000-00-00 00:00:00', NULL),
(153, 'Navneet Choudhary', '', 'navneetnavneet445@gmail.com', 1, '538781763583164', '2019-10-28 05:38:54', '0000-00-00 00:00:00', NULL),
(154, 'Axit Prajapati', '10failboi', 'prajapatiakshitaj@gmail.com', 1, NULL, '2019-10-28 07:48:48', '0000-00-00 00:00:00', NULL),
(155, 'Luza', '10failboi', 'akshitprajapati342@gmail.com', 0, NULL, '2019-10-28 06:04:03', '0000-00-00 00:00:00', NULL),
(156, 'Luza', '10failboi', 'akshitprajapati342@gmail.com', 0, NULL, '2019-10-28 06:05:09', '0000-00-00 00:00:00', NULL),
(157, 'Amulya Kalyani', 'justin18', 'coffeeand.dreamsinsta@gmail.com', 1, NULL, '2019-10-28 08:33:41', '0000-00-00 00:00:00', NULL),
(158, 'Nidhi kalal', '230303', 'Sushilakal1979@gmail.com', 0, NULL, '2019-10-28 08:45:28', '0000-00-00 00:00:00', NULL),
(159, 'Shahrukh Khan', '9336657472', 'srkplayer47@gmail.com', 1, NULL, '2019-10-28 09:02:27', '0000-00-00 00:00:00', NULL),
(160, 'jaimin', 'jake007*', 'jaimin.chokhawala@gmail.com', 1, NULL, '2019-10-28 09:28:18', '0000-00-00 00:00:00', NULL),
(161, 'jaimin', 'jake007-*', 'jaimin.chokhawala@gmail.com', 0, NULL, '2019-10-28 09:27:47', '0000-00-00 00:00:00', NULL),
(162, 'Joyce Houngbo', 'rama24', 'ramahoungbo@gmail.com', 1, NULL, '2019-10-29 22:54:58', '0000-00-00 00:00:00', NULL),
(163, 'Subhasri', 'Subha@02', 'subhasriarjun@gmail.com', 1, NULL, '2019-11-01 13:54:18', '0000-00-00 00:00:00', NULL),
(164, 'Har5162', 'harshagarwal', 'hagarwal619@gmail.com', 1, NULL, '2019-10-28 11:53:48', '0000-00-00 00:00:00', NULL),
(165, 'Rohit dohare', '8999471198', 'rohitsahu9209@gmail.com', 0, NULL, '2019-10-28 12:00:51', '0000-00-00 00:00:00', NULL),
(166, 'Vanshraj09', 'alwaysthankful', 'vanshraj.singh09.vs@gmail.com', 1, NULL, '2019-10-28 12:12:55', '0000-00-00 00:00:00', NULL),
(167, 'rohitj_10', 'leomessi', 'jeswanirohit958@gmail.com', 1, NULL, '2019-10-28 15:56:29', '0000-00-00 00:00:00', NULL),
(168, 'Ashok k', 'KSAP2000', 'kannansundari2000@gmail.com', 1, NULL, '2019-10-28 17:23:04', '0000-00-00 00:00:00', NULL),
(169, 'Ashok k', 'KSAP2000', 'kannansundari2000@gmail.com', 0, NULL, '2019-10-28 17:19:57', '0000-00-00 00:00:00', NULL),
(170, 'Ashok', 'KSAP2000', 'kannansundari2000@gmail.com', 0, NULL, '2019-10-28 17:22:47', '0000-00-00 00:00:00', NULL),
(171, 'Aniket Anand', 'scholarship', 'aniketjsr7942@gmail.com', 0, NULL, '2019-10-28 17:59:31', '0000-00-00 00:00:00', NULL),
(172, 'Aniket Anand', 'scholarship', 'aniketjsr7942@gmail.com', 0, NULL, '2019-10-28 17:59:31', '0000-00-00 00:00:00', NULL),
(173, 'Akshat awasthi', 'awasthiroyal', 'harshitawasthi5051@gmail.com', 1, NULL, '2019-10-29 00:43:20', '0000-00-00 00:00:00', NULL),
(174, 'Boparai', 'kuckoo72', 'Pawanjotboparai@gmail.com', 1, NULL, '2019-10-29 01:43:43', '0000-00-00 00:00:00', NULL),
(175, 'Sri4747', 'jayeetaroy', 'srijeetaroy47@gmail.com', 0, NULL, '2019-10-29 04:25:48', '0000-00-00 00:00:00', NULL),
(176, 'jeevanyohan', 'mvk.690101', 'jeevanyohan@gmail.com', 1, NULL, '2019-10-29 07:52:39', '0000-00-00 00:00:00', NULL),
(177, 'Neha gupta', '9594264620', 'neharohitgupta2000@gmail.com', 0, NULL, '2019-10-29 06:04:06', '0000-00-00 00:00:00', NULL),
(178, 'Akashtn78', 'arn19092003', 'akashnoubade2003@gmail.com', 1, NULL, '2019-10-29 07:12:43', '0000-00-00 00:00:00', NULL),
(179, 'Siddhant Gupta', '654321', 'siddhantguptaascii99@gmail.com', 0, NULL, '2019-10-29 07:24:25', '0000-00-00 00:00:00', NULL),
(180, 'JEFFREY SHIJO', 'jeffrey2523', 'jeffreyshijo@hotmail.com', 1, NULL, '2019-10-29 07:39:09', '0000-00-00 00:00:00', NULL),
(181, 'Nikhil Santhosh', 'Nikhilchiramel', 'nikhilsanthosh89@gmail.com', 1, NULL, '2019-10-29 07:57:02', '0000-00-00 00:00:00', NULL),
(182, 'Nikhil Santhosh', 'Nikhilchiramel', 'nikhilsanthosh89@gmail.com', 0, NULL, '2019-10-29 07:55:50', '0000-00-00 00:00:00', NULL),
(183, 'Kuldeep', 'pkspe233', 'kuldeepsummi@gmail.com', 1, NULL, '2019-10-29 08:35:56', '0000-00-00 00:00:00', NULL),
(184, 'BITTU KUMAR', 'jethauna', 'bitturaj801303@gmail.com', 1, NULL, '2019-11-01 04:00:29', '0000-00-00 00:00:00', NULL),
(185, 'Ram vishwakarma', '123456789', 'rambossvish@gmail.com', 0, NULL, '2019-10-29 12:11:55', '0000-00-00 00:00:00', NULL),
(186, 'Ram vishwakarma', '123456789', 'rambossvish@gmail.com', 0, NULL, '2019-10-29 12:11:56', '0000-00-00 00:00:00', NULL),
(187, 'gehnnaghai', 'gg0619100', 'gehnna2003@gmail.com', 1, NULL, '2019-10-29 12:57:50', '0000-00-00 00:00:00', NULL),
(188, 'bhavishya7', 'ABCG47', 'bhavishya.chauhan777@gmail.com', 1, NULL, '2019-10-29 15:14:31', '0000-00-00 00:00:00', NULL),
(189, 'Shahrukh Khan', '9336657472', 'srkplayer47@gmail.com', 0, NULL, '2019-10-29 15:19:46', '0000-00-00 00:00:00', NULL),
(190, 'Abhi', '8085142386', 'www.gauravjamre8@gamil.com', 0, NULL, '2019-10-29 17:05:42', '0000-00-00 00:00:00', NULL),
(191, 'divyanshchauhan03', 'saibaba333', 'chauhan.divyansh03@gmail.com', 0, NULL, '2019-10-29 17:12:08', '0000-00-00 00:00:00', NULL),
(192, 'Fiza khan', 'sabiya910', 'mutegirl609@gmail.com', 0, NULL, '2019-10-29 17:37:37', '0000-00-00 00:00:00', NULL),
(193, 'Krishna Pratap Singh', '1850194', 'krishnapratap008@gmail.com', 0, NULL, '2019-10-29 18:15:25', '0000-00-00 00:00:00', NULL),
(194, 'Alok Kumar', '91alokkumar', 'mahtoalokkumar29@gmail.com', 0, NULL, '2019-10-30 00:44:07', '0000-00-00 00:00:00', NULL),
(195, 'HarshithaValli8', '9448133303', 'naidu24ka.co@gmail.com', 1, NULL, '2019-10-30 02:27:17', '0000-00-00 00:00:00', NULL),
(196, 'Krishna Gupta', 'radheradhe', 'rockinggupta2005@gmail.com', 0, NULL, '2019-10-30 04:38:59', '0000-00-00 00:00:00', NULL),
(197, 'Pravesh@11', 'Janu@111', 'praveshshukla2146940@gmail.com', 1, NULL, '2019-10-30 06:07:32', '0000-00-00 00:00:00', NULL),
(198, 'Pravesh@11', 'Janu@111', 'praveshshukla2146940@gmail.com', 0, NULL, '2019-10-30 06:06:50', '0000-00-00 00:00:00', NULL),
(199, 'saurav.sivaprasad', 'isronasa2002', 'saurav.sivaprasad@gmail.com', 1, NULL, '2019-10-30 07:12:10', '0000-00-00 00:00:00', NULL),
(200, 'Devprasad gouda', 'Dev@123456', 'devprasadgouda@gmail.com', 1, NULL, '2019-10-30 07:16:26', '0000-00-00 00:00:00', NULL),
(201, 'Pranav Naik', 'pranavpranati', 'pranavnaik250901@gmail.com', 1, NULL, '2019-10-30 07:37:43', '0000-00-00 00:00:00', NULL),
(202, 'Navpreet', '29august2001', 'mehakgill00@gmail.com', 1, NULL, '2019-10-30 09:54:06', '0000-00-00 00:00:00', NULL),
(203, 'ADARSH', 'ousu@2002', 'alphaniemini@gmail.com', 1, NULL, '2019-10-30 09:58:33', '0000-00-00 00:00:00', NULL),
(204, 'Prashanta Kumar Sahu', '', 'prashantacpd36@rediffmail.com', 1, '1194255407433492', '2019-10-30 09:57:44', '0000-00-00 00:00:00', NULL),
(205, 'Shaista noorin', 'icecream7', 'shaistanoorin573@gmail.com', 0, NULL, '2019-10-30 10:22:49', '0000-00-00 00:00:00', NULL),
(206, 'Lamp_pawan', 'Lampawankumar', 'majjipawankumar@gmail.com', 1, NULL, '2019-10-30 11:26:52', '0000-00-00 00:00:00', NULL),
(207, 'Asilaa Abbas', 'MALABBU', 'aishuabu1995@gmail.com', 1, NULL, '2019-10-30 12:49:29', '0000-00-00 00:00:00', NULL),
(208, 'Shibam Sarkar', 'shibam2002', 'shibamss715@gmail.com', 1, NULL, '2019-10-30 12:15:06', '0000-00-00 00:00:00', NULL),
(209, 'Asilaa Abbas', 'MONICAASILAA', 'asilaaabbas1703@gmail.com', 1, NULL, '2019-10-30 13:08:54', '0000-00-00 00:00:00', NULL),
(210, 'Omi143', 'Jagruti@143', 'desaiom9207@gmail.com', 1, NULL, '2019-10-30 13:21:18', '0000-00-00 00:00:00', NULL),
(211, 'Ronny', 'Rooney10', 'ronnymurimi@gmail.com', 1, NULL, '2019-10-30 13:46:18', '0000-00-00 00:00:00', NULL),
(212, 'Arun Unnikrishnan', '', 'arununni2007@yahoo.in', 1, '2746752222057838', '2019-10-30 14:20:29', '0000-00-00 00:00:00', NULL),
(213, 'Lahareesh', 'vedasree', 'lahareeshgoud@gmail.com', 1, NULL, '2019-10-30 16:02:54', '0000-00-00 00:00:00', NULL),
(214, 'Lahareesh', 'vedasree', 'lahareeshgoud@gmail.com', 0, NULL, '2019-10-30 15:59:03', '0000-00-00 00:00:00', NULL),
(215, 'Busareddy Srikanth', '', 'skthreddy@gmail.com', 1, '3141377232555995', '2019-10-30 16:00:05', '0000-00-00 00:00:00', NULL),
(216, 'Sharmistha Das', '', 'dassharmistha18@yahoo.com', 1, '2415288645236800', '2019-10-30 16:04:01', '0000-00-00 00:00:00', NULL),
(217, 'Aditya', 'aditya123', 'adityabalpande66@gmail.com', 1, NULL, '2019-10-30 16:24:49', '0000-00-00 00:00:00', NULL),
(218, 'Vipashabisht08', 'wdtamlwutd08', 'vips7.08@gmail.com', 1, NULL, '2019-10-30 18:15:59', '0000-00-00 00:00:00', NULL),
(219, 'Irfan Ali', '', 'xxirfan153@gmail.com', 1, '634515803746325', '2019-10-30 20:05:14', '0000-00-00 00:00:00', NULL),
(220, 'Vikashjaisiya', '6395863578', 'vikashjaisiyavikashjaisiya@gmail.com', 0, NULL, '2019-10-31 01:15:30', '0000-00-00 00:00:00', NULL),
(221, 'Chetan_sai', 'chetan', 'psaichetan8@gmail.com', 1, NULL, '2019-10-31 01:35:22', '0000-00-00 00:00:00', NULL),
(222, 'Vikas sainath Adhav', '60008q', 'vikasadhav4668@gmail.com', 0, NULL, '2019-10-31 01:50:29', '0000-00-00 00:00:00', NULL),
(223, 'Mileen Vincent', 'jesus123mary', 'mileenvincent123@gmail.com', 1, NULL, '2019-11-01 04:32:25', '0000-00-00 00:00:00', NULL),
(224, 'dev27', 'dev270301', 'dev272.dv@icloud.com', 1, NULL, '2019-10-31 03:52:06', '0000-00-00 00:00:00', NULL),
(225, 'Sanjeev Arora', 'titu2titu', 's.bne_arora@yahoo.co.in', 1, NULL, '2019-10-31 07:04:23', '0000-00-00 00:00:00', NULL),
(226, '??? ???????', '', 'pawanarya2014@rediffmail.com', 1, '2423640904578716', '2019-10-31 04:28:51', '0000-00-00 00:00:00', NULL),
(227, 'zayn0709', 'Tejas@123', 'tejasbhadouriya2@gmail.com', 1, NULL, '2019-10-31 05:07:38', '0000-00-00 00:00:00', NULL),
(228, 'rmanikanda88', 'Learn@123', 'rmanikanda88@gmail.com', 1, NULL, '2019-10-31 06:28:24', '0000-00-00 00:00:00', NULL),
(229, 'Sampreethreddy7', 'samkrish@123', 'reddysampreeth123@gmail.com', 1, NULL, '2019-10-31 06:39:38', '0000-00-00 00:00:00', NULL),
(230, 'Sampreethreddy7', 'samkrish@123', 'reddysampreeth123@gmail.com', 0, NULL, '2019-10-31 06:40:59', '0000-00-00 00:00:00', NULL),
(231, 'JaspreetSrah', 'Exam@2000', 'jaspreetkaur6237@gmail.com', 1, NULL, '2019-10-31 07:15:06', '0000-00-00 00:00:00', NULL),
(232, 'Adhiraj Majumdar', 'rivu2002', 'adhirajmajumdar2017@gmai.com', 0, NULL, '2019-10-31 07:33:18', '0000-00-00 00:00:00', NULL),
(233, 'Adhiraj Majumdar', 'rivu2002', 'adhirajmajumdar2017@gmail.com', 1, NULL, '2019-10-31 07:39:03', '0000-00-00 00:00:00', NULL),
(234, 'Alma', '999999', 'alma.azam@yahoo.com', 0, NULL, '2019-10-31 08:18:07', '0000-00-00 00:00:00', NULL),
(235, 'Alma', '999999', 'alma.azam@yahoo.com', 0, NULL, '2019-10-31 08:20:26', '0000-00-00 00:00:00', NULL),
(236, 'Quamar Afzal', '', 'afzalquamar34@gmail.com', 1, '10213992313054518', '2019-10-31 08:33:32', '0000-00-00 00:00:00', NULL),
(237, 'Anwar Alam', '20192010A', 'abdulqaiyumbth@gmail.com', 1, NULL, '2019-10-31 10:07:03', '0000-00-00 00:00:00', NULL),
(238, 'Anwar Alam', '20192010A', 'abdulqaiyumbth@gmail.com', 0, NULL, '2019-10-31 10:04:38', '0000-00-00 00:00:00', NULL),
(239, 'Anwar Alam', '20192010A', 'abdulqaiyumbth@gmail.com', 0, NULL, '2019-10-31 10:06:02', '0000-00-00 00:00:00', NULL),
(240, 'farhan847115', 'farhan847115', 'Farhan847115@gmail.com', 1, NULL, '2019-10-31 10:21:26', '0000-00-00 00:00:00', NULL),
(241, 'Neha sharma', 'indialove', 'nehasharma15133@gmail.com', 0, NULL, '2019-10-31 10:22:37', '0000-00-00 00:00:00', NULL),
(242, 'Isha', 'kookke+tae', 'ishashukla2000@gmail.com', 0, NULL, '2019-10-31 13:43:32', '0000-00-00 00:00:00', NULL),
(243, 'Vipin', 'singh312', 'vipinbhadauria312@gmail.com', 1, NULL, '2019-10-31 14:14:34', '0000-00-00 00:00:00', NULL),
(244, 'abhinavsk', 'srirangam', 'abhinavsk30@gmail.com', 1, NULL, '2019-10-31 15:14:27', '0000-00-00 00:00:00', NULL),
(245, 'Mamta Jalan', '', 'mamtajalan@hotmail.com', 1, '10212759175452540', '2019-10-31 16:07:17', '0000-00-00 00:00:00', NULL),
(246, 'debroyurvashi', 'urvashi2000', 'debroyurvashi@gmail.com', 1, NULL, '2019-10-31 19:10:14', '0000-00-00 00:00:00', NULL),
(247, 'Abhijitshil', '200123', 'gururc46@gmail.com', 0, NULL, '2019-10-31 23:57:29', '0000-00-00 00:00:00', NULL),
(248, 'Vikash kori', 'vikash90', 'korivikash38@gmail.com', 0, NULL, '2019-11-01 01:12:21', '0000-00-00 00:00:00', NULL),
(249, 'Ishita Deshmukh', '4769', 'golu70_74@hotmail.com', 1, NULL, '2019-11-01 01:53:29', '0000-00-00 00:00:00', NULL),
(250, 'Ashutosh Yadav', '', 'ashuyadav999up@gmail.com', 1, '411283923154052', '2019-11-01 01:54:28', '0000-00-00 00:00:00', NULL),
(251, 'Swetha', '585330', 'Kumbarveeranna5@gmail.com', 0, NULL, '2019-11-01 02:29:06', '0000-00-00 00:00:00', NULL),
(252, 'Adityap', 'manuadi@29', 'm.naik1971@yahoo.com', 1, NULL, '2019-11-01 04:09:47', '0000-00-00 00:00:00', NULL),
(253, 'amalck', 'jesuschrist', 'amalck2020amal@gmail.com', 1, NULL, '2019-11-01 04:26:08', '0000-00-00 00:00:00', NULL),
(254, 'Shubham', 'rajjacksonfww', 'shuvamwwf@gmail.com', 0, NULL, '2019-11-01 05:00:36', '0000-00-00 00:00:00', NULL),
(255, 'Bhagyashree nath', 'bhagyashree143', 'bhagyashreenath501@gmail.com', 0, NULL, '2019-11-01 05:03:22', '0000-00-00 00:00:00', NULL),
(256, 'Kvishwa', 'Iamboss1', 'vishwakumaresh@gmail.com', 0, NULL, '2019-11-01 07:32:29', '0000-00-00 00:00:00', NULL),
(257, 'Ashok', 'KSAP2000', 'kannansundari2000@gmail.com', 0, NULL, '2019-11-01 07:58:31', '0000-00-00 00:00:00', NULL),
(258, 'Nikhil', 'nikhilkr', 'chopranikhil743@gamil.com', 0, NULL, '2019-11-01 09:42:24', '0000-00-00 00:00:00', NULL),
(259, 'Fact HeadOffice', '', 'fact.thane@gmail.com', 1, '2427461497536708', '2019-11-01 10:50:20', '0000-00-00 00:00:00', NULL),
(260, 'mohammadasnain3', '@#ASNain321', 'mohammadasnain101@gmail.com', 0, NULL, '2019-11-01 11:35:47', '0000-00-00 00:00:00', NULL),
(261, 'Md Sahil', '', 'groomnow588@gmail.com', 1, '571390466967839', '2019-11-01 11:55:47', '0000-00-00 00:00:00', NULL),
(262, 'Kajal', 'kajaltiwari', 'indramanitiwari59@gmail.com', 0, NULL, '2019-11-01 13:16:57', '0000-00-00 00:00:00', NULL),
(263, 'nidhi.intelligent@gmail.com', '9519012909', 'nidhi.intelligent@gmail.com', 1, NULL, '2019-11-01 13:26:50', '0000-00-00 00:00:00', NULL),
(264, 'Dejain13', 'deputy13', 'deputy.jain@gmail.com', 1, NULL, '2019-11-01 14:15:53', '0000-00-00 00:00:00', NULL),
(265, 'Abhishek', '17001980', 'abhiuniyal321@gmail.com', 1, NULL, '2019-11-01 14:49:19', '0000-00-00 00:00:00', NULL),
(266, 'vinishafaith', 'vinson2006', 'vinisha2514@gmail.com', 1, NULL, '2019-11-01 16:23:23', '0000-00-00 00:00:00', NULL),
(267, 'lateef.com', '9247761661', 'lateeffaridi@gmail.com', 1, NULL, '2019-11-01 16:36:43', '0000-00-00 00:00:00', NULL),
(268, 'Abareja', 'Dreamscometrue', 'ankit.userc@gmail.com', 1, NULL, '2019-11-01 16:55:39', '0000-00-00 00:00:00', NULL),
(269, 'Tina Dalvi', 'popsinger03', 'shinetina169@gmail.com', 0, NULL, '2019-11-01 18:15:32', '0000-00-00 00:00:00', NULL),
(270, 'Tina Dalvi', '', 'reenadalvi26@gmail.com', 1, '585165802220260', '2019-11-01 18:16:51', '0000-00-00 00:00:00', NULL),
(271, 'Hamdan894', 'h@md@N12345', 'abuhamdan807@gmail.com', 1, NULL, '2019-11-02 03:25:13', '0000-00-00 00:00:00', NULL),
(272, 'Meghana', 'Meghana@183', 'meghananagaraju183@gmail.com', 1, NULL, '2019-11-02 03:59:26', '0000-00-00 00:00:00', NULL),
(273, 'Anand Singh Rajput', '7300116249', 'anandsinghbankawat8070@gmail.com', 0, NULL, '2019-11-02 04:51:01', '0000-00-00 00:00:00', NULL),
(274, 'Nithin Ganesh', 'Iphone6plus', 'nithinganesh@yahoo.com', 1, NULL, '2019-11-02 11:23:33', '0000-00-00 00:00:00', NULL),
(275, 'Akshat Budholia', 'akshatakki', 'akshatbudholia10@gmail.com', 0, NULL, '2019-11-02 11:36:39', '0000-00-00 00:00:00', NULL),
(276, 'Akshat Budholia', 'akshatakki', 'akshatbudholia10@gmail.com', 0, NULL, '2019-11-02 12:16:22', '0000-00-00 00:00:00', NULL),
(277, 'Akshat Budholia', 'akshatakki', 'akshatbudholia10@gmail.com', 0, NULL, '2019-11-02 12:16:23', '0000-00-00 00:00:00', NULL),
(278, 'Surajkumar', 'surajraj', 'ak4652817@gmail.com', 0, NULL, '2019-11-02 12:26:31', '0000-00-00 00:00:00', NULL),
(279, 'Aman9302', 'IamAman1', 'aman.nair9302@icloud.com', 0, NULL, '2019-11-02 13:29:48', '0000-00-00 00:00:00', NULL),
(280, 'Mutaman Amir', 'mutaman0119566284', 'mutamanamir11@gmail.com', 1, NULL, '2019-11-02 14:03:34', '0000-00-00 00:00:00', NULL),
(281, 'negisonam02', 'sonam1708', 'negisonam02@gmail.com', 1, NULL, '2019-11-02 15:46:26', '0000-00-00 00:00:00', NULL),
(282, 'Ashok', '12345678', 'at4451190@gmail.com', 0, NULL, '2019-11-02 19:49:17', '0000-00-00 00:00:00', NULL),
(283, 'Priti sharma', 'priti123', 'umakantasharma8@gmail.com', 1, NULL, '2019-11-02 23:41:39', '0000-00-00 00:00:00', NULL),
(284, 'Priti sharma', 'priti123', 'umakantasharma8@gmail.com', 0, NULL, '2019-11-02 23:40:10', '0000-00-00 00:00:00', NULL),
(285, 'Nirvikar gupta', '123456', 'nirvikargupta0@gmail.com', 1, NULL, '2019-11-03 01:57:16', '0000-00-00 00:00:00', NULL),
(286, 'AKSHAY YADAV', 'qwertylg431', 'qwertylg431@gmail.com', 1, NULL, '2019-11-03 04:46:37', '0000-00-00 00:00:00', NULL),
(287, 'Samuel Raya', 'SanuelSajit123', 'rayasamuel0@gmail.com', 1, NULL, '2019-11-03 05:32:48', '0000-00-00 00:00:00', NULL),
(288, 'Lavkush Kumar', '', 'lkbelsar@gmail.com', 1, '147187166669654', '2019-11-03 05:08:55', '0000-00-00 00:00:00', NULL),
(289, 'Urvashi sharma', 'Rachna5417', 'rachna5417@gmail.com', 1, NULL, '2019-11-03 07:02:41', '0000-00-00 00:00:00', NULL),
(290, 'Nick', 'beargrylls786', 'nikunjkatariya786@gmail.com', 1, NULL, '2019-11-03 07:23:09', '0000-00-00 00:00:00', NULL),
(291, 'Umme mariya', 'parkchanyeol', 'mk5399491@gmail.com', 0, NULL, '2019-11-03 09:23:41', '0000-00-00 00:00:00', NULL),
(292, 'Umme mariya', 'parkchanyeol', 'mk5349992@gmail.com', 0, NULL, '2019-11-03 09:24:53', '0000-00-00 00:00:00', NULL),
(293, 'Vipashabisht08', 'wdtamlwutd08', 'vips7.08@gmail.com', 0, NULL, '2019-11-03 09:28:59', '0000-00-00 00:00:00', NULL),
(294, 'Shivin6663', '8056196168', 'shivin6663@gmail.con', 0, NULL, '2019-11-03 12:11:41', '0000-00-00 00:00:00', NULL),
(295, 'Vijay', 'vijayVIJAY', 'vijaykanni7@gmali.com', 0, NULL, '2019-11-03 12:12:44', '0000-00-00 00:00:00', NULL),
(296, 'Shivin6663', 'temxoS-bujmiw-tyfzu1', 'shivin6663@gmail.com', 1, NULL, '2019-11-03 12:29:18', '0000-00-00 00:00:00', NULL),
(297, 'singh2002', 'tucy@2002', 'royaladitya706@gmail.com', 0, NULL, '2019-11-03 13:56:55', '0000-00-00 00:00:00', NULL),
(298, 'Videh', 'videh@12345', 'videhagrawal@gmail.com', 1, NULL, '2019-11-04 06:35:06', '0000-00-00 00:00:00', NULL),
(299, 'Hemanth', 'hesa@1980', 'jhemanth713@gmail.com', 0, NULL, '2019-11-03 15:16:01', '0000-00-00 00:00:00', NULL),
(300, 'Hemanth', 'hesa@1980', 'jhemanth713@gmail.com', 0, NULL, '2019-11-03 15:16:56', '0000-00-00 00:00:00', NULL),
(301, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:31', '0000-00-00 00:00:00', NULL),
(302, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:32', '0000-00-00 00:00:00', NULL),
(303, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:34', '0000-00-00 00:00:00', NULL),
(304, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:34', '0000-00-00 00:00:00', NULL),
(305, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:35', '0000-00-00 00:00:00', NULL),
(306, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:35', '0000-00-00 00:00:00', NULL),
(307, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:35', '0000-00-00 00:00:00', NULL),
(308, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:36', '0000-00-00 00:00:00', NULL),
(309, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:36', '0000-00-00 00:00:00', NULL),
(310, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:36', '0000-00-00 00:00:00', NULL),
(311, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:37', '0000-00-00 00:00:00', NULL),
(312, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:38', '0000-00-00 00:00:00', NULL),
(313, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:38', '0000-00-00 00:00:00', NULL),
(314, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:38', '0000-00-00 00:00:00', NULL),
(315, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:40', '0000-00-00 00:00:00', NULL),
(316, 'anup bisen', '57446075', 'anupbisen2002@gmail.com', 0, NULL, '2019-11-04 00:45:41', '0000-00-00 00:00:00', NULL),
(317, 'Ravi', 'd5516ak', 'deepak.kumar94744@gmail.com', 1, NULL, '2019-11-04 02:59:02', '0000-00-00 00:00:00', NULL),
(318, 'Ravi', 'd5516ak', 'deepak.kumar94744@gmail.com', 0, NULL, '2019-11-04 02:58:45', '0000-00-00 00:00:00', NULL),
(319, 'hina', 'qwerty12345', 'parveen.hina.137@gmail.com', 0, NULL, '2019-11-04 04:44:57', '0000-00-00 00:00:00', NULL),
(320, 'Hina Dolly', '', 'dolly.angel.786@gmail.com', 1, '2763582363691833', '2019-11-04 04:45:52', '0000-00-00 00:00:00', NULL),
(321, 'Devanshi29', 'Devanshi@2904', 'devanshi2942003@gmail.com', 1, NULL, '2019-11-04 07:22:44', '0000-00-00 00:00:00', NULL),
(322, 'Riya jaiswal', 'sarika1234', 'thatsriya2000@gmail.com', 1, NULL, '2019-11-04 08:44:10', '0000-00-00 00:00:00', NULL),
(323, 'Bithwn Basumatary', 'faceconnect02', 'bithwnbasumatary5@gmail.com', 1, NULL, '2019-11-04 08:44:36', '0000-00-00 00:00:00', NULL),
(324, 'Debasmita Debnath', 'sukanya di', 'Debasmitadebnathmahi7306@gmail.com', 0, NULL, '2019-11-04 09:08:58', '0000-00-00 00:00:00', NULL),
(325, 'Debasmita Debnath', 'sukanya di', 'Debasmitadebnathmahi7306@gmail.com', 0, NULL, '2019-11-04 09:09:34', '0000-00-00 00:00:00', NULL),
(326, 'Saurav singh', '@Saurav86', 'sauravchaudhary0611@gmail.com', 1, NULL, '2019-11-04 10:26:33', '0000-00-00 00:00:00', NULL),
(328, 'Umar', 'umar.m0000', 'umarmukhtar.m0@gmail.com', 0, NULL, '2019-11-04 12:07:05', '0000-00-00 00:00:00', '9686722010'),
(331, 'riteshkumar001', 'thegreatrk', 'riteshthegreatrk@gmail.com', 1, NULL, '2019-11-04 14:21:19', '0000-00-00 00:00:00', '9608263368'),
(332, 'rohitkunmar001', 'thegreatrk', 'riteshthegreatrk@gmail.com', 0, NULL, '2019-11-04 14:20:23', '0000-00-00 00:00:00', '9608263368'),
(342, 'Jayaditya Sethi', '', 'jayadityavsethi@gmail.com', 1, '2611275039118081', '2019-11-05 12:30:22', '0000-00-00 00:00:00', NULL),
(349, 'Hemakshi', 'hemakshi', 'hemakshibansal9@gmail.com', 1, NULL, '2019-11-06 16:34:05', '0000-00-00 00:00:00', NULL),
(350, 'G KALAI SELVAN', 'kalaiselvan123', 'kalai131102@gmail.com', 1, NULL, '2019-11-15 12:51:42', '0000-00-00 00:00:00', NULL),
(351, 'Ayush', 'aasml301', 'aasml3011@gmail.com', 1, NULL, '2019-11-08 05:22:13', '0000-00-00 00:00:00', NULL),
(352, 'viveksinghpolywal', 'newpassword@vivek', 'viveksinghpolywalvsp1508@gmail.com', 1, NULL, '2019-11-07 05:40:49', '0000-00-00 00:00:00', NULL),
(353, 'thakurvstomar', 'Tvst@5566', 'thakurvstomar5566@gmail.com', 1, NULL, '2019-11-07 05:48:29', '0000-00-00 00:00:00', NULL),
(354, 'Mukesh Singh bisht', '1qazmlp0', 'mukeshsinghbisht11111@gmail.com', 0, NULL, '2019-11-07 05:54:10', '0000-00-00 00:00:00', NULL),
(355, 'Mukesh Singh bisht', '1qazmlp0', 'mukeshsinghbisht101901@gmail.com', 0, NULL, '2019-11-07 05:58:05', '0000-00-00 00:00:00', NULL),
(356, 'Sbkiop890', 'burhan25@', 'shahzebgenius@gmail.com', 1, NULL, '2019-11-07 06:11:54', '0000-00-00 00:00:00', NULL),
(357, 'Vibhatomar2002', 'vst2002', 'singhvivek2430@gmail.com', 1, NULL, '2019-11-07 06:14:15', '0000-00-00 00:00:00', NULL),
(358, 'Nikita Bisht', 'akankshasingh2605', 'agreatwwefan@gmail.com', 1, NULL, '2019-11-07 07:40:24', '0000-00-00 00:00:00', NULL),
(359, 'lodhatanmay', 'RcT2CAiLwcMDP73', 'lodhatanmay@gmail.com', 1, NULL, '2019-11-07 13:19:16', '0000-00-00 00:00:00', NULL),
(360, 'srinjayisaha', 'Riyariti2524!', 'srinjayisaha25@gmail.com', 1, NULL, '2019-11-08 15:56:17', '0000-00-00 00:00:00', NULL),
(361, 'IshaniPriya', '11232NDA10A2019', 'ishani_priya2019@gmail.com', 1, NULL, '2019-11-08 15:54:02', '0000-00-00 00:00:00', '6201808789'),
(362, 'Hemakshi', 'hemakshi', 'hemakshic9011@gmail.com', 0, NULL, '2019-11-08 16:10:05', '0000-00-00 00:00:00', NULL),
(363, 'Hemakshi Bansal', 'hemakshi', 'hemakhsibansal9@gmail.com', 0, NULL, '2019-11-08 16:13:42', '0000-00-00 00:00:00', NULL),
(364, 'esha', 'emm03012002', 'eshamodi312@gmail.com', 1, NULL, '2019-11-08 18:29:06', '0000-00-00 00:00:00', NULL),
(365, 'DineshS', 'GTS@1234', 'dsadhwa1@binghamton.edu', 1, NULL, '2019-11-10 11:42:22', '0000-00-00 00:00:00', NULL),
(366, 'Priyanshu', 'qwerty654321', 'dora288c@gmail.com', 1, NULL, '2019-11-10 19:24:18', '0000-00-00 00:00:00', NULL),
(371, 'Souvik Chakraborty', '6291131737', 'souvik.tribeni123@gmail.com', 0, NULL, '2019-11-11 08:29:50', '0000-00-00 00:00:00', NULL),
(372, 'Souvik Chakraborty', '1234t6', 'souvik.ayantika@gmail.com', 0, NULL, '2019-11-11 08:36:00', '0000-00-00 00:00:00', NULL),
(373, 'Pragati', 'Ran$deep1', 'pragatisjcs@gmail.com', 1, NULL, '2019-11-11 13:01:17', '0000-00-00 00:00:00', NULL),
(374, 'arjunvarma0302', 'kinectup2018', 'arjunvarma0302@gmail.com', 1, NULL, '2019-11-12 00:39:44', '0000-00-00 00:00:00', NULL),
(375, 'tanay2009', 'georgiatech2009', 'mehtat2002@gmail.com', 1, NULL, '2019-11-12 06:21:24', '0000-00-00 00:00:00', NULL),
(377, 'Ronak Katial', '', 'ronak.katial@flowian.com', 1, '110737868925073274522', '2019-11-12 06:42:33', '0000-00-00 00:00:00', NULL),
(378, 'Ronak Katial', '', 'ronak.fact123@gmail.com', 1, '104333208474897276894', '2019-11-12 06:45:00', '0000-00-00 00:00:00', NULL),
(379, 'Admin IT', '', 'admin.it@globaltalentsearch.us', 1, '109612075829742245033', '2019-11-12 06:50:10', '0000-00-00 00:00:00', NULL),
(380, 'Manpreet Kaur', '', 'manpreet.weblance@gmail.com', 1, '115810417049926065905', '2019-11-12 07:07:41', '0000-00-00 00:00:00', NULL),
(381, 'Ronak Katial', '', 'ronakkatial123@gmail.com', 1, '106851727392475857611', '2019-11-12 07:11:11', '0000-00-00 00:00:00', NULL),
(382, 'manperet', 'password', 'manpreet.weblance@gmail.com', 1, NULL, '2019-11-12 07:32:55', '0000-00-00 00:00:00', '99962217171'),
(383, 'ronak123', 'ronak123', 'ronak.katial@flowian.com', 0, NULL, '2019-11-12 07:20:34', '0000-00-00 00:00:00', NULL),
(386, 'good', 'password', 'good@gmail.com', 1, NULL, '2019-11-12 07:58:49', '0000-00-00 00:00:00', '919996221717'),
(387, 'Rujula', 'sachin16', 'rujulasharma09@gmail.com', 1, NULL, '2019-11-12 11:43:44', '0000-00-00 00:00:00', NULL),
(388, 'navyatheinquisitive@gmail.com', 'Lipliner12', 'navyatheinquisitive@gmail.com', 1, NULL, '2019-11-12 11:44:39', '0000-00-00 00:00:00', NULL),
(389, 'Sarbjeet kaur Sandhu', 'sandhu1313', 'sandhu.kaur1313@gmail.com', 0, NULL, '2019-11-12 12:06:06', '0000-00-00 00:00:00', NULL),
(390, 'sanoberabro', 'sanober12', 'sanoberabro3@gmail.com', 1, NULL, '2019-11-18 12:58:27', '0000-00-00 00:00:00', NULL),
(391, 'yaqoobbaloch363@gmail.com', 'baktawar', 'yaqoobbaloch363@gmail.com', 1, NULL, '2019-11-12 15:31:34', '0000-00-00 00:00:00', NULL),
(392, 'simran kc', 'iloveyoumamu', 'kavyakc888@gmail.com', 1, NULL, '2019-11-12 13:19:22', '0000-00-00 00:00:00', NULL),
(393, 'Ghulam Yaseen', 'dall2002', 'yad666411@gmail.com', 0, NULL, '2019-11-12 13:24:04', '0000-00-00 00:00:00', NULL),
(394, 'Musadiq', 'nahida123', 'shahnazlolabi42@gmail.com', 1, NULL, '2019-11-12 13:33:33', '0000-00-00 00:00:00', NULL),
(395, 'Masuk Ridwan Saumo', 'Mathewraimojd47', 'masuksaumo56@gmail.com', 1, NULL, '2019-11-12 13:43:33', '0000-00-00 00:00:00', NULL),
(396, 'Sahidsekh', 'shekh404040', 'sajan.hkh16@gmail.com', 1, NULL, '2019-11-12 13:47:37', '0000-00-00 00:00:00', NULL),
(397, 'saihousankz', 'F@2jabbi', 'ssankareh2@gmail.com', 1, NULL, '2019-11-12 13:46:50', '0000-00-00 00:00:00', NULL),
(398, 'mahad715', 'notepad1', 'mahad3398@gmail.com', 1, NULL, '2019-11-12 13:50:37', '0000-00-00 00:00:00', NULL),
(399, 'Aman Sharma', '', 'aman95026@gmail.com', 1, '115579704499497344318', '2019-11-12 13:53:21', '0000-00-00 00:00:00', NULL),
(400, 'Ameya paul', 'amaeyapaul', 'amryapaul08@gmail.com', 0, NULL, '2019-11-12 13:57:22', '0000-00-00 00:00:00', NULL),
(401, 'Masuk Shoumo', '', 'shoumocosta@yahoo.com', 1, '1179860285531982', '2019-11-12 14:00:06', '0000-00-00 00:00:00', NULL),
(402, 'Meow', 'ameyapaul', 'ameya.paul08@gmail.com', 1, NULL, '2019-11-12 16:06:01', '0000-00-00 00:00:00', NULL),
(403, 'Riya', 'travellovesalman', 'koiralariya0@gmail.com', 0, NULL, '2019-11-12 14:11:47', '0000-00-00 00:00:00', NULL),
(404, 'Alina Gurung', '9823410467', 'bibeklimbu12345678@gmail.com', 0, NULL, '2019-11-12 14:16:09', '0000-00-00 00:00:00', NULL),
(405, 'Ankush Arya', '2711ss', 'ankusharya2728@gmail.com', 1, NULL, '2019-11-12 14:17:18', '0000-00-00 00:00:00', '918051190089'),
(406, 'Salman Abid', '', 'howtobebrave7@gmail.com', 1, '115389795689895913531', '2019-11-12 14:32:32', '0000-00-00 00:00:00', NULL),
(407, 'Paul Pogba', '', 'pogbafaizi6@gmail.com', 1, '108632907411568534761', '2019-11-12 14:37:16', '0000-00-00 00:00:00', NULL),
(408, 'Shaheerhadi', 'see@maa1A', 'shaheerhadi43@gmail.com', 1, NULL, '2019-11-12 14:48:11', '0000-00-00 00:00:00', NULL),
(409, 'Manorath basnet', '', 'manishbasnet2058@gmail.com', 1, '113977145210714950250', '2019-11-12 14:48:30', '0000-00-00 00:00:00', NULL),
(410, 'Pratimakumari', '55555555', 'pk0322@gimlcom.', 1, NULL, '2019-11-12 15:11:45', '0000-00-00 00:00:00', '917545975901'),
(411, 'Sultania', 'ahmed123', 'i.ahmedaqab@gmail.com', 1, NULL, '2019-11-12 15:16:17', '0000-00-00 00:00:00', NULL),
(412, 'Jayakrishna. s.kumar', '', 'jayakrishnaskumar@gmail.com', 1, '114660692433768676635', '2019-11-12 15:19:39', '0000-00-00 00:00:00', NULL),
(413, 'Abdullah zahir', 'khyber12345', 'm.zahirkhankpk@gmail.com', 1, NULL, '2019-11-12 15:55:27', '0000-00-00 00:00:00', NULL),
(414, 'Se.rakibul', '01633546589', 'rakib3012@gmail.com', 1, NULL, '2019-11-12 16:08:35', '0000-00-00 00:00:00', NULL),
(415, 'marippurath', 'silvymm', 'marippurathmathew@gmail.com', 0, NULL, '2019-11-12 15:57:22', '0000-00-00 00:00:00', NULL),
(416, 'Sudhapantha11', 'life123#', 'sudhapantha111@gmail.com', 1, NULL, '2019-11-12 16:02:57', '0000-00-00 00:00:00', NULL),
(417, 'Laiba Qureshi', '', 'laiba.qureshi18@yahoo.com', 1, '2570997533132192', '2019-11-12 16:00:24', '0000-00-00 00:00:00', NULL),
(418, 'Rafiat islam Nabila Nabila', '', 'shahidul.islam.5235@gmail.com', 1, '113751401931257993711', '2019-11-12 16:01:14', '0000-00-00 00:00:00', NULL),
(419, 'zbtanvir', '53185318', 'zbtanvir2018@gmail.com', 1, NULL, '2019-11-12 16:03:48', '0000-00-00 00:00:00', NULL),
(420, 'Zakria Chandio', '', 'zakriachandio@outlook.com', 1, '2621098911289145', '2019-11-12 16:12:41', '0000-00-00 00:00:00', NULL),
(421, 'Rabbe Hossain', 'rabberdrd', 'rabbemd549@gmail.com', 1, NULL, '2019-11-12 16:26:04', '0000-00-00 00:00:00', NULL),
(422, 'Aniket garg', 'Reenagarg', 'garganiket397@gmail.com', 1, NULL, '2019-11-12 16:29:24', '0000-00-00 00:00:00', NULL),
(423, 'Aasim Usman', 'aasimmaznani', 'a786azir@gmail.com', 0, NULL, '2019-11-12 16:28:32', '0000-00-00 00:00:00', NULL),
(424, 'Jaswant Kumar', '', 'jaswantkumar4042@gmail.com', 1, '106712460204262496367', '2019-11-12 16:31:45', '0000-00-00 00:00:00', NULL),
(425, 'manpreet', 'manpreet', 'sehjalmoney101@gmail.com', 1, NULL, '2019-11-12 16:51:18', '0000-00-00 00:00:00', NULL),
(426, 'Syed1011', '12345asdfg', 'syed123.ctg@gmail.com', 1, NULL, '2019-11-12 16:44:23', '0000-00-00 00:00:00', NULL),
(427, 'Muazz Naseer', '', 'muaaznaseer18@gmail.com', 1, '108340751077805406241', '2019-11-12 16:43:08', '0000-00-00 00:00:00', NULL),
(428, 'Preetsehjal492', 'manpreet', 'sehjalpreet101@gmail.com', 0, NULL, '2019-11-12 16:48:13', '0000-00-00 00:00:00', NULL),
(429, 'himanshu', '7061502058', 'himrishu2214@gmail.com', 1, NULL, '2019-11-12 16:57:35', '0000-00-00 00:00:00', '917061502058'),
(430, 'tanu', '85Sakib&Tanu18', 'chowdhuryoishi85@gmail.com', 1, NULL, '2019-11-12 17:02:04', '0000-00-00 00:00:00', NULL),
(431, 'RI Shawn', 'iamlucifar', 'sazinshawn@gmail.com', 1, NULL, '2019-11-12 17:06:48', '0000-00-00 00:00:00', NULL),
(432, 'Deep', '#deep24', 'soumodeepbiswash7@gmail.com', 1, NULL, '2019-11-12 17:13:08', '0000-00-00 00:00:00', NULL),
(433, 'Arpankumarsingh', 'arpankumarsingha029', 'arpankumarsinghak47@gmail.com', 1, NULL, '2019-11-12 17:12:48', '0000-00-00 00:00:00', NULL),
(434, 'Shahzaib Haider', 'alihaider', 'shabbircloth@yahoo.com', 1, NULL, '2019-11-12 17:17:49', '0000-00-00 00:00:00', NULL),
(435, 'Shraya Rajkarnikar', '', 'shraya.rajkarnikar@gmail.com', 1, '103702223224118719507', '2019-11-12 17:16:38', '0000-00-00 00:00:00', NULL),
(436, 'Scholarship', 'scholarship', 'axfa_virgo@hotmail.com', 1, NULL, '2019-11-12 19:48:01', '0000-00-00 00:00:00', NULL),
(437, 'Shahriar11', 'shahriar123', 'shahriar.emon.11@gmail.com', 1, NULL, '2019-11-13 13:47:17', '0000-00-00 00:00:00', NULL),
(438, 'mahadgujjar', 'mahadimran', 'mahadimrangujjar1@gmail.com', 1, NULL, '2019-11-12 17:32:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `users` (`id`, `username`, `password`, `emailAddress`, `status`, `sfb_id`, `created_at`, `updated_at`, `mobile_number`) VALUES
(439, 'Fahadhussain', 'pubg$404', 'Fahadmarkalogic@gmail.com', 1, NULL, '2019-11-12 18:03:13', '0000-00-00 00:00:00', NULL),
(440, 'Ch Arshad', '', 'husnainarshad962@gmail.com', 1, '778369329276819', '2019-11-12 18:13:50', '0000-00-00 00:00:00', NULL),
(441, 'Zahid Hussain Janwary', '', 'zahidhussainjanwary5@gmail.com', 1, '101467277811872293220', '2019-11-12 18:25:29', '0000-00-00 00:00:00', NULL),
(442, 'sohailsattar', 'delsol142', 'suhaildelsol@hotmail.com', 1, NULL, '2019-11-18 14:08:59', '0000-00-00 00:00:00', NULL),
(443, 'abdulaziznohri786@gmail.com', 'sultan786', 'abdulaziznohri786@gmail.com', 1, NULL, '2019-11-12 18:54:41', '0000-00-00 00:00:00', NULL),
(444, 'Rishika gupta', 'sonali0@123', 'sg2665136@gmail.com', 0, NULL, '2019-11-12 18:57:45', '0000-00-00 00:00:00', NULL),
(445, 'Nouman', 'ut214662', 'm.nouman.umar@gmail.com', 1, NULL, '2019-11-12 19:04:38', '0000-00-00 00:00:00', NULL),
(446, 'WaqasK', '', 'waqaskhoso96@gmail.com', 1, '108458014654599246763', '2019-11-12 19:20:02', '0000-00-00 00:00:00', NULL),
(447, 'UMERKOT123', 'UMERKOT123', 'danishkhan2k189@gmail.com', 0, NULL, '2019-11-12 19:29:44', '0000-00-00 00:00:00', NULL),
(448, 'Kaif', 'Kaif2305@gmail.com', 'kaifhesham@gmail.com', 1, NULL, '2019-11-12 19:31:34', '0000-00-00 00:00:00', NULL),
(449, 'Zohakhan7', 'ilovebaba7', 'zohaaykhan777@gmail.com', 1, NULL, '2019-11-12 19:34:48', '0000-00-00 00:00:00', NULL),
(450, 'Harsh Mali', '', 'harshmali25082003@gmail.com', 1, '110984971149286120225', '2019-11-12 20:57:52', '0000-00-00 00:00:00', NULL),
(451, 'Azlan Shah', '1baire2porte3jamu', 'azlanshahraqib@gmail.com', 1, NULL, '2019-11-12 22:39:51', '0000-00-00 00:00:00', NULL),
(452, 'vyasvarun2@gmail.com', 'Vyas2002', 'vyasvarun2@gmail.com', 1, NULL, '2019-11-13 01:33:58', '0000-00-00 00:00:00', NULL),
(453, 'alkastha', 'alka1234', 'alkastha7@gmail.com', 1, NULL, '2019-11-13 01:50:07', '0000-00-00 00:00:00', NULL),
(454, 'Dilshad', '75238690', 'dilshadkhan508@yahoo.com', 1, NULL, '2019-11-13 02:11:28', '0000-00-00 00:00:00', NULL),
(455, 'Md Khan', '', 'khan.dk881@gmail.com', 1, '2142591722704275', '2019-11-13 01:49:59', '0000-00-00 00:00:00', NULL),
(456, 'Abhiraj', 'abhiraj', 'abhiraj1234sharma@gmail.com', 1, NULL, '2019-11-13 01:53:14', '0000-00-00 00:00:00', '918770758713'),
(457, 'Iqbalshah786', 'Amnalove1$', 'iqbalshahnadiri786@gmail.com', 1, NULL, '2019-11-13 02:14:34', '0000-00-00 00:00:00', NULL),
(458, 'Sujit Adhikari', 'Belhi@12345.', 'sujitadhikari2000@gmail.com', 1, NULL, '2019-11-13 02:20:51', '0000-00-00 00:00:00', NULL),
(459, 'Saqlain', 'saqiich786789', 'saqlainsaeed422@gmail.com', 1, NULL, '2019-11-13 02:26:09', '0000-00-00 00:00:00', NULL),
(460, 'Prem prajapat', 'Prem@2003', 'premprajapat559@gmail.com', 1, NULL, '2019-11-13 02:34:02', '0000-00-00 00:00:00', NULL),
(461, 'owais Mohmand', 'lalkhan', 'Owaiskhan1234@gmail.com', 0, NULL, '2019-11-13 02:33:31', '0000-00-00 00:00:00', NULL),
(462, 'Swechchha', '9808556526', 'swechchhagolay.01@gmail.com', 0, NULL, '2019-11-13 02:58:01', '0000-00-00 00:00:00', NULL),
(463, 'Rakesh yadav', 'racase123', 'racaseyadav@gmail.com', 1, NULL, '2019-11-13 11:59:05', '0000-00-00 00:00:00', NULL),
(464, 'Ra-case yadav', '', 'ry928661@gmail.com', 1, '112995408462787235893', '2019-11-13 03:03:01', '0000-00-00 00:00:00', NULL),
(465, 'Ayesha Bano', 'ayeshashahzad', 'musman295c@gmail.com', 0, NULL, '2019-11-13 03:16:31', '0000-00-00 00:00:00', NULL),
(466, 'Biniiale', 'sansar123@', 'alemagarbinii@gmail.com', 1, NULL, '2019-11-13 04:28:02', '0000-00-00 00:00:00', NULL),
(467, 'Anuza Stha', '', 'anujastha10@gmail.com', 1, '2453079575019721', '2019-11-13 04:27:52', '0000-00-00 00:00:00', NULL),
(468, 'Bibek Sharma', '', 'bivekkumarsharma8@gmail.com', 1, '2456219824487945', '2019-11-13 05:14:29', '0000-00-00 00:00:00', NULL),
(469, 'farhan khan', '', 'durjoy619@gmail.com', 1, '117398226044952691671', '2019-11-13 05:22:48', '0000-00-00 00:00:00', NULL),
(470, 'Pawan', 'Pnp@1422', 'chaudharypnp@gmail.com', 1, NULL, '2019-11-13 05:46:29', '0000-00-00 00:00:00', NULL),
(471, 'itachi zoldyck', '', 'itachizoldyck539@gmail.com', 1, '115303274435937481521', '2019-11-13 05:58:14', '0000-00-00 00:00:00', NULL),
(472, 'Dipesh Gaming', '', 'dipeshkhatiwada654@gmail.com', 1, '104802823295877347209', '2019-11-13 05:58:31', '0000-00-00 00:00:00', NULL),
(473, 'M Burney', '', 'm.bilal12257@yahoo.com', 1, '1051880405143679', '2019-11-13 06:02:51', '0000-00-00 00:00:00', NULL),
(474, 'Zareen Anjum Prapti', '290819', 'zareen.prapti@gmail.com', 1, NULL, '2019-11-13 06:24:03', '0000-00-00 00:00:00', NULL),
(475, 'Afifa Ibnan', '', 'afifa15117@gmail.com', 1, '2431382020513399', '2019-11-13 06:22:49', '0000-00-00 00:00:00', NULL),
(476, 'Gulsher khan', 'swatswat', 'gulsher024@gmail.com', 1, NULL, '2019-11-13 06:25:49', '0000-00-00 00:00:00', NULL),
(477, 'Manmath Pradhan', '', 'manmathmanmath4@gmail.com', 1, '727883174378401', '2019-11-13 06:34:07', '0000-00-00 00:00:00', NULL),
(478, 'Fahad', 'pubg$404', 'Fahadhussain484@gmail.com', 1, NULL, '2019-11-13 06:53:29', '0000-00-00 00:00:00', NULL),
(479, 'Daniyal jamshaid', '', 'daniyaljamshaid7@gmail.com', 1, '113243794250783633380', '2019-11-13 07:39:52', '0000-00-00 00:00:00', NULL),
(480, 'mohsinahsanma', 'Godofbuisness1', 'mohsinahsanma@yahoo.com', 1, NULL, '2019-11-13 07:52:05', '0000-00-00 00:00:00', NULL),
(481, 'Op Chaudhary', '', 'opc08458@gmail.com', 1, '108418684030733966340', '2019-11-13 07:55:45', '0000-00-00 00:00:00', NULL),
(482, 'Rukhsana', '78789898ayub', 'rukhsanaayub123@gmail.com', 1, NULL, '2019-11-13 09:32:49', '0000-00-00 00:00:00', NULL),
(483, 'Ashfaq Ahmad', '', 'ashfibhai980@gmail.com', 1, '2181421835494818', '2019-11-13 08:18:27', '0000-00-00 00:00:00', NULL),
(484, 'Mehwish Aftab', 'MEHWISH7777', 'mehwishaftab7777@gmail.com', 1, NULL, '2019-11-13 08:33:17', '0000-00-00 00:00:00', NULL),
(485, 'Saffa iqbal', '12391239', 'saffaswag11@gmail.com', 1, NULL, '2019-11-13 09:31:44', '0000-00-00 00:00:00', NULL),
(486, 'Syed Hasnain Haider', '', 'hazhayder@hotmail.com', 1, '2990482214313126', '2019-11-13 09:32:37', '0000-00-00 00:00:00', NULL),
(487, 'ashok nepali', 'ashok@nast', 'ashoknepali2057@gmail.com', 1, NULL, '2019-11-13 10:15:29', '0000-00-00 00:00:00', NULL),
(488, 'Dinesh', 'nepali321', 'dynceechy4@gmail.com', 1, NULL, '2019-11-13 10:19:26', '0000-00-00 00:00:00', NULL),
(489, 'shahwazk', 'Shahwaz2010', 'cool.shahwaz@gmail.com', 1, NULL, '2019-11-13 10:20:19', '0000-00-00 00:00:00', NULL),
(490, 'Aadil Aley', '', 'aadilaiey1@gmail.com', 1, '115375713251430677337', '2019-11-13 10:30:49', '0000-00-00 00:00:00', NULL),
(491, 'mainaliasmita46', 'momloveu', 'mainaliasmita46@gmail.com', 1, NULL, '2019-11-13 10:37:13', '0000-00-00 00:00:00', NULL),
(492, 'Abdullah Bhiriya', '', 'abdullahbhiriya@gmail.com', 1, '105047922781946069469', '2019-11-13 10:46:29', '0000-00-00 00:00:00', NULL),
(493, 'Tayyab ALI', 'Kaardar', 'kardartayyab@gmail.com', 1, NULL, '2019-11-13 11:38:41', '0000-00-00 00:00:00', NULL),
(494, 'Gourab paul', 'Sparsha26082001', 'gourabpaulsparsha2001@gmail.com', 1, NULL, '2019-11-13 11:20:09', '0000-00-00 00:00:00', NULL),
(495, 'Aaradhyaa', 'nisha123', 'aaradhyaa.2002@gmail.com', 1, NULL, '2019-11-13 12:03:04', '0000-00-00 00:00:00', NULL),
(496, 'Ahsan khan', 'loin7862', 'ak7441717@gmail.com', 0, NULL, '2019-11-13 12:39:46', '0000-00-00 00:00:00', NULL),
(497, '03409066423', 'next9480', 'minamkhansafi@gmail.com', 1, NULL, '2019-11-13 12:49:48', '0000-00-00 00:00:00', NULL),
(498, 'Bibisha Prajapati', '2002627', 'prajapatibibisha54321@gmail.com', 0, NULL, '2019-11-13 13:06:33', '0000-00-00 00:00:00', NULL),
(499, 'Hiba Shafiq', '', 'hiba-shafiq12@hotmail.com', 1, '1665999980201988', '2019-11-13 13:09:30', '0000-00-00 00:00:00', NULL),
(500, 'kn nishi', '', 'knnishi20@gmail.com', 1, '102487399982029147655', '2019-11-13 13:10:55', '0000-00-00 00:00:00', NULL),
(501, 'Syed Hassan Ali', 'iPhone6s', 'syedhassanali@gmail.com', 0, NULL, '2019-11-13 13:31:36', '0000-00-00 00:00:00', NULL),
(502, 'sarvasvarora', '971959', 'sarvasvarora@gmail.com', 1, NULL, '2019-11-13 13:58:06', '0000-00-00 00:00:00', '919205516785'),
(503, 'Maddy123', 'Maddy123', 'muddasirqureshi.mq@gmail.com', 0, NULL, '2019-11-13 14:02:02', '0000-00-00 00:00:00', NULL),
(504, 'Sanam', 'Sanam0987', 'sanamrathore@yahoo.com', 0, NULL, '2019-11-13 15:18:19', '0000-00-00 00:00:00', NULL),
(505, 'SURYADEEP0404', 'Yuvi04042002', 'suryadeep04@hotmail.com', 1, NULL, '2019-11-16 18:44:47', '0000-00-00 00:00:00', NULL),
(506, 'Zameer Zardari', 'zameerhussain', 'zameerzardari49@gmail.com', 1, NULL, '2019-11-13 15:23:45', '0000-00-00 00:00:00', NULL),
(507, 'Syed  Mustafa Rehman Ali', 'NIMRAM26', 'syedmustafaali0315@gmail.com', 1, NULL, '2019-11-13 15:34:45', '0000-00-00 00:00:00', NULL),
(508, 'yasin60', '087654321Yasin', 'kamilmohsin184@gmail.com', 0, NULL, '2019-11-13 15:44:43', '0000-00-00 00:00:00', NULL),
(509, 'Vishnu', '7899764116', 'polepallivishnu78@gmail.com', 0, NULL, '2019-11-13 16:11:46', '0000-00-00 00:00:00', NULL),
(510, 'shehroze mallik', '', 'shehrozemallik@gmail.com', 1, '109955962720756987992', '2019-11-13 16:32:20', '0000-00-00 00:00:00', NULL),
(511, 'Raja Khan', '', 'zumi0007@gmail.com', 1, '1490591161105380', '2019-11-13 16:33:33', '0000-00-00 00:00:00', NULL),
(512, 'Yuvraj', 'Yuvi04042002', 'suryadeepg04@gmail.com', 1, NULL, '2019-11-13 16:35:46', '0000-00-00 00:00:00', NULL),
(513, 'Mohammmedhoshangabadwala', 'mhw9669454554', 'hoshangabadwalam@gmail.com', 1, NULL, '2019-11-13 17:07:42', '0000-00-00 00:00:00', NULL),
(514, 'Shayan Hakkani', '', 'shayanhakkani@gmail.com', 1, '2392076240915019', '2019-11-13 17:22:27', '0000-00-00 00:00:00', NULL),
(515, 'Abdul Qayoom', 'JAMALI98765', 'aqayoomjamali66@gmail.com', 1, NULL, '2019-11-13 17:29:41', '0000-00-00 00:00:00', NULL),
(516, 'Syed ali qamar zaidi', '03008549181', 'syedaliqamarzaidis67@gmail.com', 0, NULL, '2019-11-13 18:44:31', '0000-00-00 00:00:00', NULL),
(517, 'ASattarSanny55', 'AkterShamima55', 'sattar.sunny55@gmail.com', 1, NULL, '2019-11-13 19:21:45', '0000-00-00 00:00:00', NULL),
(518, 'Haleema', '14Jinnah', 'haleemahussain837@gmail.com', 1, NULL, '2019-11-13 19:47:02', '0000-00-00 00:00:00', NULL),
(519, 'Azeema golani', 'Azee.123', 'azeemagolani23@gmail.com', 1, '104193748726006369658', '2019-11-13 20:19:33', '0000-00-00 00:00:00', NULL),
(520, 'Javed Prince', '', 'javedbhaijavedprince905@gmail.com', 1, '112330327283146332754', '2019-11-13 20:16:58', '0000-00-00 00:00:00', NULL),
(521, 'sandip1995', 'sandip1995', 'sandip93@gmail.com', 0, NULL, '2019-11-14 01:58:07', '0000-00-00 00:00:00', NULL),
(522, 'sandip', 'sandip1995', 'sandipsaha93@gmail.com', 1, NULL, '2019-11-14 02:10:52', '0000-00-00 00:00:00', NULL),
(523, 'Reyanus', 'salehin24.rs@96#', 'salehin24.rs@gmail.com', 1, NULL, '2019-11-14 02:24:57', '0000-00-00 00:00:00', NULL),
(524, 'anwar1995', 'anwar1995', 'annupajee@gmail.com', 1, NULL, '2019-11-14 05:05:48', '0000-00-00 00:00:00', NULL),
(525, 'Muhammad Shahrukh', '', 'shahrukh.lovely15@gmail.com', 1, '101105767219962247375', '2019-11-14 05:43:58', '0000-00-00 00:00:00', NULL),
(526, 'Jawadrajai786', 'Jawad@1214', 'jrajai926@gmail.com', 1, NULL, '2019-11-14 05:53:34', '0000-00-00 00:00:00', NULL),
(527, 'Muhammad Awais', '', 'ameebaxha1122@gmail.com', 1, '107360437949903475438', '2019-11-14 05:56:19', '0000-00-00 00:00:00', NULL),
(528, 'Krish.dexter09', 'krishiscool10', 'krishshah.shah@gmail.com', 0, NULL, '2019-11-14 06:25:54', '0000-00-00 00:00:00', NULL),
(529, 'JahanZaib Hussain', '', 'hussainjahanzaib2@gmail.com', 1, '2157005501268742', '2019-11-14 06:35:10', '0000-00-00 00:00:00', NULL),
(530, 'Sadiq_Anis', 'sadiq2711', 'sadiq78611092@gmail.com', 1, NULL, '2019-11-14 09:56:39', '0000-00-00 00:00:00', NULL),
(531, 'Hasan Muhammad Ali', 'motiwala1234', 'hasanmotiwala9@gmail.com', 1, NULL, '2019-11-14 10:22:47', '0000-00-00 00:00:00', NULL),
(532, 'Allanur Ansari', '9845853703', 'ansariallanur123@gmail.com', 1, NULL, '2019-11-14 10:35:33', '0000-00-00 00:00:00', NULL),
(533, 'Sureshhh10', '9813992910', 'sureshhh7887@gmail.com', 1, NULL, '2019-11-14 10:53:46', '0000-00-00 00:00:00', NULL),
(534, 'shaz ahmed', '', 'shaz4221@gmail.com', 1, '113700610953227334379', '2019-11-14 11:34:41', '0000-00-00 00:00:00', NULL),
(535, 'adilarif', 'adilarif4590', 'adilarif654@gmail.com', 0, NULL, '2019-11-14 12:12:23', '0000-00-00 00:00:00', NULL),
(536, 'Ammar Mahmood', 'ammar123ammar', 'ammarmbutt@gmail.com', 0, NULL, '2019-11-14 12:31:08', '0000-00-00 00:00:00', NULL),
(537, 'AliZainUlAbideen', '125340', 'ali1240.azp@gmail.com', 1, NULL, '2019-11-14 12:42:10', '0000-00-00 00:00:00', NULL),
(538, 'Iqra Fatima', 'appliedpsychology', 'iqrafatimaeco@gmail.com', 1, NULL, '2019-11-14 13:42:07', '0000-00-00 00:00:00', NULL),
(539, 'meghaljain', 'Ppmrhjain123', 'meghaljain1113@gmail.com', 1, NULL, '2019-11-14 13:57:02', '0000-00-00 00:00:00', NULL),
(540, 'Faiz Ahmed', 'oald27oald27', '24faizahmed@gmail.com', 1, '103251817961229683446', '2019-11-14 14:42:02', '0000-00-00 00:00:00', NULL),
(541, 'SyedFaiz', 'oald27oald27', '24faizahmed@gmail.com', 0, NULL, '2019-11-14 14:34:09', '0000-00-00 00:00:00', NULL),
(542, 'Fatimahamid', 'atoo1357', 'fhamid5924@gmail.com', 0, NULL, '2019-11-14 15:58:56', '0000-00-00 00:00:00', NULL),
(543, 'am shrek', 'samritShakya0503', 'amritshakya0503@gmail.com', 1, NULL, '2019-11-14 16:21:53', '0000-00-00 00:00:00', NULL),
(544, 'ALIJOIYA', '678n@n678', 'nazakatalijoiya1303@gmail.com', 1, NULL, '2019-11-14 16:48:11', '0000-00-00 00:00:00', NULL),
(545, 'Wayna ali', 'wayna505', 'syedanaqvi823@gmail.com', 0, NULL, '2019-11-14 17:15:23', '0000-00-00 00:00:00', NULL),
(546, 'Syeda naqvi', 'taurean', 'syedanaqvi862@gmail.com', 1, NULL, '2019-11-14 17:19:48', '0000-00-00 00:00:00', NULL),
(547, 'yamna tariq', '', 'yamna97@gmail.com', 1, '108299860950827136941', '2019-11-14 19:18:38', '0000-00-00 00:00:00', NULL),
(548, 'Allibbiaarta', 'bmwanika087', 'AnikaKothon@gmail.com', 0, NULL, '2019-11-14 20:11:55', '0000-00-00 00:00:00', NULL),
(549, 'shofiur Rahman', '', 'shofisy7@gmail.com', 1, '107595485597051986151', '2019-11-14 20:21:07', '0000-00-00 00:00:00', NULL),
(550, 'Hayat Vines', '', 'ahmedhayatkhan91@gmail.com', 1, '105626256648365322943', '2019-11-14 21:19:50', '0000-00-00 00:00:00', NULL),
(551, 'NeilSGeorge02', '8dTuYNVRCHRAkzZ', 'neilsajeevgeorge@gmail.com', 1, NULL, '2019-11-14 23:41:20', '0000-00-00 00:00:00', NULL),
(552, 'Rashmita subedi', 'happymoment', 'rashusubedi9999@gmail.com', 0, NULL, '2019-11-15 01:09:32', '0000-00-00 00:00:00', NULL),
(553, 'sardar hasnain', 'sanajaved', 'sardarhasnain102@gmail.com', 0, NULL, '2019-11-15 01:49:34', '0000-00-00 00:00:00', NULL),
(554, 'muhammad husnain', 'sanajaved', 'sardarjalil102@gmail.com', 1, NULL, '2019-11-15 01:57:08', '0000-00-00 00:00:00', NULL),
(555, 'abhasinghpariyar', 'jesuslovesabha', 'abhasinghp1281@gmail.com', 1, NULL, '2019-11-15 02:58:33', '0000-00-00 00:00:00', NULL),
(556, 'Adeel', 'Hunter123', 'adeelshehzad5@gmail.com', 1, NULL, '2019-11-15 04:41:37', '0000-00-00 00:00:00', NULL),
(557, 'tryphineclarad@gmail.com', 'Bstylz1460', 'tryphineclarad@gmail.com', 1, NULL, '2019-11-15 04:42:57', '0000-00-00 00:00:00', NULL),
(558, 'sudina', 'miracles12', 'usersudeshna101@gmail.com', 1, NULL, '2019-11-15 04:52:45', '0000-00-00 00:00:00', NULL),
(559, 'kumarideena2002@gmail.com', 'deenarastogi', 'kumarideena2002@gmail.com', 1, NULL, '2019-11-15 05:42:31', '0000-00-00 00:00:00', NULL),
(560, 'Kirshan Lal', 'jeevatkhokhar1997', 'Kirshanlal1997@gmail.com', 1, NULL, '2019-11-15 05:33:53', '0000-00-00 00:00:00', NULL),
(561, 'Falak Zehra', 'falakzehra231', 'fzehra116@gmail.com', 1, NULL, '2019-11-15 15:54:05', '0000-00-00 00:00:00', NULL),
(562, 'Supriya Aryal', '', 'supriyaaryal100@gmail.com', 1, '116569311622795710847', '2019-11-15 06:24:14', '0000-00-00 00:00:00', NULL),
(563, 'Uswa Hafeez', 'believeris17', 'uswahafeez412@gmail.com', 1, NULL, '2019-11-15 06:36:13', '0000-00-00 00:00:00', NULL),
(564, 'sameerahmed9', 'Sameer@123', 'seeninunseen@gmail.com', 1, NULL, '2019-11-15 06:37:44', '0000-00-00 00:00:00', NULL),
(565, 'Sishzim', 'moscovium1998', 'sishahamedzim@gmail.com', 1, NULL, '2019-11-15 06:43:33', '0000-00-00 00:00:00', NULL),
(566, 'arooj_nasim', 'felixkjellberg', 'aroojnasim1999@gmail.com', 1, NULL, '2019-11-15 07:48:02', '0000-00-00 00:00:00', NULL),
(567, 'umair khalid', 'umair0055', 'uk259246@gmail.com', 0, NULL, '2019-11-15 07:48:16', '0000-00-00 00:00:00', NULL),
(568, 'Muntasir Miraz', '', 'mjmm340@gmail.com', 1, '109673863498938597180', '2019-11-15 07:54:07', '0000-00-00 00:00:00', NULL),
(569, 'Hasaan', '03153427194', 'hasaan93pk@gmail.com', 0, NULL, '2019-11-15 08:17:51', '0000-00-00 00:00:00', NULL),
(570, 'Hamza Ajaz', '', 'hamzaajaz48@gmail.com', 1, '842286759519833', '2019-11-15 08:21:48', '0000-00-00 00:00:00', NULL),
(571, 'Sheral Gill', 'Sheral01.', 'sheral.gill99@gmail.com', 1, NULL, '2019-11-15 08:48:04', '0000-00-00 00:00:00', NULL),
(572, 'Abdullah Ahmed', '', 'abdu.hampks@gmail.com', 1, '102913310863532578765', '2019-11-15 08:52:42', '0000-00-00 00:00:00', NULL),
(573, 'khairul', '1410970603k', 'khairulislam.contact@gmail.com', 1, NULL, '2019-11-15 09:33:11', '0000-00-00 00:00:00', NULL),
(574, 'Syed Rayaz', '', 'riaz.khizar@hotmail.co.uk', 1, '1344284579075692', '2019-11-15 10:13:40', '0000-00-00 00:00:00', NULL),
(575, 'Muhammad Ahmad Mushtaq', 'HafizG007', 'muhammadahmadmushtaq95@gmail.com', 1, NULL, '2019-11-15 11:06:55', '0000-00-00 00:00:00', NULL),
(576, 'Chaitanya', '310720021', 'vch3107@gmail.com', 1, NULL, '2019-11-15 11:15:03', '0000-00-00 00:00:00', NULL),
(577, 'Itx_fizziii', 'fizzamalik1143', 'aeronaut186@gmail.com', 1, NULL, '2019-11-15 11:27:55', '0000-00-00 00:00:00', NULL),
(578, 'sahebrao9211', 'Macbook@9223', 'sahebrao9211@gmail.com', 0, NULL, '2019-11-15 12:14:09', '0000-00-00 00:00:00', NULL),
(579, 'Abdul Hai', '', 'avista.kan@gmail.com', 1, '114987344192617946189', '2019-11-15 12:30:54', '0000-00-00 00:00:00', NULL),
(580, 'Bhumika Shrestha', 'bhumi@5.chss', 'sthbhumi.5@gmail.com', 1, NULL, '2019-11-15 12:33:02', '0000-00-00 00:00:00', NULL),
(581, 'Raiedali', 'raiedali18', 'syedraiedali@gmail.com', 0, NULL, '2019-11-15 12:57:57', '0000-00-00 00:00:00', NULL),
(582, 'Bilal Ihsan', '', 'bilalihsan790@gmail.com', 1, '101256986080383874120', '2019-11-15 13:11:00', '0000-00-00 00:00:00', NULL),
(583, 'AngelGurung001', 'newpassword001', 'anzelgrg001@gmail.com', 1, NULL, '2019-11-15 13:46:40', '0000-00-00 00:00:00', NULL),
(584, 'Sidra', 'savechanges12', 'sidra.ehtisham@gmail.com', 0, NULL, '2019-11-15 14:01:21', '0000-00-00 00:00:00', NULL),
(585, 'QURAT UL AIN', 'itubs2019', 'quarat.ul.ain.abidhussain@gmail.com', 1, NULL, '2019-11-15 14:06:39', '0000-00-00 00:00:00', NULL),
(586, 'waleed79', '!9816117_lol', 'waleedarshad79@gmail.com', 1, NULL, '2019-11-15 14:37:46', '0000-00-00 00:00:00', NULL),
(587, 'Mihir Motwani', 'mmm110503', 'mihirjagdesh@hotmail.com', 1, NULL, '2019-11-15 14:52:17', '0000-00-00 00:00:00', NULL),
(588, 'sajpvs', 'adish2020', 'sajpvs@yahoo.com', 1, NULL, '2019-11-15 15:02:52', '0000-00-00 00:00:00', NULL),
(589, 'Tayyaba', 'tayyaba99', 'mukhtartayyaba99@gmail.com', 1, NULL, '2019-11-15 15:01:53', '0000-00-00 00:00:00', NULL),
(590, 'Sandip nirmal', 'gulmohar', 'sandipnirmal802@gmail.com', 0, NULL, '2019-11-16 00:50:07', '0000-00-00 00:00:00', NULL),
(591, 'Active Anil', '', 'activeanil06@gmail.com', 1, '3084330581792193', '2019-11-16 01:42:08', '0000-00-00 00:00:00', NULL),
(592, 'SarthakShrestha', 'sarthak9860799144', 'sarthakkshrestha@gmail.com', 1, NULL, '2019-11-17 09:33:49', '0000-00-00 00:00:00', NULL),
(593, 'Muhammad Bajwa', '', 'muhammadbilal10341046@gmail.com', 1, '911036355946488', '2019-11-16 02:05:01', '0000-00-00 00:00:00', NULL),
(594, 'Rashid Ahamed', '01676880673', 'mdrashid0168@gmail.com', 1, NULL, '2019-11-16 05:43:53', '0000-00-00 00:00:00', NULL),
(595, 'Shaily', 'ajay0521', 'shailychetani21@gmail.com', 1, NULL, '2019-11-16 03:13:01', '0000-00-00 00:00:00', NULL),
(596, 'Mohaiminul Islam', '', 'mohaiminuli50@gmail.com', 1, '113921046186266681209', '2019-11-16 04:18:45', '0000-00-00 00:00:00', NULL),
(597, 'Laiba Riaz', 'link.4397', 'waqas9112.wa.wa@gmail.com', 1, NULL, '2019-11-16 04:46:42', '0000-00-00 00:00:00', NULL),
(598, 'Sumi', 'Paranoid12345@', 'sumiyabajgain2019@gmail.com', 0, NULL, '2019-11-16 08:21:25', '0000-00-00 00:00:00', NULL),
(599, 'Saboor', 'ahmed11', 'saboorahmed39@gmail.com', 1, NULL, '2019-11-16 09:29:26', '0000-00-00 00:00:00', NULL),
(600, 'Ramu', 'Durampdr1', 'rampdrdumre@gmail.com', 1, NULL, '2019-11-16 10:42:46', '0000-00-00 00:00:00', NULL),
(601, 'Aasma', '1234567890', 'asimayaseen30@gmail.com', 1, NULL, '2019-11-16 11:06:55', '0000-00-00 00:00:00', NULL),
(602, 'Sayed Anwar Ali', 'anwarali12345', 'sayedanwaralibro999@gmail.com', 1, NULL, '2019-11-17 11:25:37', '0000-00-00 00:00:00', NULL),
(603, 'Mahadullah Shaikh', 'zas_mahad@123', 'smahadullah7@gmail.com', 1, NULL, '2019-11-16 11:32:20', '0000-00-00 00:00:00', NULL),
(604, 'Hema', 'hemakshi', 'savyk2000@yahoo.com', 1, NULL, '2019-11-16 11:25:41', '0000-00-00 00:00:00', NULL),
(605, 'Taha Alam', '', 'tahaalam2010@hotmail.com', 1, '3180779385329537', '2019-11-16 11:25:13', '0000-00-00 00:00:00', NULL),
(606, 'Mohamed', 'esse2020', 'isse2796@gmail.com', 0, NULL, '2019-11-16 12:00:03', '0000-00-00 00:00:00', NULL),
(607, 'hira', '17june2001', 'hirafatima263@gmail.com', 1, NULL, '2019-11-16 12:07:20', '0000-00-00 00:00:00', NULL),
(608, 'Ghulam Mohiudddin', 'GTS2171$', 'ghulammohiuddin2171@gmail.com', 1, NULL, '2019-11-16 18:20:19', '0000-00-00 00:00:00', NULL),
(609, 'Urja Tamrakar', '', 'urjatamrakar11@gmail.com', 1, '113109915317896380964', '2019-11-16 13:14:58', '0000-00-00 00:00:00', NULL),
(610, 'Azmain Ibn Kausar', 'anvinavid1234', 'azmainibnkausarn@gmail.com', 1, NULL, '2019-11-16 16:59:15', '0000-00-00 00:00:00', NULL),
(611, 'khandaker raiyan rahman', '', 'rrkhandaker@gmail.com', 1, '115750779995885766222', '2019-11-16 14:06:34', '0000-00-00 00:00:00', NULL),
(612, 'Mureed Jan', 'mureedjan123', 'mureed_jan@hotmail.com', 1, NULL, '2019-11-16 14:16:51', '0000-00-00 00:00:00', NULL),
(613, 'Prasanna2056', 'prasanna20560525', 'prasannagautam25@gmail.com', 1, NULL, '2019-11-16 16:22:20', '0000-00-00 00:00:00', NULL),
(614, 'Hadees ubaidullah', 'hadees1', 'ismaeelasad@gmail.com', 0, NULL, '2019-11-16 14:35:34', '0000-00-00 00:00:00', NULL),
(615, 'Agrima', 'niktin', 'agrikrmvs@gmail.com', 1, NULL, '2019-11-16 14:48:33', '0000-00-00 00:00:00', NULL),
(616, 'Shahbaz', 'shahbazkanwal', 'shahbazmajeed94@gmail.com', 0, NULL, '2019-11-16 14:52:49', '0000-00-00 00:00:00', NULL),
(617, 'SM Sajjad', '', 'iamsajjad3@gmail.com', 1, '118213795529621581831', '2019-11-16 14:54:40', '0000-00-00 00:00:00', NULL),
(618, 'saif', 'power7896', 'saifrehman7896@gmail.com', 1, NULL, '2019-11-16 16:08:46', '0000-00-00 00:00:00', NULL),
(619, 'Prasanna Gautam', '', 'prasannagautam10@gmail.com', 1, '104366639307708759393', '2019-11-16 16:23:06', '0000-00-00 00:00:00', NULL),
(620, 'Priya', 'momdad143', 'Priyajaiswal490@yahoo.com', 0, NULL, '2019-11-16 16:23:57', '0000-00-00 00:00:00', NULL),
(621, 'Nosh', 'usafuckedup', 'barshaadury@gmail.com', 1, NULL, '2019-11-16 16:27:02', '0000-00-00 00:00:00', NULL),
(622, 'Tajamul Hussain', '', 'tajamul.sagaciousboy@gmail.com', 1, '112775988738985042674', '2019-11-16 16:53:37', '0000-00-00 00:00:00', NULL),
(623, 'Rimsha', 'loveucat', 'rimshahanif1996@gmail.com', 1, NULL, '2019-11-16 17:09:29', '0000-00-00 00:00:00', NULL),
(624, 'Choyan Halder', '17mgt024&', 'choyanbsmrstumgt@gmail.com', 1, NULL, '2019-11-16 17:26:32', '0000-00-00 00:00:00', NULL),
(625, 'Mr GMD', 'GTS2171$', 'gmd2171@gmail.com', 1, NULL, '2019-11-23 16:20:28', '0000-00-00 00:00:00', NULL),
(626, 'Fahad_Rana', 'fahim.rajon', 'rajon9841@gmail.com', 1, NULL, '2019-11-16 18:46:50', '0000-00-00 00:00:00', NULL),
(627, 'Muzammil azhar', 'muzamil18', 'muzamilazhar05@gmail.com', 1, NULL, '2019-11-16 19:15:49', '0000-00-00 00:00:00', NULL),
(628, 'Abbas Kazmi', '', 'abbaykazmi@gmail.com', 1, '1264068590467026', '2019-11-16 19:37:34', '0000-00-00 00:00:00', NULL),
(629, '1234', 'saqib1234567', 'saqibahmad847@gmail.com', 1, NULL, '2019-11-17 02:00:01', '0000-00-00 00:00:00', NULL),
(630, 'Nanu Rohita', '', 'nanurohita123@gmail.com', 1, '105709946054766559613', '2019-11-17 02:25:41', '0000-00-00 00:00:00', NULL),
(631, 'Heyps', 'heypradish', 'pradishshrestha001@gmail.com', 1, NULL, '2019-11-17 03:01:47', '0000-00-00 00:00:00', NULL),
(632, 'zahir', 'mashal24411', 'zahir595@yahoo.com', 1, NULL, '2019-11-17 04:36:11', '0000-00-00 00:00:00', NULL),
(633, 'Kynaat C.', '', 'kynaatkareemc@gmail.com', 1, '147401423218567', '2019-11-17 04:34:56', '0000-00-00 00:00:00', NULL),
(634, 'Fahid', 'nasm3004', 'fahidansari015@gmail.com', 1, NULL, '2019-11-17 04:42:25', '0000-00-00 00:00:00', NULL),
(635, 'Sagar', 'housemd', 'sagarganeju123@gmail.com', 1, NULL, '2019-11-17 04:43:16', '0000-00-00 00:00:00', NULL),
(636, 'Iqra Yousaf', 'Genius', 'iqrayousuf60@gmail.com', 1, NULL, '2019-11-17 08:35:56', '0000-00-00 00:00:00', NULL),
(637, 'Umair Jameel', 'nabeelkhan', 'umairmughal676@gmail.com', 1, NULL, '2019-11-17 07:42:43', '0000-00-00 00:00:00', NULL),
(638, 'Hasnain Ali', '', 'waqarali12345ktk@gmail.com', 1, '115583726286621281302', '2019-11-17 06:51:02', '0000-00-00 00:00:00', NULL),
(639, 'syed hammad', '', 'madishah227@gmail.com', 1, '103546586921857408269', '2019-11-17 07:33:39', '0000-00-00 00:00:00', NULL),
(640, 'Nazrin Akter Sumy', 'Vhxsx9zr63egcMZ', 'nas1o.oni.1393@gmail.com', 1, NULL, '2019-11-17 08:23:11', '0000-00-00 00:00:00', NULL),
(641, 'Ali Raza', '', 'alirazakalis@gmail.com', 1, '638070976725066', '2019-11-17 08:16:52', '0000-00-00 00:00:00', NULL),
(642, 'Iftiar chowdhury', 'iftiar@22aug99?', 'ifti50055@gmail.com', 0, NULL, '2019-11-17 08:17:12', '0000-00-00 00:00:00', NULL),
(643, 'Umarjamshaid@', 'umaranaumar', 'umarjamshaid25@gmail.com', 1, NULL, '2019-11-17 08:38:46', '0000-00-00 00:00:00', NULL),
(644, 'Humna_x', 'humna123', 'abanahmed704@gmail.com', 1, NULL, '2019-11-17 08:39:48', '0000-00-00 00:00:00', NULL),
(645, 'Mukhtiar shah', '1234566', 'Shahsaib256@gmail.com', 1, NULL, '2019-11-17 09:06:34', '0000-00-00 00:00:00', NULL),
(646, 'Hassan Ali', '', 'hassanali3480@gmail.com', 1, '461533704801692', '2019-11-17 10:06:00', '0000-00-00 00:00:00', NULL),
(647, 'Fiza baloch', 'Ilovepakistan', 'zohabaloch53@gmail.com', 1, NULL, '2019-11-18 15:37:26', '0000-00-00 00:00:00', NULL),
(648, 'Dollar', 'abdullahdollar', 'abdullahrajru@gmail.com', 0, NULL, '2019-11-17 11:24:03', '0000-00-00 00:00:00', NULL),
(649, 'Hassan Javaid', 'aleclightwood20', 'hassanchjavaid31@gmail.com', 1, NULL, '2019-11-18 15:49:32', '0000-00-00 00:00:00', NULL),
(650, 'Ullas', '3098@?!0', 'mh.ana.9112@gmail.com', 0, NULL, '2019-11-17 11:55:50', '0000-00-00 00:00:00', NULL),
(651, 'ayesha fatima', '', 'eyeshafatima@gmail.com', 1, '117895209645658432936', '2019-11-17 12:45:52', '0000-00-00 00:00:00', NULL),
(652, 'Sushant Chaudhary', 'Sushant88888', 'Sushant8888chaudhary@gmail.com', 1, NULL, '2019-11-17 14:02:46', '0000-00-00 00:00:00', NULL),
(653, 'Sarim Hussain Alvi', '', 'sarimalvi40@gmail.com', 1, '106141053505625028154', '2019-11-17 14:23:47', '0000-00-00 00:00:00', NULL),
(654, 'Vengus Pirzado', 'vengusrunfast', 'vengusp@gmail.com', 1, NULL, '2019-11-17 15:03:13', '0000-00-00 00:00:00', NULL),
(655, 'Shubham282002', 'shubham28', 'coolshubham2002@gmail.com', 1, NULL, '2019-11-17 18:12:13', '0000-00-00 00:00:00', NULL),
(656, 'Omor Faruk', '', 'omorff22@gmail.com', 1, '543023616430435', '2019-11-17 16:43:44', '0000-00-00 00:00:00', NULL),
(657, 'Rose Lama', '', 'rojmoktanman@gmail.com', 1, '486490471959825', '2019-11-17 16:51:45', '0000-00-00 00:00:00', NULL),
(658, 'Farjad', 'dajrafkhan', 'farjadakhan7@gmail.com', 1, NULL, '2019-11-17 17:05:23', '0000-00-00 00:00:00', NULL),
(659, 'Ram', 'Global@916', 'janakiee@yahoo.com', 1, NULL, '2019-11-17 18:56:31', '0000-00-00 00:00:00', NULL),
(660, 'AN Siddique', '', 'nihalakif665585@gmail.com', 1, '1502571849918993', '2019-11-17 21:12:36', '0000-00-00 00:00:00', NULL),
(661, 'ACTING KA BAAP', '', 'shahidbhai161@gmail.com', 1, '100513202374351041825', '2019-11-17 21:44:23', '0000-00-00 00:00:00', NULL),
(662, 'Chirag Simkhada', '', 'chiragsimkhada@gmail.com', 1, '111720143033477327476', '2019-11-18 02:15:08', '0000-00-00 00:00:00', NULL),
(663, 'Fun OverRated Tube', '', 'acharyalochan3@gmail.com', 1, '112568315561142044880', '2019-11-18 02:46:27', '0000-00-00 00:00:00', NULL),
(664, 'Shabir_ahmad', 'warmachine245', 'shabirahmad245245@gmail.com', 1, NULL, '2019-11-18 04:24:41', '0000-00-00 00:00:00', NULL),
(665, 'Adil', 'Duecat 1619', 'madilj598@gmail.com', 1, NULL, '2019-11-18 04:48:15', '0000-00-00 00:00:00', NULL),
(666, 'Ashmita', 'aleecyakecy', 'ashmita7127@gmail.com', 0, NULL, '2019-11-18 05:41:17', '0000-00-00 00:00:00', NULL),
(667, 'Ubaid Ullah', 'uzair123', 'ubaidullahkhan1795@gmail.com', 0, NULL, '2019-11-18 06:42:11', '0000-00-00 00:00:00', NULL),
(668, 'Nidhi Katyal', '', 'nidhi.katyal2@gmail.com', 1, '2669612963097736', '2019-11-18 08:36:24', '0000-00-00 00:00:00', NULL),
(669, 'Ali Ahmed Hashwani', '', 'hashwanialiahmed@gmail.com', 1, '115916706095374238248', '2019-11-18 09:31:58', '0000-00-00 00:00:00', NULL),
(670, 'Ali Ahmed', 'Killermove00', 'hashwanialiahmed@gmail.com', 0, NULL, '2019-11-18 09:34:43', '0000-00-00 00:00:00', NULL),
(671, 'yasir maroof', 'pakistan123', 'yasirmaroof77@gmail.com', 1, NULL, '2019-11-18 10:22:22', '0000-00-00 00:00:00', NULL),
(672, 'Ronald', 'shaikat', 'ssmbiswas_12@yahoo.com', 1, NULL, '2019-11-19 02:15:36', '0000-00-00 00:00:00', NULL),
(673, 'SANAGAYA', 'Cbmp-Babu3909', 'sanagaya10@gmail.com', 0, NULL, '2019-11-20 07:41:46', '0000-00-00 00:00:00', NULL),
(674, 'Farah Fernandes', '', 'farahalnisham@gmail.com', 1, '109907553541592986758', '2019-11-20 06:50:26', '0000-00-00 00:00:00', NULL),
(675, 'gaya', 'Cbmp-Babu3909', 'komalgaya@hotmail.com', 1, NULL, '2019-11-20 07:56:47', '0000-00-00 00:00:00', NULL),
(676, 'harshpatni108', 'Harshjit805', 'harshwardhanpatni@yahoo.com', 1, NULL, '2019-11-21 11:36:10', '0000-00-00 00:00:00', NULL),
(677, 'ameya2002', 'Amurups@2504', 'ameyadehade@gmail.com', 1, NULL, '2019-11-23 10:35:11', '0000-00-00 00:00:00', NULL),
(678, 'Shafeek', 'shafeek1911', 'shafeeksidhiq10@gmail.com', 1, NULL, '2019-11-24 03:17:25', '0000-00-00 00:00:00', NULL),
(679, 'Mohammed Ayaz', 'suziandsadia', 'audiferrai6314@gmail.com', 1, NULL, '2019-11-26 11:48:18', '0000-00-00 00:00:00', '918897673031'),
(683, 'shubam bhogal', '125412', 'bhogalshubam1990@gmail.com', 0, NULL, '2019-11-26 15:28:00', '0000-00-00 00:00:00', NULL),
(684, 'shubambhogaln', '123456', 'shubam.bhogal96@gmail.com', 0, NULL, '2019-11-26 16:53:49', '0000-00-00 00:00:00', NULL),
(687, 'test', 'welcome123', 'webslution808@gmail.com', 0, NULL, '2019-11-26 17:07:54', '0000-00-00 00:00:00', NULL),
(688, 'Santosh', 'welcome123', 'webslution809@gmail.com', 0, NULL, '2019-11-26 17:09:16', '0000-00-00 00:00:00', NULL),
(689, 'taran1', 'welcome123', 'webslution80709@gmail.com', 0, NULL, '2019-11-26 17:13:28', '0000-00-00 00:00:00', NULL),
(690, 'taran444', 'welcome123', 'webslution807444@gmail.com', 0, NULL, '2019-11-26 17:23:09', '0000-00-00 00:00:00', NULL),
(691, 'sktest', '123654', 'webslution8011@gmail.com', 0, NULL, '2019-11-26 17:38:57', '0000-00-00 00:00:00', NULL),
(693, 'Dhairya Gandhi', '', 'dhairya5402@gmail.com', 1, '101894969979739889986', '2019-11-26 18:17:26', '0000-00-00 00:00:00', NULL),
(694, 'ALPHONSA THOMAS', 'monk@2?', 'alphonsathomas152@gmail.com', 1, NULL, '2019-11-27 01:28:51', '0000-00-00 00:00:00', '918113994013'),
(695, 'Bala Ji', '', 'bala501112007@gmail.com', 1, '2384145068565571', '2019-11-27 03:47:44', '0000-00-00 00:00:00', NULL),
(696, 'DStest', 'GTS@1234', 'dineshsadhwakni4@gmail.com', 0, NULL, '2019-11-27 07:13:34', '0000-00-00 00:00:00', NULL),
(697, 'TestGTS', 'GTS@1234', 'deepaksadhwa@hotmail.com', 0, NULL, '2019-11-27 07:17:07', '0000-00-00 00:00:00', NULL),
(698, 'Danny Duke', '', 'danny@globaltalentsearch.us', 1, '114896276355784999763', '2019-11-27 14:12:33', '0000-00-00 00:00:00', NULL),
(705, 'Rahul_1221', 'rahul7928', 'seh.rahul@icloud.con', 0, NULL, '2019-11-27 18:33:39', '0000-00-00 00:00:00', NULL),
(714, 'taran12', '123654', 'taran123@gmail.com', 0, NULL, '2019-11-28 15:59:44', '0000-00-00 00:00:00', NULL),
(715, 'Seven Sharma', '', 'websolution807@gmail.com', 1, '844009092681497', '2019-11-28 16:03:40', '0000-00-00 00:00:00', NULL),
(716, 'Web Dev', '', 'webdevdaystar@gmail.com', 1, '103493158653663366360', '2019-11-28 16:05:31', '0000-00-00 00:00:00', NULL),
(717, 'Smita', 'love25', 'victoriatamang50@gmail.com', 1, NULL, '2019-12-01 15:49:35', '0000-00-00 00:00:00', NULL),
(718, 'lochan13', '@Google123', 'acharyalochan21@gmail.com', 1, NULL, '2019-12-02 11:56:18', '0000-00-00 00:00:00', NULL),
(719, 'Krish Shah', 'tiqjoC-heszyh-verja9', 'shawcross09@gmail.com', 1, NULL, '2019-12-03 07:32:23', '0000-00-00 00:00:00', '918758462699'),
(720, 'Sunil Shah', '', 'sun3shah@gmail.com', 1, '107069088801630053608', '2019-12-03 16:26:37', '0000-00-00 00:00:00', NULL),
(721, 'Sonam', 'sonam123@13chhipa', 'sonamchhipa8750@gmail.com', 1, NULL, '2019-12-04 10:49:19', '0000-00-00 00:00:00', '919352338028'),
(722, 'Shivam', '12345', 'shivamnunu@gmail.com', 1, NULL, '2019-12-04 11:23:38', '0000-00-00 00:00:00', '918209338860'),
(723, 'Sadashiv Neesad', 'sadunandu', 'sadashivneesad@gmail.com', 1, NULL, '2019-12-05 07:55:40', '0000-00-00 00:00:00', '917304699768');

-- --------------------------------------------------------

--
-- Table structure for table `users_reset`
--

CREATE TABLE `users_reset` (
  `id` int(11) NOT NULL,
  `emailAddress` text NOT NULL,
  `keyURL` text NOT NULL,
  `expDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_reset`
--

INSERT INTO `users_reset` (`id`, `emailAddress`, `keyURL`, `expDate`) VALUES
(10, 'debimajumder28@gmail.com', '768e78024aa8fdb9b8fe87be86f64745046edab8b0', '2019-10-27 13:30:30'),
(9, 'debimajumder28@gmail.com', '768e78024aa8fdb9b8fe87be86f64745df72e2e3b0', '2019-10-27 13:30:00'),
(11, 'mustakimkhan5392@gmail.com', '768e78024aa8fdb9b8fe87be86f64745bca12d677b', '2019-10-28 12:52:53'),
(12, 'mustakimkhan5392@gmail.com', '768e78024aa8fdb9b8fe87be86f64745675d6ffe62', '2019-10-28 12:55:03'),
(13, 'jeetkundu43@gmail.com', '768e78024aa8fdb9b8fe87be86f647456be209179c', '2019-10-28 17:25:29'),
(14, 'ramahoungbo@gmail.com', '768e78024aa8fdb9b8fe87be86f647455eba491053', '2019-10-29 11:24:00'),
(16, 'nikhilsanthosh89@gmail.com', '768e78024aa8fdb9b8fe87be86f64745e877745c40', '2019-10-30 07:47:23'),
(18, 'praney2607@gmail.com', '768e78024aa8fdb9b8fe87be86f647450a0a2fc91f', '2019-10-30 17:32:37'),
(19, 'krishnapratap008@gmail.com', '768e78024aa8fdb9b8fe87be86f64745c17a34c65f', '2019-10-30 20:52:10'),
(20, 'vikashjaisiyavikashjaisiya@gmail.com', '768e78024aa8fdb9b8fe87be86f64745349f78afce', '2019-11-01 01:23:12'),
(21, 'akshatbudholia10@gmail.com', '768e78024aa8fdb9b8fe87be86f6474562a0890d5c', '2019-11-03 12:26:06'),
(22, 'at4451190@gmail.com', '768e78024aa8fdb9b8fe87be86f64745dd939d7df7', '2019-11-03 19:49:33'),
(23, 'rayasamuel0@gmail.com', '768e78024aa8fdb9b8fe87be86f64745f2d5e8ecb0', '2019-11-04 05:33:35'),
(24, 'rayasamuel0@gmail.com', '768e78024aa8fdb9b8fe87be86f64745e0b109567f', '2019-11-04 05:33:35'),
(25, 'rayasamuel0@gmail.com', '768e78024aa8fdb9b8fe87be86f64745d6a23e52fd', '2019-11-04 05:33:36'),
(26, 'shivin6663@gmail.con', '768e78024aa8fdb9b8fe87be86f64745688886cce0', '2019-11-04 12:27:06'),
(28, 'shivin6663@gmail.com', '768e78024aa8fdb9b8fe87be86f64745a42b442fd4', '2019-11-04 12:30:27'),
(30, 'jhalakbansal02@gmail.com', '768e78024aa8fdb9b8fe87be86f64745764621a18e', '2019-11-08 07:41:13'),
(31, 'jhalakbansal02@gmail.com', '768e78024aa8fdb9b8fe87be86f64745d9878baea1', '2019-11-08 07:41:13'),
(32, 'jhalakbansal02@gmail.com', '768e78024aa8fdb9b8fe87be86f64745007dca637d', '2019-11-08 07:42:47'),
(35, 'souvik.tribeni123@gmail.com', '768e78024aa8fdb9b8fe87be86f64745bd20d38a41', '2019-11-12 08:33:28'),
(40, 'rr8639155@gmail.com', '768e78024aa8fdb9b8fe87be86f64745f1b0b270a2', '2019-11-14 13:11:15'),
(41, 'rr8639155@gmail.com', '768e78024aa8fdb9b8fe87be86f64745f36fd02b9d', '2019-11-14 13:12:59'),
(42, 'rr8639155@gmail.com', '768e78024aa8fdb9b8fe87be86f647457d19040d32', '2019-11-14 13:13:00'),
(43, 'rr8639155@gmail.com', '768e78024aa8fdb9b8fe87be86f647452086aa798a', '2019-11-14 13:14:11'),
(54, 'quarat.ul.ain.abidhussain@gmail.com', '768e78024aa8fdb9b8fe87be86f64745bfb68390f9', '2019-11-22 14:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `xrefmajorsselections`
--

CREATE TABLE `xrefmajorsselections` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `areasOfStudyId` int(10) NOT NULL,
  `majorId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xrefstudentsectionscompleted`
--

CREATE TABLE `xrefstudentsectionscompleted` (
  `id` int(10) NOT NULL,
  `stuId` int(10) NOT NULL,
  `sectionId` int(10) NOT NULL,
  `isCompleted` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkboxoptions`
--
ALTER TABLE `checkboxoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkboxquestions`
--
ALTER TABLE `checkboxquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkboxselectionsxref`
--
ALTER TABLE `checkboxselectionsxref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collegeoruniversity`
--
ALTER TABLE `collegeoruniversity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `honors`
--
ALTER TABLE `honors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupapsubjects`
--
ALTER TABLE `lookupapsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupareaofstudymajors`
--
ALTER TABLE `lookupareaofstudymajors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupareasofstudy`
--
ALTER TABLE `lookupareasofstudy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupcountry`
--
ALTER TABLE `lookupcountry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupcountrycode`
--
ALTER TABLE `lookupcountrycode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupibsubjectlevel`
--
ALTER TABLE `lookupibsubjectlevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupibsubjects`
--
ALTER TABLE `lookupibsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupoccupations`
--
ALTER TABLE `lookupoccupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupplannedhighestedulvl`
--
ALTER TABLE `lookupplannedhighestedulvl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookupsatsubjecttestsubjects`
--
ALTER TABLE `lookupsatsubjecttestsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobileotp`
--
ALTER TABLE `mobileotp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siblings`
--
ALTER TABLE `siblings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testibsubject`
--
ALTER TABLE `testibsubject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testsact`
--
ALTER TABLE `testsact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testsapsubject`
--
ALTER TABLE `testsapsubject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testsielts`
--
ALTER TABLE `testsielts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testssatexam`
--
ALTER TABLE `testssatexam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testssatsubject`
--
ALTER TABLE `testssatsubject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teststoeflibt`
--
ALTER TABLE `teststoeflibt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploadtranscripts`
--
ALTER TABLE `uploadtranscripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_reset`
--
ALTER TABLE `users_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xrefmajorsselections`
--
ALTER TABLE `xrefmajorsselections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xrefstudentsectionscompleted`
--
ALTER TABLE `xrefstudentsectionscompleted`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkboxoptions`
--
ALTER TABLE `checkboxoptions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `checkboxquestions`
--
ALTER TABLE `checkboxquestions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `checkboxselectionsxref`
--
ALTER TABLE `checkboxselectionsxref`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `collegeoruniversity`
--
ALTER TABLE `collegeoruniversity`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `honors`
--
ALTER TABLE `honors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lookupapsubjects`
--
ALTER TABLE `lookupapsubjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `lookupareaofstudymajors`
--
ALTER TABLE `lookupareaofstudymajors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `lookupareasofstudy`
--
ALTER TABLE `lookupareasofstudy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `lookupcountry`
--
ALTER TABLE `lookupcountry`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `lookupcountrycode`
--
ALTER TABLE `lookupcountrycode`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `lookupibsubjectlevel`
--
ALTER TABLE `lookupibsubjectlevel`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lookupibsubjects`
--
ALTER TABLE `lookupibsubjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `lookupoccupations`
--
ALTER TABLE `lookupoccupations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `lookupplannedhighestedulvl`
--
ALTER TABLE `lookupplannedhighestedulvl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lookupsatsubjecttestsubjects`
--
ALTER TABLE `lookupsatsubjecttestsubjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mobileotp`
--
ALTER TABLE `mobileotp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `siblings`
--
ALTER TABLE `siblings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=724;

--
-- AUTO_INCREMENT for table `testibsubject`
--
ALTER TABLE `testibsubject`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testsact`
--
ALTER TABLE `testsact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testsapsubject`
--
ALTER TABLE `testsapsubject`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testsielts`
--
ALTER TABLE `testsielts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `testssatexam`
--
ALTER TABLE `testssatexam`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `testssatsubject`
--
ALTER TABLE `testssatsubject`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teststoeflibt`
--
ALTER TABLE `teststoeflibt`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uploadtranscripts`
--
ALTER TABLE `uploadtranscripts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=724;

--
-- AUTO_INCREMENT for table `users_reset`
--
ALTER TABLE `users_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `xrefmajorsselections`
--
ALTER TABLE `xrefmajorsselections`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xrefstudentsectionscompleted`
--
ALTER TABLE `xrefstudentsectionscompleted`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
