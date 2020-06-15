-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 11:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Javascript'),
(3, 'PHP'),
(12, 'Example Category'),
(13, 'HTML5');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(26, 13, '2', '2@GMAIL.COM', '2222222222222222222', 'Approved', '2020-05-28'),
(27, 13, '2', '2@GMAIL.COM', '222222222222222222', 'Unapproved', '2020-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(12, 1, '1', '1', '2020-06-16', '1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fermentum metus pellentesque risus blandit vestibulum. Praesent rhoncus orci in vehicula gravida. Cras id massa vel ex porttitor auctor et id erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas..</p>', '1', 0, 'published'),
(13, 1, '2', '2', '2020-06-15', '2.jpg', '<p>2</p>', '2', 1, 'published'),
(14, 1, '3', '3', '2020-06-15', '3.jpg', '<p>3</p>', '3', 0, 'published'),
(18, 1, '5', '5', '2020-06-11', '5.jpg', '<p>5</p>', '5', 0, 'published'),
(19, 1, '6', '6', '2020-06-10', '4.jpg', '<table style=\"border-collapse: collapse; width: 100%; height: 72px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 20%; height: 18px;\">dfs</td>\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdfsdfsdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdfsd</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdfdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n<td style=\"width: 20%; height: 18px;\">sdf</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"width: 20%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 20%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 20%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 20%; height: 18px;\">&nbsp;</td>\r\n<td style=\"width: 20%; height: 18px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>6</p>', '6', 0, 'draft'),
(20, 1, 'temo', 'temo', '2020-06-02', '2.jpg', 'temo\r\n        \r\n        ', 'temo', 0, 'published'),
(21, 12, '7', '7', '2020-06-16', '3.jpg', '<p>333</p>', '3', 0, 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_iamge` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_iamge`, `user_role`, `randSalt`) VALUES
(1, 'rico', '123', 'Ricoo', 'Suave ', 'ricosuave@gmail.com', '', 'admin', ''),
(2, 'giuna', '123', 'gioo', 'giodze ', 'giuna@lt.com', '', 'subscriber', ''),
(4, 'tengiaa', '123', 'tengo', 'tengia', 'sadas@dasd', '', 'subscriber', ''),
(5, 'santa', '123', 'temo', 'aleli', 'Santa@gmail.com', '', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_category_id` (`post_category_id`),
  ADD KEY `post_category_id_2` (`post_category_id`),
  ADD KEY `post_category_id_3` (`post_category_id`),
  ADD KEY `post_category_id_4` (`post_category_id`),
  ADD KEY `post_category_id_5` (`post_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
