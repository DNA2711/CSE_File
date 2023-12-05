-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.11.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table project02.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project02.users: ~46 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `email`, `pass`) VALUES
	(1, 'dungkt', 'dungkt@tlu.edu.vn', '$10$hJQmfx3fUIR2e787VDpYyeiEoAUUxBhlnz9iWG07jXnh1e.9pcVHC'),
	(2, 'dungkt2', 'dungkt2@tlu.edu.vn', '$2y$10$YpC9JFfrqfgbfVm6GYlopemgXILE7h.QZxQFrEC3CzIQwrExWbrqC'),
	(3, 'slismer2', 'ksperring2@shareasale.com', '$2a$04$A/B9IntcuDi4fKyprKSa9uqljWTiXYJFjBkDVlZq5LoORc6SsY8cy'),
	(4, 'cnassi3', 'bgiurio3@smh.com.au', '$2a$04$pgyc1eTKjeonF1IGmLcx8ucurrSKgZu/5UN.yrcWmaAEUS6iKzICC'),
	(5, 'breuben4', 'rgovini4@dedecms.com', '$2a$04$kkAehRcjuxfZAyQPTgLTau6w4p0Xfu/6uEhm73eygPcBoOnkM.QSq'),
	(6, 'tmalec5', 'lmintoff5@biblegateway.com', '$2a$04$QKvqxx2fCUtdytmCnX5N2uiG3WZLmLCvycL47qWB6srKgttWLBGeK'),
	(7, 'dleddy6', 'pvondrasek6@wufoo.com', '$2a$04$T60ZnpnCwxLKmV9mZ0/Iqu4MpeS1dhqrqf4s3.r9OKCkmAuGGXCYa'),
	(8, 'cgask7', 'agasnoll7@cdc.gov', '$2a$04$dZmRGmqfPRuytk8482FghuJdu1UbgqevSOw.DPyG3wWCLQ2EPa76O'),
	(9, 'ehuison8', 'msliman8@smugmug.com', '$2a$04$eeGzV45.DFLZs/kQH44ZuOHHlYhQEohzr9eNjI6HQkmIlg0MMlXIS'),
	(10, 'spetschelt9', 'emoran9@ucsd.edu', '$2a$04$qp5dTgaerJ7F3GD2jIXiEO0Rai6ohGBUgFWdvRnLsvNrJtlq8cmxy'),
	(11, 'araphaela', 'rbellera@merriam-webster.com', '$2a$04$tdKsZpf4J6Mo1kqvirFBq.XrgbEmVXjJY9IKbzCPKQKGWTPcr4NMq'),
	(12, 'drosenbargb', 'afalshawb@ocn.ne.jp', '$2a$04$t28BsQUsb7LQlZ2HT5ZneeDO0WkXP5T5Q97UGBV6QgulWQJ5h9WV6'),
	(13, 'hberntc', 'ilimprichtc@creativecommons.org', '$2a$04$tdMI6Jhlc/Zt0XAigibfwucp3/xkiV0fKivA/9H8dtzyEBSwuYDpO'),
	(14, 'kmarkushkind', 'pboded@geocities.jp', '$2a$04$AnH2ZpB4l9wsbneqtEDnH.mEa04uD1Ws./ANvwY/0QbF4bq9yPCfC'),
	(15, 'fbruyette', 'gspellesye@fotki.com', '$2a$04$gL9iRuBz3VHXtuM0Dn6k1.c0r9BMZiuihEn4q9qK.UNXC0229NI5S'),
	(16, 'kphalipf', 'vbruggerf@alibaba.com', '$2a$04$dvifc/upwLz/6zinWnKRZenooGt8y9xK0vHnCSlaun4/WSmSzKAx6'),
	(17, 'bmablestoneg', 'lsutherdeng@upenn.edu', '$2a$04$qBckkl.KqA.9YJpUM1rqEu0bwE3ZL4wg8v.sF.UtUEHEueZF7PL1W'),
	(18, 'cyouthedh', 'gdalmeidah@nbcnews.com', '$2a$04$AQXooEemK/pVLGzUSRoZDegil3ahIkY8fqxthCIAc/Ynu4EomIFJK'),
	(19, 'gvalderi', 'ethorlbyi@addtoany.com', '$2a$04$Ln2GWodJzNTZG5r6rwGksO7QI5eQti1T9LSAr/bpL4fT8I02oIa1u'),
	(20, 'lmahaddyj', 'csteersj@gnu.org', '$2a$04$HVcuhLhfeezo9K0Zp4oYvexaocirWW1GF9nk6hjH6u6I3RK04HKBu'),
	(21, 'kattwoulk', 'sroblouk@wunderground.com', '$2a$04$mNv55bZTBs68JLi9/jakOeWePA8eyaapCB.jaXwj1QbMTAxTCfmsu'),
	(22, 'cmedhurstl', 'mscullardl@cafepress.com', '$2a$04$oVbI62bH5Ju8O0pfOFTqQO31CKJR6TwWyxjQJoe6dwQgqiojbJSbK'),
	(23, 'smuntm', 'fgrelikm@skype.com', '$2a$04$YfG5TfLkrAtPSGI2wvwrr.HVadNd3XQDL8OXro468SfFPVaJSlIkm'),
	(24, 'jdosedalen', 'battryden@blogtalkradio.com', '$2a$04$jAlrL5yJqFqJph8lkko0LOudL1/JyYuTi5Ss.fm3Qt0y2s9QWuuV2'),
	(25, 'jheistermanno', 'skidsleyo@samsung.com', '$2a$04$nflCQ30kFdN2Cf0wnD1BhOypgACrhzKk6zVIQM8s72eoaYvkar94u'),
	(26, 'rtartp', 'hwickmannp@fda.gov', '$2a$04$P1CI32pPV9dDfirv5ND8q.WGMXgTSPPBAeQ7rEkuUhwcLLhoijGey'),
	(27, 'jfredsonq', 'sgaukrogerq@marriott.com', '$2a$04$TJNhMcvra9t6Kq3ybAO8JOaZ7akImCE4DQ/y41n/AYRBEvhFJand2'),
	(28, 'pkosr', 'mknightlyr@nationalgeographic.com', '$2a$04$efIyVuHaXeP87WzQdw0eROmGTCYwChR2bNdKRJMn/P3lIbrxy4cnO'),
	(29, 'fshuxsmiths', 'apetyankins@macromedia.com', '$2a$04$60FZoXWCoIBcICCMRe0aQeF8MGM99uBZj3BQw82.vSm6mKA1.5L5m'),
	(30, 'xvincentt', 'azorzonit@china.com.cn', '$2a$04$ynLXZb7U6JhGbLL98qBXKOuoRy0NaV491CUCr7oKdBTl4.7osPea6'),
	(31, 'pgreiswoodu', 'hmarzelou@netscape.com', '$2a$04$F4Vwbxs.SowynqcC.cbPxOdyJmPe9R4Gv9pX9c5NwQUMNII8j7zcq'),
	(32, 'ccozziv', 'fwestripv@nyu.edu', '$2a$04$.ujKr.e.8RyrWE/lx34XOeN76foXQ9td.8VEA9wDT3VORDVJHXBEa'),
	(33, 'nwentw', 'abettyw@abc.net.au', '$2a$04$91NtGGg9JvsqIvyKte6CaeEh3tSEaCpBNmueXu6oK2dX49/b7NAky'),
	(34, 'gogilbyx', 'jbickertonx@stanford.edu', '$2a$04$JkzAht6FC19aUG2hqhlDsedJLzy/nsy00DKjJzUzwLEs7Idpcotgi'),
	(35, 'djestey', 'gboulgery@auda.org.au', '$2a$04$3cQUiC.0KysKFBXDkzXpB.XoVfGu84iINjB/p8/Q/8tloDaWJZ8.G'),
	(36, 'wcripinz', 'mminchiz@wikispaces.com', '$2a$04$2KnI6zAiP1PD/RewAshbruIgV6PlOwOR2yRlVz5W.8a.HRwtem5A.'),
	(37, 'lpinilla10', 'rgeri10@cbsnews.com', '$2a$04$rOkELNGfv1JYoa6TL4Zn3Od6XTM6gMV46GOD7ilsTN6h0S6jnir2e'),
	(38, 'jkayzer11', 'aolek11@google.com.br', '$2a$04$yz7nX/xg7tcI2GMfsM/fM.Rduxkcmd2BbZ7RuKQ3ZY7xwMZHQuzmu'),
	(39, 'bandrysek12', 'smccool12@google.co.jp', '$2a$04$ADm6eOkWrEhZCYsqbtOryu8UWkRSbql3oxuYIcjaSV5rJvfXg.ZDe'),
	(40, 'amcwhinnie13', 'fmacgillivray13@time.com', '$2a$04$yh3XqZI6BPEWTjBn9ZJPAuoi0k3/jVoiA.0Vxltd.xHhWVHwXcHHK'),
	(41, 'bmowne14', 'cleishman14@washington.edu', '$2a$04$q7Bwl0Afd9Bz/MD23cuFi.5JiEyM2AnhITnhRPnc8Otlq0V8F8rIS'),
	(42, 'smessum15', 'kradbond15@sfgate.com', '$2a$04$hfkh8JxgcNoof7Weze7UyuTELVzn57gC33uihEcq9st42YtL9uzua'),
	(43, 'ggarm16', 'cescofier16@examiner.com', '$2a$04$5i8m74skSWnLfaYg7sQ.SuRMgB2RwVw4hIcbEbJ4f4c3uyJMNXqwS'),
	(44, 'ffarlowe17', 'lmityushin17@weebly.com', '$2a$04$80IDXYlCRgnWdiQG5kRL8.DNTrny7e8WI2jSuRy6fEs/pQIcnUBLW'),
	(45, 'rmcindrew18', 'lfolland18@youku.com', '$2a$04$bnPIy1RWwdOAa7m3kElRPee0zkKGc7JoKmWFz50ro9D45Xg00Ldaa'),
	(46, 'toade19', 'bmacane19@imgur.com', '$2a$04$OqJsElMCHKL4dvXOqG80iuSodL/WeFETfmwEdAYqfNtAfkiyNtal2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
