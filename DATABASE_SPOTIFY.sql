
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

--
-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Dumping data for table `songs`
--

-- INSERT INTO `songs` (`id`, `title`, `duration`, `filePath`, `imgPath`, `dateAdded`, `singerID`) VALUES
-- (1, 'Take Me to Your Heart', '04:36', 'ITEMS/LIST_SONG/Take Me to Your Heart.mp3', 'ITEMS/images/Take Me to Your Heart.jpg', '2023-12-09 12:00:00', 1),
-- (2, 'My Heart Will Go On', '04:35', 'ITEMS/LIST_SONG/My Heart Will Go On.mp3', 'ITEMS/images/My Heart Will Go On.jpg', '2023-12-09 12:05:00', 2),
-- (3, 'Let Her Go', '04:20', 'ITEMS/LIST_SONG/Let Her Go.mp3', 'ITEMS/images/Let Her Go.jpg', '2023-12-09 12:10:00', 3),
-- (4, 'See You Again', '03:49', 'ITEMS/LIST_SONG/See You Again.mp3', 'ITEMS/images/See You Again.jpg', '2023-12-09 12:15:00', 4),
-- (5, 'Hello', '04:56', 'ITEMS/LIST_SONG/Hello.mp3', 'ITEMS/images/Hello.jpg', '2023-12-09 12:20:00', 5),
-- (6, 'Someone Like You', '04:49', 'ITEMS/LIST_SONG/Someone Like You.mp3', 'ITEMS/images/someone_like_you.jpg', '2023-12-09 12:25:00', 6),
-- (7, 'Bohemian Rhapsody', '06:41', 'ITEMS/LIST_SONG/Bohemian Rhapsody.mp3', 'ITEMS/images/bohemian_rhapsody.jpg', '2023-12-09 12:30:00', 7),
-- (8, 'Shape of You', '04:23', 'ITEMS/LIST_SONG/Shape of You.mp3', 'ITEMS/images/shape_of_you.jpg', '2023-12-09 12:35:00', 8),
-- (9, 'Despacito', '04:41', 'ITEMS/LIST_SONG/Despacito.mp3', 'ITEMS/images/Despacito.jpg', '2023-12-09 12:40:00', 9),
-- (10, 'I Will Always Love You', '04:30', 'ITEMS/LIST_SONG/I Will Always Love You.mp3', 'ITEMS/images/i_will_always_love_you.jpg', '2023-12-09 12:45:00', 10),
-- (11, 'Uptown Funk', '04:30', 'ITEMS/LIST_SONG/Uptown Funk.mp3', 'ITEMS/images/Uptown Funk.jpg', '2023-12-09 12:50:00', 11),
-- (12, 'Dance Monkey', '03:56', 'ITEMS/LIST_SONG/Dance Monkey.mp3', 'ITEMS/images/Dance Monkey.jpg', '2023-12-09 12:55:00', 12),
-- (13, 'Billie Jean', '04:52', 'ITEMS/LIST_SONG/Billie Jean.mp3', 'ITEMS/images/Billie Jean.jpg', '2023-12-09 13:00:00', 13),
-- (14, 'Wrecking Ball', '03:41', 'ITEMS/LIST_SONG/Wrecking Ball.mp3', 'ITEMS/images/Wrecking Ball.jpg', '2023-12-09 13:05:00', 14),
-- (15, 'Havana', '03:32', 'ITEMS/LIST_SONG/Havana.mp3', 'ITEMS/images/Havana.jpg', '2023-12-09 13:10:00', 15),
-- (16, 'Wonderwall', '04:18', 'ITEMS/LIST_SONG/Wonderwall.mp3', 'ITEMS/images/Wonderwall.jpg', '2023-12-09 13:15:00', 16),
-- (17, 'All of Me', '04:29', 'ITEMS/LIST_SONG/All of Me.mp3', 'ITEMS/images/All of Me.jpg', '2023-12-09 13:20:00', 17),
-- (18, 'Happy', '04:00', 'ITEMS/LIST_SONG/Happy.mp3', 'ITEMS/images/Happy.jpg', '2023-12-09 13:25:00', 18),
-- (19, 'Counting Stars', '04:17', 'ITEMS/LIST_SONG/Counting Stars.mp3', 'ITEMS/images/Counting Stars.jpg', '2023-12-09 13:30:00', 19),
-- (20, 'Tie me down', '03:39', 'ITEMS/LIST_SONG/Tie me down.mp3', 'ITEMS/images/Tie me down.jpg', '2023-12-09 13:35:00', 20),
-- (21, 'Shallow', '03:35', 'ITEMS/LIST_SONG/Shallow.mp3', 'ITEMS/images/Shallow.jpg', '2023-12-09 13:40:00', 21),
-- (22, 'Rolling in the Deep', '03:53', 'ITEMS/LIST_SONG/Rolling in the Deep.mp3', 'ITEMS/images/Rolling in the Deep.jpg', '2023-12-09 13:45:00', 22),
-- (23, 'Radioactive', '03:05', 'ITEMS/LIST_SONG/Radioactive.mp3', 'ITEMS/images/Radioactive.jpg', '2023-12-09 13:50:00', 23),
-- (24, 'Waka Waka (This Time for Africa)', '03:21', 'ITEMS/LIST_SONG/Waka Waka (This Time for Africa).mp3', 'ITEMS/images/Waka Waka (This Time for Africa).jpg', '2023-12-09 13:55:00', 24),
-- (25, 'Eleanor Rigby', '05:23', 'ITEMS/LIST_SONG/Eleanor Rigby.mp3', 'ITEMS/images/Eleanor Rigby.jpg', '2023-12-09 14:00:00', 25),
-- (26, 'Chandelier', '03:36', 'ITEMS/LIST_SONG/Chandelier.mp3', 'ITEMS/images/Chandelier.jpg', '2023-12-09 14:05:00', 26),
-- (27, 'Sorry', '03:19', 'ITEMS/LIST_SONG/Sorry.mp3', 'ITEMS/images/Sorry.jpg', '2023-12-09 14:10:00', 27),
-- (28, 'Bad Romance', '04:52', 'ITEMS/LIST_SONG/Bad Romance.mp3', 'ITEMS/images/Bad Romance.jpg', '2023-12-09 14:15:00', 28),
-- (29, 'Wannabe', '03:16', 'ITEMS/LIST_SONG/Wannabe.mp3', 'ITEMS/images/Wannabe.jpg', '2023-12-09 14:20:00', 29),
-- (30, 'Eye of the Tiger', '04:02', 'ITEMS/LIST_SONG/Eye of the Tiger.mp3', 'ITEMS/images/Eye of the Tiger.jpg', '2023-12-09 14:25:00', 30),
-- (31, 'Africa', '04:54', 'ITEMS/LIST_SONG/Africa.mp3', 'ITEMS/images/Africa.jpg', '2023-12-09 14:30:00', 31),
-- (32, 'Viva la Vida', '04:02', 'ITEMS/LIST_SONG/Viva la Vida.mp3', 'ITEMS/images/Viva la Vida.jpg', '2023-12-09 14:35:00', 32),
-- (33, 'Hotline Bling', '04:55', 'ITEMS/LIST_SONG/Hotline Bling.mp3', 'ITEMS/images/Hotline Bling.jpg', '2023-12-09 14:40:00', 33),
-- (34, 'Sugar', '04:24', 'ITEMS/LIST_SONG/Sugar.mp3', 'ITEMS/images/Sugar.jpg', '2023-12-09 14:45:00', 34),
-- (35, 'Firework', '03:53', 'ITEMS/LIST_SONG/Firework.mp3', 'ITEMS/images/Firework.jpg', '2023-12-09 14:50:00', 35);

