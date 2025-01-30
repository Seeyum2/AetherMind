-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 09:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aethermind`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `uid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `title`, `genre`, `description`, `image`, `uid`) VALUES
(1, 'Dial A for Aunties', 'Comedy/Murder Mystery', 'A murder mystery that is unexpectedly hilarious as the protagonist and her aunts attempt to dispose of a body.', 'image/bid1.jpg', NULL),
(2, 'Meet Me in Paradise', 'Romance', 'A heartwarming story about stepping out of your comfort zone and finding love.', 'image/bid2.jpeg', NULL),
(3, 'The Candid Life of Meena Dave', 'Feel-Good Fiction', 'A feel-good book that follows a photojournalist unraveling a mystery in her new home.', 'image/bid3.jpg', NULL),
(4, 'Funny You Should Ask', 'Romantic Comedy', 'A charming book about a journalist revisiting a life-changing weekend with a celebrity crush.', 'image/bid4.jpg', NULL),
(5, 'Finlay Donovan Is Killing It', 'Comedy', 'A fast-paced comedy where a writer is mistakenly thought to be a contract killer.', 'image/bid5.jpeg', NULL),
(6, 'The Hitchhiker\'s Guide to the Galaxy', 'Science Fiction/Comedy', 'A comedic adventure that follows Arthur Dent as he navigates through space after the Earth is destroyed. Packed with British humor and absurd scenarios.', 'image/bid6.jpeg', NULL),
(7, 'The Thursday Murder Club', 'Mystery/Comedy', 'A lighthearted murder mystery tackled by four witty septuagenarians.', 'image/bid7.jpeg', NULL),
(8, 'If the Shoe Fits', 'Romantic Comedy', 'A contemporary Cinderella story that’s both funny and romantic.', 'image/bid2.jpeg', NULL),
(9, 'Anxious People', 'Comedy/Drama', 'A comedic novel set during a hostage situation, exploring human connections with wit.', 'image/bid9.jpg', NULL),
(10, 'Eleanor Oliphant Is Completely Fine', 'Fiction', 'A novel about personal growth and redemption that is both touching and amusing.', 'image/bid10.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `did` int(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `uid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emotions`
--

CREATE TABLE `emotions` (
  `emo_id` int(100) NOT NULL,
  `mood` varchar(255) DEFAULT NULL,
  `mental_score` int(100) DEFAULT NULL,
  `uid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hid` int(100) NOT NULL,
  `description` text DEFAULT NULL,
  `uid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `mid` int(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `uid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`mid`, `title`, `genre`, `description`, `image`, `uid`) VALUES
(1, 'Amélie', 'Comedy/Romance', 'A whimsical depiction of contemporary Parisian life, set in Montmartre.', 'image/mid1.jpg', NULL),
(2, 'The Grand Budapest Hotel', 'Comedy/Drama', 'A tale of a famous hotel’s concierge and his friendship with a young employee.', 'image/mid2.jpeg', NULL),
(3, 'Forrest Gump', 'Drama/Romance', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75.', 'image/mid3.jpeg', NULL),
(4, 'The Intouchables', 'Comedy/Drama', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'image/mid4.jpeg', NULL),
(5, 'Back to the Future', 'Adventure/Comedy', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean.', 'image/mid5.jpeg', NULL),
(6, 'Legally Blonde', 'Comedy', 'Elle Woods, a fashionable sorority queen, is dumped by her boyfriend and decides to follow him to law school to get him back.', 'image/mid6.jpeg', NULL),
(7, 'Julie & Julia', 'Biography/Drama', 'Julie Powell, a young blogger, is determined to emulate Julia Child\'s cooking techniques.', 'image/mid7.jpg', NULL),
(8, 'Finding Nemo', 'Animation/Adventure', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', 'image/mid8.jpeg', NULL),
(9, 'Singin\' in the Rain', 'Musical/Comedy', 'A silent film production company and cast make a difficult transition to sound.', 'image/mid9.jpeg', NULL),
(10, 'Guardians of the Galaxy', 'Action/Adventure', 'A group of intergalactic criminals must pull together to stop a fanatical warrior.', 'image/mid10.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `uid` int(100) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` int(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`uid`, `fname`, `lname`, `email`, `phone_number`, `password`) VALUES
(1, 'Tanzeem ', 'Seeyum', 'tanzeemseeyum1234@gmail.com', 1712345678, 'seeyum13');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sid` int(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `uid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(100) NOT NULL,
  `descriptions` varchar(255) DEFAULT NULL,
  `uid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `relationship_satus` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `emergency_contact` int(100) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `hight` int(100) DEFAULT NULL,
  `weight` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `dob`, `education`, `relationship_satus`, `gender`, `emergency_contact`, `occupation`, `house`, `area`, `city`, `hight`, `weight`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`did`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `emotions`
--
ALTER TABLE `emotions`
  ADD PRIMARY KEY (`emo_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `emotions`
--
ALTER TABLE `emotions`
  ADD CONSTRAINT `emotions_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `sports`
--
ALTER TABLE `sports`
  ADD CONSTRAINT `sports_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `registration` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
