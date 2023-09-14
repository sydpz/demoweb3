
create database if not exists web3demo;

CREATE TABLE `web3demo`.`hot_ranking` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier, auto-incremented',
  `instid` varchar(100) NOT NULL COMMENT 'ID of the cryptocurrency',
  `time` timestamp NULL DEFAULT NULL COMMENT 'Timestamp of the record',
  `hot_score` float DEFAULT NULL COMMENT 'Hotness score of the cryptocurrency',
  PRIMARY KEY (`id`) /*T![clustered_index] CLUSTERED */,
  UNIQUE KEY `instid_time` (`time`,`instid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=1;

CREATE TABLE `web3demo`.`crypto_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each record',
  `exchange` varchar(100) NOT NULL COMMENT 'Name of the cryptocurrency exchange',
  `instid` varchar(100) NOT NULL COMMENT 'Unique identifier for the cryptocurrency',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Timestamp of the update',
  `curr_price` float DEFAULT NULL COMMENT 'Current price of the cryptocurrency',
  `base_volume` float DEFAULT NULL COMMENT 'Base trading volume of the cryptocurrency',
  PRIMARY KEY (`id`) /*T![clustered_index] CLUSTERED */,
  UNIQUE KEY `exchange_instid_time` (`exchange`,`instid`,`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=1;

CREATE TABLE `web3demo`.`crypto_trends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each record',
  `exchange` varchar(100) NOT NULL COMMENT 'Name of the cryptocurrency exchange',
  `instid` varchar(100) NOT NULL COMMENT 'Unique identifier for the cryptocurrency',
  `time` timestamp NULL DEFAULT NULL COMMENT 'Timestamp of the recorded data',
  `open_price` float DEFAULT NULL COMMENT 'Opening price of the cryptocurrency during the specified time interval',
  `high_price` float DEFAULT NULL COMMENT 'Highest price of the cryptocurrency during the specified time interval',
  `low_price` float DEFAULT NULL COMMENT 'Lowest price of the cryptocurrency during the specified time interval',
  `close_price` float DEFAULT NULL COMMENT 'Closing price of the cryptocurrency during the specified time interval',
  `time_interval` varchar(100) DEFAULT NULL COMMENT 'The time interval for which the data is recorded',
  PRIMARY KEY (`id`) /*T![clustered_index] CLUSTERED */,
  UNIQUE KEY `exchange_instid_time` (`exchange`,`instid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=1;
