/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t054`;
CREATE DATABASE IF NOT EXISTS `t054` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t054`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033879808 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-04-10 04:28:34', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-04-10 04:28:34', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-04-10 04:28:34', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-04-10 04:28:34', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-04-10 04:28:34', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-04-10 04:28:34', 6, '宇宙银河系月球1号', '月某', '13823888886', '是'),
	(1618033879807, '2021-04-10 05:51:19', 1618033830452, '广东省佛山市禅城区祖庙街道季华五路金海广场', '陈一', '12312312312', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705721738318 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1705721382668, '2024-01-20 03:29:42', 'shangpinxinxi', 11, 51, '商品名称1', 'http://localhost:8080/springboot4r3y8/upload/1618033185354.jpg', 1, 99.9, 0),
	(1705721738317, '2024-01-20 03:35:37', 'shangpinxinxi', 11, 1618033737545, '歌莉娅2021年春新款卫衣', 'http://localhost:8080/springboot4r3y8/upload/1618033717266.jpg', 1, 399, 0);

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618034062104 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(71, '2021-04-10 04:28:34', 1, 1, '提问1', '回复1', 1),
	(72, '2021-04-10 04:28:34', 2, 2, '提问2', '回复2', 2),
	(73, '2021-04-10 04:28:34', 3, 3, '提问3', '回复3', 3),
	(74, '2021-04-10 04:28:34', 4, 4, '提问4', '回复4', 4),
	(75, '2021-04-10 04:28:34', 5, 5, '提问5', '回复5', 5),
	(76, '2021-04-10 04:28:34', 6, 6, '提问6', '回复6', 6),
	(1618034020878, '2021-04-10 05:53:40', 1618033830452, NULL, '请问有西装外套吗', NULL, 0),
	(1618034062103, '2021-04-10 05:54:21', 1618033830452, 1, NULL, '有', NULL);

DROP TABLE IF EXISTS `chima`;
CREATE TABLE IF NOT EXISTS `chima` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chima` varchar(200) NOT NULL COMMENT '尺码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chima` (`chima`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033687650 DEFAULT CHARSET=utf8mb3 COMMENT='尺码';

DELETE FROM `chima`;
INSERT INTO `chima` (`id`, `addtime`, `chima`) VALUES
	(41, '2021-04-10 04:28:34', '尺码1'),
	(42, '2021-04-10 04:28:34', '尺码2'),
	(43, '2021-04-10 04:28:34', '尺码3'),
	(44, '2021-04-10 04:28:34', '尺码4'),
	(45, '2021-04-10 04:28:34', '尺码5'),
	(46, '2021-04-10 04:28:34', '尺码6'),
	(1618033674668, '2021-04-10 05:47:54', 'XS(160/80A)'),
	(1618033687649, '2021-04-10 05:48:06', '34(165/64A)');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot4r3y8/upload/1618033293154.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot4r3y8/upload/1618033747645.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot4r3y8/upload/1618033758710.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `dingdanpingjia`;
CREATE TABLE IF NOT EXISTS `dingdanpingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618034150010 DEFAULT CHARSET=utf8mb3 COMMENT='订单评价';

DELETE FROM `dingdanpingjia`;
INSERT INTO `dingdanpingjia` (`id`, `addtime`, `dingdanbianhao`, `shangpinmingcheng`, `shangpinfenlei`, `pingfen`, `tianjiatupian`, `pingjianeirong`, `pingjiariqi`, `yonghuming`, `lianxidianhua`, `sfsh`, `shhf`) VALUES
	(61, '2021-04-10 04:28:34', '订单编号1', '商品名称1', '商品分类1', '1', 'http://localhost:8080/springboot4r3y8/upload/1618033242977.jpg', '评价内容1', '2021-04-10', '用户名1', '联系电话1', '是', ''),
	(62, '2021-04-10 04:28:34', '订单编号2', '商品名称2', '商品分类2', '1', 'http://localhost:8080/springboot4r3y8/upload/1618033251015.jpg', '评价内容2', '2021-04-10', '用户名2', '联系电话2', '是', ''),
	(63, '2021-04-10 04:28:34', '订单编号3', '商品名称3', '商品分类3', '1', 'http://localhost:8080/springboot4r3y8/upload/1618033258115.jpg', '评价内容3', '2021-04-10', '用户名3', '联系电话3', '是', ''),
	(64, '2021-04-10 04:28:34', '订单编号4', '商品名称4', '商品分类4', '1', 'http://localhost:8080/springboot4r3y8/upload/1618033265836.jpg', '评价内容4', '2021-04-10', '用户名4', '联系电话4', '是', ''),
	(65, '2021-04-10 04:28:34', '订单编号5', '商品名称5', '商品分类5', '1', 'http://localhost:8080/springboot4r3y8/upload/1618033275971.jpg', '评价内容5', '2021-04-10', '用户名5', '联系电话5', '是', ''),
	(66, '2021-04-10 04:28:34', '订单编号6', '商品名称6', '商品分类6', '1', 'http://localhost:8080/springboot4r3y8/upload/1618033283168.jpg', '评价内容6', '2021-04-10', '用户名6', '联系电话6', '是', ''),
	(1618034150009, '2021-04-10 05:55:49', '202141013535068581766', '歌莉娅2021年春新款卫衣', '卫衣', '5', 'http://localhost:8080/springboot4r3y8/upload/1618034138962.jpg', '材质款式都不错', '2021-04-10', '1', '12312312312', '是', '感谢支持');

DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE IF NOT EXISTS `discussshangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息评论表';

DELETE FROM `discussshangpinxinxi`;
INSERT INTO `discussshangpinxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(131, '2021-04-10 04:28:35', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(132, '2021-04-10 04:28:35', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(133, '2021-04-10 04:28:35', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(134, '2021-04-10 04:28:35', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(135, '2021-04-10 04:28:35', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(136, '2021-04-10 04:28:35', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033809620 DEFAULT CHARSET=utf8mb3 COMMENT='商品资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(121, '2021-04-10 04:28:34', '标题1', '简介1', 'http://localhost:8080/springboot4r3y8/upload/1618033301322.jpg', '<p>内容1</p>'),
	(122, '2021-04-10 04:28:34', '标题2', '简介2', 'http://localhost:8080/springboot4r3y8/upload/1618033309606.jpg', '<p>内容2</p>'),
	(123, '2021-04-10 04:28:34', '标题3', '简介3', 'http://localhost:8080/springboot4r3y8/upload/1618033317928.jpg', '<p>内容3</p>'),
	(124, '2021-04-10 04:28:34', '标题4', '简介4', 'http://localhost:8080/springboot4r3y8/upload/1618033328182.jpg', '<p>内容4</p>'),
	(125, '2021-04-10 04:28:34', '标题5', '简介5', 'http://localhost:8080/springboot4r3y8/upload/1618033335925.jpg', '<p>内容5</p>'),
	(126, '2021-04-10 04:28:34', '标题6', '简介6', 'http://localhost:8080/springboot4r3y8/upload/1618033347394.jpg', '<p>内容6</p>'),
	(1618033809619, '2021-04-10 05:50:09', '服装优惠资讯', '服装优惠活动', 'http://localhost:8080/springboot4r3y8/upload/1618033781471.jpg', '<p>全场服装参与618优惠活动，具体详见商品详情页</p><p><img src="http://localhost:8080/springboot4r3y8/upload/1618033807231.jpg"></p>');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618034031025 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `addtime`, `orderid`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`, `total`, `discounttotal`, `type`, `status`, `address`, `tel`, `consignee`) VALUES
	(1618034031024, '2021-04-10 05:53:50', '202141013535068581766', 'shangpinxinxi', 1618033830452, 1618033737545, '歌莉娅2021年春新款卫衣', 'http://localhost:8080/springboot4r3y8/upload/1618033717266.jpg', 2, 399, 399, 798, 798, 1, '已完成', '广东省佛山市禅城区祖庙街道季华五路金海广场', '12312312312', '陈一');

DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE IF NOT EXISTS `shangpinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033648163 DEFAULT CHARSET=utf8mb3 COMMENT='商品分类';

DELETE FROM `shangpinfenlei`;
INSERT INTO `shangpinfenlei` (`id`, `addtime`, `shangpinfenlei`) VALUES
	(21, '2021-04-10 04:28:34', '商品分类1'),
	(22, '2021-04-10 04:28:34', '商品分类2'),
	(23, '2021-04-10 04:28:34', '商品分类3'),
	(24, '2021-04-10 04:28:34', '商品分类4'),
	(25, '2021-04-10 04:28:34', '商品分类5'),
	(26, '2021-04-10 04:28:34', '商品分类6'),
	(1618033642179, '2021-04-10 05:47:21', '卫衣'),
	(1618033648162, '2021-04-10 05:47:27', '牛仔裤');

DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE IF NOT EXISTS `shangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `chima` varchar(200) DEFAULT NULL COMMENT '尺码',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033737546 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息';

DELETE FROM `shangpinxinxi`;
INSERT INTO `shangpinxinxi` (`id`, `addtime`, `shangpinmingcheng`, `shangpinfenlei`, `tupian`, `pinpai`, `yanse`, `chima`, `shangpinxiangqing`, `clicktime`, `clicknum`, `price`) VALUES
	(51, '2021-04-10 04:28:34', '商品名称1', '商品分类1', 'http://localhost:8080/springboot4r3y8/upload/1618033185354.jpg', '品牌1', '颜色1', '尺码1', '<p>商品详情1</p>', '2024-01-20 11:34:35', 5, 99.9),
	(52, '2021-04-10 04:28:34', '商品名称2', '商品分类2', 'http://localhost:8080/springboot4r3y8/upload/1618033193696.jpg', '品牌2', '颜色2', '尺码2', '<p>商品详情2</p>', '2024-01-20 11:02:34', 5, 99.9),
	(53, '2021-04-10 04:28:34', '商品名称3', '商品分类3', 'http://localhost:8080/springboot4r3y8/upload/1618033203043.jpg', '品牌3', '颜色3', '尺码3', '<p>商品详情3</p>', '2021-04-10 13:39:58', 4, 99.9),
	(54, '2021-04-10 04:28:34', '商品名称4', '商品分类4', 'http://localhost:8080/springboot4r3y8/upload/1618033213232.jpg', '品牌4', '颜色4', '尺码4', '<p>商品详情4</p>', '2021-04-10 13:40:07', 5, 99.9),
	(55, '2021-04-10 04:28:34', '商品名称5', '商品分类5', 'http://localhost:8080/springboot4r3y8/upload/1618033222085.jpg', '品牌5', '颜色5', '尺码5', '<p>商品详情5</p>', '2021-04-10 13:51:42', 12, 99.9),
	(56, '2021-04-10 04:28:34', '商品名称6', '商品分类6', 'http://localhost:8080/springboot4r3y8/upload/1618033233265.jpg', '品牌6', '颜色6', '尺码6', '<p>商品详情6</p>', '2021-04-10 13:53:22', 12, 99.9),
	(1618033737545, '2021-04-10 05:48:56', '歌莉娅2021年春新款卫衣', '卫衣', 'http://localhost:8080/springboot4r3y8/upload/1618033717266.jpg', '歌莉娅', '浅蓝色', 'XS(160/80A)', '<p>商品介绍</p><p><img src="http://localhost:8080/springboot4r3y8/upload/1618033735146.jpg"></p>', '2024-01-20 11:35:41', 6, 399);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705721742416 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1705721742415, '2024-01-20 03:35:42', 11, 1618033737545, 'shangpinxinxi', '歌莉娅2021年春新款卫衣', 'http://localhost:8080/springboot4r3y8/upload/1618033717266.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 11, '用户1', 'yonghu', '用户', 'drf1ysq027t4qn18qa3vnk8il8np657o', '2021-04-10 04:30:16', '2024-01-20 04:35:19'),
	(2, 1, 'abo', 'users', '管理员', 'bec5qxrxdy3fib9axfh3yjbkhp2p27w2', '2021-04-10 05:39:08', '2024-01-20 04:34:07'),
	(3, 1618033830452, '1', 'yonghu', '用户', 'ydygn5isqb7bvgj9m3eavmh7a2nys750', '2021-04-10 05:50:37', '2021-04-10 06:55:13');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-10 04:28:35');

