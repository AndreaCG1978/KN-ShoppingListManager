CREATE DATABASE kn_shoppinglist; 

set foreign_key_checks=0;


DROP TABLE IF EXISTS `managers`; 

CREATE TABLE `managers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `psw` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `business`; 

CREATE TABLE `business` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


DROP TABLE IF EXISTS `managers_business`; 

CREATE TABLE `managers_business` (
  `id` int NOT NULL AUTO_INCREMENT,
  `managerId` int NOT NULL,
  `businessId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cellphone_number` varchar(20) NOT NULL,
  `cellphone_prefix` varchar(10) NOT NULL,
  `phone_number` varchar(20),
  `phone_prefix` varchar(10),  
  `address_zoneId` int NOT NULL,
  `address_street` varchar(80) NOT NULL,   
  `address_number` varchar(15) NOT NULL,   
  `address_depto` varchar(30),     
  `address_description` varchar(100),     
  `psw` varchar(20) NOT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;



DROP TABLE IF EXISTS `categories`; 

CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `parentId` int,
  `businessId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


DROP TABLE IF EXISTS `products`; 

CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `categoryId` int NOT NULL,
  `price` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `products_orders`; 

CREATE TABLE `products_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `orderId` int NOT NULL,
  `cant` int NOT NULL default 0,
  `description` varchar(50),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


DROP TABLE IF EXISTS `orders`; 

CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerId` int NOT NULL,  
  `description` varchar(50),
  `orderDate` varchar(20) NOT NULL,
  `readDate` varchar(20),
  `customerComment` varchar(200),
  `managerComment` varchar(200),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


set foreign_key_checks=1;
