DROP TABLE IF EXISTS `stocks`;
CREATE TABLE  `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_producto` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stockd1` float DEFAULT '0',
  `stockd2` float DEFAULT '0',
  `stockd3` float DEFAULT '0',
  `stockd4` float DEFAULT '0',
  `stockd5` float DEFAULT '0',
  `stockd6` float DEFAULT '0',
  `stockd7` float DEFAULT '0',
  `stockd8` float DEFAULT '0',
  `stockd9` float DEFAULT '0',
  `stockd10` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Index_2` (`cod_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;