DROP TABLE IF EXISTS `yanse`;
CREATE TABLE IF NOT EXISTS `yanse` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yanse` varchar(200) NOT NULL COMMENT '颜色',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yanse` (`yanse`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033660537 DEFAULT CHARSET=utf8mb3 COMMENT='颜色';

DELETE FROM `yanse`;
INSERT INTO `yanse` (`id`, `addtime`, `yanse`) VALUES
	(31, '2021-04-10 04:28:34', '颜色1'),
	(32, '2021-04-10 04:28:34', '颜色2'),
	(33, '2021-04-10 04:28:34', '颜色3'),
	(34, '2021-04-10 04:28:34', '颜色4'),
	(35, '2021-04-10 04:28:34', '颜色5'),
	(36, '2021-04-10 04:28:34', '颜色6'),
	(1618033654815, '2021-04-10 05:47:34', '浅蓝色'),
	(1618033660536, '2021-04-10 05:47:39', '红色');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033830453 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `lianxidianhua`, `money`) VALUES
	(11, '2021-04-10 04:28:34', '用户1', '123456', '姓名1', 'http://localhost:8080/springboot4r3y8/upload/yonghu_touxiang1.jpg', '男', '13823888881', 100),
	(12, '2021-04-10 04:28:34', '用户2', '123456', '姓名2', 'http://localhost:8080/springboot4r3y8/upload/yonghu_touxiang2.jpg', '男', '13823888882', 100),
	(13, '2021-04-10 04:28:34', '用户3', '123456', '姓名3', 'http://localhost:8080/springboot4r3y8/upload/yonghu_touxiang3.jpg', '男', '13823888883', 100),
	(14, '2021-04-10 04:28:34', '用户4', '123456', '姓名4', 'http://localhost:8080/springboot4r3y8/upload/yonghu_touxiang4.jpg', '男', '13823888884', 100),
	(15, '2021-04-10 04:28:34', '用户5', '123456', '姓名5', 'http://localhost:8080/springboot4r3y8/upload/yonghu_touxiang5.jpg', '男', '13823888885', 100),
	(16, '2021-04-10 04:28:34', '用户6', '123456', '姓名6', 'http://localhost:8080/springboot4r3y8/upload/yonghu_touxiang6.jpg', '男', '13823888886', 100),
	(1618033830452, '2021-04-10 05:50:30', '1', '11', '陈一', 'http://localhost:8080/springboot4r3y8/upload/1618033847310.jpg', '女', '12312312312', 1202);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
