-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2025 at 09:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movierentalsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(4) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `email`, `password`) VALUES
(1, 'saraaziz180903@gmail.com', 'sara'),
(2, 'm.sarimhashmi11@gmail.com', 'hashmi'),
(3, 'afra.rasheed@gmail.com', 'afraaa');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(4) NOT NULL,
  `planName` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `planName`, `email`, `password`) VALUES
(1, 'Monthly', 'aliayesha@gmail.com', 'ayeshaali'),
(2, 'Monthly', 'areebhashmi11@gmail.com', 'hashmi11'),
(3, 'Yearly', 'fawad.tariq12@gmail.com', 'fawadd'),
(4, 'Yearly', 'asfar765@gmail.com', 'bayaan'),
(5, 'Yearly', 'zaincr7@gmail.com', 'zain'),
(6, 'Monthly', 'maria.ashfaq@gmail.com', 'maria'),
(7, 'Yearly', 'haroon78@gmail.com', 'rasheed'),
(8, 'Monthly', 'maryamzain@gmail.com', 'maryamzain'),
(9, 'Monthly', 'hafsa135@gmail.com', 'haris'),
(10, 'Monthly', 'zara345@gmail.com', 'zara56'),
(11, 'Yearly', 'yousrazamir@gmail.com', 'zamir23'),
(12, 'Monthly', 'rabia123@gmail.com', 'elsa'),
(13, 'Monthly', 'alihasan@gmail.com', 'ali11'),
(14, 'Yearly', 'kashaf@gmail.com', 'murtaza'),
(15, 'Yearly', 'zaroon@gmail.com', 'junaid'),
(16, 'Monthly', 'aun25@gmail.com', 'syed'),
(17, 'Monthly', 'sana.aziz900@hotmail.com', 'sanaaziz'),
(18, 'Monthly', 'catherine@gmail.com', 'heathcliff'),
(19, 'Monthly', 'asma@gmail.com', '123'),
(20, 'Yearly', 'mahnoor.aziz8847@hhs.edu.pk', 'post malone'),
(21, 'Monthly', 'roomiecat@gmail.com', 'roomiecat');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `title` varchar(30) NOT NULL,
  `releaseYear` int(4) NOT NULL,
  `genre` varchar(10) NOT NULL,
  `director` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL,
  `length` int(3) NOT NULL,
  `rating` float NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`title`, `releaseYear`, `genre`, `director`, `description`, `length`, `rating`, `image`) VALUES
