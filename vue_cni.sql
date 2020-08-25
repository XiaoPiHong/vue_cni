-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2020-08-25 11:50:37
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `vue_cni`
--

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, '家居生活'),
(2, '摄影设计'),
(3, '明星美女'),
(4, '摄影学习'),
(5, '摄影器材'),
(6, '明星写真'),
(7, '清纯甜美'),
(8, '古典美女'),
(9, '空间设计'),
(10, '户型装饰');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `user_name` varchar(5) NOT NULL DEFAULT '匿名用户',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(150) NOT NULL DEFAULT 'undefined'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`user_name`, `add_time`, `content`) VALUES
('匿名用户', '2020-08-17 09:28:42', '我来评论了！'),
('匿名用户', '2020-08-17 09:29:06', '哈哈'),
('大傻', '2020-08-17 09:29:36', '噗！！！'),
('李四', '2020-08-17 09:30:42', '今天我又来评论了'),
('王五', '2020-08-17 09:30:57', '今天我又来评论了'),
('老六', '2020-08-17 09:31:18', '嘎嘎嘎'),
('小屁鸿', '2020-08-17 09:32:52', '今天来评论了'),
('匿名用户', '2020-08-17 09:42:14', 'undefined'),
('匿名用户', '2020-08-17 14:17:44', '哈哈哈'),
('匿名用户', '2020-08-17 14:19:55', '发表评论来了'),
('匿名用户', '2020-08-17 14:21:33', '再次发表评论来了'),
('匿名用户', '2020-08-18 02:09:08', '红红火火恍恍惚惚'),
('匿名用户', '2020-08-19 09:00:18', '哈哈哈'),
('匿名用户', '2020-08-25 02:11:25', '今天的评论'),
('匿名用户', '2020-08-25 02:12:24', 'test'),
('匿名用户', '2020-08-25 02:15:01', 'test1'),
('匿名用户', '2020-08-25 02:16:08', 'test2'),
('匿名用户', '2020-08-25 02:16:32', 'test3');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT 'undefined',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `zhaiyao` varchar(100) NOT NULL DEFAULT 'undefined',
  `click` int(11) NOT NULL DEFAULT '0',
  `img_url` varchar(500) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `market_price` int(11) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `goods_no` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `cou` int(11) NOT NULL DEFAULT '1' COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `title`, `add_time`, `zhaiyao`, `click`, `img_url`, `sell_price`, `market_price`, `stock_quantity`, `goods_no`, `content`, `cou`) VALUES
