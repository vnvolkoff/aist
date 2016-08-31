CREATE TABLE IF NOT EXISTS `#__aist_graph` (
	`id` int(11) NOT NULL auto_increment, 
	`title` VARCHAR(200) NOT NULL, 
	`alias` VARCHAR(200) NOT NULL, 
	`asset_id` INTEGER UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.', 
	`introtext` TEXT NOT NULL, 
	`fulltext` TEXT NOT NULL, 
	`created` DATETIME NOT NULL, 
	`ordering` INT(11) NOT NULL, 
	`metakey` TEXT NOT NULL, 
	`metadesc` TEXT NOT NULL, 
	`hits` INT(11) NOT NULL, 
	`created_by` INT(11) NOT NULL, 
	`published` INT(2) NOT NULL, 
	`params` TEXT NOT NULL, 
	`catid` INT(11) NOT NULL, 
	UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0;