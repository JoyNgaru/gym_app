-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 10:13 AM
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
-- Database: `gymdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'f2d0ff370380124029c2b807a924156c', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `message`, `date`) VALUES
(7, 'This is to announce that our GYM will remain close for 51 days due to COVID-19.', '2020-03-30'),
(8, 'Opening of GYM Halls and Clubs are not fixed yet. Stay tuned for more updates!!', '2020-04-03'),
(9, 'Renovation Going On...', '2020-04-04'),
(10, 'This is a demo announcement from admin', '2022-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL,
  `present` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Table structure for table `kids-attendance`
--

CREATE TABLE `kids_attendance` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL,
  `present` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

CREATE TABLE todo (
    `id` int(11) NOT NULL,
    `task_status` VARCHAR(255),
    `task_desc` TEXT,
    `user_id` varchar(100) NOT NULL
   
);

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `amount`, `quantity`, `vendor`, `description`, `address`, `contact`, `date`) VALUES
(3, 'Treadmill', 909, 4, 'DnS', 'Edited Description', '7 Cedarstone Drive', '8521479633', '2019-03-07'),
(4, 'Vertical Press Machine', 949, 3, 'SS Industries', 'For Biceps And Triceps, Upper Back, Chest', '7 Cedarstone Drive', '1245558980', '2020-03-19'),
(5, 'Dumbell - Adjustable', 102, 26, 'Uptown Suppliers', 'Material: Steel, Rubber Plastic, Concrete', '7 Cedarstone Drive', '9875552100', '2020-03-29'),
(6, 'Multi Bench Press Machine', 219, 2, 'DnS Suppliers', '6 In 1 Multi Bench With Incline, Flat, Decline Ben', '7 Cedarstone Drive', '7410001010', '2020-04-05'),
(7, 'Demo', 265, 5, 'Demo', 'This is a demo test.', '77 Demo Lane', '8524445452', '2020-04-03'),
(10, 'RowWarrior Fitness Rowing Mach', 5616, 12, 'Roww Stores', 'HIGHEST QUALITY: This best of class air rowing mac', '52 Weekley Street', '7412585555', '2021-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE `kids` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `parentName` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dor` date NOT NULL,
  `services` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `paid_date` date NOT NULL,
  `p_year` int(11) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count` int(100) NOT NULL,
  `ini_weight` int(100) NOT NULL DEFAULT 0,
  `curr_weight` int(100) NOT NULL DEFAULT 0,
  `ini_bodytype` varchar(50) NOT NULL,
  `curr_bodytype` varchar(50) NOT NULL,
  `progress_date` date NOT NULL,
  `reminder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`user_id`, `fullname`, `parentName`, `password`, `gender`, `dor`, `services`, `amount`, `paid_date`, `p_year`, `plan`, `address`, `contact`, `status`, `attendance_count`, `ini_weight`, `curr_weight`, `ini_bodytype`, `curr_bodytype`, `progress_date`, `reminder`) VALUES
(1, 'Taji Mikael', 'taji', 'taji2023', 'boy', '2023-12-14', 'Sauna', 50, '2023-12-14', 2023, 'monthly', 'mvita', '0710167032', 'Active', 0, 45, 43, '', '', '0000-00-00', 0);

-- --------------------------------------------------------


CREATE TABLE `staffs` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`user_id`, `username`, `password`, `email`, `fullname`, `address`, `designation`, `gender`, `contact`) VALUES
(1, 'bruno', 'cac29d7a34687eb14b37068ee4708e7b', 'brunoden@mail.com', 'Bruno Den', '26 Morris Street', 'Cashier', 'Male', 852028120),
(2, 'michelle', 'cac29d7a34687eb14b37068ee4708e7b', 'michelle@mail.com', 'Michelle R. Lane', '61 Stone Lane', 'Trainer', 'Female', 2147483647),
(3, 'james', 'cac29d7a34687eb14b37068ee4708e7b', 'jamesb@mail.com', 'James Brown', '12 Deer Ridge Drive', 'Trainer', 'Male', 2147483647),
(4, 'bruce', 'cac29d7a34687eb14b37068ee4708e7b', 'bruce@mail.com', 'Bruce H. Klaus', '68 Lake Floyd Circle', 'Manager', 'Male', 1458887788);

