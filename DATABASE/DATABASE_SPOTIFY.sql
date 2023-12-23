
-- http://www.phpmyadmin.net
--


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



--
-- Database: `spotify`
--

-- --------------------------------------------------------


--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Bacon and Eggs', 2, 4, 'assets/images/artwork/clearday.jpg'),
(2, 'Pizza head', 5, 10, 'assets/images/artwork/energy.jpg'),
(3, 'Summer Hits', 3, 1, 'assets/images/artwork/goinghigher.jpg'),
(4, 'The movie soundtrack', 2, 9, 'assets/images/artwork/funkyelement.jpg'),
(5, 'Best of the Worst', 1, 3, 'assets/images/artwork/popdance.jpg'),
(6, 'Hello World', 3, 6, 'assets/images/artwork/ukulele.jpg'),
(7, 'Best beats', 4, 7, 'assets/images/artwork/sweet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

--
-- Dumping data for table `artists`
--

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

CREATE TABLE IF NOT EXISTS `genres` (
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
(5, 'Radio'),
(6, 'Classical'),
(7, 'Podcasts'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE IF NOT EXISTS `playlists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `imgPath` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci; ;

INSERT INTO `playlists` (`id`, `name`, `Description`, `imgPath`) VALUES
(1, 'Truc Nhan', 'This is Truc Nhan. The essential tracks, all in one playlist', 'assets/images/playlists/clearday.jpg'),
(2, 'Pop Hits', 'The latest and greatest pop hits for your enjoyment', 'assets/images/playlists/pop_hits.jpg'),
(3, 'Rock Classics', 'Timeless rock classics that never get old', 'assets/images/playlists/rock_classics.jpg'),
(4, 'Chill Vibes', 'Relaxing tunes to create a perfect chill atmosphere', 'assets/images/playlists/chill_vibes.jpg'),
(5, 'R&B Grooves', 'Smooth R&B grooves to set the mood', 'assets/images/playlists/rnb_grooves.jpg'),
(6, 'Indie Jams', 'Discover the best indie jams from around the world', 'assets/images/playlists/indie_jams.jpg'),
(7, 'Country Roads', 'Take a journey down the country roads with these hits', 'assets/images/playlists/country_roads.jpg'),
(8, 'EDM Party', 'Get ready to dance with the hottest EDM tracks', 'assets/images/playlists/edm_party.jpg'),
(9, '90s Throwback', 'Throw it back to the iconic hits of the 90s', 'assets/images/playlists/90s_throwback.jpg'),
(10, 'Latin Fiesta', 'Feel the rhythm with this Latin music fiesta', 'assets/images/playlists/latin_fiesta.jpg');



-- --------------------------------------------------------

--
-- Table structure for table `playlistSongs`
--

CREATE TABLE IF NOT EXISTS `playlistSongs` (
-- `id` int(11) NOT NULL, bỏ khóa table này 
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- Inserting a song into a playlist with order
INSERT INTO `playlistSongs` (`songId`, `playlistId`, `playlistOrder`) VALUES
(1, 1, 1),  -- Song with ID 1 in Playlist with ID 1, order 1
(4, 1, 1),
(5, 1, 1),
(2, 2, 2),  -- Song with ID 2 in Playlist with ID 1, order 2
(3, 2, 1);  -- Song with ID 3 in Playlist with ID 2, order 1


;  -- Song with ID 3 in Playlist with ID 2, order 1
-- Add more rows as needed

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE `songs` (
  `id` int(50) NOT NULL ,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(8) COLLATE utf8_vietnamese_ci NOT NULL,
  `filePath` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL, 
  `imgPath` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,  
  `dateAdded` timestamp COLLATE utf8_vietnamese_ci NOT NULL DEFAULT current_timestamp(), 
  `singerID` int(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `duration`, `filePath`, `imgPath`, `dateAdded`, `singerID`) VALUES
(1, 'Take Me to Your Heart', '04:36', 'ITEMS/LIST_SONG/Take Me to Your Heart.mp3', 'ITEMS/images/Take Me to Your Heart.jpg', '2023-12-09 12:00:00', 1),
(2, 'My Heart Will Go On', '04:35', 'ITEMS/LIST_SONG/My Heart Will Go On.mp3', 'ITEMS/images/My Heart Will Go On.jpg', '2023-12-09 12:05:00', 2),
(3, 'Let Her Go', '04:20', 'ITEMS/LIST_SONG/Let Her Go.mp3', 'ITEMS/images/Let Her Go.jpg', '2023-12-09 12:10:00', 3),
(4, 'See You Again', '03:49', 'ITEMS/LIST_SONG/See You Again.mp3', 'ITEMS/images/See You Again.jpg', '2023-12-09 12:15:00', 4),
(5, 'Hello', '04:56', 'ITEMS/LIST_SONG/Hello.mp3', 'ITEMS/images/Hello.jpg', '2023-12-09 12:20:00', 5),
(6, 'Someone Like You', '04:49', 'ITEMS/LIST_SONG/Someone Like You.mp3', 'ITEMS/images/someone_like_you.jpg', '2023-12-09 12:25:00', 6),
(7, 'Bohemian Rhapsody', '06:41', 'ITEMS/LIST_SONG/Bohemian Rhapsody.mp3', 'ITEMS/images/bohemian_rhapsody.jpg', '2023-12-09 12:30:00', 7),
(8, 'Shape of You', '04:23', 'ITEMS/LIST_SONG/Shape of You.mp3', 'ITEMS/images/shape_of_you.jpg', '2023-12-09 12:35:00', 8),
(9, 'Despacito', '04:41', 'ITEMS/LIST_SONG/Despacito.mp3', 'ITEMS/images/Despacito.jpg', '2023-12-09 12:40:00', 9),
(10, 'I Will Always Love You', '04:30', 'ITEMS/LIST_SONG/I Will Always Love You.mp3', 'ITEMS/images/i_will_always_love_you.jpg', '2023-12-09 12:45:00', 10),
(11, 'Uptown Funk', '04:30', 'ITEMS/LIST_SONG/Uptown Funk.mp3', 'ITEMS/images/Uptown Funk.jpg', '2023-12-09 12:50:00', 11),
(12, 'Dance Monkey', '03:56', 'ITEMS/LIST_SONG/Dance Monkey.mp3', 'ITEMS/images/Dance Monkey.jpg', '2023-12-09 12:55:00', 12),
(13, 'Billie Jean', '04:52', 'ITEMS/LIST_SONG/Billie Jean.mp3', 'ITEMS/images/Billie Jean.jpg', '2023-12-09 13:00:00', 13),
(14, 'Wrecking Ball', '03:41', 'ITEMS/LIST_SONG/Wrecking Ball.mp3', 'ITEMS/images/Wrecking Ball.jpg', '2023-12-09 13:05:00', 14),
(15, 'Havana', '03:32', 'ITEMS/LIST_SONG/Havana.mp3', 'ITEMS/images/Havana.jpg', '2023-12-09 13:10:00', 15),
(16, 'Wonderwall', '04:18', 'ITEMS/LIST_SONG/Wonderwall.mp3', 'ITEMS/images/Wonderwall.jpg', '2023-12-09 13:15:00', 16),
(17, 'All of Me', '04:29', 'ITEMS/LIST_SONG/All of Me.mp3', 'ITEMS/images/All of Me.jpg', '2023-12-09 13:20:00', 17),
(18, 'Happy', '04:00', 'ITEMS/LIST_SONG/Happy.mp3', 'ITEMS/images/Happy.jpg', '2023-12-09 13:25:00', 18),
(19, 'Counting Stars', '04:17', 'ITEMS/LIST_SONG/Counting Stars.mp3', 'ITEMS/images/Counting Stars.jpg', '2023-12-09 13:30:00', 19),
(20, 'Tie me down', '03:39', 'ITEMS/LIST_SONG/Tie me down.mp3', 'ITEMS/images/Tie me down.jpg', '2023-12-09 13:35:00', 20),
(21, 'Shallow', '03:35', 'ITEMS/LIST_SONG/Shallow.mp3', 'ITEMS/images/Shallow.jpg', '2023-12-09 13:40:00', 21),
(22, 'Rolling in the Deep', '03:53', 'ITEMS/LIST_SONG/Rolling in the Deep.mp3', 'ITEMS/images/Rolling in the Deep.jpg', '2023-12-09 13:45:00', 22),
(23, 'Radioactive', '03:05', 'ITEMS/LIST_SONG/Radioactive.mp3', 'ITEMS/images/Radioactive.jpg', '2023-12-09 13:50:00', 23),
(24, 'Waka Waka (This Time for Africa)', '03:21', 'ITEMS/LIST_SONG/Waka Waka (This Time for Africa).mp3', 'ITEMS/images/Waka Waka (This Time for Africa).jpg', '2023-12-09 13:55:00', 24),
(25, 'Eleanor Rigby', '05:23', 'ITEMS/LIST_SONG/Eleanor Rigby.mp3', 'ITEMS/images/Eleanor Rigby.jpg', '2023-12-09 14:00:00', 25),
(26, 'Chandelier', '03:36', 'ITEMS/LIST_SONG/Chandelier.mp3', 'ITEMS/images/Chandelier.jpg', '2023-12-09 14:05:00', 26),
(27, 'Sorry', '03:19', 'ITEMS/LIST_SONG/Sorry.mp3', 'ITEMS/images/Sorry.jpg', '2023-12-09 14:10:00', 27),
(28, 'Bad Romance', '04:52', 'ITEMS/LIST_SONG/Bad Romance.mp3', 'ITEMS/images/Bad Romance.jpg', '2023-12-09 14:15:00', 28),
(29, 'Wannabe', '03:16', 'ITEMS/LIST_SONG/Wannabe.mp3', 'ITEMS/images/Wannabe.jpg', '2023-12-09 14:20:00', 29),
(30, 'Eye of the Tiger', '04:02', 'ITEMS/LIST_SONG/Eye of the Tiger.mp3', 'ITEMS/images/Eye of the Tiger.jpg', '2023-12-09 14:25:00', 30),
(31, 'Africa', '04:54', 'ITEMS/LIST_SONG/Africa.mp3', 'ITEMS/images/Africa.jpg', '2023-12-09 14:30:00', 31),
(32, 'Viva la Vida', '04:02', 'ITEMS/LIST_SONG/Viva la Vida.mp3', 'ITEMS/images/Viva la Vida.jpg', '2023-12-09 14:35:00', 32),
(33, 'Hotline Bling', '04:55', 'ITEMS/LIST_SONG/Hotline Bling.mp3', 'ITEMS/images/Hotline Bling.jpg', '2023-12-09 14:40:00', 33),
(34, 'Sugar', '04:24', 'ITEMS/LIST_SONG/Sugar.mp3', 'ITEMS/images/Sugar.jpg', '2023-12-09 14:45:00', 34),
(35, 'Firework', '03:53', 'ITEMS/LIST_SONG/Firework.mp3', 'ITEMS/images/Firework.jpg', '2023-12-09 14:50:00', 35);

-- --------------------------------------------------------

--
-- Table structure for table `users` (SIGNUP) 
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `profilePic`) VALUES
(1, 'MinhChau25', 'Chau', 'Tran', 'MinhChau@gmail.com', '123456789',  'assets/images/profile-pics/head_emerald.png'),
(2, 'ThuyHang12', 'Hang', 'Nguyen', 'ThuyHang@gmail.com', '123456789', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
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
-- Indexes for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `playlistSongs`
--
--ALTER TABLE `playlistSongs`
--MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Songs`
--
ALTER TABLE `Songs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



