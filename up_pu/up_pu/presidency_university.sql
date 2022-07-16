-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 09, 2022 at 03:46 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `presidency_university`
--
CREATE DATABASE `presidency_university` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `presidency_university`;

-- --------------------------------------------------------

--
-- Table structure for table `achieved_targets`
--

CREATE TABLE IF NOT EXISTS `achieved_targets` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jour_pub_plan` int(100) NOT NULL,
  `workshops` int(100) NOT NULL,
  `guest_lec_webi_con` int(100) NOT NULL,
  `guest_lec_deli` int(100) NOT NULL,
  `patents` int(100) NOT NULL,
  `book_chaps` int(100) NOT NULL,
  `course_certi` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achieved_targets`
--

INSERT INTO `achieved_targets` (`id`, `email`, `jour_pub_plan`, `workshops`, `guest_lec_webi_con`, `guest_lec_deli`, `patents`, `book_chaps`, `course_certi`) VALUES
(1, '', 0, 0, 0, 0, 0, 0, 0),
(2, 'levi@gmail.com', 0, 0, 0, 0, 0, 0, 0),
(3, 'vinaya2@gmail.com', 0, 0, 0, 0, 0, 0, 0),
(5, 'izumi2@gmail.com', 0, 0, 0, 1, 1, 1, 2),
(4, 'naruto2000@gmail.com', 0, 0, 0, 0, 0, 0, 0),
(18, 'gaara@gmail.com', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', 'Admin12345678'),
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `awards_honours_received`
--

CREATE TABLE IF NOT EXISTS `awards_honours_received` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `title_of_the_award` varchar(100) NOT NULL,
  `name_of_the_awarding_body` varchar(100) NOT NULL,
  `date` DATE NOT NULL,
  `orther_det` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awards_honours_received`
--

INSERT INTO `awards_honours_received` (`id`, `email`, `name_of_faculty`, `title_of_the_award`, `name_of_the_awarding_body`, `date`, `orther_det`) VALUES
(5, 'izumi2@gmail.com', 'Izumi', 'Dooms Day Award', 'IAAA', '23/09/2021', 'NA'),
(18, 'gaara@gmail.com', 'Gaara', 'hhh', 'IAAA', '23/05/2022', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `book_chapter`
--

CREATE TABLE IF NOT EXISTS `book_chapter` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `det_book_chap` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `publication_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_chapter`
--

INSERT INTO `book_chapter` (`id`, `email`, `det_book_chap`, `name_of_faculty`, `publication_details`) VALUES
(5, 'izumi2@gmail.com', 'Environment', 'Izumi', 'Author'),
(18, 'gaara@gmail.com', 'Book1 pg-89', 'Gaara', 'Author');

-- --------------------------------------------------------

--
-- Table structure for table `details_of_journal_publications`
--

CREATE TABLE IF NOT EXISTS `details_of_journal_publications` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `first_author` varchar(100) NOT NULL,
  `title_of_the_article` varchar(100) NOT NULL,
  `name_of_the_journal` varchar(100) NOT NULL,
  `type_of_thejournal` varchar(100) NOT NULL,
  `impact_actor_cimago_journal_ranking` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details_of_journal_publications`
--

INSERT INTO `details_of_journal_publications` (`id`, `email`, `branch`, `name_of_faculty`, `first_author`, `title_of_the_article`, `name_of_the_journal`, `type_of_thejournal`, `impact_actor_cimago_journal_ranking`) VALUES
(1, 'varsha@yaoo.com', 'cs', 'Varsha S', 'jkjkja', 'jkskj', 'hjasnj', 'fal', 'sdf'),
(5, 'izumi2@gmail.com', '', 'Izumi', 'First', 'Beginning of the end', 'The End', 'International', '8'),
(2, 'levi@gmail.com', '', 'Levi Ackerman', 'First', 'Row', 'Rows of Life', 'k', '8'),
(2, 'levi@gmail.com', '', 'Levi Ackerman', 'First', 'Row', 'Rows of Life', 'International', '8'),
(5, 'izumi2@gmail.com', '', 'Izumi', 'First', 'Beginning of the end', 'The End', 'National', '8'),
(18, 'gaara@gmail.com', 'ECE', 'Gaara', 'First', 'Beginning of the end', 'The End', 'International', '8');

-- --------------------------------------------------------

--
-- Table structure for table `guest_lectures_delivered`
--

CREATE TABLE IF NOT EXISTS `guest_lectures_delivered` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `title_of_the_talk_delivered` varchar(100) NOT NULL,
  `dates` DATE NOT NULL,
  `organiser_det` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_lectures_delivered`
--

INSERT INTO `guest_lectures_delivered` (`id`, `email`, `name_of_faculty`, `title_of_the_talk_delivered`, `dates`, `organiser_det`) VALUES
(5, ' izumi2@gmail.com', 'Izumi', 'Green Earth', '22/03/2022', 'University'),
(18, ' gaara@gmail.com', 'Gaara', 'TED', '30/03/2022', 'IAAA');

-- --------------------------------------------------------

--
-- Table structure for table `journal_paper_accepted`
--

CREATE TABLE IF NOT EXISTS `journal_paper_accepted` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `first_author` varchar(100) NOT NULL,
  `title_of_the_article` varchar(100) NOT NULL,
  `name_of_the_journal` varchar(100) NOT NULL,
  `type_of_the_journal` varchar(100) NOT NULL,
  `date_of_submission` DATE NOT NULL,
  `listed_n_ugc_care_scopus_index` varchar(100) NOT NULL,
  `impact_actor_cimago_journal_ranking` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal_paper_accepted`
--

INSERT INTO `journal_paper_accepted` (`id`, `email`, `branch`, `name_of_faculty`, `first_author`, `title_of_the_article`, `name_of_the_journal`, `type_of_the_journal`, `date_of_submission`, `listed_n_ugc_care_scopus_index`, `impact_actor_cimago_journal_ranking`) VALUES
(5, 'izumi2@gmail.com', 'def', 'Izumi', 'First', 'my Planet', 'Cosmo', 'International', '0000-00-00', 'DFEE', '9');

-- --------------------------------------------------------

--
-- Table structure for table `journal_paper_published`
--

CREATE TABLE IF NOT EXISTS `journal_paper_published` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `first_author` varchar(100) NOT NULL,
  `title_of_the_article` varchar(100) NOT NULL,
  `name_of_the_journal` varchar(100) NOT NULL,
  `type_of_the_journal` varchar(100) NOT NULL,
  `vol_month_year` DATE NOT NULL,
  `listed_n_ugc_care_scopus_index` varchar(100) NOT NULL,
  `doi_link_number:` varchar(100) NOT NULL,
  `impact_actor_cimago_journal_ranking` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal_paper_published`
--

INSERT INTO `journal_paper_published` (`id`, `email`, `branch`, `name_of_faculty`, `first_author`, `title_of_the_article`, `name_of_the_journal`, `type_of_the_journal`, `vol_month_year`, `listed_n_ugc_care_scopus_index`, `doi_link_number:`, `impact_actor_cimago_journal_ranking`) VALUES
(5, 'izumi2@gmail.com', 'def', 'Izumi', 'First', 'my Planet', 'Cosmo', 'National', '09/03/2022', 'DFEE', '807T70', '9'),
(18, 'gaara@gmail.com', 'def', 'Gaara', 'Second', 'Sonic', 'Cosmo', 'International', '09/02/2022', 'IAAA', '9865', '8');

-- --------------------------------------------------------

--
-- Table structure for table `other_certifications_completed`
--

CREATE TABLE IF NOT EXISTS `other_certifications_completed` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `title_of_the_course` varchar(100) NOT NULL,
  `course_offered_by` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `score` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_certifications_completed`
--

INSERT INTO `other_certifications_completed` (`id`, `email`, `name_of_faculty`, `title_of_the_course`, `course_offered_by`, `duration`, `score`) VALUES
(5, 'izumi2@gmail.com', 'Izumi', 'Python', 'UDAD', '8', '9'),
(5, 'izumi2@gmail.com', 'Izumi', 'AI', 'Coursera', '8', '8'),
(18, 'gaara@gmail.com', 'Gaara', 'AI', 'IAAA', '5', '6');

-- --------------------------------------------------------

--
-- Table structure for table `papers_presented_in_conference`
--

CREATE TABLE IF NOT EXISTS `papers_presented_in_conference` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `title_of_the_conference` varchar(100) NOT NULL,
  `type_of_the_conference` varchar(100) NOT NULL,
  `details_of_the_organiser` varchar(100) NOT NULL,
  `title_of_the_paper` varchar(100) NOT NULL,
  `conference_dates` DATE NOT NULL,
  `any_orther_conference_det` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `papers_presented_in_conference`
--

INSERT INTO `papers_presented_in_conference` (`id`, `email`, `branch`, `name_of_faculty`, `title_of_the_conference`, `type_of_the_conference`, `details_of_the_organiser`, `title_of_the_paper`, `conference_dates`, `any_orther_conference_det`) VALUES
(5, 'izumi2@gmail.com', 'def', 'Izumi', 'Bharat', 'International', 'IHHH', 'Green', '23/03/2022', 'na'),
(18, ' gaara@gmail.com', 'ECE', 'Gaara', 'Bionic', 'National', 'The Code', 'Fund Grant', '06/02/2022', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `patents`
--

CREATE TABLE IF NOT EXISTS `patents` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `det_patents` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patents`
--

INSERT INTO `patents` (`id`, `email`, `det_patents`, `name_of_faculty`, `status`) VALUES
(5, ' izumi2@gmail.com', 'www333', 'Izumi', 'Published'),
(18, ' gaara@gmail.com', 'Ecosystem', 'Gaara', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `research_proposal_planned`
--

CREATE TABLE IF NOT EXISTS `research_proposal_planned` (
  `id` int(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `name_of_the_scheme` varchar(100) NOT NULL,
  `det_funding_gency` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `grants_sought_for` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_proposal_planned`
--

INSERT INTO `research_proposal_planned` (`id`, `email`, `branch`, `name_of_the_scheme`, `det_funding_gency`, `name_of_faculty`, `grants_sought_for`, `status`) VALUES
(5, 'izumi2@gmail.com', 'def', 'Given', 'typu', 'Izumi', '40000', 'Under Process'),
(18, 'gaara@g.com', 'DEF', 'Insured', 'Tech Info', 'Gaara', '1240000', 'Under Process');

-- --------------------------------------------------------

--
-- Table structure for table `research_proposal_submitted`
--

CREATE TABLE IF NOT EXISTS `research_proposal_submitted` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `name_of_the_scheme` varchar(100) NOT NULL,
  `det_funding_gency` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `grants_sought_for` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_proposal_submitted`
--

INSERT INTO `research_proposal_submitted` (`id`, `email`, `branch`, `name_of_the_scheme`, `det_funding_gency`, `name_of_faculty`, `grants_sought_for`, `status`) VALUES
(5, ' izumi2@gmail.com', 'DEF', 'ifff', 'IAAA', 'Izumi', '70000', 'Fund Granted'),
(18, 'gaara@gmail.com', 'DEF', 'MyFuture', 'BITForm', 'Gaara', '708600', 'Fund Granted');

-- --------------------------------------------------------

--
-- Table structure for table `targets`
--

CREATE TABLE IF NOT EXISTS `targets` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `jour_pub_plan` int(100) NOT NULL,
  `workshops` int(100) NOT NULL,
  `guest_lec_webi_con` int(100) NOT NULL,
  `guest_lec_deli` int(100) NOT NULL,
  `patents` int(100) NOT NULL,
  `book_chaps` int(100) NOT NULL,
  `course_certi` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `targets`
--

INSERT INTO `targets` (`id`, `email`, `jour_pub_plan`, `workshops`, `guest_lec_webi_con`, `guest_lec_deli`, `patents`, `book_chaps`, `course_certi`) VALUES
(1, '0', 0, 0, 0, 0, 0, 0, 0),
(2, 'levi@gmail.com', 0, 1, 1, 1, 1, 1, 1),
(4, 'naruto2000@gmail.com', 1, 2, 1, 3, 1, 5, 2),
(5, 'izumi2@gmail.com', 1, 1, 1, 1, 1, 1, 1),
(9, 'vince@gmail.com', 1, 1, 2, 1, 1, 2, 1),
(18, 'gaara@gmail.com', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `f_m_name` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `curr_desg` varchar(100) NOT NULL,
  `acc_quali` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `ph_num` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `exp` varchar(100) NOT NULL,
  `pro_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `f_m_name`, `dept`, `curr_desg`, `acc_quali`, `email`, `password`, `ph_num`, `address`, `exp`, `pro_image`) VALUES
(1, 'Hori ', 'Kakeshi', 'CSE', 'lec', 'msc', 'hori@gmail.com', 'Hori@123', 2147483647, '11th C cross , Banglore', '5', 'horimiya7.jpg'),
(2, 'Levi Ackerman', 'Kuchel  Ackerman', '', 'Faculty', '4', 'levi@gmail.com', 'Levi@123', 2147483647, 'No 42, 11th cross Bang-43', '2', 'levi.jpg'),
(3, 'Vinaya S', 'Malathi S', 'IST', 'abc', '4', 'vinaya2@gmail.com', 'Presi@123', 2147483647, 'No 42, 11th Esther  Bangalore', '1', 'def.jpg'),
(4, 'NarutoUzumaki', 'Minato', 'MBA', 'Business', 'y', 'naruto2000@gmail.com', 'Naruto@123', 2147483647, 'No 4, btr nagar, Bangalore-09', '7', 'naruto.jpg'),
(5, 'Izumi', 'Kakeji Miyamura ', '', 'def', '6', 'izumi2@gmail.com', 'Izumi2000@', 2147483647, 'No 07,kanma road , kaofhan , 67', '3', 'Miyamur2-0.png'),
(6, '', '', '', '', '', '', '', 0, '', '', ''),
(7, '', '', '', '', '', '', '', 0, '', '', ''),
(8, '', '', '', '', '', '', '', 0, '', '', ''),
(9, 'Vince Romano', 'Valentini', 'MBA', 'Faculty', 'BTech', 'vince@gmail.com', 'Vince@123', 2147483647, 'No 42, 11th cross Kang-43', '07', 'vince.jpg'),
(18, 'Gaara', 'Rasa', 'ECE', 'Faculty', 'Mtech', 'gaara@gmail.com', 'Gaara@123', 2147483647, 'No 42, 11th cross Bang-43', '02', 'gaara1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `webinars_guest_lectures_conference_org`
--

CREATE TABLE IF NOT EXISTS `webinars_guest_lectures_conference_org` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `title_of_the_conference` varchar(100) NOT NULL,
  `title_of_the_webi` varchar(100) NOT NULL,
  `resource_person_det` varchar(100) NOT NULL,
  `date` DATE NOT NULL,
  `no_participants` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webinars_guest_lectures_conference_org`
--

INSERT INTO `webinars_guest_lectures_conference_org` (`id`, `email`, `title_of_the_conference`, `title_of_the_webi`, `resource_person_det`, `date`, `no_participants`) VALUES
(5, 'izumi2@gmail.com', 'international', 'Green ', 'HYYY', '2022-02-02', '678'),
(18, 'gaara@gmail.com', 'national', 'white', 'HYYY', '2022-03-02', '60'),
(5, 'izumi2@gmail.com', 'National', 'Jacker', 'HYYY', '2022-06-08', '64');

-- --------------------------------------------------------

--
-- Table structure for table `workshops_organized`
--

CREATE TABLE IF NOT EXISTS `workshops_organized` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sl_no` int(100) NOT NULL,
  `title_of_the_workshop` varchar(100) NOT NULL,
  `resource_person_det` varchar(100) NOT NULL,
  `no_of_days` varchar(100) NOT NULL,
  `dates` DATE NOT NULL,
  `no_participants` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshops_organized`
--

INSERT INTO `workshops_organized` (`id`, `email`, `sl_no`, `title_of_the_workshop`, `resource_person_det`, `no_of_days`, `dates`, `no_participants`) VALUES
(5, ' izumi2@gmail.com', 2345, 'Environment', 'Abdullah Vasim Ahmad', '2', '20/04/2022', '300'),
(18, ' gaara@gmail.com', 198, 'www333', 'Md Rashad', '7', '23/09/2021', '88');

-- --------------------------------------------------------

--
-- Table structure for table `workshops_webinars_attended`
--

CREATE TABLE IF NOT EXISTS `workshops_webinars_attended` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `title_of_the_webi_workshop` varchar(100) NOT NULL,
  `no_of_days` varchar(100) NOT NULL,
  `date` DATE NOT NULL,
  `organized_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshops_webinars_attended`
--

INSERT INTO `workshops_webinars_attended` (`id`, `email`, `name_of_faculty`, `title_of_the_webi_workshop`, `no_of_days`, `date`, `organized_by`) VALUES
(5, 'izumi2@gmail.com', 'Izumi', 'Green Earth', '3', '23/09/2021', 'ISES'),
(5, 'izumi2@gmail.com', 'Izumi', 'Dooms Day', '4', '23/02/2022', 'Yyutf'),
(18, 'gaara@gmail.com', 'Gaara', 'FDP', '2', '06/03/2022', 'GoodLife');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
