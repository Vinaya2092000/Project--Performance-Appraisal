-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 28, 2022 at 12:45 PM
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
('admin@gmail.com', 'Admin12345678');

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
  `date` varchar(100) NOT NULL,
  `orther_det` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(2, 'varsha@yaoo.com', 'cs', 'Varsha S', 'jkjkja', 'jkskj', 'hjasnj', 'fal', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `guest_lectures_delivered`
--

CREATE TABLE IF NOT EXISTS `guest_lectures_delivered` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `title_of_the_talk_delivered` varchar(100) NOT NULL,
  `dates` varchar(100) NOT NULL,
  `organiser_det` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `date_of_ubmission` varchar(100) NOT NULL,
  `listed_n_ugc_care_scopus_index` varchar(100) NOT NULL,
  `impact_actor_cimago_journal_ranking` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `vol_month_year` varchar(100) NOT NULL,
  `listed_n_ugc_care_scopus_index` varchar(100) NOT NULL,
  `doi_link_number:` varchar(100) NOT NULL,
  `impact_actor_cimago_journal_ranking` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `conference_dates` varchar(100) NOT NULL,
  `any_orther_conference_det` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `research_proposal_submitted`
--

CREATE TABLE IF NOT EXISTS `research_proposal_submitted` (
  `id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `name_of_the_scheme` varchar(100) NOT NULL,
  `det_funding_gency` varchar(100) NOT NULL,
  `name_of_faculty` varchar(100) NOT NULL,
  `grants_sought_for` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `targets`
--

CREATE TABLE IF NOT EXISTS `targets` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `jour_pub_plan` varchar(100) NOT NULL,
  `workshops` varchar(100) NOT NULL,
  `guest_lec_webi_con` varchar(100) NOT NULL,
  `guest_lec_deli` varchar(100) NOT NULL,
  `patents` varchar(100) NOT NULL,
  `book_chaps` varchar(100) NOT NULL,
  `course_certi` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `targets`
--

INSERT INTO `targets` (`id`, `email`, `jour_pub_plan`, `workshops`, `guest_lec_webi_con`, `guest_lec_deli`, `patents`, `book_chaps`, `course_certi`) VALUES
(1, '', 'varsha', 'varsha', 'varsha', 'varsha', 'varsha', 'varsha', 'varsha');

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
  `ph_num` int(16) NOT NULL,
  `address` varchar(11) NOT NULL,
  `exp` varchar(100) NOT NULL,
  `pro_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `f_m_name`, `dept`, `curr_desg`, `acc_quali`, `email`, `password`, `ph_num`, `address`, `exp`, `pro_image`) VALUES
(1, 'champa', '', '', '', '', 'champa88n@gmail.com', '123', 1231231212, 'bnglr', '', 'images.png'),
(2, 'Varsha S', 'rs', 'cs', 'lec', 'msc', 'varsha@yaoo.com', '123', 2147483647, 'banglore', '5', 'depositphotos_482974586-stock-illustration-default-avatar-photo-placeholder-grey.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `webinars_guest_lectures_conference org`
--

CREATE TABLE IF NOT EXISTS `webinars_guest_lectures_conference org` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `title_of_the_conference` varchar(100) NOT NULL,
  `title_of_the_webi` varchar(100) NOT NULL,
  `resource_person_det` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `no_participants` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `dates` varchar(100) NOT NULL,
  `no_participants` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `date` varchar(100) NOT NULL,
  `organized_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
