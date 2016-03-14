CREATE TABLE IF NOT EXISTS `Courses` (
  `course_name` varchar(128) NOT NULL,
  `department` varchar(60) NOT NULL,
  `required` boolean NOT NULL,
  `rigor` int NOT NULL,
  `minGradLevel` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;