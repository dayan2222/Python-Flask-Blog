-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 09:37 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` varchar(50) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'Dayan ', '0315-8245884', 'kol;', '2019-08-21 16:20:36', 'dayanahmed66@gmail.com'),
(2, 'Jhon Doe', '0315-8245884', 'srxfcg', '2019-08-21 16:21:03', 'dayanahmed2222@gmail.com'),
(3, 'libsysIU', '03-112393624', 'dtchgb', '2019-08-21 16:21:32', 'dayanahmed66@gmail.com'),
(4, 'Abcd', '0315-8245884', 'abcd', '2019-08-21 21:11:40', 'dayanahmed2222@gmail.com'),
(5, 'Abcd', '0315-8245884', 'abcd', '2019-08-21 23:24:28', 'dayanahmed2222@gmail.com'),
(6, 'Hamza Sikander', '0311123965', 'hamza here', '2019-08-27 13:52:44', 'hamza@gmailc.om'),
(7, 'Hamza Sikander', '0311123965', 'hamza here', '2019-08-27 14:05:35', 'hamza@gmailc.om'),
(8, 'Hamza ', '+9231564726', 'Hi there\r\n', '2019-09-04 07:17:49', 'hamza@yahoo.com'),
(9, 'abcd@abc.com', '03112393624', 'Testing a flash message', '2020-02-15 18:53:27', 'dayanahmed66@gmail.com'),
(10, 'abcd@abc.com', '03112393624', 'Testing a flash message', '2020-02-15 18:54:18', 'dayanahmed66@gmail.com'),
(11, 'abcd@abc.com', '03112393624', 'Testing a flash message', '2020-02-15 18:54:27', 'dayanahmed66@gmail.com'),
(12, 'abcd@abc.com', '03112393624', 'Testing a flash message', '2020-02-15 18:56:04', 'dayanahmed66@gmail.com'),
(13, 'abcd@abc.com', '03112393624', 'Testing a flash message', '2020-02-15 18:57:00', 'dayanahmed66@gmail.com'),
(14, 'abcd@abc.com', '03112393624', 'test', '2020-02-15 18:57:24', 'dayanahmed66@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Ths is my frist Edited title ', 'this is first edited post', 'firstedited-post', 'Edited You can mess around with the variables in templates provided they are passed in by the application. Variables may have attributes or elements on them you can access too. What attributes a variable has depends heavily on the application providing that variable.\r\n\r\nYou can use a dot (.) to access attributes of a variable in addition to the standard Python __getitem__ “subscript” syntax ([]).\r\n\r\nThe following lines do the same thing:', 'post-bg.jpg', '2019-10-01 11:21:44'),
(2, 'This is Second Post', 'coolest post ever', 'second-post', 'A template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\r\n\r\nBelow is a minimal template that illustrates a few basics using the default Jinja configuration. We will cover the details later in this document:', 'about-bg.jpg', '2019-09-21 10:33:42'),
(3, 'Synopsis', 'Synopsis tag', 'third-post', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\r\n\r\nBelow is a minimal template that illustrates a few basics using the default Jinja configuration. We will cover the details later in this document:', '', '2019-09-21 10:59:26'),
(4, 'Implementation', 'Implementation tagline', 'fourth-post', 'For the sake of convenience, foo.bar in Jinja2 does the following things on the Python layer:\r\n\r\ncheck for an attribute called bar on foo (getattr(foo, ''bar''))\r\n\r\nif there is not, check for an item ''bar'' in foo (foo.__getitem__(''bar''))\r\n\r\nif there is not, return an undefined object.\r\n\r\nfoo[''bar''] works mostly the same with a small difference in sequence:\r\n\r\ncheck for an item ''bar'' in foo. (foo.__getitem__(''bar''))\r\n\r\nif there is not, check for an attribute called bar on foo. (getattr(foo, ''bar''))\r\n\r\nif there is not, return an undefined object.\r\n\r\nThis is important if an object has an item and attribute with the same name. Additionally, the attr() filter only looks up attributes.', '', '2019-09-21 10:59:26'),
(6, 'Filters', 'Filters tagline', 'fifth-post', 'Variables can be modified by filters. Filters are separated from the variable by a pipe symbol (|) and may have optional arguments in parentheses. Multiple filters can be chained. The output of one filter is applied to the next.\r\n\r\nFor example, {{ name|striptags|title }} will remove all HTML Tags from variable name and title-case the output (title(striptags(name))).\r\n\r\nFilters that accept arguments have parentheses around the arguments, just like a function call. For example: {{ listx|join('', '') }} will join a list with commas (str.join('', '', listx)).\r\n\r\nThe List of Builtin Filters below describes all the builtin filters.', '', '2019-09-21 11:00:52'),
(8, 'New Title', 'new-tag', 'new-slug', 'content', 'bg.png', '2019-10-01 11:08:37'),
(9, 'Testing', 'test', 'test-e', 'Alpha', 'about-bg.jpg', '2019-11-28 23:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `course` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`fname`, `lname`, `course`) VALUES
('Dayan', 'Ahmed', 'Python'),
('Ahmed', 'Dayan', 'Python');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
