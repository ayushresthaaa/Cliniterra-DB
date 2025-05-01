-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2025 at 10:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointment_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `appointment_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_date`, `appointment_status`) VALUES
(1, '2025-04-20 09:00:00', 'Not Completed'),
(2, '2025-04-21 09:00:00', 'Not Completed');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_schedule`
--

CREATE TABLE `appointment_schedule` (
  `appointment_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_schedule`
--

INSERT INTO `appointment_schedule` (`appointment_id`, `schedule_id`) VALUES
(1, 1),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(11) NOT NULL,
  `doc_first_name` varchar(50) NOT NULL,
  `doc_last_name` varchar(50) NOT NULL,
  `doc_gender` varchar(50) NOT NULL,
  `doc_email` varchar(50) NOT NULL,
  `doc_phone` varchar(50) NOT NULL,
  `doc_dob` date NOT NULL,
  `doc_speciality` varchar(50) NOT NULL,
  `doc_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doc_first_name`, `doc_last_name`, `doc_gender`, `doc_email`, `doc_phone`, `doc_dob`, `doc_speciality`, `doc_address`) VALUES
(1, 'Ramesh ', 'Silwal', 'Male', 'ramesh@gmail.com', '9844512345', '1990-07-11', 'Dentist', 'Kapan'),
(2, 'Diwas', 'Gurung', 'Male', 'diwas@gmail.com', '9844513345', '1991-08-11', 'Cardiologist', 'Arubari');

-- --------------------------------------------------------

--
-- Table structure for table `doc_room`
--

CREATE TABLE `doc_room` (
  `room_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doc_room`
--

INSERT INTO `doc_room` (`room_id`, `doc_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `doc_schedule`
--

CREATE TABLE `doc_schedule` (
  `doc_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doc_schedule`
--

INSERT INTO `doc_schedule` (`doc_id`, `schedule_id`) VALUES
(1, 1),
(1, 2),
(2, 4),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_desc` varchar(100) NOT NULL,
  `feedback_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_desc`, `feedback_date`) VALUES
(1, 'The facility is good', '2025-04-12 07:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`) VALUES
(1, 'Dental'),
(2, 'Cardiology');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `schedule_day` varchar(50) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `slot_num` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `schedule_day`, `start_time`, `end_time`, `slot_num`) VALUES
(1, 'Sunday', '09:00:00', '10:00:00', 5),
(2, 'Monday', '09:00:00', '10:00:00', 5),
(3, 'Sunday', '09:00:00', '10:00:00', 5),
(4, 'Monday', '09:00:00', '10:00:00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_gender` varchar(50) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_dob` date NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `image_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `first_name`, `last_name`, `user_gender`, `user_phone`, `user_dob`, `user_type`, `user_email`, `user_password`, `image_path`) VALUES
(1, 'Admin', 'Aayush', 'Shrestha', 'Male', '9849591020', '2005-02-15', 'Admin', 'ayushrestha2fb5@gmail.com', 'ayu54@0', ''),
(2, 'ayusha.', 'Aayusha', 'Kandel', 'Female', '9849590000', '2004-04-16', 'user', 'aayushakandel@gmail.com', 'ayk50@#', ''),
(3, 'namratak', 'Namrata', 'Karki', 'Female', '9841144187', '2003-08-09', 'user', 'namratakarki@gmail.com', 'nam@00', ''),
(4, 'helo', 'Himal', 'Shrestha', 'male', '9849591021', '2001-02-02', 'user', 'himal@gmail.com', 'Hello123@', 'G2mJk.oq1b-small-Revenge-of-the-Northern-Bla.jpg'),
(5, 'kamba', 'Aashika', 'Kambong', 'male', '9849591044', '2001-02-02', 'user', 'aashika@gmail.com', 'Hello123@', 'GYwN7bEbQAQZsxn.jpeg'),
(6, 'rachina', 'Rachina', 'Shrestha', 'male', '9849591043', '2001-02-02', 'user', 'rachina@gmail.com', 'WZGG6dFzqQmH/zSbbkpyWkN0otH+d6PveRG1xzFlMm4=', 'wallpaperflare.com_wallpaper (7).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_appointment`
--

CREATE TABLE `user_appointment` (
  `user_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_appointment`
--

INSERT INTO `user_appointment` (`user_id`, `appointment_id`, `doc_id`) VALUES
(2, 1, 1),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `user_` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`user_`, `feedback_id`) VALUES
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `appointment_schedule`
--
ALTER TABLE `appointment_schedule`
  ADD UNIQUE KEY `appointment_id` (`appointment_id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`),
  ADD UNIQUE KEY `doc_email` (`doc_email`),
  ADD UNIQUE KEY `doc_phone` (`doc_phone`),
  ADD UNIQUE KEY `doc_speciality` (`doc_speciality`);

--
-- Indexes for table `doc_room`
--
ALTER TABLE `doc_room`
  ADD KEY `fk_dr_room_id` (`room_id`),
  ADD KEY `fk_dr_doc_id` (`doc_id`);

--
-- Indexes for table `doc_schedule`
--
ALTER TABLE `doc_schedule`
  ADD KEY `fk_ds_doc_id` (`doc_id`),
  ADD KEY `fk_ds_schedule_id` (`schedule_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_appointment`
--
ALTER TABLE `user_appointment`
  ADD KEY `fk_ua_user_id` (`user_id`),
  ADD KEY `fk_ua_appointment_id` (`appointment_id`),
  ADD KEY `fk_ua_doc_id` (`doc_id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD KEY `fk_uf_user_id` (`user_`),
  ADD KEY `fk_uf_feedback_id` (`feedback_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_schedule`
--
ALTER TABLE `appointment_schedule`
  ADD CONSTRAINT `fk_as_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`),
  ADD CONSTRAINT `fk_as_schedule_id` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`);

--
-- Constraints for table `doc_room`
--
ALTER TABLE `doc_room`
  ADD CONSTRAINT `fk_dr_doc_id` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`doc_id`),
  ADD CONSTRAINT `fk_dr_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `doc_schedule`
--
ALTER TABLE `doc_schedule`
  ADD CONSTRAINT `fk_ds_doc_id` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`doc_id`),
  ADD CONSTRAINT `fk_ds_schedule_id` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`);

--
-- Constraints for table `user_appointment`
--
ALTER TABLE `user_appointment`
  ADD CONSTRAINT `fk_ua_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`),
  ADD CONSTRAINT `fk_ua_doc_id` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`doc_id`),
  ADD CONSTRAINT `fk_ua_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD CONSTRAINT `fk_uf_feedback_id` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`feedback_id`),
  ADD CONSTRAINT `fk_uf_user_id` FOREIGN KEY (`user_`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