('Antlers', 2021, 'Horror', 'Scott Cooper', 'In a small Oregon town, a teacher and her brother, the local sheriff, become entwined with a young student harboring a dangerous secret with frightening consequences.', 99, 6.2, '68151dd0247d0.jpg'),
('Avengers: Endgame', 2019, 'Action', 'Anthony Russo, Joe Russo', 'After the devastating events of Avengers: Infinity War, the universe is in ruins. The Avengers assemble once more to undo Thanos\' actions and restore order to the universe.', 181, 8.4, 'Avengers Endgame.png'),
('Black Panther', 2018, 'Action', 'Ryan Coogler', 'T\'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and confront a challenger from his country\'s past.', 134, 7.3, 'Black Panther.png'),
('Black Widow', 2021, 'Action', 'Cate Shortland', 'Natasha Romanoff confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises.', 134, 6.8, '68151e4e95592.jpg'),
('Borat Subsequent Moviefilm', 2020, 'Comedy', 'Jason Woliner', 'A satire on the Trump era, featuring Borat Sagdiyev who is now on a mission to deliver his daughter as a bribe to an American government official.', 95, 6.7, '64b3d83eee5e6.png'),
('Candyman', 2021, 'Horror', 'Nia DaCosta', 'A visual artist encounters the urban legend of Candyman, a supernatural killer with a hook for a hand, while exploring the history of his neighborhood.', 91, 5.5, '68151d92d3969.jpg'),
('Finding Nemo', 2003, 'Animation', 'Andrew Stanton', 'An animated adventure following the journey of a clownfish father searching for his son in the vast ocean.', 100, 8.1, '64b3dc9082246.jpeg'),
('Forrest Gump', 1994, 'Drama', 'Robert Zemeckis', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold from the perspective of an Alabama man', 142, 8.8, '68151ee760e8a.jpg'),
('Get Out', 2017, 'Horror', 'Jordan Peele', 'A young African-American man visits his white girlfriend\'s family estate, where he becomes ensnared in a more sinister reason for the invitation.', 104, 7.7, 'Get Out.png'),
('Halloween Kills', 2021, 'Horror', 'David Gordon Green', 'Laurie Strode and her family must confront the masked killer Michael Myers when he returns to Haddonfield to continue his murderous rampage.', 105, 6.1, '68151d5baf8c4.jpeg'),
('Knives Out', 2019, 'Mystery', 'Rian Johnson', 'A detective investigates the death of a patriarch of an eccentric, combative family as they gather for his birthday celebration.', 130, 7.9, 'Knives Out.jpg'),
('La La Land', 2016, 'Musical', 'Damien Chazelle', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 128, 8, 'La La Land.png'),
('Malignant', 2021, 'Horror', 'James Wan', 'A woman begins to have terrifying visions of brutal murders, and soon discovers that these dreams are actually real events happening in the present.', 111, 6.3, '68151e0434386.jpg'),
('Minari', 2020, 'Drama', 'Lee Isaac Chung', 'A Korean family starts a farm in 1980s Arkansas.', 115, 7.5, '64b3d18daa975.png'),
('Nomadland', 2020, 'Drama', 'Chloé Zhao', 'A woman in her sixties, after losing everything in the Great Recession, embarks on a journey through the American West, living as a van-dwelling modern-day nomad.', 107, 7.4, '64b3d1239b76a.png'),
('Parasite', 2019, 'Drama', 'Bong Joon-ho', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 132, 8.6, 'Parasite.png'),
('Silver Linings Playbook', 2012, 'Comedy', 'David O. Russell', 'A quirky and heartwarming story of two individuals navigating their way through life and finding unexpected connections.', 122, 7.7, '64b3e48d2e3bc.jpg'),
('Soul', 2020, 'Comedy', 'Pete Docter, Kemp Powers', 'A musician who has lost his passion for music is transported out of his body and must find his way back with the help of an infant soul learning about herself.', 100, 8.1, '64b3d23fd6410.png'),
('Spider-Man: Far From Home', 2019, 'Action', 'Jon Watts', 'Following the events of Avengers: Endgame, Spider-Man must step up to take on new threats in a world that has changed forever.', 129, 7.5, 'Spider-Man Far From Home.jpg'),
('Tenet', 2020, 'Action', 'Christopher Nolan', 'Armed with only one word, Tenet, and fighting for the survival of the entire world, a protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real-time.', 150, 7.4, '64b3d067612dc.png'),
('The Conjuring: The Devil Made ', 2021, 'Horror', 'Michael Chaves', 'Paranormal investigators Ed and Lorraine Warren are called to help a man accused of murder, who claims he was possessed by a demon.', 112, 6.3, '68151c808c1b8.jpg'),
('The Dark Knight', 2008, 'Action', 'Christopher Nolan', 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.', 152, 9, '68151f628fd1f.jpg'),
('The Forever Purge', 2021, 'Horror', 'Everardo Gout', 'After the annual Purge is declared over, a group of lawless marauders refuses to stop their violent rampage, leading to chaos and bloodshed.', 103, 5.8, '68151d1d9334b.jpg'),
('The Irishman', 2019, 'Crime', 'Martin Scorsese', 'A mob hitman recalls his possible involvement with the slaying of Jimmy Hoffa as he reflects on his life\'s journey in the mob.', 209, 7.9, 'The Irishman.png'),
('The Martian', 2015, 'Adventure', 'Ridley Scott', 'An astronaut, mistakenly presumed dead, must find a way to survive on Mars while awaiting rescue.', 144, 8, '64b3e4330c4fd.jpeg'),
('The Notebook', 2004, 'Romance', 'Nick Cassavetes', 'A heartfelt love story about a young couple torn apart by social differences and reunited years later.', 123, 7.8, '64b3db94948f1.jpg'),
('The Power of the Dog', 2021, 'Drama', 'Jane Campion', 'A charismatic rancher, who is secretly tormented by deep-seated insecurities, takes a dislike to his new sister-in-law, leading to a complex and tense relationship.', 126, 7.3, '68151fca86f87.jpg'),
('The Shawshank Redemption', 1994, 'Drama', 'Frank Darabont', 'Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.', 142, 9.3, 'The Shawshank Redemption.png');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(4) NOT NULL,
  `amount` int(4) NOT NULL,
  `paymentDate` date NOT NULL,
  `customerName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `amount`, `paymentDate`, `customerName`) VALUES
(1, 299, '2023-04-03', 'Ayesha Ali'),
(2, 299, '2023-03-03', 'Areeb Hashmi'),
(3, 2999, '2022-02-17', 'Fawad Tariq'),
(4, 2999, '2022-10-04', 'Asfar Hussain'),
(5, 2999, '2022-05-09', 'Zain Masood'),
(6, 299, '2023-05-10', 'Maria Ashfaque'),
(7, 2999, '2022-04-10', 'Haroon Rasheed'),
(8, 299, '2023-01-18', 'Maryam Zain'),
(9, 299, '2023-03-20', 'Hafsa Ghouri'),
(10, 299, '2023-07-14', 'Zara Ashar'),
(11, 2999, '2023-07-14', 'Yousra Zamir'),
(12, 299, '2023-07-14', 'Rabia Aziz'),
(13, 299, '2023-07-15', 'Ali Hasan'),
(14, 2999, '2023-07-15', 'Kashaf Murtaza'),
(15, 2999, '2023-07-15', 'Zaroon Junaid'),
(16, 299, '2023-07-17', 'Aun Syed'),
(17, 299, '2023-07-17', 'Sana Aziz'),
(18, 299, '2023-07-17', 'Catherine Heathcliff'),
(19, 299, '2023-07-18', 'asma khan'),
(20, 2999, '2023-07-18', 'Mahnoor Aziz'),
(21, 299, '2024-03-29', 'roomie khan');

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `rentalID` int(4) NOT NULL,
  `planName` varchar(10) NOT NULL,
  `rentalDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `customerName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`rentalID`, `planName`, `rentalDate`, `returnDate`, `customerName`) VALUES
(1, 'Monthly', '2023-04-03', '2023-05-03', 'Ayesha Ali'),
(2, 'Monthly', '2023-03-03', '2023-04-03', 'Areeb Hashmi'),
(3, 'Yearly', '2022-02-17', '2023-02-17', 'Fawad Tariq'),
(4, 'Yearly', '2022-10-04', '2023-11-04', 'Asfar Hussain'),
(5, 'Yearly', '2022-05-09', '2023-05-09', 'Zain Masood'),
(6, 'Monthly', '2023-05-10', '2023-06-10', 'Maria Ashfaque'),
(7, 'Yearly', '2022-04-10', '2023-04-10', 'Haroon Rasheed'),
(8, 'Monthly', '2023-01-18', '2023-02-18', 'Maryam Zain'),
(9, 'Monthly', '2023-03-20', '2023-04-20', 'Hafsa Ghouri'),
(10, 'Monthly', '2023-07-14', '2023-08-14', 'Zara Ashar'),
(11, 'Yearly', '2023-07-14', '2024-07-14', 'Yousra Zamir'),
(12, 'Monthly', '2023-07-14', '2023-08-14', 'Rabia Aziz'),
(13, 'Monthly', '2023-07-15', '2023-08-15', 'Ali Hasan'),
(14, 'Yearly', '2023-07-15', '2024-07-15', 'Kashaf Murtaza'),
(15, 'Yearly', '2023-07-15', '2024-07-15', 'Zaroon Junaid'),
(16, 'Monthly', '2023-07-17', '2023-08-17', 'Aun Syed'),
(17, 'Monthly', '2023-07-17', '2023-08-17', 'Sana Aziz'),
(18, 'Monthly', '2023-07-17', '2023-08-17', 'Catherine Heathcliff'),
(19, 'Monthly', '2023-07-18', '2023-08-18', 'asma khan'),
(20, 'Yearly', '2023-07-18', '2024-07-18', 'Mahnoor Aziz'),
(21, 'Monthly', '2024-03-29', '2024-04-29', 'roomie khan');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionplan`
--

CREATE TABLE `subscriptionplan` (
  `planID` int(4) NOT NULL,
  `planName` varchar(30) NOT NULL,
  `price` int(4) NOT NULL,
  `duration` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptionplan`
--

INSERT INTO `subscriptionplan` (`planID`, `planName`, `price`, `duration`) VALUES
(1, 'Monthly', 299, 1),
(2, 'Yearly', 2999, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`firstName`, `lastName`, `email`, `password`) VALUES
('Afra', 'Rasheed', 'afra.rasheed@gmail.com', 'afraaa'),
('Ayesha', 'Ali', 'aliayesha@gmail.com', 'ayeshaali'),
('Ali', 'Hasan', 'alihasan@gmail.com', 'ali11'),
('Areeb', 'Hashmi', 'areebhashmi11@gmail.com', 'hashmi11'),
('Asfar', 'Hussain', 'asfar765@gmail.com', 'bayaan'),
('asma', 'khan', 'asma@gmail.com', '123'),
('Aun', 'Syed', 'aun25@gmail.com', 'syed'),
('Catherine', 'Heathcliff', 'catherine@gmail.com', 'heathcliff'),
('Fawad', 'Tariq', 'fawad.tariq12@gmail.com', 'fawadd'),
('Hafsa', 'Ghouri', 'hafsa135@gmail.com', 'haris'),
('Haroon', 'Rasheed', 'haroon78@gmail.com', 'rasheed'),
('Kashaf', 'Murtaza', 'kashaf@gmail.com', 'murtaza'),
('Muhammad Sarim', 'Hashmi', 'm.sarimhashmi11@gmail.com', 'hashmi'),
('Mahnoor', 'Aziz', 'mahnoor.aziz8847@hhs.edu.pk', 'post malone'),
('Maria', 'Ashfaq', 'maria.ashfaq@gmail.com', 'maria'),
('Maryam', 'Zain', 'maryamzain@gmail.com', 'maryamzain'),
('Rabia', 'Aziz', 'rabia123@gmail.com', 'elsa'),
('roomie', 'khan', 'roomiecat@gmail.com', 'roomiecat'),
('Sana', 'Aziz', 'sana.aziz900@hotmail.com', 'sanaaziz'),
('Sara', 'Aziz', 'saraaziz180903@gmail.com', 'sara'),
('Yousra', 'Zamir', 'yousrazamir@gmail.com', 'zamir23'),
('Zain ', 'Masood', 'zaincr7@gmail.com', 'zain'),
('Zara', 'Ashar', 'zara345@gmail.com', 'zara56'),
('Zaroon', 'Junaid', 'zaroon@gmail.com', 'junaid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`rentalID`);

--
-- Indexes for table `subscriptionplan`
--
ALTER TABLE `subscriptionplan`
  ADD PRIMARY KEY (`planID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `rentalID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
