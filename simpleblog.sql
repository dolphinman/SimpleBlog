-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2015 at 12:21 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simpleblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(6) NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `date`) VALUES
(1, 'First post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec efficitur elit in sagittis sagittis. Aenean tristique ipsum tincidunt turpis molestie, non porta justo dapibus. Proin in imperdiet quam, in feugiat tortor. Maecenas est ante, ornare ut metus at, bibendum ullamcorper est. Pellentesque mollis aliquam tellus at feugiat. Nullam eget metus consequat, cursus magna id, elementum sapien. Morbi in pharetra lorem. Integer tempor nisl et elit vestibulum, eu sagittis sem ultricies. Phasellus viverra, elit ut facilisis molestie, enim felis consequat lorem, aliquet aliquam ex nulla vitae mi. Quisque cursus placerat sapien, hendrerit molestie leo. Aliquam mauris est, iaculis a lacus eu, porttitor posuere mauris. ', '2015-01-30 11:40:09'),
(2, 'Second post', 'Nunc pulvinar urna quis erat mollis iaculis. Ut sagittis quam ut dolor imperdiet, ut finibus nisi faucibus. Ut lobortis massa sapien, vitae mollis tellus tincidunt congue. Fusce faucibus euismod est et ullamcorper. Suspendisse tempus massa nunc, at venenatis quam tincidunt lacinia. Integer faucibus eget tortor vel laoreet. Sed dictum varius tortor. Etiam ultrices luctus efficitur. Sed id tincidunt enim. Nam sed enim eget dolor euismod finibus. Maecenas tortor tortor, aliquam eu justo sed, malesuada luctus ipsum. Donec sit amet dignissim sem. ', '2015-01-30 11:40:09'),
(3, 'Thirth post', 'In hac habitasse platea dictumst. Aenean faucibus nibh mi, ac volutpat nunc semper a. Curabitur lacinia quis justo ut rutrum. Maecenas eget enim non ante rhoncus commodo sed sed ipsum. Nulla vestibulum metus vitae nibh feugiat, vitae faucibus augue iaculis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eu libero velit. Nulla vitae pharetra neque. Etiam eu lectus sit amet magna luctus egestas eu nec ligula. Donec nec tincidunt justo. Vivamus auctor vulputate velit non varius. Pellentesque hendrerit, tortor et tincidunt blandit, lacus libero hendrerit risus, quis aliquam odio leo in sapien. Duis at justo enim. Praesent elementum, tortor ac commodo laoreet, justo lorem tempus nisi, quis suscipit ligula sapien non purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. ', '2015-02-03 22:04:14'),
(4, 'Fourth post', 'Fusce malesuada, diam ac vestibulum vulputate, mi ante malesuada nulla, vitae pulvinar massa sapien quis turpis. Fusce cursus purus odio, ac varius lacus bibendum at. Etiam dignissim eget turpis eu efficitur. Curabitur in diam quis nibh accumsan pellentesque quis vitae erat. Pellentesque malesuada auctor ante, eu interdum eros vehicula nec. Donec felis nulla, tristique vel ultrices sit amet, mattis quis leo. Mauris non erat et elit iaculis fringilla sit amet at risus. Maecenas pharetra imperdiet tortor sed bibendum. Sed in bibendum metus, eget rhoncus urna. Duis placerat turpis at lorem ultrices, laoreet hendrerit urna molestie. Nunc mattis pellentesque pellentesque. Suspendisse neque odio, blandit et ultrices ac, varius eget lacus. Nullam tempus feugiat ex quis elementum. ', '2015-02-03 22:06:41'),
(5, 'Fifth post', 'Vestibulum tellus dui, posuere sit amet gravida sed, varius vitae dolor. Donec tristique consectetur dolor, eleifend congue diam facilisis eget. Nulla facilisi. In at tincidunt metus, dignissim varius eros. Integer elementum massa ut laoreet volutpat. Integer vestibulum eros ex. Curabitur congue laoreet arcu et pellentesque. Donec eget ornare tellus, at sollicitudin arcu. Sed ligula metus, varius vel lacus vel, lobortis consequat urna. Nullam accumsan nulla id eleifend facilisis. Phasellus et neque eu sapien sodales tristique quis id arcu. Nam id augue at sapien bibendum porttitor. <br/><br/><center><img src="http://tinyurl.com/kh7hedu"><br/><b>Sample picture!</b></center>', '2015-02-03 22:06:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
