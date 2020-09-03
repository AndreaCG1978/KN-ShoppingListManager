CREATE DATABASE kn_shoppinglist; 

set foreign_key_checks=0;


DROP TABLE IF EXISTS `managers`; 

CREATE TABLE `managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `psw` varchar(20) COLLATE utf8_spanish_ci NOT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `business`; 

CREATE TABLE `business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `managers_business`; 

CREATE TABLE `managers_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `managerId` int(11) NOT NULL,
  `businessId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cellphone_number` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cellphone_prefix` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `phone_prefix` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,  
  `address_zoneId` int(11) NOT NULL,
  `address_street` varchar(80) COLLATE utf8_spanish_ci NOT NULL,   
  `address_number` varchar(15) COLLATE utf8_spanish_ci NOT NULL,   
  `address_depto` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,   
  `address_depto` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,     
  `address_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,     
  `psw` varchar(20) COLLATE utf8_spanish_ci NOT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



DROP TABLE IF EXISTS `categories`; 

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `parentId` int(11),
  `businessId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `products`; 

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `price` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `products_orders`; 

CREATE TABLE `products_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `cant` int(5) NOT NULL default 0,
  `description` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `orders`; 

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,  
  `description` varchar(50) COLLATE utf8_spanish_ci,
  `orderDate` varchar(20) COLLATE utf8_spanish_ci,
  `readDate` varchar(20) COLLATE utf8_spanish_ci,
  `customerComment` varchar(200) COLLATE utf8_spanish_ci,
  `managerComment` varchar(200) COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


set foreign_key_checks=1;