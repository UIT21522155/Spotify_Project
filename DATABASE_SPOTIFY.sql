
-- http://www.phpmyadmin.net
--


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify-clone`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Album_1', 2, 4, '../item/images/album_img/90s Throwback.jpg'),
(2, 'Album_2', 5, 10, '../item/images/album_img/Chill Vibes.jpg'),
(3, 'Album_3', 3, 1, '../item/images/album_img/Country Roads.jpg'),
(4, 'Album_4', 2, 9, '../item/images/album_img/EDM Party.jpg'),
(5, 'Album_5', 1, 3, '../item/images/album_img/Indie Jams.jpg'),
(6, 'Album_6', 6, 6, '../item/images/album_img/Latin Fiesta.jpg'),
(7, 'Album_7', 7, 2, '../item/images/album_img/Pop Hits.jpg'),
(8, 'Album_8', 8, 5, '../item/images/album_img/R&B Grooves.jpg'),
(9, 'Album_9', 9, 2, '../item/images/album_img/Rock Classics.jpg'),
(10, 'Album_10', 10, 1, '../item/images/album_img/Truc Nhan.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Michael Learns To Rock'),
(2, 'Celine Dion'),
(3, 'Passenger'),
(4, 'Wiz Khalifa'),
(5, 'Adele'),
(6, 'Ed Sheeran'),
(7, 'Queen'),
(8, 'Ed Sheeran'),
(9, 'Luis Fonsi'),
(10, 'Whitney Houston'),
(11, 'Mark Ronson'),
(12, 'Tones and I'),
(13, 'Michael Jackson'),
(14, 'Miley Cyrus'),
(15, 'Camila Cabello'),
(16, 'Oasis'),
(17, 'John Legend'),
(18, 'Pharrell Williams'),
(19, 'OneRepublic'),
(20, 'Led Zeppelin'),
(21, 'Lady Gaga'),
(22, 'Adele'),
(23, 'Imagine Dragons'),
(24, 'Shakira'),
(25, 'The Beatles'),
(26, 'Sia'),
(27, 'Justin Bieber'),
(28, 'Lady Gaga'),
(29, 'Spice Girls'),
(30, 'Survivor'),
(31, 'Toto'),
(32, 'Coldplay'),
(33, 'Drake'),
(34, 'Maroon 5'),
(35, 'Katy Perry');
-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playlistssongs`
--

CREATE TABLE `playlistssongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table 
CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,

  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- --------------------------------------------------------


-- --------------------------------------------------------
INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path` ,`albumOrder`, `plays`) VALUES