(1, '4G全网通学生价超长待机安卓八核128G游戏智能手机', '2020-08-23 02:11:46', '4G全网通学生价超长待机安卓八核128G游戏智能手机', 0, 'https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01mg1Xl81WoTSE2MfOQ_!!2201702082835.jpg_430x430q90.jpg', 899, 999, 60, 'FAW10986LSU1', '<p> 存储容量:&nbsp;4+32GB【6.53英寸水滴屏八核】品牌优选&nbsp;6+64GB【6.53英寸水滴屏八核】品牌优选&nbsp;6+128GB【6.53英寸水滴屏八核】品牌优选&nbsp;3+32GB【6.0英寸全面屏四核】&nbsp;4+32GB【6.0英寸全面屏四核】&nbsp;6+64GB【6.0英寸全面屏四核】&nbsp;6+128GB【6.0英寸全面屏四核】\r\n</p><p>&nbsp;<img src=\"https://img.alicdn.com/imgextra/i4/2201702082835/O1CN016W7nwX1WoTRpZV6wU_!!2201702082835.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2201702082835/O1CN012VBJ301WoTRgzfUib_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01eRQChy1WoTRp24Jwy_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01iPAlYv1WoTRp27PHn_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2201702082835/O1CN01R3uDq21WoTSH1KdqE_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01c7kWfo1WoTSJ4t5PW_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2201702082835/O1CN01714z9f1WoTSMS1Rhd_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2201702082835/O1CN014o0QwL1WoTSJ4rLMo_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01Xxkx7v1WoTSM8Xxc5_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2201702082835/O1CN01muS14T1WoTSM8WQ1a_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2201702082835/O1CN0190eFl71WoTSF1FAKx_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01mEaxCp1WoTSJ4qjvq_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2201702082835/O1CN01ZnokNs1WoTSFQoLcv_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2201702082835/O1CN01XqxIRl1WoTSJd26p4_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2201702082835/O1CN01fjVRQX1WoTSLOyCtV_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01tXpN591WoTSFQqlIW_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2201702082835/O1CN01mMYZPS1WoTSHRX5gz_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2201702082835/O1CN01CxJZrM1WoTSE2R1sT_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2201702082835/O1CN01XkfDZo1WoTSFQox3b_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2201702082835/O1CN01HiBZSb1WoTSHRXh6f_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2201702082835/O1CN0122kTr21WoTSF1FIg2_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2201702082835/O1CN01PvEL2X1WoTSHRa6kG_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01plGkDC1WoTSMS2JnD_!!2201702082835.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"></p>', 1),
(2, 'casio卡西欧手表女SHEEN新品', '2020-08-23 02:15:15', 'casio卡西欧手表女SHEEN新品官网正品SHE-4533简约防水石英女表', 0, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2942970645/O1CNA1a9l78P100ed182ba340bb6984c000z_!!1-0-picassodesign.jpg_360x360Q90.jpg_.webp', 890, 990, 20, 'FAW10986LSU1', '<p><img src=\"https://img.alicdn.com/imgextra/i3/2942970645/O1CN01g89FOF1GdS2LEcTZQ_!!2942970645.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2942970645/O1CN017hAwkE1GdS2rzgf2l_!!2942970645.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\" data-spm-anchor-id=\"a220o.1000855.0.i0.b89947b6Am9oAu\"><img src=\"https://img.alicdn.com/imgextra/i3/2942970645/O1CN0104RWlH1GdS2zrqD61_!!2942970645.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2942970645/O1CN01qryKWo1GdS2Sa1AfD_!!2942970645.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2942970645/O1CN011RnAnp1GdS2PSNm4N_!!2942970645.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2942970645/O1CN01mUwuBT1GdS2R0Axqg_!!2942970645.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"></p>', 1),
(3, '小米九号平衡车体感智能骑行遥控代步电动', '2020-08-23 02:16:33', '小米九号平衡车体感智能骑行遥控代步电动', 0, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i1/44096902/O1CN012kc4kb20rAGM3L13j_!!0-saturn_solar.jpg_580x580Q90.jpg_.webp', 1999, 2100, 100, 'FAW10986LSU1', '<p><img src=\"https://img.alicdn.com/imgextra/i2/2548622030/O1CN01C3G1Nz1QrmcjXTFcX_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2548622030/O1CN01lyLQUz1QrmdEg7fjr_!!2548622030.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2548622030/O1CN01R9FJnZ1QrmcolpxE2_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2548622030/O1CN01JPX54P1QrmctUDAfh_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2548622030/O1CN017mHLEb1Qrmd0zaZAi_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2548622030/O1CN01k1myTS1QrmcxbPUiI_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2548622030/O1CN01xXaSIu1QrmczY7a4z_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2548622030/O1CN01aupk8L1Qrmcuwg3TF_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2548622030/O1CN01T6Rqga1QrmczDu74C_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2548622030/O1CN01fCSClo1Qrmd0zbIun_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2548622030/O1CN01GlQHqL1QrmcuU24uv_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2548622030/O1CN01RLWk8A1QrmcuU3UEz_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2548622030/O1CN01oLgkXU1QrmcxS37AH_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2548622030/O1CN01MXr4Cp1Qrmd0zb6Rw_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2548622030/O1CN01ElX2481QrmczY8ike_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2548622030/O1CN018iFjWQ1QrmcwxEKZh_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2548622030/O1CN01yUzq4Z1QrmcxS2mP1_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2548622030/O1CN01DppcjT1QrmcwxCSAq_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2548622030/O1CN01dU9vCq1Qrmcuwh7zq_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/2548622030/O1CN01TiSE0x1QrmconaRDB_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2548622030/O1CN01Z3KDWl1QrmcoojGHy_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2548622030/O1CN01dfSekO1QrmcxbOUOm_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/2548622030/O1CN01KBj30t1QrmctUClmi_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2548622030/O1CN01LLlRff1QrmczDvaXq_!!2548622030.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"></p>', 1),
(4, '小米105g手机', '2020-08-23 02:18:51', '【12期免息 至高省300元】小米105g手机骁龙8651亿像素8K相机智能游戏小米官方旗舰店小米手机官网', 0, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/1714128138/O1CN01yVNhqM29zFniRzlqU_!!0-item_pic.jpg_360x360Q90.jpg_.webp', 3500, 3799, 200, 'FAW10986LSU1', '<p><img src=\"https://img.alicdn.com/imgextra/i2/3063905773/O1CN01Of36mA1sW56WLHLsG_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01eO0hex1sW56KKOwzJ_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/3063905773/O1CN01doGJ2S1sW56KKN4Z2_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/3063905773/O1CN012i4Mj01sW56Ft1Z7B_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/3063905773/O1CN01Tn6KaK1sW56FETe4s_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01cEwPrH1sW56DYzbab_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/3063905773/O1CN01kSMebV1sW56Ft1pkZ_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01UpJ0CO1sW568SIF4V_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01kSAMds1sW568SFpQ7_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/3063905773/O1CN01iIV17l1sW568SFQTF_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/3063905773/O1CN01ki71Cz1sW56BUUxAd_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01a3Eabd1sW54YqUAbF_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/3063905773/O1CN01rmQ1ci1sW54Tm2me7_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/3063905773/O1CN013VyC041sW54YDv2fx_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/3063905773/O1CN01uHJAWx1sW54aN3Uqf_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/3063905773/O1CN01epdGiD1sW54ZpicwO_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/3063905773/O1CN01SlhoAZ1sW54V5aHA2_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/3063905773/O1CN01SeCzkD1sW54V5Zbc0_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN019q75aI1sW54bR4kw7_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/3063905773/O1CN01fFiV1f1sW54WWH3mR_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01bEPCUk1sW54YDvmMi_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01ivuZLk1sW54UjOM5n_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN018tSeZ51sW54V5aoQD_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/3063905773/O1CN01z10kW61sW54WWHC6H_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01DWnMeM1sW54ZpgogM_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01jnItq11sW54P6UZrG_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/3063905773/O1CN01ByzeRI1sW54V5Z0Eg_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/3063905773/O1CN01GuN8Se1sW54bR7EoB_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/3063905773/O1CN01sENyGh1sW54P6ViWi_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/3063905773/O1CN01kk3dLM1sW54Z2vY7z_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/3063905773/O1CN01RjHC6o1sW54UjPYxn_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/3063905773/O1CN01Y1CvzM1sW54b1LR9w_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/3063905773/O1CN01MNFGrE1sW54YDvyrE_!!3063905773.png\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/3063905773/O1CN01Q9SEOK1sW557F1IVt_!!3063905773.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"></p>', 1),
(5, '数码摄像机高清旅游婚庆4K专业照相DV摄', '2020-08-23 02:21:20', '数码摄像机高清旅游婚庆4K专业照相DV摄', 0, 'https://img.alicdn.com/imgextra/i3/27062324/O1CN01eiiINX1T2QyWDWUm0_!!0-saturn_solar.jpg_180x180.jpg', 1298, 1398, 35, 'FAW10986LSU1', '<p style=\"text-align: center;\"><img src=\"https://img.alicdn.com/imgextra/i4/1067477226/O1CN011xBO3V23FYXUHGdiZ_!!1067477226.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"> <img src=\"https://img.alicdn.com/imgextra/i1/1067477226/O1CN01VtdXIp23FYXWH9hUY_!!1067477226.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/1067477226/O1CN01FerrnJ23FYabhgJHf_!!1067477226.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/1067477226/O1CN01uznSyu23FYaRlvlsy_!!1067477226.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/1067477226/O1CN01iHasjG23FYaW4bii1_!!1067477226.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/1067477226/O1CN01yy0e6n23FYaQ4fVKG_!!1067477226.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/1067477226/O1CN01wkTRaH23FYaW98xN4_!!1067477226.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/1067477226/O1CN01qFymr423FYZRwqAd4_!!1067477226.jpg\" alt=\"打假1_01.jpg\" style=\"font-size: 14.0px;\" class=\"img-ks-lazyload\"></p>', 1),
(6, '碳纤维单反相机三角架摄影液压阻尼摄像架子', '2020-08-23 02:22:58', '碳纤维单反相机三角架摄影液压阻尼摄像架子', 0, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i3/200330118/O1CN013nnq5U1Ck5L2BxVWK_!!0-saturn_solar.jpg_360x360Q90.jpg_.webp', 860, 899, 55, 'FAW10986LSU1', '<p><img src=\"https://img.alicdn.com/imgextra/i4/2361687396/O1CN0124VPlYjd70elqM5_!!2361687396.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/2361687396/O1CN0124VPla62elDd3Wt_!!2361687396.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/2361687396/TB2Zps_pkSWBuNjSszdXXbeSpXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2361687396/O1CN0124VPlZ4g02uC4fk_!!2361687396.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/2361687396/TB2yfrag5CYBuNkSnaVXXcMsVXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/2361687396/TB2do8AqL5TBuNjSspmXXaDRVXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/2361687396/TB2pHvNfsj_B1NjSZFHXXaDWpXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/2361687396/TB2x6hKrA9WBuNjSspeXXaz5VXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/2361687396/O1CN0124VPlTlPEUeXbJ1_!!2361687396.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/2361687396/TB2y1PTeOMnBKNjSZFoXXbOSFXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/2361687396/TB29t6uq9tYBeNjSspkXXbU8VXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/2361687396/TB2l.Ypg3KTBuNkSne1XXaJoXXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/2361687396/TB2BQ.7pb9YBuNjy0FgXXcxcXXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i3/2361687396/TB2uXNXfXooBKNjSZFPXXXa2XXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/2361687396/TB2jiTTpgmTBuNjy1XbXXaMrVXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/2361687396/TB2bEZhpXGWBuNjy0FbXXb4sXXa_!!2361687396.jpg\" class=\"img-ks-lazyload\"></p>', 1),
(7, '海尔10公斤紫水晶直驱变频薄款滚筒洗衣机全自动家用FAW10986LSU1', '2020-08-23 02:24:15', '海尔10公斤紫水晶直驱变频薄款滚筒洗衣机全自动家用FAW10986LSU1', 0, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/470168984/O1CN01fKenxK2GEisB4NyXw_!!0-item_pic.jpg_360x360Q90.jpg_.webp', 6899, 6999, 124, 'FAW10986LSU1', '<p><img src=\"https://img.alicdn.com/imgextra/i2/470168984/O1CN01lEtY8x2GEiruqQAd6_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/470168984/O1CN01ZmX9kz2GEirxy0kK5_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/470168984/O1CN017mHVf12GEirzatb4R_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/470168984/O1CN01bNQlXp2GEis2TbXi0_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/470168984/O1CN01kpF7hx2GEirxKD0qu_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/470168984/O1CN01yDYKPA2GEirzasSRI_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i1/470168984/O1CN019zer4l2GEirzwGIVQ_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i2/470168984/O1CN01CAjd8b2GEis1NpjBE_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/470168984/O1CN01z8enG52GEirtqtzhk_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/470168984/O1CN018MvyEx2GEirzatCBj_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/470168984/O1CN015fmaFS2GEis2Taffg_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/470168984/O1CN01knjUaW2GEiruqRFCA_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i4/470168984/O1CN01HB7oB12GEirvK2lsO_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"><img src=\"https://img.alicdn.com/imgextra/i3/470168984/O1CN01QDXcoe2GEis0AE1K6_!!470168984.jpg\" align=\"absmiddle\" class=\"img-ks-lazyload\"></p>', 1);

-- --------------------------------------------------------

--
-- 表的结构 `goodthumimages`
--

CREATE TABLE `goodthumimages` (
  `id` int(11) NOT NULL COMMENT '序号',
  `src` varchar(500) NOT NULL COMMENT '商品缩略图地址',
  `title` varchar(50) NOT NULL DEFAULT 'undefined' COMMENT '标题'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goodthumimages`
--

INSERT INTO `goodthumimages` (`id`, `src`, `title`) VALUES
(1, 'https://img.alicdn.com/imgextra/i2/470168984/O1CN01dIidgD2GEis7ocT7q_!!0-item_pic.jpg_430x430q90.jpg', '海尔10公斤紫水晶直驱变频薄款滚筒洗衣机全自动家用FAW10986LSU1'),
(2, 'https://img.alicdn.com/imgextra/i3/470168984/O1CN01AAZT3X2GEiqXz8jwb_!!0-item_pic.jpg_430x430q90.jpg', '海尔10公斤紫水晶直驱变频薄款滚筒洗衣机全自动家用FAW10986LSU1'),
(3, 'https://img.alicdn.com/imgextra/i2/470168984/O1CN01hdyeFS2GEiqezdCyM_!!470168984.jpg_430x430q90.jpg', '海尔10公斤紫水晶直驱变频薄款滚筒洗衣机全自动家用FAW10986LSU1'),
(4, 'https://img.alicdn.com/imgextra/i2/470168984/O1CN0177RDrF2GEiqpBTvcV_!!470168984.jpg_430x430q90.jpg', '海尔10公斤紫水晶直驱变频薄款滚筒洗衣机全自动家用FAW10986LSU1'),
(5, 'https://img.alicdn.com/imgextra/i3/470168984/O1CN01P0YjaK2GEiqfz2wO1_!!470168984.jpg_430x430q90.jpg', '海尔10公斤紫水晶直驱变频薄款滚筒洗衣机全自动家用FAW10986LSU1'),
(7, 'https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01mg1Xl81WoTSE2MfOQ_!!2201702082835.jpg_430x430q90.jpg', '4G全网通学生价超长待机安卓八核128G游戏智能手机'),
(8, 'https://img.alicdn.com/imgextra/i4/2201702082835/O1CN01YsLsYw1WoTS9KGh8L_!!0-item_pic.jpg_430x430q90.jpg', '4G全网通学生价超长待机安卓八核128G游戏智能手机'),
(9, 'https://img.alicdn.com/imgextra/i2/2201702082835/O1CN01ZdsuXG1WoTSI2VTWA_!!2201702082835.jpg_430x430q90.jpg', '4G全网通学生价超长待机安卓八核128G游戏智能手机'),
(10, 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/2942970645/O1CN01nrp7yA1GdS2WhyFT5_!!2942970645.jpg_430x430q90.jpg', 'casio卡西欧手表女SHEEN新品'),
(11, 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/2942970645/O1CN016ey8TT1GdS2Whvtyk_!!2942970645.jpg_430x430q90.jpg', 'casio卡西欧手表女SHEEN新品'),
(12, 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/2942970645/O1CN01iXgPPL1GdS2To8DV3_!!2942970645.jpg_430x430q90.jpg', 'casio卡西欧手表女SHEEN新品'),
(13, 'https://img.alicdn.com/imgextra/i3/2206452316652/O1CN01lzCmn11z0fF1Zpsvv_!!0-item_pic.jpg_430x430q90.jpg', '小米九号平衡车体感智能骑行遥控代步电动'),
(14, 'https://img.alicdn.com/imgextra/i1/2206452316652/O1CN01oiGym21z0fFDD5Saj_!!2206452316652.jpg_430x430q90.jpg', '小米九号平衡车体感智能骑行遥控代步电动'),
(15, 'https://img.alicdn.com/imgextra/i4/2206452316652/O1CN0193gopy1z0fEmoCy7z_!!0-item_pic.jpg_430x430q90.jpg', '小米九号平衡车体感智能骑行遥控代步电动'),
(16, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/1714128138/O1CN01yVNhqM29zFniRzlqU_!!0-item_pic.jpg_360x360Q90.jpg_.webp', '小米105g手机'),
(17, 'https://img.alicdn.com/imgextra/i3/27062324/O1CN01eiiINX1T2QyWDWUm0_!!0-saturn_solar.jpg_180x180.jpg', '数码摄像机高清旅游婚庆4K专业照相DV摄'),
(18, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i3/200330118/O1CN013nnq5U1Ck5L2BxVWK_!!0-saturn_solar.jpg_360x360Q90.jpg_.webp', '碳纤维单反相机三角架摄影液压阻尼摄像架子');

-- --------------------------------------------------------

--
-- 表的结构 `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `img_url` varchar(500) NOT NULL,
  `zhaiyao` varchar(100) NOT NULL,
  `category` int(5) NOT NULL,
  `click` int(10) NOT NULL DEFAULT '0',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `images`
--

INSERT INTO `images` (`id`, `title`, `img_url`, `zhaiyao`, `category`, `click`, `add_time`, `content`) VALUES
(1, '“佛系”家居，把生活过成诗', 'http://5b0988e595225.cdn.sohucs.com/images/20180119/9a3e14977598438c9997d5972d5ea05d.jpeg', '佛系家居摒弃了繁杂，强调让生活回归本质，所以大多使用天然朴素的家居材料，来营造简单舒适，又不乏温情诗意的空间氛围。', 1, 3, '2020-08-19 08:42:31', '佛系家居摒弃了繁杂，强调让生活回归本质，所以大多使用天然朴素的家居材料，来营造简单舒适，又不乏温情诗意的空间氛围。'),
(2, '“佛系”家居，把生活过成诗', 'http://5b0988e595225.cdn.sohucs.com/images/20180119/fc684bdabd52469da787bc041dae3ece.jpeg', '佛系家居摒弃了繁杂，强调让生活回归本质，所以大多使用天然朴素的家居材料，来营造简单舒适，又不乏温情诗意的空间氛围。', 1, 0, '2020-08-19 08:42:48', '佛系家居摒弃了繁杂，强调让生活回归本质，所以大多使用天然朴素的家居材料，来营造简单舒适，又不乏温情诗意的空间氛围。'),
(3, '“佛系”家居，把生活过成诗', 'http://5b0988e595225.cdn.sohucs.com/images/20180119/d52473c1173641c89ca23116fc99720b.jpeg', '佛系家居摒弃了繁杂，强调让生活回归本质，所以大多使用天然朴素的家居材料，来营造简单舒适，又不乏温情诗意的空间氛围。', 1, 0, '2020-08-19 08:42:51', '佛系家居摒弃了繁杂，强调让生活回归本质，所以大多使用天然朴素的家居材料，来营造简单舒适，又不乏温情诗意的空间氛围。'),
(4, '全球知名设计机构竞逐中国摄影博物馆方案', 'http://www.suntop168.com/blog/zb_users/upload/2014/4/BA76EECA.jpg', '都匀市vi设计公司是企业发展最重要的环节，都匀市vi设计手册是企业的品牌拥有者战略意图、品牌内涵、品牌特性的CIS视觉展现。', 2, 10, '2020-08-19 08:43:00', '都匀市vi设计公司是企业发展最重要的环节，都匀市vi设计手册是企业的品牌拥有者战略意图、品牌内涵、品牌特性的CIS视觉展现。'),
(5, '全球知名设计机构竞逐中国摄影博物馆方案', 'http://www.suntop168.com/blog/zb_users/upload/2014/4/A6C849D7.jpg', '都匀市vi设计公司是企业发展最重要的环节，都匀市vi设计手册是企业的品牌拥有者战略意图、品牌内涵、品牌特性的CIS视觉展现。', 2, 0, '2020-08-19 08:43:03', '都匀市vi设计公司是企业发展最重要的环节，都匀市vi设计手册是企业的品牌拥有者战略意图、品牌内涵、品牌特性的CIS视觉展现。'),
(6, '美女明星angelababy动人写真', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3652143839,2962400629&fm=26&gp=0.jpg', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力', 3, 3, '2020-08-19 08:43:11', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力'),
(7, '美女明星angelababy动人写真', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3529691319,2632715356&fm=26&gp=0.jpg', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力', 3, 0, '2020-08-19 08:43:15', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力'),
(8, '美女明星angelababy动人写真', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2519302108,3347112382&fm=26&gp=0.jpg', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力', 3, 0, '2020-08-19 08:43:18', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力'),
(9, '美女明星angelababy动人写真', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=294931127,4156349582&fm=26&gp=0.jpg', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力', 3, 0, '2020-08-19 14:53:27', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力'),
(10, '美女明星angelababy动人写真', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1177202771,4013701797&fm=15&gp=0.jpg', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力', 3, 0, '2020-08-19 15:01:58', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力'),
(11, '美女明星angelababy动人写真', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=34114263,4015832480&fm=11&gp=0.jpg', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力', 3, 0, '2020-08-19 14:58:39', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力'),
(12, '美女明星迪丽热巴动人写真', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2458646379,1910603158&fm=15&gp=0.jpg', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力', 3, 100, '2020-08-19 15:10:36', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力'),
(13, '美女明星迪丽热巴动人写真', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1074756602,3164509553&fm=26&gp=0.jpg', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力', 3, 0, '2020-08-19 15:10:40', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力'),
(14, '美女明星迪丽热巴动人写真', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=790101831,3005264999&fm=15&gp=0.jpg', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力', 3, 0, '2020-08-19 15:10:43', '唯美范爆棚，完美驾驭小清新风格、清纯靓丽令人难忘，尽显成熟稳重、五官精致，演绎清纯活力'),
(15, '「遇见·北欧」家居生活艺术展再度登陆', 'http://5b0988e595225.cdn.sohucs.com/images/20180315/1d9f996cd0f847af857bec1657cec916.jpeg', '2018年3月14日至17日，全球瞩目的设计盛世“设计上海”在上海展览中心再度如期举行，尖叫设计第四次参加这场年度设计盛会，举办筹备已久的「遇见·北欧」家居生活艺术展。', 1, 1, '2020-08-19 15:21:48', '2018年3月14日至17日，全球瞩目的设计盛世“设计上海”在上海展览中心再度如期举行，尖叫设计第四次参加这场年度设计盛会，举办筹备已久的「遇见·北欧」家居生活艺术展。'),
(16, '「遇见·北欧」家居生活艺术展再度登陆', 'http://5b0988e595225.cdn.sohucs.com/images/20180315/2c59e0a9a29d46249df301fe50656286.jpeg', '2018年3月14日至17日，全球瞩目的设计盛世“设计上海”在上海展览中心再度如期举行，尖叫设计第四次参加这场年度设计盛会，举办筹备已久的「遇见·北欧」家居生活艺术展。', 1, 0, '2020-08-19 15:19:54', '2018年3月14日至17日，全球瞩目的设计盛世“设计上海”在上海展览中心再度如期举行，尖叫设计第四次参加这场年度设计盛会，举办筹备已久的「遇见·北欧」家居生活艺术展。'),
(17, '「遇见·北欧」家居生活艺术展再度登陆', 'http://5b0988e595225.cdn.sohucs.com/images/20180315/ece83e993b0b40ac8fada5e72ed8a4b0.jpeg', '2018年3月14日至17日，全球瞩目的设计盛世“设计上海”在上海展览中心再度如期举行，尖叫设计第四次参加这场年度设计盛会，举办筹备已久的「遇见·北欧」家居生活艺术展。', 1, 0, '2020-08-19 15:19:57', '2018年3月14日至17日，全球瞩目的设计盛世“设计上海”在上海展览中心再度如期举行，尖叫设计第四次参加这场年度设计盛会，举办筹备已久的「遇见·北欧」家居生活艺术展。'),
(18, '家居搭配：8090我有我追求 不一样的浴室设计风格', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2933175988,192683021&fm=26&gp=0.jpg', '随着8090后开始成为消费者的主力军，为了迎合这类新生代的消费群体，产品的风格发生了很大的变化，就连家居也出现了多种多样的风格。', 1, 0, '2020-08-19 15:31:33', '随着8090后开始成为消费者的主力军，为了迎合这类新生代的消费群体，产品的风格发生了很大的变化，就连家居也出现了多种多样的风格。作为潮流 的年轻一代，在家居设计风格上面也有着不同的偏好，今天，就让小编给大家介绍一下关于浴室的不同设计风格。'),
(19, '家居搭配：8090我有我追求 不一样的浴室设计风格', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4286976120,1639022162&fm=26&gp=0.jpg', '随着8090后开始成为消费者的主力军，为了迎合这类新生代的消费群体，产品的风格发生了很大的变化，就连家居也出现了多种多样的风格。', 1, 0, '2020-08-19 15:33:24', '随着8090后开始成为消费者的主力军，为了迎合这类新生代的消费群体，产品的风格发生了很大的变化，就连家居也出现了多种多样的风格。作为潮流 的年轻一代，在家居设计风格上面也有着不同的偏好，今天，就让小编给大家介绍一下关于浴室的不同设计风格。'),
(20, '家居搭配：8090我有我追求 不一样的浴室设计风格', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3702691788,404538187&fm=26&gp=0.jpg', '随着8090后开始成为消费者的主力军，为了迎合这类新生代的消费群体，产品的风格发生了很大的变化，就连家居也出现了多种多样的风格。', 1, 0, '2020-08-19 15:34:29', '随着8090后开始成为消费者的主力军，为了迎合这类新生代的消费群体，产品的风格发生了很大的变化，就连家居也出现了多种多样的风格。作为潮流 的年轻一代，在家居设计风格上面也有着不同的偏好，今天，就让小编给大家介绍一下关于浴室的不同设计风格。');

-- --------------------------------------------------------

--
-- 表的结构 `lunbotu`
--

CREATE TABLE `lunbotu` (
  `url` varchar(500) NOT NULL COMMENT '地址',
  `id` int(11) NOT NULL COMMENT '序号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lunbotu`
--

INSERT INTO `lunbotu` (`url`, `id`) VALUES
('http://localhost:8888/Vue/vue_cni/src/images/lunbo/0864-iuzasxs3787467.jpg', 1),
('http://localhost:8888/Vue/vue_cni/src/images/lunbo/35f3-ixeeirz8368672.jpg', 2),
('http://localhost:8888/Vue/vue_cni/src/images/lunbo/1503-iwasyeh7453594.jpg', 3),
('http://localhost:8888/Vue/vue_cni/src/images/lunbo/9432-iwtqvyk4634526.jpg', 4);

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT 'undefined',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `zhaiyao` varchar(500) NOT NULL DEFAULT 'undefined',
  `click` int(11) NOT NULL DEFAULT '0',
  `img_url` varchar(500) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `title`, `add_time`, `zhaiyao`, `click`, `img_url`, `content`) VALUES
(1, '绿水青山，就是金山银山', '2020-08-25 01:54:14', '绿水青山，就是金山银山', 3, 'https://avatars1.githubusercontent.com/u/59324264?s=400&u=8fc53188d97c42219be396463f8bd8a363575cb3&v=4', '<p>　　“绿水青山就是金山银山”理念(以下简称“两山”理念)，是《习近平谈治国理政》第三卷有关生态文明建设和生态环境保护的核心内容，擘画了生态文明建设的宏伟蓝图。践行“两山”理念的关键是将自然生态财富转化为经济社会财富，打通“两山”的转化通道。青海省始终保持生态保护优先的发展定力，深刻把握“三个最大”省情定位，牢固树立和践行“两山”理念，深入实施“一优两高”，高位推动国家公园示范省建设，奋力走出了经济与环境协调发展、人与自然和谐共生的新模式。但在实践中也出现了多期叠加的过程性与阶段性问题和困难，亟需通过优化条件、培育市场、完善制度、提升认知等措施，深入推进“两山”实践、持续拓展转化路径，以提高转化质量和综合效益。</p><p>　　优化“绿水青山”的转化条件。创造良好的“绿水青山”转化环境是推动“两山”转化的基础。一要加大生态保护修复力度。以保障青藏高原生态安全和生态系统服务功能整体提升为目标，加快实施“五大生态板块”重大生态保护修复工程，开展国土综合整治修复、矿山环境恢复治理、生物多样性保护等工作，推动高寒生态系统得到整体保护和系统修复，提升“绿水青山”生产能力。二要确定青海“绿水青山”权益。加快开展自然资源资产统一确权登记，积累经验后，开展自然生态空间统一确权登记工作。创新自然资源全民所有权和集体所有权的实现形式，除重要生态功能区外，可推动所有权和使用权相分离，适度扩大使用权的出让、转让、出租、担保、入股等权能。三要开展全域“绿水青山”价值核算。“两山”转化产品价值评估是“两山”落地以及经营性和公益性资产平衡转换的过程，在目前已有评价成果的基础，采用标准统一的方法补充、细化和完善青海省生态资源、生态系统服务价值和生态产品价值核算工作。</p><p>　　加快培育建立生态产业市场。培育生态产业市场是实现“两山”转化的重要途径。一要丰富“两山”转化产品的种类和功能，实现“绿水青山”的多元化发展。确认和细化“绿水青山”在国土空间规划、国土空间用途管制和生态保护红线划定等方面设置指标的财产权属性，丰富生态产品种类和作用，推动多样化品质化品牌化生态产业发展。二要规范平等交易主体。“两山”交易主体多元化，各交易主体实际掌握的权能不一致，易造成其权益不匹配、不平等，因此规范平等各交易主体应是“绿水青山”价值实现的重要目标。三要限定生态产品市场交易的空间和规模。依据区域生态承载力、产业发展条件和市场需求潜力，尽可能实现与国土空间用途管制、区域经济发展水平和供需平衡规律接轨。四要搭建“两山”交易统一平台。建立统一的生态资源交易平台，按照统一交易规则，在公开市场上进行交易，并统一发布全国生态资源交易的政策法规和市场信息，强化生态资源市场交易动态监管。</p><p>　　完善“两山”转化的制度保障。建立系统化制度体系是促进“两山”转化的保障条件。一要建立健全地方性法律法规体系。对青海“两山”转化产品的内涵类型、价值核算机制、实现途径等内容进行规定。明确“两山”转化产品实现管理部门及其职责，制定“两山”转化产品实现的青海区域实施细则。结合实践需求，完善修改配套法律法规和相关政策，如地方性生态补偿条例等。二要建立“两山”转化市场保障机制。包括、生态资源有偿使用机制、生态资源价格形成机制、生态产品认证机制、生态产品价值核算机制、生态补偿机制、生态市场交易机制等。三要健全生态产品保护绩效评价考核和责任追究制度。在领导干部环境考核和自然资源资产离任审计中，严格执行并完善《青海省生态文明建设促进条列》《青海省党政领导干部生态环境损害责任追究实施细则》《青海省领导干部自然资源资产离任审计工作指导意见》等，强调“绿水青山”保护，强化管理者对生态产品保护的过程介入。</p><p>　　全面提升“两山”转化的认知水平。转变思想、发挥主观能动性是打通“两山”转化通道的智力支撑。一要加强全社会“两山”理论价值宣传教育。在“两山”转化过程中，全社会应充分认识到生态资源所蕴含的经济价值，真正认识到青海加快推进“两山”转化的重要性和迫切性。全体社会成员应自觉履行生态保护义务，主动参与“两山”转化。二要开展“两山”转化示范基地建设。严格评选具有代表性和典型性的“两山”示范基地，通过机制研究和实践探索，归纳总结做法经验，形成可复制可推广的模式，发挥辐射带动作用。三要巩固领导干部“两山”认知水平和强化政治责任。坚决贯彻习近平生态文明思想，坚决担当生态环境保护政治责任，把为民办事、为民造福作为最重要政绩的信念和定力。杜绝一切以牺牲环境为代价的开发利用，自觉当好生态文明建设的引领者和推动者。</p><p>　　(作者系青海省委党校副教授)</p>'),
(2, '美国加州多地发生山火 高温加剧火势蔓延', '2020-08-25 01:54:27', '美国加州多地发生山火 高温加剧火势蔓延', 45, 'https://avatars2.githubusercontent.com/u/5764308?s=460&u=7707aefa69917fd11bf5a7a72681d01bb8608f7c&v=4', '<p>当地时间8月14日，美国消防员在火灾现场进行扑救。近日，多起山火正在美国加利福尼亚州境内燃烧，持续几日的高温也加剧火势的蔓延。</p>\r\n    <img src=\"http://n.sinaimg.cn/default/1_img/upload/3933d981/750/w930h620/20200817/2559-ixvrvsp1337533.jpg\"/>\r\n    <img src=\"http://n.sinaimg.cn/default/1_img/upload/3933d981/750/w930h620/20200817/1005-ixvrvsp1337592.jpg\"/>\r\n    <img src=\"http://n.sinaimg.cn/default/1_img/upload/3933d981/749/w930h619/20200817/7b66-ixvrvsp1337646.jpg\"/>\r\n    <img src=\"http://n.sinaimg.cn/default/1_img/upload/3933d981/750/w930h620/20200817/095f-ixvrvsp1337688.jpg\"/>'),
(3, '绿水青山，就是金山银山', '2020-08-25 01:54:37', '对于人类来说，绿水青山，就是金山银山', 5, 'https://avatars2.githubusercontent.com/u/7135988?s=460&u=4722fd6290a4c88624f97ee42d10fb984cc5abde&v=4', '<p>　　“绿水青山就是金山银山”理念(以下简称“两山”理念)，是《习近平谈治国理政》第三卷有关生态文明建设和生态环境保护的核心内容，擘画了生态文明建设的宏伟蓝图。践行“两山”理念的关键是将自然生态财富转化为经济社会财富，打通“两山”的转化通道。青海省始终保持生态保护优先的发展定力，深刻把握“三个最大”省情定位，牢固树立和践行“两山”理念，深入实施“一优两高”，高位推动国家公园示范省建设，奋力走出了经济与环境协调发展、人与自然和谐共生的新模式。但在实践中也出现了多期叠加的过程性与阶段性问题和困难，亟需通过优化条件、培育市场、完善制度、提升认知等措施，深入推进“两山”实践、持续拓展转化路径，以提高转化质量和综合效益。</p><p>　　优化“绿水青山”的转化条件。创造良好的“绿水青山”转化环境是推动“两山”转化的基础。一要加大生态保护修复力度。以保障青藏高原生态安全和生态系统服务功能整体提升为目标，加快实施“五大生态板块”重大生态保护修复工程，开展国土综合整治修复、矿山环境恢复治理、生物多样性保护等工作，推动高寒生态系统得到整体保护和系统修复，提升“绿水青山”生产能力。二要确定青海“绿水青山”权益。加快开展自然资源资产统一确权登记，积累经验后，开展自然生态空间统一确权登记工作。创新自然资源全民所有权和集体所有权的实现形式，除重要生态功能区外，可推动所有权和使用权相分离，适度扩大使用权的出让、转让、出租、担保、入股等权能。三要开展全域“绿水青山”价值核算。“两山”转化产品价值评估是“两山”落地以及经营性和公益性资产平衡转换的过程，在目前已有评价成果的基础，采用标准统一的方法补充、细化和完善青海省生态资源、生态系统服务价值和生态产品价值核算工作。</p><p>　　加快培育建立生态产业市场。培育生态产业市场是实现“两山”转化的重要途径。一要丰富“两山”转化产品的种类和功能，实现“绿水青山”的多元化发展。确认和细化“绿水青山”在国土空间规划、国土空间用途管制和生态保护红线划定等方面设置指标的财产权属性，丰富生态产品种类和作用，推动多样化品质化品牌化生态产业发展。二要规范平等交易主体。“两山”交易主体多元化，各交易主体实际掌握的权能不一致，易造成其权益不匹配、不平等，因此规范平等各交易主体应是“绿水青山”价值实现的重要目标。三要限定生态产品市场交易的空间和规模。依据区域生态承载力、产业发展条件和市场需求潜力，尽可能实现与国土空间用途管制、区域经济发展水平和供需平衡规律接轨。四要搭建“两山”交易统一平台。建立统一的生态资源交易平台，按照统一交易规则，在公开市场上进行交易，并统一发布全国生态资源交易的政策法规和市场信息，强化生态资源市场交易动态监管。</p><p>　　完善“两山”转化的制度保障。建立系统化制度体系是促进“两山”转化的保障条件。一要建立健全地方性法律法规体系。对青海“两山”转化产品的内涵类型、价值核算机制、实现途径等内容进行规定。明确“两山”转化产品实现管理部门及其职责，制定“两山”转化产品实现的青海区域实施细则。结合实践需求，完善修改配套法律法规和相关政策，如地方性生态补偿条例等。二要建立“两山”转化市场保障机制。包括、生态资源有偿使用机制、生态资源价格形成机制、生态产品认证机制、生态产品价值核算机制、生态补偿机制、生态市场交易机制等。三要健全生态产品保护绩效评价考核和责任追究制度。在领导干部环境考核和自然资源资产离任审计中，严格执行并完善《青海省生态文明建设促进条列》《青海省党政领导干部生态环境损害责任追究实施细则》《青海省领导干部自然资源资产离任审计工作指导意见》等，强调“绿水青山”保护，强化管理者对生态产品保护的过程介入。</p><p>　　全面提升“两山”转化的认知水平。转变思想、发挥主观能动性是打通“两山”转化通道的智力支撑。一要加强全社会“两山”理论价值宣传教育。在“两山”转化过程中，全社会应充分认识到生态资源所蕴含的经济价值，真正认识到青海加快推进“两山”转化的重要性和迫切性。全体社会成员应自觉履行生态保护义务，主动参与“两山”转化。二要开展“两山”转化示范基地建设。严格评选具有代表性和典型性的“两山”示范基地，通过机制研究和实践探索，归纳总结做法经验，形成可复制可推广的模式，发挥辐射带动作用。三要巩固领导干部“两山”认知水平和强化政治责任。坚决贯彻习近平生态文明思想，坚决担当生态环境保护政治责任，把为民办事、为民造福作为最重要政绩的信念和定力。杜绝一切以牺牲环境为代价的开发利用，自觉当好生态文明建设的引领者和推动者。</p><p>　　(作者系青海省委党校副教授)</p>'),
(4, '绿水青山，就是金山银山', '2020-08-25 01:54:39', '对于人类来说，绿水青山，就是金山银山', 66, 'https://avatars1.githubusercontent.com/u/4433217?s=460&v=4', '<p>　　“绿水青山就是金山银山”理念(以下简称“两山”理念)，是《习近平谈治国理政》第三卷有关生态文明建设和生态环境保护的核心内容，擘画了生态文明建设的宏伟蓝图。践行“两山”理念的关键是将自然生态财富转化为经济社会财富，打通“两山”的转化通道。青海省始终保持生态保护优先的发展定力，深刻把握“三个最大”省情定位，牢固树立和践行“两山”理念，深入实施“一优两高”，高位推动国家公园示范省建设，奋力走出了经济与环境协调发展、人与自然和谐共生的新模式。但在实践中也出现了多期叠加的过程性与阶段性问题和困难，亟需通过优化条件、培育市场、完善制度、提升认知等措施，深入推进“两山”实践、持续拓展转化路径，以提高转化质量和综合效益。</p><p>　　优化“绿水青山”的转化条件。创造良好的“绿水青山”转化环境是推动“两山”转化的基础。一要加大生态保护修复力度。以保障青藏高原生态安全和生态系统服务功能整体提升为目标，加快实施“五大生态板块”重大生态保护修复工程，开展国土综合整治修复、矿山环境恢复治理、生物多样性保护等工作，推动高寒生态系统得到整体保护和系统修复，提升“绿水青山”生产能力。二要确定青海“绿水青山”权益。加快开展自然资源资产统一确权登记，积累经验后，开展自然生态空间统一确权登记工作。创新自然资源全民所有权和集体所有权的实现形式，除重要生态功能区外，可推动所有权和使用权相分离，适度扩大使用权的出让、转让、出租、担保、入股等权能。三要开展全域“绿水青山”价值核算。“两山”转化产品价值评估是“两山”落地以及经营性和公益性资产平衡转换的过程，在目前已有评价成果的基础，采用标准统一的方法补充、细化和完善青海省生态资源、生态系统服务价值和生态产品价值核算工作。</p><p>　　加快培育建立生态产业市场。培育生态产业市场是实现“两山”转化的重要途径。一要丰富“两山”转化产品的种类和功能，实现“绿水青山”的多元化发展。确认和细化“绿水青山”在国土空间规划、国土空间用途管制和生态保护红线划定等方面设置指标的财产权属性，丰富生态产品种类和作用，推动多样化品质化品牌化生态产业发展。二要规范平等交易主体。“两山”交易主体多元化，各交易主体实际掌握的权能不一致，易造成其权益不匹配、不平等，因此规范平等各交易主体应是“绿水青山”价值实现的重要目标。三要限定生态产品市场交易的空间和规模。依据区域生态承载力、产业发展条件和市场需求潜力，尽可能实现与国土空间用途管制、区域经济发展水平和供需平衡规律接轨。四要搭建“两山”交易统一平台。建立统一的生态资源交易平台，按照统一交易规则，在公开市场上进行交易，并统一发布全国生态资源交易的政策法规和市场信息，强化生态资源市场交易动态监管。</p><p>　　完善“两山”转化的制度保障。建立系统化制度体系是促进“两山”转化的保障条件。一要建立健全地方性法律法规体系。对青海“两山”转化产品的内涵类型、价值核算机制、实现途径等内容进行规定。明确“两山”转化产品实现管理部门及其职责，制定“两山”转化产品实现的青海区域实施细则。结合实践需求，完善修改配套法律法规和相关政策，如地方性生态补偿条例等。二要建立“两山”转化市场保障机制。包括、生态资源有偿使用机制、生态资源价格形成机制、生态产品认证机制、生态产品价值核算机制、生态补偿机制、生态市场交易机制等。三要健全生态产品保护绩效评价考核和责任追究制度。在领导干部环境考核和自然资源资产离任审计中，严格执行并完善《青海省生态文明建设促进条列》《青海省党政领导干部生态环境损害责任追究实施细则》《青海省领导干部自然资源资产离任审计工作指导意见》等，强调“绿水青山”保护，强化管理者对生态产品保护的过程介入。</p><p>　　全面提升“两山”转化的认知水平。转变思想、发挥主观能动性是打通“两山”转化通道的智力支撑。一要加强全社会“两山”理论价值宣传教育。在“两山”转化过程中，全社会应充分认识到生态资源所蕴含的经济价值，真正认识到青海加快推进“两山”转化的重要性和迫切性。全体社会成员应自觉履行生态保护义务，主动参与“两山”转化。二要开展“两山”转化示范基地建设。严格评选具有代表性和典型性的“两山”示范基地，通过机制研究和实践探索，归纳总结做法经验，形成可复制可推广的模式，发挥辐射带动作用。三要巩固领导干部“两山”认知水平和强化政治责任。坚决贯彻习近平生态文明思想，坚决担当生态环境保护政治责任，把为民办事、为民造福作为最重要政绩的信念和定力。杜绝一切以牺牲环境为代价的开发利用，自觉当好生态文明建设的引领者和推动者。</p><p>　　(作者系青海省委党校副教授)</p>'),
(5, '绿水青山，就是金山银山', '2020-08-25 01:54:42', '对于人类来说，绿水青山，就是金山银山', 55, 'https://avatars2.githubusercontent.com/u/7064796?s=460&u=f863f160fc06de465d103cde42555bab20c20905&v=4', '<p>　　“绿水青山就是金山银山”理念(以下简称“两山”理念)，是《习近平谈治国理政》第三卷有关生态文明建设和生态环境保护的核心内容，擘画了生态文明建设的宏伟蓝图。践行“两山”理念的关键是将自然生态财富转化为经济社会财富，打通“两山”的转化通道。青海省始终保持生态保护优先的发展定力，深刻把握“三个最大”省情定位，牢固树立和践行“两山”理念，深入实施“一优两高”，高位推动国家公园示范省建设，奋力走出了经济与环境协调发展、人与自然和谐共生的新模式。但在实践中也出现了多期叠加的过程性与阶段性问题和困难，亟需通过优化条件、培育市场、完善制度、提升认知等措施，深入推进“两山”实践、持续拓展转化路径，以提高转化质量和综合效益。</p><p>　　优化“绿水青山”的转化条件。创造良好的“绿水青山”转化环境是推动“两山”转化的基础。一要加大生态保护修复力度。以保障青藏高原生态安全和生态系统服务功能整体提升为目标，加快实施“五大生态板块”重大生态保护修复工程，开展国土综合整治修复、矿山环境恢复治理、生物多样性保护等工作，推动高寒生态系统得到整体保护和系统修复，提升“绿水青山”生产能力。二要确定青海“绿水青山”权益。加快开展自然资源资产统一确权登记，积累经验后，开展自然生态空间统一确权登记工作。创新自然资源全民所有权和集体所有权的实现形式，除重要生态功能区外，可推动所有权和使用权相分离，适度扩大使用权的出让、转让、出租、担保、入股等权能。三要开展全域“绿水青山”价值核算。“两山”转化产品价值评估是“两山”落地以及经营性和公益性资产平衡转换的过程，在目前已有评价成果的基础，采用标准统一的方法补充、细化和完善青海省生态资源、生态系统服务价值和生态产品价值核算工作。</p><p>　　加快培育建立生态产业市场。培育生态产业市场是实现“两山”转化的重要途径。一要丰富“两山”转化产品的种类和功能，实现“绿水青山”的多元化发展。确认和细化“绿水青山”在国土空间规划、国土空间用途管制和生态保护红线划定等方面设置指标的财产权属性，丰富生态产品种类和作用，推动多样化品质化品牌化生态产业发展。二要规范平等交易主体。“两山”交易主体多元化，各交易主体实际掌握的权能不一致，易造成其权益不匹配、不平等，因此规范平等各交易主体应是“绿水青山”价值实现的重要目标。三要限定生态产品市场交易的空间和规模。依据区域生态承载力、产业发展条件和市场需求潜力，尽可能实现与国土空间用途管制、区域经济发展水平和供需平衡规律接轨。四要搭建“两山”交易统一平台。建立统一的生态资源交易平台，按照统一交易规则，在公开市场上进行交易，并统一发布全国生态资源交易的政策法规和市场信息，强化生态资源市场交易动态监管。</p><p>　　完善“两山”转化的制度保障。建立系统化制度体系是促进“两山”转化的保障条件。一要建立健全地方性法律法规体系。对青海“两山”转化产品的内涵类型、价值核算机制、实现途径等内容进行规定。明确“两山”转化产品实现管理部门及其职责，制定“两山”转化产品实现的青海区域实施细则。结合实践需求，完善修改配套法律法规和相关政策，如地方性生态补偿条例等。二要建立“两山”转化市场保障机制。包括、生态资源有偿使用机制、生态资源价格形成机制、生态产品认证机制、生态产品价值核算机制、生态补偿机制、生态市场交易机制等。三要健全生态产品保护绩效评价考核和责任追究制度。在领导干部环境考核和自然资源资产离任审计中，严格执行并完善《青海省生态文明建设促进条列》《青海省党政领导干部生态环境损害责任追究实施细则》《青海省领导干部自然资源资产离任审计工作指导意见》等，强调“绿水青山”保护，强化管理者对生态产品保护的过程介入。</p><p>　　全面提升“两山”转化的认知水平。转变思想、发挥主观能动性是打通“两山”转化通道的智力支撑。一要加强全社会“两山”理论价值宣传教育。在“两山”转化过程中，全社会应充分认识到生态资源所蕴含的经济价值，真正认识到青海加快推进“两山”转化的重要性和迫切性。全体社会成员应自觉履行生态保护义务，主动参与“两山”转化。二要开展“两山”转化示范基地建设。严格评选具有代表性和典型性的“两山”示范基地，通过机制研究和实践探索，归纳总结做法经验，形成可复制可推广的模式，发挥辐射带动作用。三要巩固领导干部“两山”认知水平和强化政治责任。坚决贯彻习近平生态文明思想，坚决担当生态环境保护政治责任，把为民办事、为民造福作为最重要政绩的信念和定力。杜绝一切以牺牲环境为代价的开发利用，自觉当好生态文明建设的引领者和推动者。</p><p>　　(作者系青海省委党校副教授)</p>'),
(6, '绿水青山，就是金山银山', '2020-08-25 01:54:44', '对于人类来说，绿水青山，就是金山银山', 0, 'https://avatars2.githubusercontent.com/u/20425044?s=460&u=3f22544bbd61b329c2c0bd969792894a40bd1bfc&v=4', '<p>　　“绿水青山就是金山银山”理念(以下简称“两山”理念)，是《习近平谈治国理政》第三卷有关生态文明建设和生态环境保护的核心内容，擘画了生态文明建设的宏伟蓝图。践行“两山”理念的关键是将自然生态财富转化为经济社会财富，打通“两山”的转化通道。青海省始终保持生态保护优先的发展定力，深刻把握“三个最大”省情定位，牢固树立和践行“两山”理念，深入实施“一优两高”，高位推动国家公园示范省建设，奋力走出了经济与环境协调发展、人与自然和谐共生的新模式。但在实践中也出现了多期叠加的过程性与阶段性问题和困难，亟需通过优化条件、培育市场、完善制度、提升认知等措施，深入推进“两山”实践、持续拓展转化路径，以提高转化质量和综合效益。</p><p>　　优化“绿水青山”的转化条件。创造良好的“绿水青山”转化环境是推动“两山”转化的基础。一要加大生态保护修复力度。以保障青藏高原生态安全和生态系统服务功能整体提升为目标，加快实施“五大生态板块”重大生态保护修复工程，开展国土综合整治修复、矿山环境恢复治理、生物多样性保护等工作，推动高寒生态系统得到整体保护和系统修复，提升“绿水青山”生产能力。二要确定青海“绿水青山”权益。加快开展自然资源资产统一确权登记，积累经验后，开展自然生态空间统一确权登记工作。创新自然资源全民所有权和集体所有权的实现形式，除重要生态功能区外，可推动所有权和使用权相分离，适度扩大使用权的出让、转让、出租、担保、入股等权能。三要开展全域“绿水青山”价值核算。“两山”转化产品价值评估是“两山”落地以及经营性和公益性资产平衡转换的过程，在目前已有评价成果的基础，采用标准统一的方法补充、细化和完善青海省生态资源、生态系统服务价值和生态产品价值核算工作。</p><p>　　加快培育建立生态产业市场。培育生态产业市场是实现“两山”转化的重要途径。一要丰富“两山”转化产品的种类和功能，实现“绿水青山”的多元化发展。确认和细化“绿水青山”在国土空间规划、国土空间用途管制和生态保护红线划定等方面设置指标的财产权属性，丰富生态产品种类和作用，推动多样化品质化品牌化生态产业发展。二要规范平等交易主体。“两山”交易主体多元化，各交易主体实际掌握的权能不一致，易造成其权益不匹配、不平等，因此规范平等各交易主体应是“绿水青山”价值实现的重要目标。三要限定生态产品市场交易的空间和规模。依据区域生态承载力、产业发展条件和市场需求潜力，尽可能实现与国土空间用途管制、区域经济发展水平和供需平衡规律接轨。四要搭建“两山”交易统一平台。建立统一的生态资源交易平台，按照统一交易规则，在公开市场上进行交易，并统一发布全国生态资源交易的政策法规和市场信息，强化生态资源市场交易动态监管。</p><p>　　完善“两山”转化的制度保障。建立系统化制度体系是促进“两山”转化的保障条件。一要建立健全地方性法律法规体系。对青海“两山”转化产品的内涵类型、价值核算机制、实现途径等内容进行规定。明确“两山”转化产品实现管理部门及其职责，制定“两山”转化产品实现的青海区域实施细则。结合实践需求，完善修改配套法律法规和相关政策，如地方性生态补偿条例等。二要建立“两山”转化市场保障机制。包括、生态资源有偿使用机制、生态资源价格形成机制、生态产品认证机制、生态产品价值核算机制、生态补偿机制、生态市场交易机制等。三要健全生态产品保护绩效评价考核和责任追究制度。在领导干部环境考核和自然资源资产离任审计中，严格执行并完善《青海省生态文明建设促进条列》《青海省党政领导干部生态环境损害责任追究实施细则》《青海省领导干部自然资源资产离任审计工作指导意见》等，强调“绿水青山”保护，强化管理者对生态产品保护的过程介入。</p><p>　　全面提升“两山”转化的认知水平。转变思想、发挥主观能动性是打通“两山”转化通道的智力支撑。一要加强全社会“两山”理论价值宣传教育。在“两山”转化过程中，全社会应充分认识到生态资源所蕴含的经济价值，真正认识到青海加快推进“两山”转化的重要性和迫切性。全体社会成员应自觉履行生态保护义务，主动参与“两山”转化。二要开展“两山”转化示范基地建设。严格评选具有代表性和典型性的“两山”示范基地，通过机制研究和实践探索，归纳总结做法经验，形成可复制可推广的模式，发挥辐射带动作用。三要巩固领导干部“两山”认知水平和强化政治责任。坚决贯彻习近平生态文明思想，坚决担当生态环境保护政治责任，把为民办事、为民造福作为最重要政绩的信念和定力。杜绝一切以牺牲环境为代价的开发利用，自觉当好生态文明建设的引领者和推动者。</p><p>　　(作者系青海省委党校副教授)</p>'),
(7, '绿水青山，就是金山银山', '2020-08-25 01:54:47', '对于人类来说，绿水青山，就是金山银山', 2, 'https://avatars1.githubusercontent.com/u/59324264?s=400&u=8fc53188d97c42219be396463f8bd8a363575cb3&v=4', '<p>　　“绿水青山就是金山银山”理念(以下简称“两山”理念)，是《习近平谈治国理政》第三卷有关生态文明建设和生态环境保护的核心内容，擘画了生态文明建设的宏伟蓝图。践行“两山”理念的关键是将自然生态财富转化为经济社会财富，打通“两山”的转化通道。青海省始终保持生态保护优先的发展定力，深刻把握“三个最大”省情定位，牢固树立和践行“两山”理念，深入实施“一优两高”，高位推动国家公园示范省建设，奋力走出了经济与环境协调发展、人与自然和谐共生的新模式。但在实践中也出现了多期叠加的过程性与阶段性问题和困难，亟需通过优化条件、培育市场、完善制度、提升认知等措施，深入推进“两山”实践、持续拓展转化路径，以提高转化质量和综合效益。</p><p>　　优化“绿水青山”的转化条件。创造良好的“绿水青山”转化环境是推动“两山”转化的基础。一要加大生态保护修复力度。以保障青藏高原生态安全和生态系统服务功能整体提升为目标，加快实施“五大生态板块”重大生态保护修复工程，开展国土综合整治修复、矿山环境恢复治理、生物多样性保护等工作，推动高寒生态系统得到整体保护和系统修复，提升“绿水青山”生产能力。二要确定青海“绿水青山”权益。加快开展自然资源资产统一确权登记，积累经验后，开展自然生态空间统一确权登记工作。创新自然资源全民所有权和集体所有权的实现形式，除重要生态功能区外，可推动所有权和使用权相分离，适度扩大使用权的出让、转让、出租、担保、入股等权能。三要开展全域“绿水青山”价值核算。“两山”转化产品价值评估是“两山”落地以及经营性和公益性资产平衡转换的过程，在目前已有评价成果的基础，采用标准统一的方法补充、细化和完善青海省生态资源、生态系统服务价值和生态产品价值核算工作。</p><p>　　加快培育建立生态产业市场。培育生态产业市场是实现“两山”转化的重要途径。一要丰富“两山”转化产品的种类和功能，实现“绿水青山”的多元化发展。确认和细化“绿水青山”在国土空间规划、国土空间用途管制和生态保护红线划定等方面设置指标的财产权属性，丰富生态产品种类和作用，推动多样化品质化品牌化生态产业发展。二要规范平等交易主体。“两山”交易主体多元化，各交易主体实际掌握的权能不一致，易造成其权益不匹配、不平等，因此规范平等各交易主体应是“绿水青山”价值实现的重要目标。三要限定生态产品市场交易的空间和规模。依据区域生态承载力、产业发展条件和市场需求潜力，尽可能实现与国土空间用途管制、区域经济发展水平和供需平衡规律接轨。四要搭建“两山”交易统一平台。建立统一的生态资源交易平台，按照统一交易规则，在公开市场上进行交易，并统一发布全国生态资源交易的政策法规和市场信息，强化生态资源市场交易动态监管。</p><p>　　完善“两山”转化的制度保障。建立系统化制度体系是促进“两山”转化的保障条件。一要建立健全地方性法律法规体系。对青海“两山”转化产品的内涵类型、价值核算机制、实现途径等内容进行规定。明确“两山”转化产品实现管理部门及其职责，制定“两山”转化产品实现的青海区域实施细则。结合实践需求，完善修改配套法律法规和相关政策，如地方性生态补偿条例等。二要建立“两山”转化市场保障机制。包括、生态资源有偿使用机制、生态资源价格形成机制、生态产品认证机制、生态产品价值核算机制、生态补偿机制、生态市场交易机制等。三要健全生态产品保护绩效评价考核和责任追究制度。在领导干部环境考核和自然资源资产离任审计中，严格执行并完善《青海省生态文明建设促进条列》《青海省党政领导干部生态环境损害责任追究实施细则》《青海省领导干部自然资源资产离任审计工作指导意见》等，强调“绿水青山”保护，强化管理者对生态产品保护的过程介入。</p><p>　　全面提升“两山”转化的认知水平。转变思想、发挥主观能动性是打通“两山”转化通道的智力支撑。一要加强全社会“两山”理论价值宣传教育。在“两山”转化过程中，全社会应充分认识到生态资源所蕴含的经济价值，真正认识到青海加快推进“两山”转化的重要性和迫切性。全体社会成员应自觉履行生态保护义务，主动参与“两山”转化。二要开展“两山”转化示范基地建设。严格评选具有代表性和典型性的“两山”示范基地，通过机制研究和实践探索，归纳总结做法经验，形成可复制可推广的模式，发挥辐射带动作用。三要巩固领导干部“两山”认知水平和强化政治责任。坚决贯彻习近平生态文明思想，坚决担当生态环境保护政治责任，把为民办事、为民造福作为最重要政绩的信念和定力。杜绝一切以牺牲环境为代价的开发利用，自觉当好生态文明建设的引领者和推动者。</p><p>　　(作者系青海省委党校副教授)</p>'),
(8, '绿水青山，就是金山银山', '2020-08-25 01:54:50', '对于人类来说，绿水青山，就是金山银山', 3, 'https://avatars2.githubusercontent.com/u/5764308?s=460&u=7707aefa69917fd11bf5a7a72681d01bb8608f7c&v=4', '<p>　　“绿水青山就是金山银山”理念(以下简称“两山”理念)，是《习近平谈治国理政》第三卷有关生态文明建设和生态环境保护的核心内容，擘画了生态文明建设的宏伟蓝图。践行“两山”理念的关键是将自然生态财富转化为经济社会财富，打通“两山”的转化通道。青海省始终保持生态保护优先的发展定力，深刻把握“三个最大”省情定位，牢固树立和践行“两山”理念，深入实施“一优两高”，高位推动国家公园示范省建设，奋力走出了经济与环境协调发展、人与自然和谐共生的新模式。但在实践中也出现了多期叠加的过程性与阶段性问题和困难，亟需通过优化条件、培育市场、完善制度、提升认知等措施，深入推进“两山”实践、持续拓展转化路径，以提高转化质量和综合效益。</p><p>　　优化“绿水青山”的转化条件。创造良好的“绿水青山”转化环境是推动“两山”转化的基础。一要加大生态保护修复力度。以保障青藏高原生态安全和生态系统服务功能整体提升为目标，加快实施“五大生态板块”重大生态保护修复工程，开展国土综合整治修复、矿山环境恢复治理、生物多样性保护等工作，推动高寒生态系统得到整体保护和系统修复，提升“绿水青山”生产能力。二要确定青海“绿水青山”权益。加快开展自然资源资产统一确权登记，积累经验后，开展自然生态空间统一确权登记工作。创新自然资源全民所有权和集体所有权的实现形式，除重要生态功能区外，可推动所有权和使用权相分离，适度扩大使用权的出让、转让、出租、担保、入股等权能。三要开展全域“绿水青山”价值核算。“两山”转化产品价值评估是“两山”落地以及经营性和公益性资产平衡转换的过程，在目前已有评价成果的基础，采用标准统一的方法补充、细化和完善青海省生态资源、生态系统服务价值和生态产品价值核算工作。</p><p>　　加快培育建立生态产业市场。培育生态产业市场是实现“两山”转化的重要途径。一要丰富“两山”转化产品的种类和功能，实现“绿水青山”的多元化发展。确认和细化“绿水青山”在国土空间规划、国土空间用途管制和生态保护红线划定等方面设置指标的财产权属性，丰富生态产品种类和作用，推动多样化品质化品牌化生态产业发展。二要规范平等交易主体。“两山”交易主体多元化，各交易主体实际掌握的权能不一致，易造成其权益不匹配、不平等，因此规范平等各交易主体应是“绿水青山”价值实现的重要目标。三要限定生态产品市场交易的空间和规模。依据区域生态承载力、产业发展条件和市场需求潜力，尽可能实现与国土空间用途管制、区域经济发展水平和供需平衡规律接轨。四要搭建“两山”交易统一平台。建立统一的生态资源交易平台，按照统一交易规则，在公开市场上进行交易，并统一发布全国生态资源交易的政策法规和市场信息，强化生态资源市场交易动态监管。</p><p>　　完善“两山”转化的制度保障。建立系统化制度体系是促进“两山”转化的保障条件。一要建立健全地方性法律法规体系。对青海“两山”转化产品的内涵类型、价值核算机制、实现途径等内容进行规定。明确“两山”转化产品实现管理部门及其职责，制定“两山”转化产品实现的青海区域实施细则。结合实践需求，完善修改配套法律法规和相关政策，如地方性生态补偿条例等。二要建立“两山”转化市场保障机制。包括、生态资源有偿使用机制、生态资源价格形成机制、生态产品认证机制、生态产品价值核算机制、生态补偿机制、生态市场交易机制等。三要健全生态产品保护绩效评价考核和责任追究制度。在领导干部环境考核和自然资源资产离任审计中，严格执行并完善《青海省生态文明建设促进条列》《青海省党政领导干部生态环境损害责任追究实施细则》《青海省领导干部自然资源资产离任审计工作指导意见》等，强调“绿水青山”保护，强化管理者对生态产品保护的过程介入。</p><p>　　全面提升“两山”转化的认知水平。转变思想、发挥主观能动性是打通“两山”转化通道的智力支撑。一要加强全社会“两山”理论价值宣传教育。在“两山”转化过程中，全社会应充分认识到生态资源所蕴含的经济价值，真正认识到青海加快推进“两山”转化的重要性和迫切性。全体社会成员应自觉履行生态保护义务，主动参与“两山”转化。二要开展“两山”转化示范基地建设。严格评选具有代表性和典型性的“两山”示范基地，通过机制研究和实践探索，归纳总结做法经验，形成可复制可推广的模式，发挥辐射带动作用。三要巩固领导干部“两山”认知水平和强化政治责任。坚决贯彻习近平生态文明思想，坚决担当生态环境保护政治责任，把为民办事、为民造福作为最重要政绩的信念和定力。杜绝一切以牺牲环境为代价的开发利用，自觉当好生态文明建设的引领者和推动者。</p><p>　　(作者系青海省委党校副教授)</p>'),
(9, '绿水青山，就是金山银山', '2020-08-25 01:54:55', '对于人类来说，绿水青山，就是金山银山', 43, 'https://avatars2.githubusercontent.com/u/7064796?s=460&u=f863f160fc06de465d103cde42555bab20c20905&v=4', '<p>　　“绿水青山就是金山银山”理念(以下简称“两山”理念)，是《习近平谈治国理政》第三卷有关生态文明建设和生态环境保护的核心内容，擘画了生态文明建设的宏伟蓝图。践行“两山”理念的关键是将自然生态财富转化为经济社会财富，打通“两山”的转化通道。青海省始终保持生态保护优先的发展定力，深刻把握“三个最大”省情定位，牢固树立和践行“两山”理念，深入实施“一优两高”，高位推动国家公园示范省建设，奋力走出了经济与环境协调发展、人与自然和谐共生的新模式。但在实践中也出现了多期叠加的过程性与阶段性问题和困难，亟需通过优化条件、培育市场、完善制度、提升认知等措施，深入推进“两山”实践、持续拓展转化路径，以提高转化质量和综合效益。</p><p>　　优化“绿水青山”的转化条件。创造良好的“绿水青山”转化环境是推动“两山”转化的基础。一要加大生态保护修复力度。以保障青藏高原生态安全和生态系统服务功能整体提升为目标，加快实施“五大生态板块”重大生态保护修复工程，开展国土综合整治修复、矿山环境恢复治理、生物多样性保护等工作，推动高寒生态系统得到整体保护和系统修复，提升“绿水青山”生产能力。二要确定青海“绿水青山”权益。加快开展自然资源资产统一确权登记，积累经验后，开展自然生态空间统一确权登记工作。创新自然资源全民所有权和集体所有权的实现形式，除重要生态功能区外，可推动所有权和使用权相分离，适度扩大使用权的出让、转让、出租、担保、入股等权能。三要开展全域“绿水青山”价值核算。“两山”转化产品价值评估是“两山”落地以及经营性和公益性资产平衡转换的过程，在目前已有评价成果的基础，采用标准统一的方法补充、细化和完善青海省生态资源、生态系统服务价值和生态产品价值核算工作。</p><p>　　加快培育建立生态产业市场。培育生态产业市场是实现“两山”转化的重要途径。一要丰富“两山”转化产品的种类和功能，实现“绿水青山”的多元化发展。确认和细化“绿水青山”在国土空间规划、国土空间用途管制和生态保护红线划定等方面设置指标的财产权属性，丰富生态产品种类和作用，推动多样化品质化品牌化生态产业发展。二要规范平等交易主体。“两山”交易主体多元化，各交易主体实际掌握的权能不一致，易造成其权益不匹配、不平等，因此规范平等各交易主体应是“绿水青山”价值实现的重要目标。三要限定生态产品市场交易的空间和规模。依据区域生态承载力、产业发展条件和市场需求潜力，尽可能实现与国土空间用途管制、区域经济发展水平和供需平衡规律接轨。四要搭建“两山”交易统一平台。建立统一的生态资源交易平台，按照统一交易规则，在公开市场上进行交易，并统一发布全国生态资源交易的政策法规和市场信息，强化生态资源市场交易动态监管。</p><p>　　完善“两山”转化的制度保障。建立系统化制度体系是促进“两山”转化的保障条件。一要建立健全地方性法律法规体系。对青海“两山”转化产品的内涵类型、价值核算机制、实现途径等内容进行规定。明确“两山”转化产品实现管理部门及其职责，制定“两山”转化产品实现的青海区域实施细则。结合实践需求，完善修改配套法律法规和相关政策，如地方性生态补偿条例等。二要建立“两山”转化市场保障机制。包括、生态资源有偿使用机制、生态资源价格形成机制、生态产品认证机制、生态产品价值核算机制、生态补偿机制、生态市场交易机制等。三要健全生态产品保护绩效评价考核和责任追究制度。在领导干部环境考核和自然资源资产离任审计中，严格执行并完善《青海省生态文明建设促进条列》《青海省党政领导干部生态环境损害责任追究实施细则》《青海省领导干部自然资源资产离任审计工作指导意见》等，强调“绿水青山”保护，强化管理者对生态产品保护的过程介入。</p><p>　　全面提升“两山”转化的认知水平。转变思想、发挥主观能动性是打通“两山”转化通道的智力支撑。一要加强全社会“两山”理论价值宣传教育。在“两山”转化过程中，全社会应充分认识到生态资源所蕴含的经济价值，真正认识到青海加快推进“两山”转化的重要性和迫切性。全体社会成员应自觉履行生态保护义务，主动参与“两山”转化。二要开展“两山”转化示范基地建设。严格评选具有代表性和典型性的“两山”示范基地，通过机制研究和实践探索，归纳总结做法经验，形成可复制可推广的模式，发挥辐射带动作用。三要巩固领导干部“两山”认知水平和强化政治责任。坚决贯彻习近平生态文明思想，坚决担当生态环境保护政治责任，把为民办事、为民造福作为最重要政绩的信念和定力。杜绝一切以牺牲环境为代价的开发利用，自觉当好生态文明建设的引领者和推动者。</p><p>　　(作者系青海省委党校副教授)</p>');

--
-- 转储表的索引
--

--
-- 表的索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`add_time`);

--
-- 表的索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `goodthumimages`
--
ALTER TABLE `goodthumimages`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `lunbotu`
--
ALTER TABLE `lunbotu`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `goodthumimages`
--
ALTER TABLE `goodthumimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号', AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `lunbotu`
--
ALTER TABLE `lunbotu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
