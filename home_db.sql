-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2024 at 02:13 PM
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
-- Database: `home_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
('BcjKNX58e4x7bIqIvxG7', 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(11) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `number`, `message`) VALUES
('kkPzvetSGlikCkxhUbYV', 'linkhantbhone', 'linkhantbhone@11gmail.com', '09773020793', 'I appreciated the in-depth neighborhood information. It really helped me choose the right area for my family.'),
('ahkm80F4WdJxQtF19IYT', 'Nyi Min Nyein', 'chanchangenyiminnyein@gmail.com', '09973546973', 'The website’s design is sleek and modern, making navigation a breeze. Highly recommend it for both buying and selling.'),
('WdsT67JN4dVmIk7oN0AL', 'Zin Naing Naing', 'zin25aing@gmail.com', '09450991503', 'I loved the detailed property descriptions and high-quality images. It made my house-hunting much easier.'),
('hKij1GbPkfUWotFjiFBH', 'mone', 'wuttmone774@gmail.com', '09429898623', 'This site made finding my new home so easy! The search filters are intuitive and the listings are detailed with great photos.'),
('Pj1hU60lMt3kXZyWDoU5', 'Sofia', 'Sofia76@gmail.com', '09250987455', 'Very intuitive interface. I was able to navigate and find properties quickly without any confusion.\r\n'),
('SMBzYQausjLiD4nwT13q', 'Ping Ping', 'Ping456@gmail.com', '098762564', 'Very intuitive interface. I was able to navigate and find properties quickly without any confusion.\r\n'),
('juqMbpZQz2vTs88xyFtN', 'Nyi Min Nyein', 'chanchangenyiminnyein@gmail.com', '09973546973', 'Easy to upload and manage my property listing. The site’s features made the selling process smooth and efficient.'),
('Pj2haPBIOlLYXHKNPu72', 'Zin Naing Naing', 'zin25aing@gmail.com', '0987623147', 'Loved the personalized property recommendations. They really matched my search criteria perfectly.'),
('tHy9Bo8EDVhAO7SJSZpu', 'Nyi Min Nyein', 'chanchangenyiminnyein@gmail.com', '09422250007', 'The seller tools were top-notch. Listing my property was quick, and I received excellent visibility.\r\n'),
('QzbtVtF4TX7nA8rhOpMq', 'Ma Chaw', 'mama@gmail.com', '09261473455', 'The site’s clean, modern interface and fast load times made browsing a pleasant experience.'),
('1J9hbgl5euzgvqXbnKy2', 'linkhantbhone', 'linkhantbhone@11gmail.com', '09876567688', 'The site’s easy-to-use listing tools allowed me to manage and update my property details without any hassle.'),
('MpT3RzL9ZN9KkWaFH6Ae', 'kyal sin lin', 'wuttmone774@gmail.com', '23455578698', 'hi how are yoy');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `property_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `offer` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `furnished` varchar(50) NOT NULL,
  `bhk` varchar(10) NOT NULL,
  `deposite` varchar(10) NOT NULL,
  `bedroom` varchar(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `balcony` varchar(10) NOT NULL,
  `carpet` varchar(10) NOT NULL,
  `age` varchar(2) NOT NULL,
  `total_floors` varchar(2) NOT NULL,
  `room_floor` varchar(2) NOT NULL,
  `loan` varchar(50) NOT NULL,
  `lift` varchar(3) NOT NULL DEFAULT 'no',
  `security_guard` varchar(3) NOT NULL DEFAULT 'no',
  `play_ground` varchar(3) NOT NULL DEFAULT 'no',
  `garden` varchar(3) NOT NULL DEFAULT 'no',
  `water_supply` varchar(3) NOT NULL DEFAULT 'no',
  `power_backup` varchar(3) NOT NULL DEFAULT 'no',
  `parking_area` varchar(3) NOT NULL DEFAULT 'no',
  `gym` varchar(3) NOT NULL DEFAULT 'no',
  `shopping_mall` varchar(3) NOT NULL DEFAULT 'no',
  `hospital` varchar(3) NOT NULL DEFAULT 'no',
  `school` varchar(3) NOT NULL DEFAULT 'no',
  `market_area` varchar(3) NOT NULL DEFAULT 'no',
  `image_01` varchar(50) NOT NULL,
  `image_02` varchar(50) NOT NULL,
  `image_03` varchar(50) NOT NULL,
  `image_04` varchar(50) NOT NULL,
  `image_05` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `user_id`, `property_name`, `address`, `price`, `type`, `offer`, `status`, `furnished`, `bhk`, `deposite`, `bedroom`, `bathroom`, `balcony`, `carpet`, `age`, `total_floors`, `room_floor`, `loan`, `lift`, `security_guard`, `play_ground`, `garden`, `water_supply`, `power_backup`, `parking_area`, `gym`, `shopping_mall`, `hospital`, `school`, `market_area`, `image_01`, `image_02`, `image_03`, `image_04`, `image_05`, `description`, `date`) VALUES