(2, 'My Heart Will Go On', 2, 1, 4, '4:35', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FMy%20Heart%20Will%20Go%20On.mp3?alt=media&token=5de83d04-f796-44d6-b94f-23a5ed02121e', 1, 15),
(17, 'All of Me', 17, 1, 5, '4:29', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FAll%20of%20Me.mp3?alt=media&token=5de90c60-e555-4f8e-b55a-37b82c4ed12c', 2, 1),
(30, 'Eye of the Tiger',30,1,3, '04:02', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FEye%20of%20the%20Tiger.mp3?alt=media&token=8323851f-5e74-4a9d-9455-e6acb599173a', 3,20),

(5, 'Hello', 5, 2, 2, '4:56', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FHello.mp3?alt=media&token=801c7590-dfcb-451d-8869-b7361d84a098', 1, 1),
(10, 'I Will Always Love You', 10, 2, 5, '4:30', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FI%20Will%20Always%20Love%20You.mp3?alt=media&token=1e3b7909-15d4-4ce9-a64a-71532657b85d', 2, 12),
(18, 'Happy', 18, 2, 3, '4:00', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FHappy.mp3?alt=media&token=a91c4dce-74ec-4cb0-8508-f56bb493e7d8', 3, 25),





(3, 'Let Her Go', 3, 3, 1, '4:20', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FLet%20Her%20Go.mp3?alt=media&token=8e2fd4b9-1497-4071-9c8e-3ef76ec521d5', 1, 8),
(20, 'Tie me down', 20,3,5,'03:39', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FTie%20me%20down.mp3?alt=media&token=8022ec02-11a0-43a8-9141-9968b66adb72', 2,22),
(21, 'Shallow',21,3,4, '03:35', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FShallow.mp3?alt=media&token=7b6b0aca-9602-48ac-beae-e555c9f60df8', 3,16),


(9, 'Despacito', 9, 4, 2, '4:41', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FDespacito.mp3?alt=media&token=8703efdb-8cfd-4775-89da-a6a3849ae2ba', 1, 5), 
(19, 'Counting Stars', 19, 4, 2, '4:17', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FCounting%20Stars.mp3?alt=media&token=a6621cd0-3dc9-4b3c-9bfa-1f73aaf492d3', 2, 13),
(31, 'Africa',31,4,3, '04:54', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FAfrica.mp3?alt=media&token=5b2a3c9a-dfcf-4495-a371-09c260e2ec47', 4,20),


(1, 'Take Me to Your Heart', 1, 5, 3, '4:36', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FAfrica.mp3?alt=media&token=5b2a3c9a-dfcf-4495-a371-09c260e2ec47', 1, 5),
(16, 'Wonderwall', 16, 5, 2, '4:18', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FWonderwall.mp3?alt=media&token=91adb493-061a-4fc0-921b-26fd0c9d4356', 2, 7),
(28, 'Bad Romance',28,5,5,'04:52', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FBad%20Romance.mp3?alt=media&token=6329a942-36e5-4c3f-9188-b3bf70ff1a55', 3,10),
(29, 'Wannabe',29,5,3, '03:16', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FWannabe.mp3?alt=media&token=f9c9c438-7c73-40c1-80cc-8d63ae3ac4ed', 4,15),


(6, 'Someone Like You', 6, 6, 5, '4:49', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FSomeone%20Like%20You.mp3?alt=media&token=4ef63011-7dec-4e4d-b9c1-caaf8b06a03c', 1, 2),
(15, 'Havana', 15, 6, 6, '3:32', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FHavana.mp3?alt=media&token=beeb7329-7598-459a-b7c6-eb30b2195e48', 2, 2),
(34, 'Sugar',34,6,3, '04:24', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FSugar.mp3?alt=media&token=98cd15e2-a479-434c-a449-1c24d5f8f381', 3,20),
(35, 'Firework',35,6,4, '03:53', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FFirework.mp3?alt=media&token=f7ab0682-aa1c-41b9-9c47-3d1b948d683e', 4,15),



(7, 'Bohemian Rhapsody', 7, 7, 1, '6:41', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FBohemian%20Rhapsody.mp3?alt=media&token=d4537620-5531-4945-a982-659aa1ecf190', 1, 3),
(14, 'Wrecking Ball', 14, 7, 5, '3:41', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FWrecking%20Ball.mp3?alt=media&token=b0e6a1ab-cdad-4fb7-bb4c-707e97c988e6', 2, 3),
(32, 'Viva la Vida',32,7,7, '04:02', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FViva%20la%20Vida.mp3?alt=media&token=86e48b64-d041-4f00-8f41-d272bb8343f8',3,20 ),
(33, 'Hotline Bling',33,7,2, '04:55', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FHotline%20Bling.mp3?alt=media&token=cbc46021-2a3f-41f4-a63c-87acd40482c8', 4,20),


(8, 'Shape of You', 8, 8, 2, '4:23', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FShape%20of%20You.mp3?alt=media&token=1f97b8c8-0bbf-4f26-8acc-207702d4937f', 1, 7),
(13, 'Billie Jean', 13, 8, 1, '4:52', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FBillie%20Jean.mp3?alt=media&token=a292aac5-192f-4b22-9032-ee694c738af0', 2, 20),
(24, 'Waka Waka (This Time for Africa)',24,8,3, '03:21', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FWaka%20Waka%20(This%20Time%20for%20Africa).mp3?alt=media&token=91566edf-46a9-45a4-a383-12015b54e9c8', 3,25),
(25, 'Eleanor Rigby',25,8,5 ,'05:23', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FEleanor%20Rigby.mp3?alt=media&token=33241c40-ff18-417b-b0af-9dc745ca1815', 4,40),


(4, 'See You Again', 4, 9, 2, '3:49', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FSee%20You%20Again.mp3?alt=media&token=0b65ce95-f507-4275-a3c7-8a5ca2da0fcf', 1, 9),
(12, 'Dance Monkey', 12, 9, 9, '3:56', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FDance%20Monkey.mp3?alt=media&token=2e60deda-119c-4f3d-8591-7eb93ddbe28a', 2, 25),
(26, 'Chandelier',26,9,8, '03:36', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FChandelier.mp3?alt=media&token=e3b7c466-3bfe-499f-bfc8-9ca10305a240',3 ,20),
(27, 'Sorry', 27,9,3,'03:19', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FSorry.mp3?alt=media&token=e0479c9c-4d9d-4dc4-a89b-1077b919609a', 4,15),

(11, 'Uptown Funk', 11, 10, 3, '4:30', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FUptown%20Funk.mp3?alt=media&token=ee12f6d8-2511-4293-acda-dd1ed0cedb14', 1, 1),
(22, 'Rolling in the Deep',22,10,2 ,'03:53', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FRolling%20in%20the%20Deep.mp3?alt=media&token=d2bc04bc-d590-486b-87d7-6b15f3754ed5', 2, 10),
(23, 'Radioactive',23,10,4, '03:05', 'https://firebasestorage.googleapis.com/v0/b/project-1d15c.appspot.com/o/Audio%2FRadioactive.mp3?alt=media&token=247a5472-20ca-47b6-8097-03f8c182cf3e', 3,11);














--
-- Table structure for table `users` (SIGNUP) 
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `profilePic`) VALUES
(1, 'MinhChau25', 'Chau', 'MinhChau@gmail.com', '123456789',  '../item/images/profile_img/user.jpg'),
(2, 'ThuyHang12', 'Hang', 'ThuyHang@gmail.com', '123456789', '../item/images/profile_img/user.jpg'),
(3, 'LuongHuy25', 'Huy', 'LuongHuy@gmail.com', '123456789',  '../item/images/profile_img/user.jpg'),
(4, 'TrungHieu25', 'Hieu', 'TrungHieu@gmail.com', '123456789',  '../item/images/profile_img/user.jpg'),
(5,'Default','Guest','user@gmail.com','123456789','../item/images/profile_img/user.jpg');

--

--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistssongs`
--
ALTER TABLE `playlistssongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `playlistssongs`
--
ALTER TABLE `playlistssongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



