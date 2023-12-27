-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 04:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test16oct2023_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(30) NOT NULL,
  `lat` decimal(10,0) NOT NULL,
  `lng` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `lat`, `lng`) VALUES
(1, 'Abbottabad', '34', '73'),
(2, 'Adilpur', '28', '69'),
(3, 'Ahmadpur East', '29', '71'),
(4, 'Ahmadpur Sial', '31', '72'),
(5, 'Akora', '34', '72'),
(6, 'Aliabad', '36', '75'),
(7, 'Alik Ghund', '30', '68'),
(8, 'Alipur', '29', '71'),
(9, 'Alizai', '34', '70'),
(10, 'Alpurai', '35', '73'),
(11, 'Aman Garh', '34', '72'),
(12, 'Amirabad', '34', '73'),
(13, 'Arifwala', '30', '73'),
(14, 'Ashanagro Koto', '34', '72'),
(15, 'Athmuqam', '35', '74'),
(16, 'Attock City', '34', '72'),
(17, 'Awaran', '26', '65'),
(18, 'Baddomalhi', '32', '75'),
(19, 'Badin', '25', '69'),
(20, 'Baffa', '34', '73'),
(21, 'Bagarji', '28', '69'),
(22, 'Bagh', '34', '74'),
(23, 'Bahawalnagar', '30', '73'),
(24, 'Bahawalnagar', '31', '73'),
(25, 'Bahawalpur', '29', '72'),
(26, 'Bakhri Ahmad Khan', '31', '71'),
(27, 'Bandhi', '27', '68'),
(28, 'Bannu', '33', '71'),
(29, 'Barishal', '36', '75'),
(30, 'Barkhan', '30', '70'),
(31, 'Basirpur', '31', '74'),
(32, 'Basti Dosa', '31', '71'),
(33, 'Bat Khela', '35', '72'),
(34, 'Battagram', '35', '73'),
(35, 'Begowala', '32', '74'),
(36, 'Bela', '26', '66'),
(37, 'Berani', '26', '69'),
(38, 'Bhag', '29', '68'),
(39, 'Bhakkar', '32', '71'),
(40, 'Bhalwal', '32', '73'),
(41, 'Bhan', '27', '68'),
(42, 'Bhawana', '32', '73'),
(43, 'Bhera', '32', '73'),
(44, 'Bhimbar', '33', '74'),
(45, 'Bhiria', '27', '68'),
(46, 'Bhit Shah', '26', '68'),
(47, 'Bhopalwala', '32', '74'),
(48, 'Bozdar Wada', '27', '69'),
(49, 'Bulri', '25', '68'),
(50, 'Būrewāla', '30', '73'),
(51, 'Chak', '28', '69'),
(52, 'Chak Azam Sahu', '31', '73'),
(53, 'Chak Five Hundred Seventy-five', '32', '74'),
(54, 'Chak Jhumra', '32', '73'),
(55, 'Chak One Hundred Twenty Nine L', '30', '73'),
(56, 'Chak Thirty-one -Eleven Left', '30', '73'),
(57, 'Chak Two Hundred Forty-nine Th', '31', '71'),
(58, 'Chakwal', '33', '73'),
(59, 'Chaman', '31', '66'),
(60, 'Chamber', '25', '69'),
(61, 'Charsadda', '34', '72'),
(62, 'Chawinda', '32', '75'),
(63, 'Chenab Nagar', '32', '73'),
(64, 'Cherat Cantonement', '34', '72'),
(65, 'Chhor', '26', '70'),
(66, 'Chichawatni', '31', '73'),
(67, 'Chilas', '35', '74'),
(68, 'Chiniot', '32', '73'),
(69, 'Chishtian', '30', '73'),
(70, 'Chitral', '36', '72'),
(71, 'Choa Saidan Shah', '33', '73'),
(72, 'Chowki Jamali', '28', '68'),
(73, 'Chuchar-kana Mandi', '32', '74'),
(74, 'Chuhar Jamali', '24', '68'),
(75, 'Chunian', '31', '74'),
(76, 'Dadhar', '29', '68'),
(77, 'Dadu', '27', '68'),
(78, 'Daggar', '35', '72'),
(79, 'Daira Din Panah', '31', '71'),
(80, 'Dajal', '30', '70'),
(81, 'Dalbandin', '29', '64'),
(82, 'Dandot RS', '33', '73'),
(83, 'Daromehar', '25', '68'),
(84, 'Darya Khan', '32', '71'),
(85, 'Darya Khan Marri', '27', '68'),
(86, 'Daska Kalan', '32', '74'),
(87, 'Dasu', '35', '73'),
(88, 'Daud Khel', '33', '72'),
(89, 'Daulatpur', '27', '68'),
(90, 'Daultala', '33', '73'),
(91, 'Daur', '26', '68'),
(92, 'Dera Allahyar', '28', '68'),
(93, 'Dera Bugti', '29', '69'),
(94, 'Dera Ghazi Khan', '30', '71'),
(95, 'Dera Ismail Khan', '32', '71'),
(96, 'Dera Murad Jamali', '29', '68'),
(97, 'Dhanot', '30', '72'),
(98, 'Dhaunkal', '32', '74'),
(99, 'Dhoro Naro', '26', '70'),
(100, 'Digri', '25', '69'),
(101, 'Dijkot', '31', '73'),
(102, 'Dinan Bashnoian Wala', '30', '73'),
(103, 'Dinga', '33', '74'),
(104, 'Dipalpur', '31', '74'),
(105, 'Diplo', '24', '70'),
(106, 'Doaba', '33', '71'),
(107, 'Dokri', '27', '68'),
(108, 'Duki', '30', '69'),
(109, 'Dullewala', '32', '71'),
(110, 'Dunga Bunga', '30', '73'),
(111, 'Dunyapur', '30', '72'),
(112, 'Eidgah', '35', '75'),
(113, 'Eminabad', '32', '74'),
(114, 'Faisalabad', '31', '73'),
(115, 'Faqirwali', '29', '73'),
(116, 'Faruka', '32', '72'),
(117, 'Fazilpur', '32', '75'),
(118, 'Fort Abbas', '29', '73'),
(119, 'Gadani', '25', '67'),
(120, 'Gakuch', '36', '74'),
(121, 'Gambat', '27', '69'),
(122, 'Gandava', '29', '67'),
(123, 'Garh Maharaja', '31', '72'),
(124, 'Garhi Khairo', '28', '68'),
(125, 'Garhiyasin', '28', '69'),
(126, 'Gharo', '25', '68'),
(127, 'Ghauspur', '28', '69'),
(128, 'Ghotki', '28', '69'),
(129, 'Gilgit', '36', '74'),
(130, 'Gojra', '31', '73'),
(131, 'Goth Garelo', '27', '68'),
(132, 'Goth Phulji', '27', '68'),
(133, 'Goth Radhan', '27', '68'),
(134, 'Gujar Khan', '33', '73'),
(135, 'Gujranwala', '32', '74'),
(136, 'Gujrat', '33', '74'),
(137, 'Gulishah Kach', '33', '70'),
(138, 'Gwadar', '25', '62'),
(139, 'Hadali', '33', '75'),
(140, 'Hafizabad', '32', '74'),
(141, 'Hala', '26', '68'),
(142, 'Hangu', '34', '71'),
(143, 'Haripur', '34', '73'),
(144, 'Harnai', '30', '68'),
(145, 'Harnoli', '32', '72'),
(146, 'Harunabad', '30', '73'),
(147, 'Hasilpur', '30', '73'),
(148, 'Hattian Bala', '34', '74'),
(149, 'Haveli Lakha', '30', '74'),
(150, 'Havelian', '34', '73'),
(151, 'Hazro City', '34', '72'),
(152, 'Hingorja', '27', '68'),
(153, 'Hujra Shah Muqim', '31', '74'),
(154, 'Hyderabad', '25', '68'),
(155, 'Islamabad', '34', '73'),
(156, 'Islamkot', '25', '70'),
(157, 'Jacobabad', '28', '68'),
(158, 'Jahanian Shah', '32', '72'),
(159, 'Jalalpur Jattan', '33', '74'),
(160, 'Jalalpur Pirwala', '30', '71'),
(161, 'Jampur', '30', '71'),
(162, 'Jamshoro', '25', '68'),
(163, 'Jand', '33', '72'),
(164, 'Jandiala Sher Khan', '32', '74'),
(165, 'Jaranwala', '31', '73'),
(166, 'Jati', '24', '68'),
(167, 'Jatoi Shimali', '30', '71'),
(168, 'Jauharabad', '32', '72'),
(169, 'Jhang City', '31', '72'),
(170, 'Jhang Sadr', '31', '72'),
(171, 'Jhawarian', '32', '73'),
(172, 'Jhelum', '33', '74'),
(173, 'Jhol', '26', '69'),
(174, 'Jiwani', '25', '62'),
(175, 'Johi', '27', '68'),
(176, 'Jām Sāhib', '26', '69'),
(177, 'Kabirwala', '30', '72'),
(178, 'Kadhan', '24', '69'),
(179, 'Kahna Nau', '31', '74'),
(180, 'Kahror Pakka', '30', '72'),
(181, 'Kahuta', '34', '73'),
(182, 'Kakad Wari Dir Upper', '35', '72'),
(183, 'Kalabagh', '33', '72'),
(184, 'Kalaswala', '32', '75'),
(185, 'Kalat', '29', '67'),
(186, 'Kaleke Mandi', '32', '74'),
(187, 'Kallar Kahar', '33', '73'),
(188, 'Kalur Kot', '32', '71'),
(189, 'Kamalia', '31', '73'),
(190, 'Kamar Mushani', '33', '71'),
(191, 'Kambar', '28', '68'),
(192, 'Kamoke', '32', '74'),
(193, 'Kamra', '34', '74'),
(194, 'Kandhkot', '28', '69'),
(195, 'Kandiari', '27', '69'),
(196, 'Kandiaro', '27', '68'),
(197, 'Kanganpur', '31', '74'),
(198, 'Karachi', '25', '67'),
(199, 'Karak', '33', '71'),
(200, 'Karaundi', '27', '68'),
(201, 'Kario Ghanwar', '25', '69'),
(202, 'Karor', '31', '71'),
(203, 'Kashmor', '28', '70'),
(204, 'Kasur', '31', '74'),
(205, 'Keshupur', '32', '73'),
(206, 'Keti Bandar', '24', '67'),
(207, 'Khadan Khak', '31', '68'),
(208, 'Khadro', '26', '69'),
(209, 'Khairpur', '28', '70'),
(210, 'Khairpur Mir’s', '28', '69'),
(211, 'Khairpur Nathan Shah', '27', '68'),
(212, 'Khairpur Tamewah', '30', '72'),
(213, 'Khalabat', '34', '73'),
(214, 'Khandowa', '33', '73'),
(215, 'Khanewal', '30', '72'),
(216, 'Khangah Dogran', '32', '74'),
(217, 'Khangarh', '30', '71'),
(218, 'Khanpur', '29', '71'),
(219, 'Khanpur Mahar', '28', '69'),
(220, 'Kharan', '29', '65'),
(221, 'Kharian', '33', '74'),
(222, 'Khewra', '33', '73'),
(223, 'Khurrianwala', '31', '73'),
(224, 'Khushāb', '32', '72'),
(225, 'Khuzdar', '28', '67'),
(226, 'Kohat', '34', '71'),
(227, 'Kohlu', '30', '69'),
(228, 'Kot Addu', '30', '71'),
(229, 'Kot Diji', '27', '69'),
(230, 'Kot Ghulam Muhammad', '32', '75'),
(231, 'Kot Malik Barkhurdar', '30', '67'),
(232, 'Kot Mumin', '32', '73'),
(233, 'Kot Radha Kishan', '31', '74'),
(234, 'Kot Rajkour', '32', '75'),
(235, 'Kot Samaba', '29', '70'),
(236, 'Kot Sultan', '31', '71'),
(237, 'Kotli', '34', '74'),
(238, 'Kotli Loharan', '33', '74'),
(239, 'Kotri', '25', '68'),
(240, 'Kulachi', '32', '70'),
(241, 'Kundian', '32', '71'),
(242, 'Kunjah', '33', '74'),
(243, 'Kunri', '25', '70'),
(244, 'Lachi', '33', '71'),
(245, 'Ladhewala Waraich', '32', '74'),
(246, 'Lahore', '32', '74'),
(247, 'Lakhi', '28', '69'),
(248, 'Lakki', '33', '71'),
(249, 'Lala Musa', '33', '74'),
(250, 'Lalian', '32', '73'),
(251, 'Landi Kotal', '34', '71'),
(252, 'Larkana', '28', '68'),
(253, 'Layyah', '31', '71'),
(254, 'Liliani', '32', '73'),
(255, 'Lodhran', '30', '72'),
(256, 'Loralai', '30', '69'),
(257, 'Mach', '30', '67'),
(258, 'Madeji', '28', '68'),
(259, 'Mailsi', '30', '72'),
(260, 'Malakand', '35', '72'),
(261, 'Malakwal', '33', '73'),
(262, 'Malakwal City', '33', '73'),
(263, 'Malir Cantonment', '25', '67'),
(264, 'Mamu Kanjan', '31', '73'),
(265, 'Mananwala', '32', '74'),
(266, 'Mandi Bahauddin', '33', '73'),
(267, 'Mangla', '32', '72'),
(268, 'Mankera', '31', '71'),
(269, 'Mansehra', '34', '73'),
(270, 'Mardan', '34', '72'),
(271, 'Mastung', '30', '67'),
(272, 'Matiari', '26', '68'),
(273, 'Matli', '25', '69'),
(274, 'Mehar', '27', '68'),
(275, 'Mehmand Chak', '33', '74'),
(276, 'Mehrabpur', '28', '68'),
(277, 'Mian Channun', '30', '72'),
(278, 'Mianke Mor', '31', '74'),
(279, 'Mianwali', '33', '72'),
(280, 'Minchianabad', '30', '74'),
(281, 'Mingora', '35', '72'),
(282, 'Miran Shah', '33', '70'),
(283, 'Miro Khan', '28', '68'),
(284, 'Mirpur Bhtoro', '25', '68'),
(285, 'Mirpur Khas', '26', '69'),
(286, 'Mirpur Mathelo', '28', '70'),
(287, 'Mirpur Sakro', '25', '68'),
(288, 'Mirwah Gorchani', '25', '69'),
(289, 'Mitha Tiwana', '32', '72'),
(290, 'Mithi', '25', '70'),
(291, 'Moro', '27', '68'),
(292, 'Moza Shahwala', '31', '71'),
(293, 'Multan', '30', '71'),
(294, 'Muridke', '32', '74'),
(295, 'Murree', '34', '73'),
(296, 'Musa Khel Bazar', '31', '70'),
(297, 'Mustafābād', '31', '73'),
(298, 'Muzaffargarh', '30', '71'),
(299, 'Muzaffarābād', '34', '73'),
(300, 'Nabisar', '25', '70'),
(301, 'Nankana Sahib', '31', '74'),
(302, 'Narang Mandi', '32', '75'),
(303, 'Narowal', '32', '75'),
(304, 'Nasirabad', '27', '68'),
(305, 'Naudero', '28', '68'),
(306, 'Naukot', '25', '69'),
(307, 'Naushahra Virkan', '32', '74'),
(308, 'Naushahro Firoz', '27', '68'),
(309, 'Nawabshah', '26', '68'),
(310, 'Nazir Town', '33', '73'),
(311, 'New Bādāh', '27', '68'),
(312, 'New Mirpur', '33', '74'),
(313, 'Noorabad', '34', '72'),
(314, 'Nowshera', '34', '72'),
(315, 'Nowshera Cantonment', '34', '72'),
(316, 'Nushki', '30', '66'),
(317, 'Okara', '31', '73'),
(318, 'Ormara', '25', '65'),
(319, 'Pabbi', '34', '72'),
(320, 'Pad Idan', '27', '68'),
(321, 'Paharpur', '32', '71'),
(322, 'Pakpattan', '30', '73'),
(323, 'Panjgur', '27', '64'),
(324, 'Pano Aqil', '28', '69'),
(325, 'Parachinar', '34', '70'),
(326, 'Pasni', '25', '63'),
(327, 'Pasrur', '32', '75'),
(328, 'Pattoki', '31', '74'),
(329, 'Peshawar', '34', '72'),
(330, 'Phalia', '32', '74'),
(331, 'Pind Dadan Khan', '33', '73'),
(332, 'Pindi Bhattian', '32', '73'),
(333, 'Pindi Gheb', '33', '72'),
(334, 'Pir Jo Goth', '28', '69'),
(335, 'Pir Mahal', '31', '72'),
(336, 'Pishin', '31', '67'),
(337, 'Pithoro', '26', '69'),
(338, 'Qadirpur Ran', '30', '72'),
(339, 'Qila Abdullah', '31', '67'),
(340, 'Qila Saifullah', '31', '68'),
(341, 'Quetta', '30', '67'),
(342, 'Rahim Yar Khan', '28', '70'),
(343, 'Raiwind', '31', '74'),
(344, 'Raja Jang', '31', '74'),
(345, 'Rajanpur', '29', '70'),
(346, 'Rajo Khanani', '25', '69'),
(347, 'Ranipur', '27', '69'),
(348, 'Rasulnagar', '32', '74'),
(349, 'Ratodero', '28', '68'),
(350, 'Rawala Kot', '34', '74'),
(351, 'Rawalpindi', '34', '73'),
(352, 'Renala Khurd', '31', '74'),
(353, 'Risalpur Cantonment', '34', '72'),
(354, 'Rohri', '28', '69'),
(355, 'Rojhan', '29', '70'),
(356, 'Rustam', '28', '69'),
(357, 'Saddiqabad', '28', '70'),
(358, 'Sahiwal', '32', '72'),
(359, 'Sahiwal', '31', '73'),
(360, 'Saidu Sharif', '35', '72'),
(361, 'Sakrand', '26', '68'),
(362, 'Samaro', '25', '69'),
(363, 'Sambrial', '32', '74'),
(364, 'Sanghar', '26', '69'),
(365, 'Sangla Hill', '32', '73'),
(366, 'Sanjwal', '34', '72'),
(367, 'Sann', '26', '68'),
(368, 'Sarai Alamgir', '33', '74'),
(369, 'Sarai Naurang', '33', '71'),
(370, 'Sarai Sidhu', '31', '72'),
(371, 'Sargodha', '32', '73'),
(372, 'Sehwan', '26', '68'),
(373, 'Setharja Old', '27', '68'),
(374, 'Shabqadar', '34', '72'),
(375, 'Shahdad Kot', '28', '68'),
(376, 'Shahdadpur', '26', '69'),
(377, 'Shahkot', '32', '73'),
(378, 'Shahpur', '32', '72'),
(379, 'Shahpur Chakar', '26', '69'),
(380, 'Shahr Sultan', '30', '71'),
(381, 'Shakargarh', '32', '75'),
(382, 'Sharqpur Sharif', '31', '74'),
(383, 'Shekhupura', '32', '74'),
(384, 'Shikarpur', '28', '69'),
(385, 'Shingli Bala', '35', '73'),
(386, 'Shinpokh', '34', '71'),
(387, 'Shorkot', '32', '71'),
(388, 'Shujaabad', '30', '71'),
(389, 'Sialkot', '32', '75'),
(390, 'Sibi', '30', '68'),
(391, 'Sillanwali', '32', '73'),
(392, 'Sinjhoro', '26', '69'),
(393, 'Skardu', '35', '76'),
(394, 'Sobhodero', '27', '68'),
(395, 'Sodhri', '32', '74'),
(396, 'Sohbatpur', '29', '69'),
(397, 'Sukheke Mandi', '32', '74'),
(398, 'Sukkur', '28', '69'),
(399, 'Surab', '28', '66'),
(400, 'Surkhpur', '33', '74'),
(401, 'Swabi', '34', '72'),
(402, 'Sīta Road', '27', '68'),
(403, 'Talagang', '33', '72'),
(404, 'Talamba', '31', '72'),
(405, 'Talhar', '25', '69'),
(406, 'Tandlianwala', '31', '73'),
(407, 'Tando Adam', '26', '69'),
(408, 'Tando Allahyar', '25', '69'),
(409, 'Tando Bago', '25', '69'),
(410, 'Tando Jam', '25', '69'),
(411, 'Tando Mitha Khan', '26', '69'),
(412, 'Tando Muhammad Khan', '25', '69'),
(413, 'Tangi', '34', '72'),
(414, 'Tangwani', '28', '69'),
(415, 'Tank', '32', '70'),
(416, 'Taunsa', '31', '71'),
(417, 'Thal', '35', '72'),
(418, 'Tharu Shah', '27', '68'),
(419, 'Thatta', '25', '68'),
(420, 'Thul', '28', '69'),
(421, 'Timargara', '35', '72'),
(422, 'Toba Tek Singh', '31', '72'),
(423, 'Topi', '34', '73'),
(424, 'Turbat', '26', '63'),
(425, 'Ubauro', '28', '70'),
(426, 'Umarkot', '25', '70'),
(427, 'Upper Dir', '35', '72'),
(428, 'Usta Muhammad', '28', '68'),
(429, 'Uthal', '26', '67'),
(430, 'Utmanzai', '34', '72'),
(431, 'Vihari', '30', '72'),
(432, 'Wana', '32', '70'),
(433, 'Warah', '27', '68'),
(434, 'Wazirabad', '32', '74'),
(435, 'Yazman', '29', '72'),
(436, 'Zafarwal', '32', '75'),
(437, 'Zahir Pir', '29', '71'),
(438, 'Zaida', '34', '72'),
(439, 'Zhob', '31', '69'),
(440, 'Ziarat', '30', '68');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `user_id`, `role_id`) VALUES
(1, 'admin', 'admin', 36, 1),
(2, 'saad', 'saad', 37, 2),
(3, 'aliraza', 'aliraza', 21, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `description`) VALUES
(1, 'Administrator', 'User with all rights'),
(2, 'teacher', 'User with all teacher rights'),
(3, 'student', 'User with all student rights');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `email`, `city_id`, `type`) VALUES
(1, 'Ali Khan', 21, 'ali.khan@example.com', 0, 'student'),
(2, 'Sara Ahmed', 22, 'sara.ahmed@example.com', 0, 'student'),
(3, 'Mohammad Hassan', 20, 'mohammad.hassan@example.com', 155, 'student'),
(4, 'Aisha Malik', 23, 'aisha.malik@example.com', 351, 'student'),
(5, 'Ahmed Raza', 19, 'ahmed.raza@example.com', 114, 'student'),
(6, 'Fatima Zaidi', 20, 'fatima.zaidi@example.com', 293, 'student'),
(7, 'Bilal Mahmood', 22, 'bilal.mahmood@example.com', 329, 'student'),
(8, 'Hina Abbas', 21, 'hina.abbas@example.com', 341, 'student'),
(9, 'Kamran Ali', 24, 'kamran.ali@example.com', 389, 'student'),
(10, 'Nadia Khan', 19, 'nadia.khan@example.com', 135, 'student'),
(11, 'Imran Amin', 23, 'imran.amin@example.com', 154, 'student'),
(12, 'Sadia Iqbal', 20, 'sadia.iqbal@example.com', 398, 'student'),
(13, 'Asad Ali', 21, 'asad.ali@example.com', 252, 'student'),
(14, 'Ayesha Siddiqui', 22, 'ayesha.siddiqui@example.com', 136, 'student'),
(15, 'Omar Shah', 20, 'omar.shah@example.com', 25, 'student'),
(16, 'Saima Akhtar', 19, 'saima.akhtar@example.com', 371, 'student'),
(17, 'Nabeel Ahmed', 24, 'nabeel.ahmed@example.com', 198, 'student'),
(18, 'Bushra Riaz', 23, 'bushra.riaz@example.com', 299, 'student'),
(19, 'Adnan Khan', 21, 'adnan.khan@example.com', 1, 'student'),
(20, 'Fariha Aslam', 22, 'fariha.aslam@example.com', 393, 'student'),
(21, 'Ali Raza', 19, 'ali@raza.com', 198, 'student'),
(22, 'Ali Ahmed', 22, 'ali@ahmed.com', 319, 'student'),
(23, 'a', 12, 'a@e.com', 198, 'student'),
(24, 'a', 12, 'a@q.com', 19, 'student'),
(25, 'a', 11, 'a@b.com', 1, 'student'),
(26, 'aaa', 12, 'aaa@xxx.com', 19, 'student'),
(27, 'aaa', 22, 'aa@f.com', 14, 'student'),
(28, 'abc', 12, 'abc@xyz.com', 198, 'student'),
(29, 'Miss Nadia Khan', 29, 'nadia.khan@example.com', 135, 'teacher'),
(30, 'Sir Imran Amin', 33, 'imran.amin@example.com', 154, 'teacher'),
(31, 'Miss Sadia Iqbal', 30, 'sadia.iqbal@example.com', 398, 'teacher'),
(32, 'Sir Asad Ali', 31, 'asad.ali@example.com', 252, 'teacher'),
(33, 'Miss Ayesha Siddiqui', 32, 'ayesha.siddiqui@example.com', 136, 'teacher'),
(34, 'Sir Omar Shah', 30, 'omar.shah@example.com', 25, 'teacher'),
(35, 'Miss Saima Akhtar', 29, 'saima.akhtar@example.com', 371, 'teacher'),
(36, 'Sir Syed Murtaza Hussain', 40, 'sirmurtazaaptechtr@outlook.com', 198, 'teacher'),
(37, 'Sir Saad', 25, 'saad@gmail.com', 198, 'teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
