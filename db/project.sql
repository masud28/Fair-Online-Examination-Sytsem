-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 01:20 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('', ''),
('61c9d7fb9cb9e', '61c9d7fc05aef'),
('61c9d7fc72375', '61c9d7fc8365d'),
('61c9d7fcce9f4', '61c9d7fcd694f'),
('61c9d7fd11861', '61c9d7fd2bb8b'),
('61c9d7fd5c874', '61c9d7fd67b6c'),
('61cab138b1b6d', '61cab13907943'),
('61cab13940a47', '61cab1394899b'),
('61cab139e38a3', '61cab139eb61a'),
('61cab13a35c1e', '61cab13a4e0ab'),
('61cab13a8c7e3', '61cab13a94cad'),
('61cab13abd5cd', '61cab13ac5a88'),
('61cab13b0225a', '61cab13b0a8e4'),
('61cab13b32f4e', '61cab13b3b5c4'),
('61cab13b63d31', '61cab13b6c209'),
('61cab13ba23b7', '61cab13baa6f0'),
('61cab304b4f36', '61cab3050a955'),
('61cab30535d63', '61cab3053dc71'),
('61cab3059fc0e', '61cab305aa4e8'),
('61cab305db529', '61cab305e3549'),
('61cab3061810b', '61cab3061ffe8'),
('61cab30666896', '61cab3066ed6c'),
('61cab448c5e5d', '61cab4491babe'),
('61cab4494c84f', '61cab44954ecc'),
('61cab44985c1b', '61cab449ae299'),
('61cab44a0390f', '61cab44a0b84c'),
('61cab44a3c7ec', '61cab44a447d9'),
('61cab747893c2', '61cab747d50ea'),
('61cab7483a70c', '61cab7484dae0'),
('61cab7487bb26', '61cab748840e5'),
('61cab748af220', '61cab748b773a'),
('61cab74907216', '61cab7490f12d'),
('61cab74940219', '61cab749480e1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('61cac18e4d8c1', 'Masud Rana', 'masud028@gmail.com', 'About Exam', 'We are very thankful to all of you for entire support extended during the examination. We are able to execute our Online Exam Process with secure browsers seamlessly. Thanks once again.', '2021-12-28', '08:49:34am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `right`, `wrong`, `date`) VALUES
('joseph44@gmail.com', '61cab50337c51', 4, 6, 4, 2, '2021-12-28 07:54:03'),
('marie098@gmail.com', '61cab1f860851', 5, 6, 5, 1, '2021-12-28 07:54:51'),
('masud028@gmail.com', '61cab50337c51', 4, 6, 4, 2, '2021-12-28 08:45:10'),
('rouf059@gmail.com', '61cab1f860851', 4, 6, 4, 2, '2021-12-28 08:47:35'),
('marie098@gmail.com', '61cab50337c51', 4, 6, 4, 2, '2021-12-28 11:25:01'),
('marie098@gmail.com', '61caaf6c252b4', 10, 10, 10, 0, '2021-12-28 12:02:07'),
('marie098@gmail.com', '61cab374dc692', 5, 5, 5, 0, '2021-12-28 13:46:51'),
('rouf059@gmail.com', '61cab50337c51', 0, 1, 0, 1, '2021-12-29 08:56:16'),
('marie098@gmail.com', '61c9d749c92a6', 2, 5, 2, 3, '2021-12-29 10:52:10'),
('joseph44@gmail.com', '61cab374dc692', 2, 5, 2, 3, '2021-12-29 11:50:55'),
('joseph44@gmail.com', '61cab1f860851', 3, 6, 3, 3, '2021-12-29 11:52:15'),
('joseph44@gmail.com', '61c9d749c92a6', 2, 5, 2, 3, '2021-12-29 11:56:08'),
('joseph44@gmail.com', '61caaf6c252b4', 1, 1, 1, 0, '2021-12-29 12:11:18'),
('rouf059@gmail.com', '61cab374dc692', 2, 5, 2, 3, '2021-12-29 12:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('', '', ''),
('61c9d7fb9cb9e', 'single thread of execution.', '61c9d7fc05ae3'),
('61c9d7fb9cb9e', 'program in the execution', '61c9d7fc05aef'),
('61c9d7fb9cb9e', 'program in the memory', '61c9d7fc05af3'),
('61c9d7fb9cb9e', 'task', '61c9d7fc05af6'),
('61c9d7fc72375', 'Grammar checker', '61c9d7fc83652'),
('61c9d7fc72375', 'Spell checker', '61c9d7fc8365d'),
('61c9d7fc72375', 'Word checker', '61c9d7fc8365f'),
('61c9d7fc72375', 'None of the these', '61c9d7fc83661'),
('61c9d7fcce9f4', 'A bit', '61c9d7fcd694f'),
('61c9d7fcce9f4', 'A byte', '61c9d7fcd696e'),
('61c9d7fcce9f4', 'A block', '61c9d7fcd6976'),
('61c9d7fcce9f4', 'A nibble', '61c9d7fcd697e'),
('61c9d7fd11861', '21', '61c9d7fd2bb81'),
('61c9d7fd11861', '39', '61c9d7fd2bb89'),
('61c9d7fd11861', '42', '61c9d7fd2bb8a'),
('61c9d7fd11861', '23', '61c9d7fd2bb8b'),
('61c9d7fd5c874', 'Keyboard', '61c9d7fd67b55'),
('61c9d7fd5c874', 'Mouse', '61c9d7fd67b65'),
('61c9d7fd5c874', 'VDU', '61c9d7fd67b6c'),
('61c9d7fd5c874', 'Light pen', '61c9d7fd67b73'),
('61cab138b1b6d', 'Google', '61cab13907936'),
('61cab138b1b6d', 'Altavista', '61cab13907941'),
('61cab138b1b6d', 'Archie', '61cab13907943'),
('61cab138b1b6d', 'WAIS', '61cab13907945'),
('61cab13940a47', '32 bit', '61cab1394898e'),
('61cab13940a47', '64 bit', '61cab13948999'),
('61cab13940a47', '128 bit', '61cab1394899b'),
('61cab13940a47', '256 bit', '61cab1394899d'),
('61cab139e38a3', 'Chrome', '61cab139eb602'),
('61cab139e38a3', 'Internet Explorer', '61cab139eb614'),
('61cab139e38a3', 'Mozilla', '61cab139eb617'),
('61cab139e38a3', 'Nexus', '61cab139eb61a'),
('61cab13a35c1e', 'Rabbit', '61cab13a4e0a4'),
('61cab13a35c1e', 'Creeper Virus', '61cab13a4e0ab'),
('61cab13a35c1e', 'Elk Cloner', '61cab13a4e0ac'),
('61cab13a35c1e', 'SCA Virus', '61cab13a4e0ae'),
('61cab13a8c7e3', 'C', '61cab13a94c9e'),
('61cab13a8c7e3', 'Java', '61cab13a94ca8'),
('61cab13a8c7e3', 'J2EE', '61cab13a94cab'),
('61cab13a8c7e3', 'Prolog', '61cab13a94cad'),
('61cab13abd5cd', 'Security', '61cab13ac5a88'),
('61cab13abd5cd', 'Data Transmission', '61cab13ac5a90'),
('61cab13abd5cd', 'Authentication', '61cab13ac5a92'),
('61cab13abd5cd', 'Monitoring', '61cab13ac5a94'),
('61cab13b0225a', '20 GB', '61cab13b0a8d6'),
('61cab13b0225a', '35 GB', '61cab13b0a8e1'),
('61cab13b0225a', '50 GB', '61cab13b0a8e4'),
('61cab13b0225a', '55 GB', '61cab13b0a8e6'),
('61cab13b32f4e', 'Sybase', '61cab13b3b5bd'),
('61cab13b32f4e', 'MySQL', '61cab13b3b5c2'),
('61cab13b32f4e', 'Oracle', '61cab13b3b5c3'),
('61cab13b32f4e', 'COBOL', '61cab13b3b5c4'),
('61cab13b63d31', '5', '61cab13b6c200'),
('61cab13b63d31', '6', '61cab13b6c208'),
('61cab13b63d31', '7', '61cab13b6c209'),
('61cab13b63d31', '9', '61cab13b6c20b'),
('61cab13ba23b7', 'Texas', '61cab13baa6d2'),
('61cab13ba23b7', 'New York', '61cab13baa6e1'),
('61cab13ba23b7', 'California', '61cab13baa6e9'),
('61cab13ba23b7', 'Washington', '61cab13baa6f0'),
('61cab304b4f36', 'Iron', '61cab3050a955'),
('61cab304b4f36', 'Gold', '61cab3050a963'),
('61cab304b4f36', 'Copper', '61cab3050a966'),
('61cab304b4f36', 'Silver', '61cab3050a969'),
('61cab30535d63', 'Writing', '61cab3053dc65'),
('61cab30535d63', 'Agriculture', '61cab3053dc71'),
('61cab30535d63', 'The discovery of fire', '61cab3053dc74'),
('61cab30535d63', 'The use of internet', '61cab3053dc77'),
('61cab3059fc0e', 'Alamgirpur', '61cab305aa4da'),
('61cab3059fc0e', 'Harappa', '61cab305aa4e4'),
('61cab3059fc0e', 'Rangapur', '61cab305aa4e6'),
('61cab3059fc0e', 'Mohenjo-Daro', '61cab305aa4e8'),
('61cab305db529', 'Ramanuj', '61cab305e353d'),
('61cab305db529', 'Ashoka', '61cab305e3547'),
('61cab305db529', 'Shankaracharya', '61cab305e3549'),
('61cab305db529', 'Madhav', '61cab305e354b'),
('61cab3061810b', 'Kanva', '61cab3061ffdb'),
('61cab3061810b', 'Maurya', '61cab3061ffe8'),
('61cab3061810b', 'Gupta', '61cab3061ffeb'),
('61cab3061810b', 'Kushan', '61cab3061ffee'),
('61cab30666896', '22', '61cab3066ed5c'),
('61cab30666896', '18', '61cab3066ed69'),
('61cab30666896', '25', '61cab3066ed6c'),
('61cab30666896', '24', '61cab3066ed71'),
('61cab448c5e5d', 'Rework', '61cab4491baa6'),
('61cab448c5e5d', 'Repair', '61cab4491bab7'),
('61cab448c5e5d', 'Failure mode analysis', '61cab4491babb'),
('61cab448c5e5d', 'None of the mentioned', '61cab4491babe'),
('61cab4494c84f', 'Hardware', '61cab44954ec2'),
('61cab4494c84f', 'Software', '61cab44954ecc'),
('61cab4494c84f', 'Programmers', '61cab44954ece'),
('61cab4494c84f', 'None of the mentioned', '61cab44954ed0'),
('61cab44985c1b', 'Testing', '61cab449ae299'),
('61cab44985c1b', 'Help line support', '61cab449ae2a8'),
('61cab44985c1b', 'Warranty work', '61cab449ae2ab'),
('61cab44985c1b', 'Complaint resolution', '61cab449ae2b7'),
('61cab44a0390f', 'Equivalent faults', '61cab44a0b831'),
('61cab44a0390f', 'Failure cause', '61cab44a0b842'),
('61cab44a0390f', 'Errors', '61cab44a0b84c'),
('61cab44a0390f', 'None of the mentioned', '61cab44a0b854'),
('61cab44a3c7ec', 'True', '61cab44a447d9'),
('61cab44a3c7ec', 'False', '61cab44a447e0'),
('61cab44a3c7ec', '', '61cab44a447e1'),
('61cab44a3c7ec', '', '61cab44a447e2'),
('61cab747893c2', 'Microsoft', '61cab747d50e5'),
('61cab747893c2', 'Bell Laboratories', '61cab747d50ea'),
('61cab747893c2', 'Apple', '61cab747d50eb'),
('61cab747893c2', 'Motorola', '61cab747d50ec'),
('61cab7483a70c', 'মধ্যপ্রদেশ', '61cab7484dae0'),
('61cab7483a70c', 'মহারাষ্ট্র ', '61cab7484dae4'),
('61cab7483a70c', 'ছত্তিসাগড়', '61cab7484dae5'),
('61cab7483a70c', 'অন্ধপ্রদেশ', '61cab7484dae6'),
('61cab7487bb26', 'কাঠমুন্ড', '61cab748840db'),
('61cab7487bb26', 'দার্জিলিং', '61cab748840e5'),
('61cab7487bb26', 'ব্যাংকক', '61cab748840e7'),
('61cab7487bb26', 'বিরাট নগর', '61cab748840e9'),
('61cab748af220', 'গ্রহ নিয়ে পড়াশোনা', '61cab748b7732'),
('61cab748af220', 'পতঙ্গ নিয়ে পড়াশোনা', '61cab748b773a'),
('61cab748af220', 'মহামারী নিয়ে পড়াশোনা', '61cab748b773b'),
('61cab748af220', 'ফুল নিয়ে পড়াশোনা', '61cab748b773d'),
('61cab74907216', 'সৌন্দর্য', '61cab7490f12d'),
('61cab74907216', 'মনোরম', '61cab7490f134'),
('61cab74907216', 'পরিবেশ', '61cab7490f135'),
('61cab74907216', '', '61cab7490f136'),
('61cab74940219', '', '61cab749480e1'),
('61cab74940219', '', '61cab749480e9'),
('61cab74940219', '', '61cab749480eb'),
('61cab74940219', '', '61cab749480ee');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('61c9d749c92a6', '61c9d7fb9cb9e', 'A process is a _______.', 4, 1),
('61c9d749c92a6', '61c9d7fc72375', 'The word processing feature that catches most random typographical errors and misspellings is known as _____.', 4, 2),
('61c9d749c92a6', '61c9d7fcce9f4', 'What is smallest unit of the information?', 4, 3),
('61c9d749c92a6', '61c9d7fd11861', 'What is the decimal equivalent of the binary number 10111?', 4, 4),
('61c9d749c92a6', '61c9d7fd5c874', 'Which of the following is an output device?', 4, 5),
('61caaf6c252b4', '61cab138b1b6d', 'Which one is the first search engine in internet?', 4, 1),
('61caaf6c252b4', '61cab13940a47', 'Number of bit used by the IPv6 address', 4, 2),
('61caaf6c252b4', '61cab139e38a3', 'Which one is the first web browser invented in 1990?', 4, 3),
('61caaf6c252b4', '61cab13a35c1e', 'First computer virus is known as', 4, 4),
('61caaf6c252b4', '61cab13a8c7e3', 'Which one programming language is exclusively used for artificial intelligence?', 4, 5),
('61caaf6c252b4', '61cab13abd5cd', 'Firewall in computer is used for', 4, 6),
('61caaf6c252b4', '61cab13b0225a', 'A dual layer Blue-ray Disc can store data upto', 4, 7),
('61caaf6c252b4', '61cab13b32f4e', 'Which of the following is not a database management software?', 4, 8),
('61caaf6c252b4', '61cab13b63d31', 'Number of layers in the OSI (Open Systems Interconnection) Model', 4, 9),
('61caaf6c252b4', '61cab13ba23b7', 'Where is the headquarter of Microsoft office located?', 4, 10),
('61cab1f860851', '61cab304b4f36', 'Which of the following metals was not known during the Indus Valley Civilization?', 4, 1),
('61cab1f860851', '61cab30535d63', 'Which of the following is regarded by historians as a crucial stage in describing the progress of civilization?', 4, 2),
('61cab1f860851', '61cab3059fc0e', 'Which among the following is a place in Larkana district of Sind province in Pakistan?', 4, 3),
('61cab1f860851', '61cab305db529', 'Who established the four monasteries Sringeri, Badrinath, Dwarka & Puri?', 4, 4),
('61cab1f860851', '61cab3061810b', 'Which among the following is the oldest dynasty?', 4, 5),
('61cab1f860851', '61cab30666896', 'How many spokes are there in the Dharma Chakra of the National flag?', 4, 6),
('61cab374dc692', '61cab448c5e5d', 'Which of the following is not included in failure costs?', 4, 1),
('61cab374dc692', '61cab4494c84f', 'Which requirements are the foundation from which quality is measured?', 4, 2),
('61cab374dc692', '61cab44985c1b', 'Which of the following is not included in External failure costs?', 4, 3),
('61cab374dc692', '61cab44a0390f', 'The primary objective of formal technical reviews is to find _________ during the process so that they do not become defects after release of the software.', 4, 4),
('61cab374dc692', '61cab44a3c7ec', 'Software quality assurance consists of the auditing and reporting functions of management.', 4, 5),
('61cab50337c51', '61cab747893c2', 'ইউনিক্স (UNIX) অপেরেটিং সিস্টেম কোন কোম্পানির ট্রেন্ডার্ক?', 4, 1),
('61cab50337c51', '61cab7483a70c', 'নীচের কোন রাজ্যর সাথে তেলেঙ্গানা রাজ্যর কোন সিমানা নেই? ', 4, 2),
('61cab50337c51', '61cab7487bb26', 'হিমালইয়ান মাউন্টেন ইনস্টিটিউট কোথায় অবস্থিত? ', 4, 3),
('61cab50337c51', '61cab748af220', 'এনটোমলজি (Entomology) বলতে কি বুঝায়?', 4, 4),
('61cab50337c51', '61cab74907216', 'ঘূর্নিঝড় বা সাইক্লোন নিসর্গ, যা ভারতের পশ্চিমাংশে আঘাত হেনেছে, এই নিসর্গ (বাংলাদেশী শব্দ) কথাটির অর্থ কি?', 4, 5),
('61cab50337c51', '61cab74940219', '', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `right`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('61c9d749c92a6', 'Computer Fundamental', 1, 0, 5, 1, 'There are five questions and you have to answer it within five minutes.', '#', '2021-12-29 12:18:28'),
('61caaf6c252b4', 'Information Technology', 1, 0, 10, 1, 'There are ten questions and you have to answer within ten minutes.', '#', '2021-12-29 12:18:28'),
('61cab1f860851', 'History', 1, 0, 6, 1, 'There are six questions and you have to answer within five minutes.', '#', '2021-12-29 12:18:28'),
('61cab374dc692', 'Software Quality Assurance', 1, 0, 5, 1, 'There are five questions and you have to answer within six minutes.', '#', '2021-12-29 12:18:28'),
('61cab50337c51', 'General Knowledge', 1, 0, 6, 1, 'There are six questions and you have to answer within five minutes.', '#', '2021-12-29 12:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('joseph44@gmail.com', 11, '2021-12-29 11:56:08'),
('marie098@gmail.com', 29, '2021-12-29 10:59:33'),
('masud028@gmail.com', 4, '2021-12-28 08:45:10'),
('rouf059@gmail.com', 6, '2021-12-29 12:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `subjective`
--

CREATE TABLE `subjective` (
  `sid` varchar(6) NOT NULL,
  `title` varchar(30) NOT NULL,
  `maximum` int(6) NOT NULL,
  `total` int(6) NOT NULL,
  `time` int(6) NOT NULL,
  `intro` varchar(30) NOT NULL,
  `tag` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjective`
--

INSERT INTO `subjective` (`sid`, `title`, `maximum`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('61cab9', 'Information Technology', 4, 5, 30, 'There are five questions and y', '#', '2021-12-28 07:15:10'),
('61caba', 'Data Structures', 5, 3, 30, 'There are three questions and ', '#', '2021-12-28 07:21:08'),
('61cabb', 'Software Quality Assurance', 4, 5, 30, 'There are five questions and y', '#', '2021-12-28 07:24:22'),
('61cabd', 'History', 4, 4, 30, 'There are four question and yo', '#', '2021-12-28 07:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `subjective_answer`
--

CREATE TABLE `subjective_answer` (
  `name` varchar(60) NOT NULL,
  `sid` varchar(60) NOT NULL,
  `questionid` varchar(60) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `marks` int(3) NOT NULL,
  `attempt_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjective_answer`
--

INSERT INTO `subjective_answer` (`name`, `sid`, `questionid`, `answer`, `marks`, `attempt_id`) VALUES
('Anne Marie', '61cabd', '61cabeb86daf3', 'None', 2, 13),
('Anne Marie', '61cabd', '61cabeb86daf3', 'None', 2, 13),
('Anne Marie', '61cabd', '61cabeb86daf3', 'None', 2, 13),
('Admin', '61cabd', '61cabeb86daf3', 'h22', 0, 14),
('Admin', '61cabd', '61cabeb86daf3', '222', 0, 14),
('Admin', '61cabd', '61cabeb86daf3', '222', 0, 14),
('Admin', '61cabd', '61cabeb86daf3', '222', 0, 14),
('Admin', '61cabd', '61cabeb86daf3', 'sdfghj', 0, 15),
('Admin', '61cabd', '61cabeb86daf3', 'sdfghj', 0, 15),
('Admin', '61cabd', '61cabeb86daf3', 'sdfghj', 0, 15),
('Admin', '61cabd', '61cabeb86daf3', 'asdfghj', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `subjective_attempt`
--

CREATE TABLE `subjective_attempt` (
  `attempt_id` int(4) NOT NULL,
  `name` varchar(60) NOT NULL,
  `sid` varchar(60) NOT NULL,
  `total_ques` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjective_attempt`
--

INSERT INTO `subjective_attempt` (`attempt_id`, `name`, `sid`, `total_ques`) VALUES
(13, 'Anne Marie', '61cabd', 4);

-- --------------------------------------------------------

--
-- Table structure for table `subquestion`
--

CREATE TABLE `subquestion` (
  `sid` varchar(60) NOT NULL,
  `qid` varchar(60) NOT NULL,
  `question` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subquestion`
--

INSERT INTO `subquestion` (`sid`, `qid`, `question`) VALUES
('', '', ''),
('61c5f8', '61c5f8f87ebe3', 'What is the Complexity of Algorithm?'),
('61c5f8', '61c5f8f88d8b6', 'What are the Asymptotic Notations?'),
('61c9e1', '61c9e1dfed771', 'What is java?'),
('61cab9', '61caba8d0ed07', 'What do you know about IP classes?'),
('61cab9', '61caba8d628b3', 'What is the difference between a hub, switch, and router?'),
('61cab9', '61caba8d6d21b', 'What do you know about port forwarding?'),
('61cab9', '61caba8d90990', 'Tell briefly about SMTP, POP, IMAP, and OWA.'),
('61cab9', '61caba8d989bf', 'What are the standard port numbers for IMAP4, POP3, SMTP, and Global Catalog?'),
('61caba', '61cabb3c97d85', 'Explain the scenarios where you can use linked lists and arrays.'),
('61caba', '61cabb3ce6a67', 'What is a stack? What are the applications of stack?'),
('61caba', '61cabb3cef052', 'What are the applications of graph data structure?'),
('61cabb', '61cabc1e95c01', 'Mention the different types of software testing?'),
('61cabb', '61cabc1ee1381', 'Explain Bug Life Cycle or Defect life cycle.'),
('61cabb', '61cabc1eec420', 'What is Verification and Validation in Software Testing?'),
('61cabb', '61cabc1f030b3', 'Why Selenium is a preferred tool for Automation testing?'),
('61cabb', '61cabc1f1b6c9', 'What is Agile testing and what is the importance of Agile testing?'),
('61cabc', '61cabd1d728e8', 'What Is The Difference Between Save And Save As?'),
('61cabc', '61cabd1dbb84b', 'What Is Backward Compatible?'),
('61cabc', '61cabd1dd42ad', 'Explain Toolbar?'),
('61cabc', '61cabd1dded9b', 'What Is Map Network Drive?'),
('61cabc', '61cabd1de7446', 'What Is Mouse Cursor?'),
('61cabc', '61cabd1df1dbb', 'What Is Floppy Disk?'),
('61cabc', '61cabd1e08e00', 'What Is Clipboard?'),
('61cabc', '61cabd1e16218', 'How Do We Open A Rar File?'),
('61cabc', '61cabd1e1e9d9', 'What Steps Should I Take To Replace The Bios Battery?'),
('61cabc', '61cabd1e292b7', 'What Is Cd-rom?'),
('61cabd', '61cabeb86daf3', 'What Was the Largest Contiguous Empire in History?'),
('61cabd', '61cabeb8bde8e', 'What Does the D in D-Day Stand For?'),
('61cabd', '61cabeb8cb4d0', 'When Was Russia’s “Red October” Revolution?'),
('61cabd', '61cabeb8d6584', 'When Was the War of 1812?');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `instuition` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `instuition`, `email`, `mob`, `password`) VALUES
('King Joseph', 'Male', 'Dhaka University', 'joseph44@gmail.com', 8436923723, '827ccb0eea8a706c4c34a16891f84e7b'),
('Anne Marie', 'Female', 'Rajshahi College', 'marie098@gmail.com', 1732498742, '827ccb0eea8a706c4c34a16891f84e7b'),
('Masud Rana', 'Male', 'City University', 'masud028@gmail.com', 1760534597, '827ccb0eea8a706c4c34a16891f84e7b'),
('Abdur Rouf', 'Male', 'City University', 'rouf059@gmail.com', 1705711158, '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `subjective_attempt`
--
ALTER TABLE `subjective_attempt`
  ADD PRIMARY KEY (`attempt_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjective_attempt`
--
ALTER TABLE `subjective_attempt`
  MODIFY `attempt_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
