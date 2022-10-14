DROP DATABASE IF EXISTS finalexamreactjs;

CREATE DATABASE IF NOT EXISTS finalexamreactjs;

USE finalexamreactjs;

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` enum('ADMIN','EMPLOYEE','MANAGER') DEFAULT 'EMPLOYEE',
  `status` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `avatar_url` varchar(250) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY  (`email`),
  UNIQUE KEY  (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  `total_member` int NOT NULL,
  `type` enum('FRONTEND','BACKEND','FULLSTACK') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `group` (created_at, `name`, total_member, `type`)
VALUES 
('2022-09-20', 'REACTJS', 3, 'FRONTEND'),
('2022-09-29', 'HTML&CSS', 5, 'FRONTEND'),
('2022-09-18', 'AngularJS', 5, 'FRONTEND'),
('2022-10-02', 'Nodejs', 6, 'BACKEND'),
('2022-10-05', 'JAVAADVANCE', 6, 'BACKEND');