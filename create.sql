CREATE TABLE IF NOT EXISTS `wp_twitter` (
  `id` int(11) NOT NULL auto_increment,
  `date` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `message` text character set utf8 collate utf8_czech_ci NOT NULL,
  PRIMARY KEY  (`id`)
);