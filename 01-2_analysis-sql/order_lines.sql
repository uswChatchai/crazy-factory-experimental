DROP TABLE `order_lines`;

CREATE TABLE `order_lines` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_id` mediumint default NULL,
  `checked` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `order_lines` (`order_id`,`checked`) VALUES (5,0),(8,0),(7,0),(9,0),(10,0),(10,1),(6,0),(3,1),(4,0),(10,1),(7,1),(10,0),(7,0),(3,0),(8,1),(6,0),(6,0),(10,0),(3,0),(9,1),(7,0),(10,0),(7,0),(7,0),(5,0),(10,0),(10,1),(7,1),(7,0),(5,1),(4,1),(6,1),(9,0),(7,0),(9,1),(10,1),(6,1),(3,0),(6,0),(7,1),(8,0),(5,1),(7,0),(5,1),(4,0),(8,1),(3,0),(6,0),(6,1),(9,1),(10,1),(8,0),(10,0),(9,0),(9,1),(10,1),(3,1),(6,1),(5,1),(5,1),(6,0),(8,0),(8,1),(8,1),(4,0),(5,0),(4,0),(7,1),(5,0),(9,1),(4,0),(5,0),(5,1),(3,1),(8,0),(3,1),(4,0),(8,1),(10,1),(4,1),(10,0),(10,1),(7,0),(10,0),(9,1),(8,1),(8,1),(8,0),(5,0),(9,1),(6,0),(4,0),(4,1),(5,0),(10,1),(4,1),(9,0),(6,1),(6,1),(6,1);
