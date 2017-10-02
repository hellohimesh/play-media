-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2016 at 07:48 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `artist` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `artist`) VALUES
(1, 'akon', 'akon'),
(2, 'Mohenjo Daro', 'A.R.Rehman'),
(3, 'Garba', 'Tirthraj'),
(4, 'garba', 'krunal'),
(5, 'test', 'test'),
(6, 'hello', 'hello'),
(7, 'test', 'test'),
(8, 'myfavourite', 'himesh'),
(9, 'vidyavox', 'vidya iyer');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_songs`
--

CREATE TABLE `playlist_songs` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist_songs`
--

INSERT INTO `playlist_songs` (`id`, `playlist_id`, `path`) VALUES
(1, 1, 'playlist/1/Akon_Be_With_You_Remix.mp3'),
(2, 1, 'playlist/1/newjams_net.mp3'),
(3, 1, 'playlist/1/5ive_Its_The_Things_You_Do.mp3'),
(4, 1, 'playlist/1/Akon_In_the_night.MP3'),
(5, 1, 'playlist/1/Akon.MP3'),
(6, 1, 'playlist/1/I_Promise.MP3'),
(7, 1, 'playlist/1/Kalifornia_feat_Yukmouth_Mostah_Ganja.MP3'),
(8, 1, 'playlist/1/i_wanna_love_you.mp3'),
(9, 1, 'playlist/1/i_wanna_fuck_you.mp3'),
(10, 1, 'playlist/1/Hustler_feat_Smitty.MP3'),
(11, 1, 'playlist/1/17_akon_ghetto.mp3'),
(12, 1, 'playlist/1/Akon_Right_Now_Remix.mp3'),
(13, 1, 'playlist/1/1.mp3'),
(14, 1, 'playlist/1/Akon_Beautiful_feat_Kardinal_Offishal_And_Colby_Odonis_FREEDOM.mp3'),
(15, 1, 'playlist/1/A_K_O_N_F_T_S_E_A.mp3'),
(16, 1, 'playlist/1/1_akon_shake_down.mp3'),
(17, 1, 'playlist/1/047_A_K_O_N_DJ_K_A_R_A_N.mp3'),
(18, 1, 'playlist/1/034_A_K_O_N_F_T_A.mp3'),
(19, 1, 'playlist/1/Smack_That.MP3'),
(20, 2, 'playlist/2/Top_Bollywood_Songs_2015_January_2015_Jukebox_Latest_Hits_Full_Songs_360p.mp3'),
(21, 8, 'playlist/8/Blue_01_All_Rise.mp3'),
(22, 8, 'playlist/8/the_fear_duke_dumont_remix.mp3'),
(23, 8, 'playlist/8/Sean_Paul_She_MP3JUICES_COM.mp3'),
(24, 8, 'playlist/8/Leggo_Finalzz.mp3'),
(25, 9, 'playlist/9/Tum_Hi_Ho_VidyaVox_Mashup_Cover.mp3'),
(26, 9, 'playlist/9/Tum_Hi_Ho_VidyaVox_Mashup_Cover.mp3'),
(27, 9, 'playlist/9/The_Chainsmokers_Closer_Kabira_28ft_Casey_Breves_29_28Vidya_Vox_Mashup_Cover_29.mp3'),
(28, 9, 'playlist/9/_Laadki_Sachin_Jigar_Taniskha_S_Kirtidan_G_Rekha_B_Coke_Studio_MTV_Seaso.mp3'),
(29, 9, 'playlist/9/Arijit_Singh_MTV_Unplugged_Full_Video_All_Songs_Most_Romantic_Trcaks.mp3'),
(30, 9, 'playlist/9/DJ_Snake_ft_Justin_Bieber_Let_Me_Love_You_Tum_Hi_Ho_Vidya_Vox_Mashup_Cov.mp3'),
(31, 9, 'playlist/9/John_Legend_All_Of_Me_Main_Hoon_Hero_Tera_Vidya_Vox_Mashup_Cover.mp3'),
(32, 9, 'playlist/9/Madari_CokeStudio_Vishal_Dadlani_and_Sonu_Kakkar.mp3'),
(33, 9, 'playlist/9/Nico_Vinz_Am_I_Wrong_Yeh_Duriya_Vidya_Vox_Mashup_Cover_ft_Rohan_Kymal.mp3'),
(34, 9, 'playlist/9/Selena_Gomez_Same_Old_Love_Mere_Sapno_Ki_Rani_Remix_Vidya_Vox_Mashup_Cover.mp3'),
(35, 9, 'playlist/9/Om_Namah_Shivaya_Krishna_Das_Lyrics.mp3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