-- table parents
CREATE TABLE `parents` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `child1name` varchar(20) NOT NULL,
  `gender1` varchar(20) NOT NULL,
  `dor1` date NOT NULL,
  `services1` varchar(50) NOT NULL,
  `amount1` int(100) NOT NULL DEFAULT 0,
  `plan1` varchar(100) NOT NULL,
  `status1` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count1` int(100) NOT NULL,
  `ini_weight1` int(100) NOT NULL DEFAULT 0,
  `curr_weight1` int(100) NOT NULL DEFAULT 0,
  `ini_bodytype1` varchar(50) NOT NULL,
  `curr_bodytype1` varchar(50) NOT NULL,
  `progress_date1` date NOT NULL,
  `reminder1` int(11) NOT NULL DEFAULT 0,
  `child2name` varchar(20) NOT NULL,
  `gender2` varchar(20) NOT NULL,
  `dor2` date NOT NULL,
  `services2` varchar(50) NOT NULL,
  `amount2` int(100) NOT NULL,
  `plan2` varchar(100) NOT NULL,
  `status2` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count2` int(100) NOT NULL,
  `ini_weight2` int(100) NOT NULL DEFAULT 0,
  `curr_weight2` int(100) NOT NULL DEFAULT 0,
  `ini_bodytype2` varchar(50) NOT NULL,
  `curr_bodytype2` varchar(50) NOT NULL,
  `progress_date2` date NOT NULL,
  `reminder2` int(11) NOT NULL DEFAULT 0,
  `child3name` varchar(20) NOT NULL,
  `gender3` varchar(20) NOT NULL,
  `dor3` date NOT NULL,
  `services3` varchar(50) NOT NULL,
  `amount3` int(100) NOT NULL DEFAULT 0,
  `plan3` varchar(100) NOT NULL,
  `status3` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count3` int(100) NOT NULL,
  `ini_weight3` int(100) NOT NULL DEFAULT 0,
  `curr_weight3` int(100) NOT NULL DEFAULT 0,
  `ini_bodytype3` varchar(50) NOT NULL,
  `curr_bodytype3` varchar(50) NOT NULL,
  `progress_date3` date NOT NULL,
  `reminder3` int(11) NOT NULL DEFAULT 0,
  `child4name` varchar(20) NOT NULL,
  `gender4` varchar(20) NOT NULL,
  `dor4` date NOT NULL,
  `services4` varchar(50) NOT NULL,
  `amount4` int(100) NOT NULL DEFAULT 0,
  `plan4` varchar(100) NOT NULL,
  `status4` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count4` int(100) NOT NULL,
  `ini_weight4` int(100) NOT NULL DEFAULT 0,
  `curr_weight4` int(100) NOT NULL DEFAULT 0,
  `ini_bodytype4` varchar(50) NOT NULL,
  `curr_bodytype4` varchar(50) NOT NULL,
  `progress_date4` date NOT NULL,
  `reminder4` int(11) NOT NULL DEFAULT 0,
  `child5name` varchar(20) NOT NULL,
  `gender5` varchar(20) NOT NULL,
  `dor5` date NOT NULL,
  `services5` varchar(50) NOT NULL,
  `amount5` int(100) NOT NULL DEFAULT 0,
  `plan5` varchar(100) NOT NULL,
  `status5` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count5` int(100) NOT NULL,
  `ini_weight5` int(100) NOT NULL DEFAULT 0,
  `curr_weight5` int(100) NOT NULL DEFAULT 0,
  `ini_bodytype5` varchar(50) NOT NULL,
  `curr_bodytype5` varchar(50) NOT NULL,
  `progress_date5` date NOT NULL,
  `paid_date` date NOT NULL,
  `p_year` int(11) NOT NULL,
  `reminder5` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


--
--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dor` date NOT NULL,
  `services` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `paid_date` date NOT NULL,
  `p_year` int(11) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count` int(100) NOT NULL,
  `ini_weight` int(100) NOT NULL DEFAULT 0,
  `curr_weight` int(100) NOT NULL DEFAULT 0,
  `ini_bodytype` varchar(50) NOT NULL,
  `curr_bodytype` varchar(50) NOT NULL,
  `progress_date` date NOT NULL,
  `reminder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`user_id`, `fullname`, `username`, `password`, `gender`, `dor`, `services`, `amount`, `paid_date`, `p_year`, `plan`, `address`, `contact`, `status`, `attendance_count`, `ini_weight`, `curr_weight`, `ini_bodytype`, `curr_bodytype`, `progress_date`, `reminder`) VALUES
