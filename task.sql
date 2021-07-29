-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 29, 2021 at 05:25 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aemail` varchar(50) NOT NULL,
  `apassword` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `aemail`, `apassword`, `date_time`, `last_login`) VALUES
(1, 'admin@admin.com', 'admin', '2021-07-29 05:02:51', '2021-07-29 05:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `company` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `uemail`, `job_title`, `company`) VALUES
(1, 'Lara', 'Dennington', 'ldennington0@surveymonkey.com', 'Geological Engineer', 'Brightbean'),
(2, 'Erie', 'Mapledorum', 'emapledorum1@google.com.hk', 'Database Administrator III', 'Oyoyo'),
(3, 'Xavier', 'Meininger', 'xmeininger2@discuz.net', 'Programmer Analyst I', 'Tazzy'),
(4, 'Michelina', 'Treharne', 'mtreharne3@weebly.com', 'Internal Auditor', 'Brightdog'),
(5, 'Thomasin', 'Disley', 'tdisley4@sohu.com', 'Clinical Specialist', 'Edgetag'),
(6, 'Ashla', 'Oiseau', 'aoiseau5@census.gov', 'Human Resources Assistant IV', 'Yombu'),
(7, 'Alvie', 'Kilbey', 'akilbey6@naver.com', 'Account Executive', 'Kazio'),
(8, 'Lauri', 'Kellough', 'lkellough7@lycos.com', 'GIS Technical Architect', 'Skiptube'),
(9, 'Flori', 'Swindells', 'fswindells8@nifty.com', 'Administrative Assistant II', 'Demizz'),
(10, 'Ragnar', 'Dumbell', 'rdumbell9@pen.io', 'Assistant Professor', 'Livefish'),
(11, 'Laura', 'Imesen', 'limesena@smugmug.com', 'Automation Specialist I', 'Dabfeed'),
(12, 'Victoir', 'Thorby', 'vthorbyb@noaa.gov', 'Human Resources Manager', 'Vidoo'),
(13, 'Alyson', 'Pummery', 'apummeryc@ucoz.ru', 'Human Resources Manager', 'Quinu'),
(14, 'Joshua', 'Hencke', 'jhencked@facebook.com', 'Chief Design Engineer', 'Tagtune'),
(15, 'Gui', 'Lawrie', 'glawriee@friendfeed.com', 'General Manager', 'Realmix'),
(16, 'Tanya', 'Usherwood', 'tusherwoodf@usatoday.com', 'Marketing Assistant', 'Eazzy'),
(17, 'Meghan', 'Biddwell', 'mbiddwellg@reverbnation.com', 'Financial Advisor', 'Twitterlist'),
(18, 'Blanch', 'Stott', 'bstotth@mtv.com', 'Environmental Specialist', 'Tagcat'),
(19, 'Shea', 'Luety', 'sluetyi@theatlantic.com', 'Information Systems Manager', 'Snaptags'),
(20, 'Reider', 'Heathcote', 'rheathcotej@alibaba.com', 'Senior Editor', 'Kaymbo'),
(21, 'Shepperd', 'Wainman', 'swainmank@fc2.com', 'Software Engineer III', 'Plambee'),
(22, 'Jami', 'Haselup', 'jhaselupl@jimdo.com', 'Web Developer II', 'Flipopia'),
(23, 'Opaline', 'Shipway', 'oshipwaym@discovery.com', 'Nurse Practicioner', 'Rhycero'),
(24, 'Angie', 'Crunden', 'acrundenn@nsw.gov.au', 'Software Consultant', 'Babbleopia'),
(25, 'Danica', 'Carnell', 'dcarnello@tumblr.com', 'Civil Engineer', 'Quimm'),
(26, 'Maryrose', 'Dowers', 'mdowersp@xinhuanet.com', 'VP Product Management', 'Aimbu'),
(27, 'Shanon', 'Ralestone', 'sralestoneq@topsy.com', 'Assistant Professor', 'Browseblab'),
(28, 'Amelina', 'Petit', 'apetitr@webmd.com', 'Speech Pathologist', 'Jabberbean'),
(29, 'Valaree', 'Darrigrand', 'vdarrigrands@domainmarket.com', 'Product Engineer', 'Divanoodle'),
(30, 'Asa', 'Wanstall', 'awanstallt@dot.gov', 'Account Executive', 'Feedbug'),
(31, 'Leeann', 'Backs', 'lbacksu@sitemeter.com', 'VP Marketing', 'Shuffledrive'),
(32, 'Sean', 'Sowersby', 'ssowersbyv@dmoz.org', 'Account Coordinator', 'Aimbu'),
(33, 'Deeann', 'Maraga', 'dmaragaw@sciencedaily.com', 'Research Associate', 'Youopia'),
(34, 'Kathlin', 'Wait', 'kwaitx@i2i.jp', 'Budget/Accounting Analyst III', 'Skiptube'),
(35, 'Nadean', 'Tetley', 'ntetleyy@springer.com', 'Administrative Assistant I', 'Cogibox'),
(36, 'Merrielle', 'Tamburi', 'mtamburiz@smugmug.com', 'Design Engineer', 'Snaptags'),
(37, 'Ross', 'Jobke', 'rjobke10@tumblr.com', 'Dental Hygienist', 'Tagtune'),
(38, 'Deirdre', 'Pillifant', 'dpillifant11@smugmug.com', 'Professor', 'Leexo'),
(39, 'Tabbi', 'Chong', 'tchong12@census.gov', 'Dental Hygienist', 'Jaloo'),
(40, 'Shawn', 'Wortman', 'swortman13@webs.com', 'Analyst Programmer', 'Voonyx'),
(41, 'Kaitlynn', 'Robertacci', 'krobertacci14@wikipedia.org', 'Geological Engineer', 'Browseblab'),
(42, 'Ralf', 'McCoid', 'rmccoid15@adobe.com', 'Senior Cost Accountant', 'Devify'),
(43, 'Elinore', 'Flanigan', 'eflanigan16@archive.org', 'Product Engineer', 'Oyoba'),
(44, 'Wain', 'Bondy', 'wbondy17@independent.co.uk', 'Director of Sales', 'Trunyx'),
(45, 'Nevil', 'Paolacci', 'npaolacci18@amazon.co.jp', 'Office Assistant III', 'Oyonder'),
(46, 'Uriel', 'Canning', 'ucanning19@icio.us', 'Senior Editor', 'Camido'),
(47, 'Sidonia', 'Wimbury', 'swimbury1a@craigslist.org', 'Engineer I', 'Topiclounge'),
(48, 'Marie-jeanne', 'Martusewicz', 'mmartusewicz1b@wordpress.org', 'Software Engineer III', 'Vinder'),
(49, 'Susanna', 'McGrae', 'smcgrae1c@discuz.net', 'Civil Engineer', 'Photolist'),
(50, 'Myrilla', 'Searles', 'msearles1d@intel.com', 'Editor', 'Jamia'),
(51, 'Elfrida', 'Cordero', 'ecordero1e@tripadvisor.com', 'Civil Engineer', 'Babbleset'),
(52, 'Zachery', 'Diegan', 'zdiegan1f@gnu.org', 'Graphic Designer', 'Voonder'),
(53, 'Hank', 'Brunon', 'hbrunon1g@flavors.me', 'Account Coordinator', 'Zoomcast'),
(54, 'Feliks', 'Marquand', 'fmarquand1h@java.com', 'Senior Financial Analyst', 'Ainyx'),
(55, 'Abbye', 'Rolfi', 'arolfi1i@opera.com', 'Account Coordinator', 'Leenti'),
(56, 'Teddie', 'Basden', 'tbasden1j@imdb.com', 'Professor', 'Blogtag'),
(57, 'Gunner', 'Scrase', 'gscrase1k@mtv.com', 'Safety Technician III', 'Innotype'),
(58, 'Idell', 'Brightwell', 'ibrightwell1l@i2i.jp', 'Design Engineer', 'Brainbox'),
(59, 'Eziechiele', 'McGrail', 'emcgrail1m@soup.io', 'Mechanical Systems Engineer', 'Centizu'),
(60, 'Parke', 'Haycraft', 'phaycraft1n@boston.com', 'Software Engineer II', 'Gigaclub'),
(61, 'Trixie', 'Matveyev', 'tmatveyev1o@nsw.gov.au', 'Data Coordiator', 'Layo'),
(62, 'Corri', 'Bruinemann', 'cbruinemann1p@berkeley.edu', 'Project Manager', 'Buzzster'),
(63, 'Patin', 'Casse', 'pcasse1q@last.fm', 'Senior Financial Analyst', 'Cogidoo'),
(64, 'Berny', 'Trewhella', 'btrewhella1r@naver.com', 'Internal Auditor', 'Voolia'),
(65, 'Kalli', 'Brise', 'kbrise1s@home.pl', 'Geological Engineer', 'Quinu'),
(66, 'Somerset', 'Lemmertz', 'slemmertz1t@tuttocitta.it', 'Engineer II', 'Tagfeed'),
(67, 'Emalee', 'Axtell', 'eaxtell1u@bluehost.com', 'Social Worker', 'Agimba'),
(68, 'Verena', 'Mix', 'vmix1v@deliciousdays.com', 'Administrative Assistant I', 'Katz'),
(69, 'Perry', 'Letteresse', 'pletteresse1w@xrea.com', 'Marketing Manager', 'Demimbu'),
(70, 'Hendrik', 'Zoephel', 'hzoephel1x@amazon.co.uk', 'Research Assistant II', 'Fatz'),
(71, 'Lazare', 'Rushworth', 'lrushworth1y@is.gd', 'Budget/Accounting Analyst IV', 'Riffpedia'),
(72, 'Caressa', 'Errowe', 'cerrowe1z@themeforest.net', 'Recruiting Manager', 'Kimia'),
(73, 'Missy', 'Briston', 'mbriston20@rambler.ru', 'Structural Engineer', 'Demizz'),
(74, 'Alfie', 'Lowe', 'alowe21@google.de', 'Electrical Engineer', 'Voomm'),
(75, 'Marv', 'McGookin', 'mmcgookin22@networksolutions.com', 'Civil Engineer', 'Cogilith'),
(76, 'Prissie', 'MacKissack', 'pmackissack23@baidu.com', 'Statistician IV', 'Realblab'),
(77, 'Kelbee', 'Hebner', 'khebner24@nature.com', 'Office Assistant II', 'Bubblebox'),
(78, 'Violet', 'Sager', 'vsager25@jiathis.com', 'Associate Professor', 'Brainbox'),
(79, 'Ambros', 'Nussen', 'anussen26@bbb.org', 'Nuclear Power Engineer', 'Dabfeed'),
(80, 'Nevil', 'Tomaello', 'ntomaello27@privacy.gov.au', 'Help Desk Technician', 'Voonix'),
(81, 'Erna', 'Peto', 'epeto28@constantcontact.com', 'Senior Editor', 'Chatterpoint'),
(82, 'Omero', 'Sillars', 'osillars29@nasa.gov', 'Research Nurse', 'Mybuzz'),
(83, 'Ara', 'Gokes', 'agokes2a@hc360.com', 'VP Accounting', 'Thoughtblab'),
(84, 'Vivia', 'Lyster', 'vlyster2b@opera.com', 'Software Engineer IV', 'Topiclounge'),
(85, 'Maia', 'Croxall', 'mcroxall2c@blogspot.com', 'Structural Analysis Engineer', 'Brainverse'),
(86, 'Dun', 'Clynmans', 'dclynmans2d@reverbnation.com', 'Biostatistician II', 'Jabbertype'),
(87, 'Brana', 'Pinnick', 'bpinnick2e@elegantthemes.com', 'Technical Writer', 'Quimm'),
(88, 'Marisa', 'Betterton', 'mbetterton2f@va.gov', 'Account Executive', 'Camido'),
(89, 'Zebadiah', 'Leyrroyd', 'zleyrroyd2g@gnu.org', 'VP Accounting', 'Yozio'),
(90, 'Antonietta', 'Stanlack', 'astanlack2h@mozilla.com', 'Office Assistant IV', 'Edgepulse'),
(91, 'Lydon', 'Hane', 'lhane2i@delicious.com', 'Programmer II', 'Babbleblab'),
(92, 'Anabal', 'Stidston', 'astidston2j@hexun.com', 'Recruiting Manager', 'Tambee'),
(93, 'Siffre', 'Wakefield', 'swakefield2k@infoseek.co.jp', 'Librarian', 'Tazz'),
(94, 'Zsa zsa', 'Blaw', 'zblaw2l@paypal.com', 'Biostatistician I', 'Dabtype'),
(95, 'L;urette', 'Geydon', 'lgeydon2m@twitter.com', 'Geologist II', 'Fivespan'),
(96, 'Sheffie', 'Broinlich', 'sbroinlich2n@army.mil', 'Programmer Analyst II', 'Kwideo'),
(97, 'Northrup', 'Siebert', 'nsiebert2o@1und1.de', 'Assistant Media Planner', 'Shuffletag'),
(98, 'Kris', 'Callen', 'kcallen2p@mozilla.org', 'Software Test Engineer II', 'Edgewire'),
(99, 'Jaquenetta', 'Gellion', 'jgellion2q@hubpages.com', 'Account Executive', 'Rhyzio'),
(100, 'Faythe', 'Wharby', 'fwharby2r@chicagotribune.com', 'Assistant Media Planner', 'Zoonoodle');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
