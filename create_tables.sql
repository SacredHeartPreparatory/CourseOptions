-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2016 at 04:33 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `course_options`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_name` varchar(128) NOT NULL,
  `department` varchar(128) NOT NULL,
  `sub_department` varchar(128) DEFAULT NULL,
  `course_description` mediumtext,
  `course_prerequisite` mediumtext,
  `course_subtitle` varchar(128) DEFAULT NULL,
  `rigor` int(11) NOT NULL,
  `course_index` int(11) NOT NULL DEFAULT '-1',
  `alternate_course_index` int(11) DEFAULT NULL,
  `index_increase_upon_course_completion` int(11) NOT NULL DEFAULT '1',
  `mathematics_required_index` int(11) DEFAULT NULL,
  `is_standard` tinyint(1) NOT NULL,
  `is_required` tinyint(1) DEFAULT '0',
  `num_semesters` int(11) NOT NULL DEFAULT '2',
  `is_z_period` tinyint(1) NOT NULL DEFAULT '0',
  `is_goa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_name`, `department`, `sub_department`, `course_description`, `course_prerequisite`, `course_subtitle`, `rigor`, `course_index`, `alternate_course_index`, `index_increase_upon_course_completion`, `mathematics_required_index`, `is_standard`, `is_required`, `num_semesters`, `is_z_period`, `is_goa`) VALUES
('"The Sixties": Politics and Society Post-War America', 'Social Science', NULL, NULL, NULL, '(spring semester)', 0, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Actor''s Showcase', 'Fine Arts', 'Drama', NULL, NULL, NULL, 0, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Advanced Ceramics', 'Fine Arts', 'Ceramics', NULL, NULL, NULL, 0, 2, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Advanced Chorus', 'Fine Arts', 'Music', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Advanced Dance', 'Fine Arts', 'Dance', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Advanced Design and Images', 'Fine Arts', 'Digital Arts', NULL, NULL, NULL, 0, 2, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Advanced Filmaking', 'Fine Arts', 'Digital Arts', NULL, NULL, NULL, 0, 1, 2, 0, NULL, 0, 0, 2, 0, 0),
('Advanced French Conversation', 'World Language', 'French', NULL, NULL, NULL, 0, 4, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Advanced Instrumental Music: Sacred Heart Symphony', 'Fine Arts', 'Music', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Advanced Latin Literature', 'World Language', 'Latin', NULL, NULL, NULL, 0, 5, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Advanced Photography', 'Fine Arts', 'Photography', NULL, NULL, NULL, 0, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Advanced Spanish Conversation', 'World Language', 'Spanish', NULL, NULL, NULL, 0, 5, 6, 0, NULL, 0, 0, 2, 0, 0),
('Advanced Studio Art', 'Fine Arts', 'Studio Art', NULL, NULL, NULL, 0, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Advanced Topics In Mathematics Honors', 'Mathematics', NULL, NULL, NULL, NULL, 1, 10, NULL, 0, NULL, 1, 0, 2, 0, 0),
('Algebra 2', 'Mathematics', NULL, NULL, NULL, NULL, 0, 3, 4, 2, NULL, 1, 0, 2, 0, 0),
('Algebra 2 Trigonometry Honors ', 'Mathematics', NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, 1, 0, 2, 0, 0),
('American Politics and Government', 'Social Science', NULL, NULL, NULL, '(fall semester)', 0, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('AP 2D Design In Photography', 'Fine Arts', 'Photography', NULL, NULL, NULL, 2, 1, NULL, 0, NULL, 0, 0, 2, 0, 0),
('AP Biology', 'Science', NULL, NULL, NULL, NULL, 2, 2, 3, 0, NULL, 0, 0, 2, 0, 0),
('AP Calculus AB', 'Mathematics', NULL, NULL, NULL, NULL, 2, 8, 9, 2, NULL, 1, 0, 2, 0, 0),
('AP Calculus BC', 'Mathematics', NULL, NULL, NULL, NULL, 2, 9, 10, 1, NULL, 1, 0, 2, 0, 0),
('AP Chemistry', 'Science', NULL, NULL, NULL, NULL, 2, 2, 3, 0, 4, 0, 0, 2, 0, 0),
('AP Chinese Language and Culture', 'World Language', 'Mandarin', NULL, NULL, NULL, 2, 4, NULL, 0, NULL, 0, 0, 2, 0, 0),
('AP Computer Science', 'Computer Science', NULL, NULL, NULL, NULL, 2, 2, NULL, 0, NULL, 0, 0, 2, 0, 0),
('AP English Language', 'English', NULL, NULL, NULL, 'Themes in World Literature (fall) & British Classics (spring)', 2, 2, NULL, 1, NULL, 1, 1, 2, 0, 0),
('AP English Literature', 'English', NULL, NULL, NULL, NULL, 2, 3, NULL, 0, NULL, 1, 0, 2, 0, 0),
('AP Environmental Science', 'Science', NULL, NULL, NULL, NULL, 2, 2, 3, 0, NULL, 0, 0, 2, 0, 0),
('AP French Language and Culture', 'World Language', 'French', NULL, NULL, NULL, 2, 4, NULL, 0, NULL, 0, 0, 2, 0, 0),
('AP Latin Language and Culture', 'World Language', 'Latin', NULL, NULL, NULL, 2, 4, 5, 1, NULL, 0, 0, 2, 0, 0),
('AP Music Theory', 'Fine Arts', 'Music', NULL, NULL, NULL, 2, 1, NULL, 0, NULL, 0, 0, 2, 0, 1),
('AP Physics 1', 'Science', NULL, NULL, NULL, NULL, 2, 2, NULL, 1, 4, 1, 0, 2, 0, 0),
('AP Physics C', 'Science', NULL, NULL, NULL, NULL, 2, 3, NULL, 0, 8, 0, 0, 2, 0, 0),
('AP Spanish Language and Culture', 'World Language', 'Spanish', NULL, NULL, NULL, 2, 4, 5, 2, NULL, 0, 0, 2, 0, 0),
('AP Spanish Literature and Culture', 'World Language', 'Spanish', NULL, NULL, NULL, 2, 6, NULL, 0, NULL, 0, 0, 2, 0, 0),
('AP Statistics', 'Mathematics', NULL, NULL, NULL, NULL, 2, 7, -2, 1, NULL, 0, 0, 2, 0, 0),
('AP United States History', 'Social Science', NULL, NULL, NULL, NULL, 2, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('AP World History', 'Social Science', NULL, NULL, NULL, NULL, 2, 2, NULL, 0, NULL, 1, 0, 2, 0, 0),
('Art History', 'Social Science', NULL, NULL, NULL, '(spring semester)', 0, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Biology', 'Science', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Biology Honors', 'Science', NULL, NULL, NULL, NULL, 1, 0, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Calculus', 'Mathematics', NULL, NULL, NULL, NULL, 0, 7, 8, 1, NULL, 1, 0, 2, 0, 0),
('Ceramics', 'Fine Arts', 'Ceramics', NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Chemistry', 'Science', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Chemistry Honors', 'Science', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 1, 0, 0, 2, 0, 0),
('Chorus', 'Fine Arts', 'Music', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Christian Scriptures', 'Religious Studies', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 1, 1, 1, 0, 0),
('CS1', 'Computer Science', NULL, NULL, NULL, 'Exploring Computer Science', 0, 0, NULL, 1, NULL, 1, 1, 1, 0, 0),
('CS2', 'Computer Science', NULL, '', NULL, 'Computer Programming', 0, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Dance', 'Fine Arts', 'Dance', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Drama', 'Fine Arts', 'Drama', NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Drumline', 'Fine Arts', 'Music', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 1, 0),
('Ecological Justice and Care For The Common Home', 'Religious Studies', NULL, NULL, NULL, '(fall or spring semester)', 0, 3, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Economics of Globalization Honors', 'Social Science', NULL, NULL, NULL, '(fall or spring semester)', 1, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('English 1', 'English', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 1, 1, 2, 0, 0),
('English 4', 'English', NULL, NULL, NULL, NULL, 0, 3, NULL, 0, NULL, 1, 0, 2, 0, 0),
('French 1', 'World Language', 'French', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 1, 0, 2, 0, 0),
('French 2', 'World Language', 'French', NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('French 2 Honors', 'World Language', 'French', NULL, NULL, NULL, 1, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('French 3', 'World Language', 'French', NULL, NULL, NULL, 0, 2, NULL, 1, NULL, 1, 0, 2, 0, 0),
('French 3 Honors', 'World Language', 'French', NULL, NULL, NULL, 1, 2, NULL, 1, NULL, 0, 0, 2, 0, 0),
('French 4', 'World Language', 'French', NULL, NULL, NULL, 0, 3, NULL, 1, NULL, 0, 0, 2, 0, 0),
('French 4 Honors', 'World Language', 'French', NULL, NULL, NULL, 1, 3, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Fundamentals of Design and Images', 'Fine Arts', 'Digital Arts', NULL, NULL, NULL, 0, 1, 0, 1, NULL, 0, 0, 2, 0, 0),
('Geometry', 'Mathematics', NULL, NULL, NULL, NULL, 0, 0, NULL, 2, NULL, 1, 0, 2, 0, 0),
('Geometry Honors', 'Mathematics', NULL, NULL, NULL, NULL, 1, 1, NULL, 2, NULL, 1, 0, 2, 0, 0),
('Girls A Cappella', 'Fine Arts', 'Music', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 1, 0),
('Hebrew Scriptures', 'Religious Studies', NULL, NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 1, 1, 1, 0, 0),
('Human Geography', 'Social Science', NULL, NULL, NULL, '(fall or spring semester)', 0, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Independent Research in Science', 'Science', NULL, NULL, NULL, NULL, 0, 2, 3, 0, NULL, 0, 0, 1, 0, 0),
('Instrumental Music: Concert Band', 'Fine Arts', 'Music', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Intensive Greek 1 and 2 Honors', 'World Language', NULL, NULL, NULL, NULL, 0, 4, -2, 0, NULL, 0, 0, 2, 0, 0),
('Intensive Latin 1,2,3 Honors', 'World Language', NULL, NULL, NULL, NULL, 1, 3, -2, 1, NULL, 0, 0, 2, 0, 0),
('Intermediate Dance', 'Fine Arts', 'Dance', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Intermediate Mandarin Conversation', 'World Language', 'Mandarin', NULL, NULL, NULL, 0, 3, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Introduction To Catholic Christianity', 'Religious Studies', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 1, 1, 1, 0, 0),
('Introduction to Documentary and Narrative Filmaking', 'Fine Arts', 'Digital Arts', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 0, 0),
('Jazz Band', 'Fine Arts', 'Music', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 2, 1, 0),
('Latin 1', 'World Language', 'Latin', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Latin 2', 'World Language', 'Latin', NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Latin 2 Honors', 'World Language', 'Latin', NULL, NULL, NULL, 1, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Latin 3', 'World Language', 'Latin', NULL, NULL, NULL, 0, 2, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Latin 3 Honors', 'World Language', 'Latin', NULL, NULL, NULL, 1, 2, NULL, 2, NULL, 0, 0, 2, 0, 0),
('Latin 4', 'World Language', 'Latin', NULL, NULL, NULL, 0, 3, 4, 2, NULL, 0, 0, 2, 0, 0),
('Liberation and Solidarity', 'Religious Studies', NULL, NULL, NULL, '(spring semester)', 0, 3, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Mandarin 1', 'World Language', 'Mandarin', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Mandarin 2', 'World Language', 'Mandarin', NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Mandarin 3', 'World Language', 'Mandarin', NULL, NULL, NULL, 0, 2, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Mandarin 3 Honors', 'World Language', 'Mandarin', NULL, NULL, NULL, 1, 2, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Mandarin 4', 'World Language', 'Mandarin', NULL, NULL, NULL, 0, 3, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Mandarin 4 Honors', 'World Language', 'Mandarin', NULL, NULL, NULL, 1, 3, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Marine Biology', 'Science', NULL, NULL, NULL, NULL, 0, 2, 3, 0, NULL, 0, 0, 2, 0, 0),
('Modern World History', 'Social Science', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 1, 1, 2, 0, 0),
('Molecular Agronomy', 'Science', NULL, NULL, NULL, NULL, 0, 2, 3, 0, NULL, 0, 0, 1, 0, 0),
('Neurobiology of the Sexes Honors', 'Science', NULL, NULL, NULL, NULL, 1, 2, 3, 0, NULL, 0, 0, 1, 0, 0),
('Performance, Recording, and Songwriting', 'Fine Arts', 'Music', NULL, NULL, NULL, 0, 1, NULL, 0, NULL, 0, 0, 1, 1, 0),
('Personal Morality', 'Religious Studies', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 1, 1, 1, 0, 0),
('Photography', 'Fine Arts', 'Photography', NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Physics', 'Science', NULL, NULL, NULL, NULL, 0, 2, NULL, 0, 3, 1, 0, 2, 0, 0),
('Prayer and Meditation', 'Religious Studies', NULL, NULL, NULL, '(fall semester)', 0, 3, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Precalculus', 'Mathematics', NULL, NULL, NULL, NULL, 0, 5, NULL, 2, NULL, 1, 0, 2, 0, 0),
('Precalculus AB Honors', 'Mathematics', NULL, NULL, NULL, NULL, 1, 5, 6, 3, NULL, 1, 0, 2, 0, 0),
('Precalculus BC Honors', 'Mathematics', NULL, NULL, NULL, NULL, 1, 6, NULL, 3, NULL, 1, 0, 2, 0, 0),
('Psychology', 'Social Science', NULL, NULL, NULL, '(spring semester)', 0, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Race and American Identity Honors', 'Social Science', NULL, NULL, NULL, '(fall semester)', 1, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Relationships', 'Religious Studies', NULL, NULL, NULL, '(fall or spring semester)', 0, 3, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Social Ethics', 'Religious Studies', NULL, NULL, NULL, NULL, 0, 2, NULL, 0, NULL, 1, 1, 1, 0, 0),
('Spanish 1', 'World Language', 'Spanish', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Spanish 2', 'World Language', 'Spanish', NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Spanish 2 Honors', 'World Language', 'Spanish', NULL, NULL, NULL, 1, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Spanish 3', 'World Language', 'Spanish', NULL, NULL, NULL, 0, 2, NULL, 1, NULL, 1, 0, 2, 0, 0),
('Spanish 3 Honors', 'World Language', 'Spanish', NULL, NULL, NULL, 1, 2, NULL, 2, NULL, 0, 0, 2, 0, 0),
('Spanish 4', 'World Language', 'Spanish', NULL, NULL, NULL, 0, 3, 4, 2, NULL, 0, 0, 2, 0, 0),
('Stained Glass Workshop', 'Fine Arts', NULL, NULL, NULL, NULL, 0, 1, 2, 1, NULL, 0, 0, 1, 0, 0),
('Statistics', 'Mathematics', NULL, NULL, NULL, NULL, 0, 7, -2, 1, NULL, 0, 0, 2, 0, 0),
('Studio Art: Drawing & Painting', 'Fine Arts', 'Studio Art', NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 0, 0, 2, 0, 0),
('Survey of the Arts', 'Fine Arts', NULL, NULL, NULL, NULL, 0, 0, NULL, 1, NULL, 1, 0, 1, 0, 0),
('The Art of Storytelling', 'Fine Arts', 'Drama', NULL, NULL, NULL, 0, 1, 2, 0, NULL, 0, 0, 1, 0, 0),
('The Challenge of Peace', 'Religious Studies', NULL, NULL, NULL, '(spring semester)', 0, 3, NULL, 0, NULL, 0, 0, 1, 0, 0),
('The Crusades', 'Social Science', NULL, NULL, NULL, '(fall or spring semester)', 0, 2, NULL, 1, NULL, 0, 0, 1, 0, 0),
('The History of Modern China Honors', 'Social Science', NULL, NULL, NULL, '(spring semester)', 1, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('The History of Science and Technology Honors', 'Social Science', NULL, NULL, NULL, '(fall or spring semester)', 1, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('The Science of Sports Nutrition', 'Science', NULL, NULL, NULL, NULL, 0, 2, 3, 0, NULL, 0, 0, 1, 0, 0),
('Theology in Film and Fiction', 'Religious Studies', NULL, NULL, NULL, '(fall or spring semester)', 0, 3, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Understanding Religious Fundamentalism', 'Religious Studies', NULL, NULL, NULL, '(spring semester)', 0, 3, NULL, 0, NULL, 0, 0, 1, 0, 0),
('United States History', 'Social Science', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 1, 0, 2, 0, 0),
('US Literature', 'English', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, NULL, 1, 1, 2, 0, 0),
('Women''s History and World Religions', 'Religious Studies', NULL, NULL, NULL, '(fall semester, seniors only)', 0, 3, NULL, 0, NULL, 0, 0, 1, 0, 0),
('Women''s History of the United States Honors', 'Social Science', NULL, NULL, NULL, '(spring semester)', 1, 2, NULL, 0, NULL, 0, 0, 1, 0, 0),
('World Religions', 'Religious Studies', NULL, NULL, NULL, NULL, 0, 2, NULL, 1, NULL, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_name` varchar(128) NOT NULL,
  `min_semesters` int(11) NOT NULL,
  `allows_for_repeated_course_enrollment` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_name`, `min_semesters`, `allows_for_repeated_course_enrollment`) VALUES
('Computer Science', 1, 0),
('English', 8, 0),
('Fine Arts', 3, 1),
('Mathematics', 4, 0),
('Religious Studies', 7, 0),
('Science', 4, 0),
('Social Science', 7, 0),
('World Language', 4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_name`),
  ADD KEY `course_name` (`course_name`,`department`,`rigor`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_name`);
