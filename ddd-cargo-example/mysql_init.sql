# Dump of table ddd_cargo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ddd_cargo`;

CREATE TABLE `ddd_cargo` (
  `id` varchar(45) NOT NULL,
  `sender_phone` varchar(45) NOT NULL DEFAULT '',
  `description` varchar(500) DEFAULT NULL,
  `originLocation_code` varchar(20) NOT NULL DEFAULT '',
  `destinationLocation_code` varchar(20) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender` (`sender_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ddd_cargo` WRITE;
/*!40000 ALTER TABLE `ddd_cargo` DISABLE KEYS */;

INSERT INTO `ddd_cargo` (`id`, `sender_phone`, `description`, `originLocation_code`, `destinationLocation_code`, `created_at`, `updated_at`)
VALUES
    ('CARGO-NO-15218','11392142910','Garrafinha 2L','SP','AM','2024-09-25 12:45:02',NULL),
    ('CARGO-NO-16193','13392162911','Teclado','SP','AM','2024-09-19 19:39:05',NULL),
    ('CARGO-NO-16383','11392442910','Notebook HP','SP','PR','2024-09-25 12:42:56',NULL),
    ('CARGO-NO-16759','12322342910','Relógio Digital','SP','PR','2024-09-21 20:15:55',NULL),
    ('CARGO-NO-19640','14392142303','Celular','SP','PR','2024-09-25 12:44:32',NULL),
    ('CARGO-NO-34555','11342147910','Mouse','SP','AM','2024-09-13 19:50:58',NULL);

/*!40000 ALTER TABLE `ddd_cargo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ddd_carrier_movement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ddd_carrier_movement`;

CREATE TABLE `ddd_carrier_movement` (
  `schedule_id` varchar(45) NOT NULL,
  `fromLocation_code` varchar(45) NOT NULL,
  `toLocation_code` varchar(45) NOT NULL,
  `starttime` datetime DEFAULT NULL,
  `arrivetime` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ddd_carrier_movement` WRITE;
/*!40000 ALTER TABLE `ddd_carrier_movement` DISABLE KEYS */;

INSERT INTO `ddd_carrier_movement` (`schedule_id`, `fromLocation_code`, `toLocation_code`, `starttime`, `arrivetime`, `created_at`, `updated_at`)
VALUES
    ('HN0001','SP','AM','2024-09-19 19:39:05','2024-09-26 19:39:05','2024-09-19 19:39:05',NULL),
    ('NB1114','AM','PR','2024-09-29 19:39:05','2024-09-30 19:39:05','2024-09-19 19:39:05',NULL);

/*!40000 ALTER TABLE `ddd_carrier_movement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ddd_handling_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ddd_handling_event`;

CREATE TABLE `ddd_handling_event` (
  `id` varchar(45) NOT NULL,
  `cargo_id` varchar(45) NOT NULL,
  `eventtype` tinyint(2) NOT NULL,
  `schedule_id` varchar(45) DEFAULT '',
  `datetime` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cargo` (`cargo_id`),
  KEY `carrie` (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ddd_handling_event` WRITE;
/*!40000 ALTER TABLE `ddd_handling_event` DISABLE KEYS */;

INSERT INTO `ddd_handling_event` (`id`, `cargo_id`, `eventtype`, `schedule_id`, `datetime`, `created_at`, `updated_at`)
VALUES
    ('00001','CARGO-NO-16193',0,'','2024-09-19 19:39:05','2024-09-19 19:39:05',NULL),
    ('098005ec-2dda-42ee-9e13-aa3b49b8993b','CARGO-NO-15218',2,'HN0001','2024-09-30 08:00:00','2024-09-25 14:42:51',NULL),
    ('12dad393-f429-40f2-b365-58475658549e','CARGO-NO-16193',3,'','2024-09-30 18:00:00','2024-09-22 11:44:19',NULL),
    ('45646c85-861d-4935-8652-1fa2b2a9fde7','CARGO-NO-16193',1,'NB1114','2024-09-29 08:00:00','2024-09-22 12:35:47',NULL),
    ('5eae1a8a-cf09-40e4-9f81-7b61984bca12','CARGO-NO-15218',1,'HN0001','2024-09-30 08:00:00','2024-09-25 14:42:20',NULL),
    ('a11b1d5b-13b4-4c75-9a28-6648c33e6b3a','CARGO-NO-16193',2,'NB1114','2024-09-30 08:00:00','2024-09-22 12:35:53',NULL),
    ('d41baec9-d55e-4d73-b6ec-8c2504d50aed','CARGO-NO-16193',1,'HN0001','2024-09-20 08:00:00','2024-09-22 11:43:50',NULL),
    ('f1aa3ae7-07c5-4374-ada4-7dc97a07d823','CARGO-NO-16193',2,'HN0001','2024-09-26 08:00:00','2024-09-22 11:44:10',NULL);

/*!40000 ALTER TABLE `ddd_handling_event` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ddd_location
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ddd_location`;

CREATE TABLE `ddd_location` (
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ddd_location` WRITE;
/*!40000 ALTER TABLE `ddd_location` DISABLE KEYS */;

INSERT INTO `ddd_location` (`code`, `name`)
VALUES
    ('PR','Paraná'),
    ('SP','São Paulo'),
    ('AM','Amazonas');

/*!40000 ALTER TABLE `ddd_location` ENABLE KEYS */;
UNLOCK TABLES;