('qvceOHXzRvFVrxTIwMRu', 'nUoXpgUehUBvzu0Jlw2P', 'sunflower', 'No 235', '200000000', 'house', 'sale', 'ready to move', 'furnished', '1', '2000000', '1', '2', '1', '245', '2', '1', '1', 'available', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'MYQHk4tE0yFYZusAm7rU.jpg', '4rJ6oRpY9cGGOzTVTvaK.jpg', 'z0tDNlhmChsGeKH9XHIM.jpg', 'lr433h05Z8JmBuYRY8tQ.jpg', 'zfkr4DUa1miQSAT3EHum.jpg', 'good', '2024-08-29'),
('QkDvNz8ijRftVE7xhmnU', 'GvFzkE3T8qy94bISmZ5m', 'Sukan', '357 Sukhumwit 63 Road City:   Bangkok', '1000000000', 'house', 'sale', 'ready to move', 'furnished', '1', '300000000', '2', '2', '1', '2564', '1', '2', '3', 'available', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'ivjZl9QAWqiUNqytisUr.jpg', '4BXoFnw2ehBPRkNMD18K.jpg', 'wuBnV0Bs3ECJ9iEZQzE4.jpg', 'AtJyj8mYj8Sencl52mED.jpg', 'W1Mr0dRHwyaIdANSOQvi.jpg', 'abcd', '2024-08-30'),
('x4ilj4cACFD7UW71yIt1', 'GvFzkE3T8qy94bISmZ5m', 'kaka', '  86/90, Shwe Dagon Pagoda St, Near Thein Gyi Zay', '800000', 'house', 'rent', 'ready to move', 'furnished', '1', '400000', '2', '1', '1', '890', '3', '1', '1', 'available', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'pwrv0E4QLcfOulbI5wsG.jpg', '5r1KppmTBrUnDOrTeoPf.jpg', '9tS6ruCbwY7rO1B4iMUl.jpg', '', '', 'abcd', '2024-08-30'),
('XQYf7BekWrakTD3g6vIh', 'GvFzkE3T8qy94bISmZ5m', 'hfru', ' Street:  No.57, Ko Min Ko Chin Street City:  Bahan Country:  Myanmar', '400000000', 'flat', 'sale', 'ready to move', 'furnished', '2', '30000000', '2', '2', '1', '2300', '3', '2', '3', 'available', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'TbQv85sXvAzaZ9unMgou.jpg', 'Hhx0maNoL1AeUBvz0IU4.jpg', 'bydiyUsoJASHF6GCUEPi.jpg', 'PcHdPRSskP6Z8L3zQ2Bg.jpg', 'pxhTfyW4mTFMybe9zhTF.jpg', 'abcd', '2024-08-30'),
('g6nj3iOPp3kFC8LdjKWK', 'GvFzkE3T8qy94bISmZ5m', 'qwer', 'Street:  No.111, 50th St, Pazundaung City:  Pazundaung Country:  Myanmar', '500000', 'house', 'rent', 'ready to move', 'furnished', '1', '200000', '1', '1', '0', '2500', '1', '2', '2', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'nUGZhU0X3ySxejiPn8uw.jpg', 'ZZDUK52V6pemhFK7AOfC.jpg', '9oskEiOKKViij3oPOCse.jpg', 'wxfx2o753ur8ofnepfQo.jpg', 'MnnebGZBPbCPPKGdDpBq.jpg', 'zbcd', '2024-08-30'),
('BMeaoBAlXxS60g8uRGZg', 'GvFzkE3T8qy94bISmZ5m', 'asdf', 'Street:  No.213, Baho Rd, Near Gwa Zay City:  Sanchaung State/province/area:   Yangon', '1000000000', 'flat', 'resale', 'ready to move', 'furnished', '1', '300000000', '4', '4', '2', '2300', '4', '2', '2', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'bEEIbM56cwpxprYMbYZE.jpg', 'UkLzG4nIuGuNY1IYXU03.jpg', 'g2u7a8AoD4Ns4zkjZFST.jpg', 'Ps8U5GatuwIJ7hGANgam.jpg', 'JcSDzkTPBrbkJRFXDpOx.jpg', 'asdf', '2024-08-30'),
('fCIvh1ZVXXLuH2cVwWY8', 'GvFzkE3T8qy94bISmZ5m', 'vbld', 'Street:  No.52, 27th St, Lower Block City:   Pabedan Country:  Myanmar', '2000000000', 'flat', 'sale', 'ready to move', 'furnished', '1', '560000000', '2', '2', '0', '960', '6', '1', '1', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'MV2LN9sNQq7s0ApZ2mlI.jpg', 'uox02qoPS3DCMfRv83WU.jpg', 'awVc7Dog3SFX69IcgYhU.jpg', 'i409Lgat0rd2otLPTv1G.jpg', 'U7wfuIWRq319fLxcmO5S.jpg', 'zxcb', '2024-08-30'),
('2o4E1yKyZpSX0mWuIibr', 'GvFzkE3T8qy94bISmZ5m', 'chan', 'Street:  No.50, Zay Cho, Mandalay City:  Mandalay State/province/area:   Mandalay', '500000000', 'flat', 'resale', 'ready to move', 'furnished', '1', '200000000', '2', '2', '1', '3000', '2', '2', '2', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'V9ztZg5r5QVtKTcIG09o.jpg', 'kY04bjVsJPttEaILG0UL.jpg', '3vkm0MU80fgfgDbo5hlb.jpg', 'gwVGBa8sWq2Q8Cm7BsFF.jpg', 'd7TdPUOZ6ghSDUIvmyI3.jpg', 'best', '2024-08-30'),
('vFyvuaHaXFA9BYNGac3N', 'GvFzkE3T8qy94bISmZ5m', 'change', 'Street:  26th-B St, Bet 83rd & 84th St, Aung Myay Thar Zan City:  Mandalay State/province/area:   Ma', '3000000', 'flat', 'rent', 'ready to move', 'furnished', '1', '1500000', '4', '2', '1', '3500', '2', '2', '2', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', '9OYc3p00ii7fbvhz9uIX.jpg', '2G1OhGaYNYdcdP4TO2mj.jpg', 'qJnXtImScuFMamQmoRaD.jpg', 'QGe72yqX1O7EfHuiGJo1.jpg', 'maaWCsavzTW0SBZVKDh3.jpg', 'The site’s clean, modern interface and fast load times made browsing a pleasant experience.', '2024-08-30'),
('QirDiFbw97U1a1ljEoqE', 'GvFzkE3T8qy94bISmZ5m', 'sitt', 'Street:  No-671, Maha Bandoola St City:  Latha State/province/area:   Yangon Country:  Myanmar', '1500000000', 'flat', 'resale', 'ready to move', 'furnished', '1', '500000000', '2', '2', '1', '1500', '3', '1', '1', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'ElKlcs9knIr6c6OLPwip.jpg', 'Vilnj8HypHLmUn7skIBX.jpg', '2Kkznl7Nv2IbB0q7GEYT.jpg', '9AaJVmKz07qgT1gBZNvo.jpg', 'wUcnqfcaZh36LLsz6evB.jpg', 'The site’s easy-to-use listing tools allowed me to manage and update my property details without any hassle.', '2024-08-30'),
('nL9VOfteovyyzE7dHjBT', 'GvFzkE3T8qy94bISmZ5m', 'aung', 'Street:  93 Moo 2, Phetkasem Rd., Muang City:   Muang Trang State/province/area:    Trang Country:  ', '5000000', 'flat', 'rent', 'ready to move', 'furnished', '1', '2000000', '2', '2', '0', '1200', '2', '1', '1', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', '0P7nHoezynadjFWpb0PF.jpg', 'MAN7Cu8piiStu8dAsCO0.jpg', '5gJuoxhqc15b5xmw98SZ.jpg', '6DjK3rnQORZs0g05r9a9.jpg', 'oAQhyB07qozLfN75sZRF.jpg', 'fsgs', '2024-08-30'),
('e0RqaFE5JdBSvotjHb9h', 'GvFzkE3T8qy94bISmZ5m', 'soe', '17/4 Soi Watjana(Chomthong 19) Daokhanong Road Bangkhuntien City:   Bangkok State/province/area:    ', '1000000000', 'flat', 'sale', 'ready to move', 'furnished', '1', '500000000', '5', '5', '5', '4500', '3', '2', '2', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'rDoQEyPN2m0GJpTE5RXF.jpg', '5wtFytMyXxTvrsF72Apz.jpg', 'i3NC6EysYVhM5CNAPm6N.jpg', 'aWfgmg9MvjF2V8D9URvU.jpg', 'acQ7USikref4jbKZd4Ld.jpg', 'fwfa', '2024-08-30'),
('lhsNXdTQI5AmBDQwobV2', 'GvFzkE3T8qy94bISmZ5m', 'latt', 'Street:  No.137/138, Kanaung 7th St, Near Shwe Pauk Kan Industrial Zone City:   North Okkalapa State', '200000000', 'flat', 'resale', 'ready to move', 'furnished', '1', '100000000', '2', '1', '1', '1500', '2', '1', '1', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'AOc7Q5QfER6ECX4LrBkp.jpg', 'HDrXV6sW6NLFBBgP2SR4.jpg', 'drwL8hK3ODxa9psMcqe7.jpg', 'nQvsvnWhu0CcI3YvCU2C.jpg', 'VhPTZrkpspVzbCdaHJ7G.jpg', 'aff', '2024-08-30'),
('Z4D4JJg4fGWbkaKp1zeH', 'GvFzkE3T8qy94bISmZ5m', 'zin', '.Street:  No.76, Myo Twin St, West Qtr City:  West Qtr State/province/area:   Dawei Country:  Myanma', '80000000', 'flat', 'rent', 'ready to move', 'furnished', '2', '30000000', '6', '6', '1', '4000', '4', '2', '2', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', '7BDHUYo0gGIRLaFkjv9A.jpg', 'KCK2Jzc5N2hvimDVMQI8.jpg', 'D2ptJitIEUqhdBfo2Mlb.jpg', 'cvSL13Kxfe9r9zY0oOGA.jpg', 'GKLMuPUiCblwVjBwyY4y.jpg', 'acxd\r\n', '2024-08-30'),
('OGEclQtPWxoLXIghEwZQ', 'GvFzkE3T8qy94bISmZ5m', 'soe', 'Street:  No.3, Yae Twat Oo St, Kan Shae Ward City:  Kan Shae Ward State/province/area:   Taunggyi Co', '1500000000', 'flat', 'sale', 'ready to move', 'furnished', '1', '500000000', '2', '2', '0', '1500', '2', '1', '1', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'Spvvj2ZH3no09TR1bzYe.jpg', 'qLbKjG3iw2sggh7Q1MpU.jpg', 'SXKBhhg2gWwIsB0ZrYKi.jpg', 'XpYdiZrl7wONne6eYRkw.jpg', 'OnfT3oFKHliHTescOLJu.jpg', 'asdf', '2024-08-30'),
('DQHuJEsQth86MiKkbt6w', 'GvFzkE3T8qy94bISmZ5m', 'Aye Chan May', '357 Sukhumwit 63 Road City:   Bangkok', '2000000000', 'flat', 'sale', 'ready to move', 'furnished', '1', '1000000000', '4', '4', '1', '2500', '2', '2', '2', 'available', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'YEfwLzbIhBJPkxXdy2oZ.jpg', 'ftMf4EWH3PqKD9IRvYvY.jpg', 'rVJ0nXpuZRaF5zFoMhAa.jpg', 'LrjErIdddzJ11cWZGJiG.jpg', 'pcAmLTFp0s5vmf0CnGZf.jpg', 'axzd', '2024-08-30'),
('cKUwXWjJayHmbK16WuP1', '3Qyz3O6rT2YQNfq6BHz5', 'Luxury House', 'Kalwin,Myeik', '500000000', 'house', 'sale', 'ready to move', 'furnished', '4', '300000000', '4', '2', '1', '60', '2', '2', '1', 'not available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', '5S9LGT7AdpSpTqkKZ5sA.jpg', 'HsOESCMdnXFIFMm4nyiK.jpg', 'sa3m4K9xHcGzQlZSneYN.jpg', 'qJ709WxKegyWeVmuCPak.jpg', '0yDa7Xl7y1R0A0wufwE8.jpg', 'Constructed for the homeowner to live in,using good quality materials.No mess!', '2024-09-04'),
('kZOu6mO7IAdwrAYxaOXt', '3Qyz3O6rT2YQNfq6BHz5', '3 Floors House', 'MyoThint,Myeik', '320000000', 'house', 'sale', 'ready to move', 'furnished', '1', '0', '3', '2', '2', '60', '11', '3', '1', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'pwkJuZRfHQI87uGTnDJM.jpg', 'ob5jxihs4ES9fQDR4bWm.jpg', 'uzyejpYRHZCabA4p0VMj.jpg', 'YfSRJXMy4y3fwdUHe2jv.jpg', '5fVDhNvWPpK8Ouji6NBg.jpg', 'The price will be reduced to 320000000.If you are interested in,please contact me.', '2024-09-04'),
('rt0rBm3hTGfAVjjkfM5x', '3Qyz3O6rT2YQNfq6BHz5', '2 Floors House', 'Next to Shenhan Hotel,behind Akha Market,Wayne Kyak Ward', '55000000', 'house', 'sale', 'ready to move', 'furnished', '1', '0', '3', '2', '1', '2400', '5', '2', '1', 'not available', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'Y3VECYjjmM5txXJVjrg5.jpg', 'DLI1Tr3C4wPuF4feY3im.jpg', 'DGHKu9Lj78zqXQEzDIPR.jpg', 'V0sJ9eL3M0FWSElHZbTT.jpg', 'I25oSvy9zoMfZoEEaNXU.jpg', 'Clean neighborhood,good environment', '2024-09-04'),
('9egnRTZT4maiRRcMnUWw', '3Qyz3O6rT2YQNfq6BHz5', 'RC double storey building', 'MyoThint,Myeik', '25000000', 'house', 'sale', 'ready to move', 'furnished', '1', '0', '1', '2', '1', '1250', '3', '2', '1', 'not available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'FpGRdbUp5JrCFSMx9qQI.jpg', 'KQI0w7KQWJVUYPbiTmrm.jpg', 'eewuqCmEwzEukjnYUY65.jpg', 'ScrLvYUmnC2XvzgddYIl.jpg', 'vkDFROSetduPTDE7AXZT.jpg', 'There is no hassle in the contract.It is a type of gram land.It is ready to buy and is close to the new city market.So,it is a central location to many places outside the city.', '2024-09-04'),
('YCZtJFfkyxkxVqSpS0Hx', '3Qyz3O6rT2YQNfq6BHz5', '2 Floors House', 'Khan Phyar Road', '39000000', 'house', 'sale', 'ready to move', 'furnished', '1', '2000000', '2', '2', '1', '4800', '1', '2', '1', 'not available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'mzESOtvourpuhZ3EAlM3.jpg', '8PxYc5SKTQSF2uD7xbzq.jpg', 'G2vNUL5wDBmW8QHbiRNq.jpg', 'wXEo5jyVN6DuYjFZMQ6K.jpg', 'VWELCnsI5UqsmRfKfaQ4.jpg', 'Near the market,near the school', '2024-09-04'),
('pJ25npv8HG3s6HGxDtse', 'AZXMjCPZLNYXJCH9aKOj', '2 Story Building (Garden Land)', 'Near MyeikTaung clinic', '155000000', 'house', 'sale', 'ready to move', 'furnished', '1', '50000000', '1', '2', '1', '945', '1', '2', '1', 'not available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'rB5RiYKm7YTFNRLXwVMt.jpg', 'TiAttOAaHet9bddtGenR.jpg', 'mOfllRjr39zBIjQxH9AZ.jpg', '4FCyxBdPSh3QVo00eJX4.jpg', 'seQtZbGcQRW9j5ZLu4Fc.jpg', 'There are 105 locations on the map.The price is low.', '2024-09-04'),
('YhiyT260s8JIDLvG376T', 'AZXMjCPZLNYXJCH9aKOj', 'An apartment complex with 8 rooms', 'Myeik', '1500000', 'flat', 'rent', 'ready to move', 'furnished', '8', '300000', '8', '8', '6', '1870', '4', '10', '8', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'odTA9e3UDYdzGG6OBl2i.jpg', 'pIb4WG0tx8VGm1ZiR4Ok.jpg', '5C6LTPcrQPxIsAxaDB97.jpg', 'JTWeqlMW3ewunWIThFzL.jpg', '', 'If you are interested,you can contact me and ask.', '2024-09-04'),
('ItKEedpkzrfUh7zc1Oqx', 'AZXMjCPZLNYXJCH9aKOj', 'Two Floors Building', 'Near Myeik City College School,near the hospital,near Varnasi School Road,near Tut Taung School', '140000000', 'house', 'sale', 'ready to move', 'furnished', '1', '20000000', '2', '2', '1', '1200', '3', '2', '1', 'not available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', '3j16shy7gcVhY1riTOy9.jpg', '6Bw9qELeh5Hz1JAWp6iM.jpg', 'TZs2GPETcjvwM0dAXWw3.jpg', '9xNZ1yWS9bZvf7BCFbDn.jpg', 'pAOq328HC4QsXOkeoZJo.jpg', 'It is convenient to park your car in a small yard.It is also a quiet and peaceful place.It is also near the market,near the school,and the enviroment is peaceful.It is in the west of college ,so the family can relax and relax freely.', '2024-09-05'),
('DGYIwPRXG9sd3CmQkyQL', 'AZXMjCPZLNYXJCH9aKOj', 'Two-story Building', 'Kan Phyar Road,Myeik', '198000000', 'house', 'sale', 'ready to move', 'furnished', '1', '50000000', '2', '1', '1', '1500', '10', '2', '1', 'not available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'SqQMz0pce6Go0Abun17O.jpg', 'MreXMtlShUoeAeNpBz0E.jpg', 'u3pmf2MrqHR9eLnltWgt.jpg', 'goFKp5uT9D2bNGcNFuzH.jpg', 'sjeVYlovzzfXmaM3uyu2.jpg', 'It is good place to do business,good place,central placeh.\r\nPeople have been fed and worshiped in this house three times and many good things have been done.\r\nIt is also a house full of gifts that have been donated to the house,including the Nine Planets Pagoda,Nine Sun Dragon Pagoda, and the head of the Shwe Tharaying Pagoda.', '2024-09-05'),
('38851ym0SHlxFV0mPnOt', 'AZXMjCPZLNYXJCH9aKOj', 'A new two-story house', 'Mawlamyine City,Hlaing Market,near Thaar Aye Market', '150000000', 'house', 'sale', 'ready to move', 'furnished', '1', '40000000', '2', '2', '1', '1140', '1', '2', '1', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes', 'jmuljlhMckl6cUbOKzqI.jpg', 's5JUQxiL4Hn5tCys51n1.jpg', 'UqDQLHUMAgBsLaDT4PwN.jpg', 'hYdMqi8DOVl8eCwD36p9.jpg', 'h1qe0b7PXMFEYu0CD1i7.jpg', 'Upstairs parquet floor, master bed room(1),\r\nlarge living room, downstairs tiled floor,\r\nhall type, kitchen, bathroom and toilet,\r\nseparate courtyard,\r\nwater+light set.', '2024-09-05'),
('8nDkWmuWniMwSiPZRL1u', 't8ZER4Av6H96omBm6bkq', 'A new two-story house', 'The top of Mawlamyime Hill', '250000000', 'house', 'sale', 'ready to move', 'furnished', '1', '60000000', '4', '2', '1', '1560', '2', '2', '2', 'not available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'eDHHvWoDceGOuBln7Zso.jpg', 'w1IQE5hl1AqGEfagsarn.jpg', 'wkrNKh3quelieP2UeEFn.jpg', 'APV6V2DOXK3GaaiuG3d1.jpg', 'nMn5JVAyxjuRu2ZMbens.jpg', '7 forms of property only to break the gram', '2024-09-05'),
('Qvw9AIVLFLtM0wTBXQwI', 't8ZER4Av6H96omBm6bkq', '2 Floors House', 'Se Win Ra Dai Road', '350000000', 'shop', 'sale', 'ready to move', 'furnished', '1', '100000000', '2', '2', '1', '2000', '3', '3', '1', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'x0rXWysoI3nKDZ0YoO8d.jpg', 'JsZa0gMwFVhP73U7WZh1.jpg', 'lKCcjz5qGzX6eFBTsSzV.jpg', 'ENqlfnXD9b9uPY837OOZ.jpg', 'GdZYZ8udMH4nQg4tnbcJ.jpg', '3500000000 less', '2024-09-05'),
('ZbTiN4rvXn6hNqK2bReM', 't8ZER4Av6H96omBm6bkq', '2 Floors House', 'Pual Di Parap,Vadthula Road,Alley near the police station restaurance', '2500000000', 'house', 'sale', 'ready to move', 'furnished', '1', '1000000000', '2', '1', '1', '10000', '6', '2', '1', 'available', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'a0GliEkTt87E2hFViCJ1.jpg', 'VPSJBCQPVlLq1XFtgtdt.jpg', 'c6q3P9HjiiA2tpNfkWHv.jpg', 'q68UzHBzVzqLhLMV82FT.jpg', 'tiESvo9Qm5aE8314LADy.jpg', 'There is a plot of 25 feet by 40 feet next to the house.\r\nHouse and land will be sold together.\r\n2,500,000,000 less', '2024-09-05'),
('qeZ329VCyeiHh2KU6FKu', 't8ZER4Av6H96omBm6bkq', '1 Floor Building', 'Kan Phyar Plo Soru, Myeik', '1800000000', 'house', 'sale', 'ready to move', 'furnished', '1', '20000000', '1', '1', '0', '875', '5', '1', '1', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'MdHda6X0SId1cfp2h0WD.jpg', 'f6DtRKo5ewyLDyB4SRYd.jpg', 'Je7FCOJb8qLVRjS9waEw.jpg', 'bi2wCmrm1Yjgji4sopCS.jpg', '0ZnmzbHAB0mRUQ3fWhSe.jpg', 'Land tax map 105 evidence is complete.\r\n1800 lakhs is a little less .\r\nBuy a house and open a shop.', '2024-09-05'),
('lnybBFWXoMsTPA5YhTSe', 'tuwxwaf9ve9v6zSmoPY9', 'A new two-story house', 'Inside Varanasi Monastery Road,near college,Myeik', '1500000000', 'house', 'sale', 'ready to move', 'furnished', '1', '20000000', '2', '1', '1', '1200', '1', '2', '1', 'available', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'Zux1vqtxnnnMiWD2Y58w.jpg', 'bGLrkTXxhSCST3Pyh1T7.jpg', '3SAqWcNz1cyWfMqCDNWB.jpg', 'Wy51TQPCx8iLefEDsssZ.jpg', 'PcX94RKUp55EvtxMRsDf.jpg', '1500 lakhs is less', '2024-09-05'),
('sLlAuzeruFiavkIdhXQp', 'tuwxwaf9ve9v6zSmoPY9', 'A new one-story house', 'Myeik Taung Road,near East Thein Ring', '3200000000', 'house', 'sale', 'ready to move', 'furnished', '1', '100000000', '1', '1', '0', '3816', '1', '1', '1', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'VGKH9SeLm4yW5JDr0Ffv.jpg', '2APhJbRAp2uzTeHtJjlx.jpg', '2HwHjQl19uu9CJiHGoIh.jpg', '2CXbUTW93gQx7tvcxFTn.jpg', 'VGGdr11OIJbO1nozWa2P.jpg', 'Road house land\r\n3,200,000,000 less', '2024-09-05'),
('Eez8WW3sV2mduWN5tlVj', 'tuwxwaf9ve9v6zSmoPY9', 'RC two and a half floors (can go up to 3 floors)', 'University Park,Myae Nyo Road, Myeik', '3000000000', 'house', 'sale', 'ready to move', 'furnished', '1', '80000000', '2', '2', '1', '1200', '2', '3', '1', 'available', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'EQYjAmovvsiNkJ1HmJ2T.jpg', 'NU6ANpWFYc59BxznVDse.jpg', 'RYAVBgUv6tGksyactdd9.jpg', 'kLCTPzMLBN3vc3qlpttj.jpg', 'z0ZnH2W522fRRXLKYNDm.jpg', 'Face 20 feet / length 60 grams of land without confusion. \r\nPrice 3000 lakhs.\r\nnegotiable Looking from the upper floor of the house, Myeik Golf Course is on the east Looking at the west side of the house is a beautiful sea view Looking south of the house, the environment is clean Looking north of the house, you can see the Buffalo Bridge and the Globe Pagoda Maha Siddajaya Pagoda.', '2024-09-05'),
('IwSO83hw8gz3YB016UO2', 'tuwxwaf9ve9v6zSmoPY9', 'A nice new two-story condominium', 'Ward 6,Shwe Pytha Township,on Zawji Road,near Shwe Nya Maung Market,near the school', '2850000000', 'house', 'sale', 'ready to move', 'furnished', '1', '70000000', '4', '2', '2', '1200', '2', '3', '2', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'X27FGR0zoEXdvUhWYNyw.jpg', 't9BzrDMRqM8XINqJrTZF.jpg', 'IBhRMhGMJ0MspYXqaIYN.jpg', 'S7wAk5OVKx5pxddjKwGZ.jpg', '3cEk8qkpJhAAFdbZgHJl.jpg', 'master room(2) room, single room(2) room, god room, large living room, kitchen, bathroom, private toilet\r\n Good location - clean neighborhood \r\nDocument – ​​gram original \r\nTurn—turn west', '2024-09-05'),
('cnQ7DU5yHWyrn3CQRkeL', 'tuwxwaf9ve9v6zSmoPY9', 'New building with 3 master bedrooms', 'May City or Pyin Oo Lwin ,Near Aung Chhai Pa Chief Bishop School', '2950000000', 'house', 'sale', 'ready to move', 'furnished', '1', '40000000', '3', '1', '0', '2400', '2', '1', '3', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'EySnImsXbkJFSFHdVOXV.jpg', 'jb3PrZyhDfwIcyFjGn9y.jpg', 'Z2IiCZNZJn0M26qfsclG.jpg', 'AhIsScKQhioJFUgnW9GD.jpg', 'qDjCKWLVrM0uHxM8Uvb6.jpg', '3 master bedrooms \r\nLiving room,dining room,kitchen included \r\nWrought iron door installed', '2024-09-05'),
('BxEqFkkSwAFuGT0PFM5M', 'X1PIglaeDqFV01UnDVSq', 'New one-story Building', 'Nung Hlaing Village Mandalay ,near Lashio Road', '1150000000', 'flat', 'sale', 'ready to move', 'furnished', '1', '50000000', '3', '1', '0', '2400', '2', '1', '1', 'available', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'XgCFcvDnle1iUy2Yhig4.jpg', 'pjYmbNpQNutqfgy2H9fh.jpg', 'M2z6lGSQWQbA95JeO3JA.jpg', '89OL7wzAE1EfqP8VAuCq.jpg', 'uFc1g59cFr1TaodOzK7P.jpg', '2 master rooms,1 single room\r\nLiving room,dining room,kitchen,bathroom,toilet\r\nParquet floor tiles\r\nCovered parking for 2 cars in the courtyard', '2024-09-05'),
('ILJMMZbwS7ajlwmCy6Xe', 'X1PIglaeDqFV01UnDVSq', 'New luxury condo', 'Yanking Pyi Sone Kyan Thar', '4300000000', 'flat', 'sale', 'ready to move', 'furnished', '1', '1500000000', '3', '2', '0', '1035', '1', '1', '3', 'available', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'Piqfi5pJTePIB5kUN4rE.jpg', 'IRugoqOeC8PSEXRkoq1c.jpg', 'QSUoGeE5pHM1NErqspnT.jpg', 'izSW6ZvYI6IMiz5HJLk0.jpg', '', 'New luxury condo', '2024-09-05'),
('6Vr0VqSrWRDTD4078vOu', 'X1PIglaeDqFV01UnDVSq', 'Star City Condo', 'Thanlyin', '2850000000', 'flat', 'sale', 'ready to move', 'furnished', '1', '100000000', '1', '1', '1', '622', '1', '1', '1', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'V1mpBKiI6GZLdh1CYGHr.jpg', 'JKYFw5eYfKsBD5TFQcuR.jpg', 'yiUkssVT9jzThXDQTpQS.jpg', '9wsWUS45waBY6COIOLIB.jpg', 'EQKkBOiXC98PdaXtQoxW.jpg', 'Fully Furnished\r\nGarden View\r\n', '2024-09-05'),
('PO9T6gPlalDvZN0JUnrl', 'X1PIglaeDqFV01UnDVSq', '2 Storey private house', 'North Dagon Buyinnaung Road', '3500000000', 'house', 'sale', 'ready to move', 'furnished', '1', '1200000000', '7', '1', '1', '1200', '2', '2', '1', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'E28DVR0czAGhmBZNsPvg.jpg', 'uxOOmuejWfwsWoE0QrGV.jpg', 'bj1bfLS4QGR9ZAJXUnpR.jpg', 'MEoyLHfF3Mm8sKYJbf22.jpg', 'NQWnzpSgbBGGZBgzm2hj.jpg', 'On King Naung road\r\nGood Place to do business', '2024-09-05'),
('r459gwYbwtItetXHNyvQ', 'X1PIglaeDqFV01UnDVSq', 'adventure ', 'North Dagon', '1000000000', 'house', 'sale', 'ready to move', 'furnished', '2', '100000000', '4', '3', '3', '2400', '4', '2', '3', 'available', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', '896sCe5oK5Gj17JKyEH7.jpg', 'iXJlZcnwjytgFS6UwCtB.jpg', 'jcg4C6pOLlvcLlG765KP.jpg', '3nZiORQTELYFuowDfc1y.jpg', 'zUsiFvtL2ai4vXVKIx9W.jpg', 'Sayar Road, Near the Thitsar Bridge .The nice place .Ready to move, beautiful house.\r\nNear the North Dagon school and Pagodas.Near alot of supermarket.', '2024-09-05'),
('lhXyitmrZPmcvGhu6Gj1', 'OJ7TmVMoSf9rynh3qdXS', 'penthouse', 'myeik', '1000000000', 'house', 'sale', 'ready to move', 'furnished', '1', '5000000', '3', '3', '1', '50', '1', '3', '22', 'not available', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'qM6N6cF77qKUNZmTTxJw.jpg', '', '', '', '', 'dfghjkl;vbnm', '2024-09-06');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `property_id`, `sender`, `receiver`, `date`) VALUES
('W9INPmcMKumA3RWiu3AP', 'QkDvNz8ijRftVE7xhmnU', 'hFzZ1JqVDbiH1aM1QTNL', 'GvFzkE3T8qy94bISmZ5m', '2024-08-30'),
('aas7hUs9UmlwrSebpVTn', 'ItKEedpkzrfUh7zc1Oqx', 'tuwxwaf9ve9v6zSmoPY9', 'AZXMjCPZLNYXJCH9aKOj', '2024-09-06'),
('vDEjiHoUIylaZTu4ezZu', '38851ym0SHlxFV0mPnOt', 'tuwxwaf9ve9v6zSmoPY9', 'AZXMjCPZLNYXJCH9aKOj', '2024-09-06'),
('Qr3XrF6CnD2tzt03VDhd', '8nDkWmuWniMwSiPZRL1u', 'tuwxwaf9ve9v6zSmoPY9', 't8ZER4Av6H96omBm6bkq', '2024-09-06'),
('7rVumbNrskkGSPKuZItW', 'lnybBFWXoMsTPA5YhTSe', 'tuwxwaf9ve9v6zSmoPY9', 'tuwxwaf9ve9v6zSmoPY9', '2024-09-06'),
('S4VXCEPrpy2D1Fm3S97o', 'ItKEedpkzrfUh7zc1Oqx', 't8ZER4Av6H96omBm6bkq', 'AZXMjCPZLNYXJCH9aKOj', '2024-09-06'),
('IW31r9bXhuU2lMmptAhu', 'QkDvNz8ijRftVE7xhmnU', 't8ZER4Av6H96omBm6bkq', 'GvFzkE3T8qy94bISmZ5m', '2024-09-06'),
('rjbYZQO0bh5Js7O760wo', 'DGYIwPRXG9sd3CmQkyQL', 't8ZER4Av6H96omBm6bkq', 'AZXMjCPZLNYXJCH9aKOj', '2024-09-06'),
('rCA4TianVmIR8SgGIQVD', 'wJVANqyg2f35O5iS1BiM', 'AZXMjCPZLNYXJCH9aKOj', 't8ZER4Av6H96omBm6bkq', '2024-09-06'),
('t5S7deNOeYxvtmW9Tp0I', '8nDkWmuWniMwSiPZRL1u', 'AZXMjCPZLNYXJCH9aKOj', 't8ZER4Av6H96omBm6bkq', '2024-09-06'),
('TbppWsKiLcc9Etz6AEWc', 'kZOu6mO7IAdwrAYxaOXt', 'AZXMjCPZLNYXJCH9aKOj', '3Qyz3O6rT2YQNfq6BHz5', '2024-09-06'),
('Dj34DVfY50177HfVuajl', 'ItKEedpkzrfUh7zc1Oqx', 'AZXMjCPZLNYXJCH9aKOj', 'AZXMjCPZLNYXJCH9aKOj', '2024-09-06'),
('Nfoy4MM07B85RxGwdY7b', 'ItKEedpkzrfUh7zc1Oqx', 'OJ7TmVMoSf9rynh3qdXS', 'AZXMjCPZLNYXJCH9aKOj', '2024-09-06'),
('gp3ajiKpHMQB8v3Sq4nF', 'DGYIwPRXG9sd3CmQkyQL', 'tuwxwaf9ve9v6zSmoPY9', 'AZXMjCPZLNYXJCH9aKOj', '2024-09-17'),
('D8SMf95MtuYkE6WQt2mr', 'lnybBFWXoMsTPA5YhTSe', 'WO5GOi739ES1z63ZXzqD', 'tuwxwaf9ve9v6zSmoPY9', '2024-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`id`, `property_id`, `user_id`) VALUES
('OH1s8MoqXC4mCnbFuxcq', 'QkDvNz8ijRftVE7xhmnU', 'hFzZ1JqVDbiH1aM1QTNL'),
('0p0RBsjKGLIMrILP2Wmr', 'QirDiFbw97U1a1ljEoqE', 'CKJubC8iwpNj6DiD4bMQ'),
('WvAXMRmYjqdmq8ukq25E', 'wJVANqyg2f35O5iS1BiM', 'tuwxwaf9ve9v6zSmoPY9'),
('hvF6MxSIJRipxZ7gLmiL', 'lnybBFWXoMsTPA5YhTSe', 'tuwxwaf9ve9v6zSmoPY9'),
('JoZokgj37JZ93086azg1', '8nDkWmuWniMwSiPZRL1u', 'tuwxwaf9ve9v6zSmoPY9'),
('FkvVKXp3J5y92swG1q4F', '8nDkWmuWniMwSiPZRL1u', 'AZXMjCPZLNYXJCH9aKOj'),
('fs2jO7EtBEEnHs2ZXMKG', 'lnybBFWXoMsTPA5YhTSe', 'AZXMjCPZLNYXJCH9aKOj'),
('sAOKT7eWdGe0jOwUE2WQ', 'Qvw9AIVLFLtM0wTBXQwI', 'AZXMjCPZLNYXJCH9aKOj'),
('s8l3Y5DWJFNbHEZe17ak', 'lhXyitmrZPmcvGhu6Gj1', 'OJ7TmVMoSf9rynh3qdXS'),
('mMZLLGBIWCjGbionx7Bb', '38851ym0SHlxFV0mPnOt', 'OJ7TmVMoSf9rynh3qdXS'),
('nwF7tYl7BwvkCq6TLiAB', 'ItKEedpkzrfUh7zc1Oqx', 'OJ7TmVMoSf9rynh3qdXS'),
('QebK1rVA4RE3D24y5jul', 'DGYIwPRXG9sd3CmQkyQL', 'OJ7TmVMoSf9rynh3qdXS'),
('UJflbuXMedfpKhuInoWF', 'cnQ7DU5yHWyrn3CQRkeL', 't8ZER4Av6H96omBm6bkq'),
('wF0PtGYpm7sPilObWmh5', 'IwSO83hw8gz3YB016UO2', 't8ZER4Av6H96omBm6bkq');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `email`, `password`) VALUES
('nUoXpgUehUBvzu0Jlw2P', 'ect', '0942989862', 'ect@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('GvFzkE3T8qy94bISmZ5m', 'MaHar', '0977302079', 'MH@gmail.com', '2e6aebb62d6db22e06ec76eb11a12d0cf49073bb'),
('hFzZ1JqVDbiH1aM1QTNL', 'tecpan', '0977777777', 'pan7@gmail.com', 'bd2bd8216b9cb4aa5a12daa6cfc98eef2ee20e56'),
('CKJubC8iwpNj6DiD4bMQ', 'MoneOo', '0942989862', 'mone774@gmail.com', '51eac6b471a284d3341d8c0c63d0f1a286262a18'),
('tIaaqSf4apbmfKImTYXh', 'Nora', '0949898765', 'Nora116@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
('3Qyz3O6rT2YQNfq6BHz5', 'Lin Khant Bhone', '09773020793', 'linkhantbhone@11gmail.com', '51eac6b471a284d3341d8c0c63d0f1a286262a18'),
('AZXMjCPZLNYXJCH9aKOj', 'Eaint Chuu Thaw', '09444839563', 'eainechyuthaw0098@gmail.com', 'bcf814ab41506290ab1b8158ebda6ee61b4bb579'),
('t8ZER4Av6H96omBm6bkq', 'Zin Naing Naing', '09450991503', 'zin25aing@gmail.com', '00a8a5c3f7bac086c6df1a59b7da7e26eee029a1'),
('tuwxwaf9ve9v6zSmoPY9', 'Wutt Hmone Oo', '09429898623', 'wuttmone774@gmail.com', '1e7b95c5614637fdcde70eb7f2d109134c95c6bf'),
('X1PIglaeDqFV01UnDVSq', 'Nyi Min Nyein', '09976546973', 'chanchangenyiminnyein@gmail.com', 'fc1200c7a7aa52109d762a9f005b149abef01479'),
('OJ7TmVMoSf9rynh3qdXS', 'ericahsu', '09876543', 'erica@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
('WO5GOi739ES1z63ZXzqD', 'lin', '09876543222', 'khant@gmail.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