(6, 'Harry Denn', 'harry', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2019-12-25', 'Fitness', 165, '2022-06-02', 2021, '3', '64 Mulberry Lane', '8545878545', 'Active', 4, 54, 62, 'Slim', 'Buffed', '2020-04-22', 0),
(8, 'Charles Anderson', 'charles', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2020-01-02', 'Fitness', 55, '2020-04-01', 2020, '3', '99 Heron Way', '8520258520', 'Active', 14, 92, 85, 'Fat', 'Bulked', '2020-04-22', 1),
(11, 'Justin Schexnayder', 'justin', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2019-01-25', 'Cardio', 35, '2020-03-31', 2020, '3', '14 Blair Court', '7535752220', 'Active', 9, 0, 0, '', '', '0000-00-00', 0),
(14, 'Ryan Crowl', 'ryan', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2019-07-13', 'Fitness', 55, '2020-04-02', 2020, '12', '34 Twin Oaks Drive', '1578880010', 'Active', 13, 59, 63, 'Slim', 'Slim', '2020-04-23', 0),
(16, 'TrialsChanged', 'trials', 'cac29d7a34687eb14b37068ee4708e7b', 'Female', '2020-04-01', 'Fitness', 0, '2021-06-12', 2021, '0', '4 Demo Lane', '741111110', 'Expired', 26, 50, 61, 'Slim', 'Slim', '2021-06-11', 1),
(17, 'Karen McGray', 'karen', 'cac29d7a34687eb14b37068ee4708e7b', 'Female', '2020-04-02', 'Cardio', 120, '2022-05-31', 2020, '3', '23 Rubaiyat Road', '7441002540', 'Active', 12, 0, 0, '', '', '0000-00-00', 0),
(18, 'Jeanne Pratt', 'prattj', 'cac29d7a34687eb14b37068ee4708e7b', 'Female', '2020-04-04', 'Fitness', 55, '2021-06-11', 2021, '1', '86 Hilltop Street', '7854445410', 'Active', 11, 0, 0, '', '', '0000-00-00', 0),
(19, 'George Fann', 'george', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2019-04-02', 'Fitness', 55, '2021-06-11', 2021, '1', '43 Oak Drive', '0258987850', 'Active', 22, 0, 0, '', '', '0000-00-00', 1),
(20, 'Wendy Scott', 'wendy', 'cac29d7a34687eb14b37068ee4708e7b', 'Female', '2020-03-21', 'Fitness', 55, '2021-06-11', 2021, '1', '24 Cody Ridge Road', '8547896520', 'Active', 18, 0, 0, '', '', '0000-00-00', 0),
(21, 'Patrick Wilson', 'patrick', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2020-04-02', 'Cardio', 120, '2022-06-01', 2021, '3', '24 Cody Ridge Road', '9874568520', 'Active', 11, 0, 0, '', '', '0000-00-00', 0),
(22, 'Tommy Marks', 'tommy', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2020-04-01', 'Fitness', 55, '2020-04-05', 2020, '3', '22 Franklin Street', '8529997500', 'Active', 7, 0, 0, '', '', '0000-00-00', 0),
(23, 'Keith Martin', 'martin', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '2020-04-02', 'Cardio', 120, '2022-06-02', 2021, '3', '89 Smithfield Avenue', '7895456250', 'Active', 24, 51, 68, 'Slim', 'Muscular', '2022-06-02', 0),
(24, 'Richard G Langston', 'richard', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '1990-02-02', 'Sauna', 420, '2022-05-31', 2022, '12', '541  Raoul Wallenber', '7012545580', 'Active', 1, 0, 0, '', '', '0000-00-00', 0),
(25, 'Raymond Ledesma', 'raymond', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '1986-02-19', 'Cardio', 480, '2022-06-02', 2022, '12', '2954  Robinson Lane', '4785450002', 'Active', 2, 0, 0, '', '', '0000-00-00', 0),
(26, 'Mattie F. Maher', 'mattie', 'cac29d7a34687eb14b37068ee4708e7b', 'Female', '1995-05-18', 'Sauna', 420, '2022-06-01', 2022, '12', '73 Settlers Lane', '9995554444', 'Active', 0, 0, 0, '', '', '0000-00-00', 0),
(27, 'Justin C. Lusk', 'justin', 'cac29d7a34687eb14b37068ee4708e7b', 'Male', '1995-12-12', 'Cardio', 40, '2022-05-30', 2022, '1', '45 Bell Street', '3545785540', 'Active', 1, 0, 0, '', '', '0000-00-00', 0),
(29, 'Kathy J. Glennon', 'kathy', 'cac29d7a34687eb14b37068ee4708e7b', 'Female', '2022-06-02', 'Fitness', 330, '2022-06-02', 0, '6', '87 Harry Place', '7896587458', 'Active', 0, 0, 0, '', '', '0000-00-00', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