-- --------------------------------------------------------
INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path` ,`albumOrder`, `plays`) VALUES


(2, 'My Heart Will Go On', 2, 1, 4, '4:35', '../item/music/My Heart Will Go On.mp3', 1, 15),
(17, 'All of Me', 17, 1, 5, '4:29', '../item/music/All of Me.mp3', 2, 1),
(30, 'Eye of the Tiger',30,1,3, '04:02', '../item/music/Eye of the Tiger.mp3', 3,20),

(5, 'Hello', 5, 2, 2, '4:56', '../item/music/Hello.mp3', 1, 1),
(10, 'I Will Always Love You', 10, 2, 5, '4:30', '../item/music/I Will Always Love You.mp3', 2, 12),
(18, 'Happy', 18, 2, 3, '4:00', '../item/music/Happy.mp3', 3, 25),





(3, 'Let Her Go', 3, 3, 1, '4:20', '../item/music/Let Her Go.mp3', 1, 8),
(20, 'Tie me down', 20,3,5,'03:39', '../item/music/Tie me down.mp3', 2,22),
(21, 'Shallow',21,3,4, '03:35', '../item/music/Shallow.mp3', 3,16),


(9, 'Despacito', 9, 4, 2, '4:41', '../item/music/Despacito.mp3', 1, 5), 
(19, 'Counting Stars', 19, 4, 2, '4:17', '../item/music/Counting Stars.mp3', 2, 13),
(31, 'Africa',31,4,3, '04:54', '../item/music/Africa.mp3', 4,20),


(1, 'Take Me to Your Heart', 1, 5, 3, '4:36', '../item/music/Take Me to Your Heart.mp3', 1, 5),
(16, 'Wonderwall', 16, 5, 2, '4:18', '../item/music/Wonderwall.mp3', 2, 7),
(28, 'Bad Romance',28,5,5,'04:52', '../item/music/Bad Romance.mp3', 3,10),
(29, 'Wannabe',29,5,3, '03:16', '../item/music/Wannabe.mp3', 4,15),


(6, 'Someone Like You', 6, 6, 5, '4:49', '../item/music/Someone Like You.mp3', 1, 2),
(15, 'Havana', 15, 6, 6, '3:32', '../item/music/Havana.mp3', 2, 2),
(34, 'Sugar',34,6,3, '04:24', '../item/music/Sugar.mp3', 3,20),
(35, 'Firework',35,6,4, '03:53', '../item/music/Firwork.mp3', 4,15),



(7, 'Bohemian Rhapsody', 7, 7, 1, '6:41', '../item/music/Bohemian Rhapsody.mp3', 1, 3),
(14, 'Wrecking Ball', 14, 7, 5, '3:41', '../item/music/Wrecking Ball.mp3', 2, 3),
(32, 'Viva la Vida',32,7,7, '04:02', '../item/music/Viva la Vida.mp3',3,20 ),
(33, 'Hotline Bling',33,7,2, '04:55', '../item/music/Hotline Bling.mp3', 4,20),


(8, 'Shape of You', 8, 8, 2, '4:23', '../item/music/Shape of You.mp3', 1, 7),
(13, 'Billie Jean', 13, 8, 1, '4:52', '../item/music/Billie Jean.mp3', 2, 20),
(24, 'Waka Waka (This Time for Africa)',24,8,3, '03:21', '../item/music/Waka Waka (This Time for Africa).mp3', 3,25),
(25, 'Eleanor Rigby',25,8,5 ,'05:23', '../item/music/Eleanor Rigby.mp3', 4,40),


(4, 'See You Again', 4, 9, 2, '3:49', '../item/music/See You Again.mp3', 1, 9),
(12, 'Dance Monkey', 12, 9, 9, '3:56', '../item/music/Dance Monkey.mp3', 2, 25),
(26, 'Chandelier',26,9,8, '03:36', '../item/music/Chandelier.mp3',3 ,20),
(27, 'Sorry', 27,9,3,'03:19', '../item/music/Sorry.mp3', 4,15),

(11, 'Uptown Funk', 11, 10, 3, '4:30', '../item/music/Uptown Funk.mp3', 1, 1),
(22, 'Rolling in the Deep',22,10,2 ,'03:53', '../item/music/Rolling in the Deep.mp3', 2, 10),
(23, 'Radioactive',23,10,4, '03:05', '../item/music/Radioactive.mp3', 3,11);














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



