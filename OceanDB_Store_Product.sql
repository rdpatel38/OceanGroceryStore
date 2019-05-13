-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: OceanDB
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Store_Product`
--

DROP TABLE IF EXISTS `Store_Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Store_Product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(45) NOT NULL,
  `p_cat` varchar(45) NOT NULL,
  `p_desc` varchar(200) DEFAULT NULL,
  `p_size` varchar(20) NOT NULL,
  `p_uprice` float NOT NULL,
  `p_rprice` float NOT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_id_UNIQUE` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Store_Product`
--

LOCK TABLES `Store_Product` WRITE;
/*!40000 ALTER TABLE `Store_Product` DISABLE KEYS */;
INSERT INTO `Store_Product` VALUES (101,'Farmers Cow Whole Milk','Dairy','Rich in Vitamin E','1 Gal',3.99,5.99),(102,'Farmers Cow 1% Milk','Dairy','Rich in Vitamin D','1/2 Gal',1.99,2.99),(103,'Farmers Cow 1% Milk','Dairy','Rich in Vitamin A & D','1 Gal',3.99,5.9),(104,'Kraft Parmesan Cheese','Dairy','100% Grated Cheese','8 OZ',2.99,3.49),(105,'Chobani Greek Yogurt','Dairy','Non GMO, Fat Free','2.5 OZ',0.99,1.99),(107,'Nestle Coffee-Mate Chocolate','Dairy','','20 OZ',2.79,4.35),(108,'Hood Half-N-Half','Dairy','0% Carbs','16 OZ',1.45,2.49),(110,'Almond Milk','Dairy','Rich Source of Protein','26 OZ',5.99,7.49),(111,'Ben&Jerry American Dream','IceCream','Vermont Flavour','1 Pint',3.99,4.49),(112,'Ben&Jerry Chunky Monkey','IceCream','All Natural Ingredients','1 Pint',3.99,4.99),(113,'Friendly\'s Butter Crunch','IceCream','','1.5 QT',2.49,3.99),(114,'Friendly\'s Mint Chocolate','IceCream','Naturally Friendly','1.5 QT',2.99,3.99),(115,'Ben&Jerry Salted Caramel','IceCream','Vermont Finest','1 Pint',2.29,3.99),(116,'Haagen-Daza Tosted Coconut','IceCream','New Flavour In Market','14 OZ',4.99,5.49),(117,'Haagen-Daza Mango Madness','IceCream','Natural Mango Flavor','14 OZ',4.99,5.49),(118,'Friendly\'s Vanilla','IceCream','','1.5 QT',2.99,3.99),(119,'Haagen Dazs Chocolate','IceCream','','14 OZ',3.49,4.99),(120,'Ben&Jerry Banana','IceCream','Natural Banana Flavour','1 Pint',3.25,4.49),(121,'Smartfood White Cheddar Popcorn','Snack','Popcorn','2.5 OZ',0.99,1.99),(122,'Lays Classic','Snack','Family Pack','20 OZ',3.99,4.49),(123,'Fritos Original','Snack','0.5 OZ','5 OZ',0.49,0.99),(124,'Munchies Peanut Butter SandwitchCrackers','Snack','Real Peanut Butter','8 OZ',1.99,2.49),(125,'Lays Barbecue','Snack','Natural Flavour','16 OZ',2.49,2.99),(126,'Doritos Nacho Cheese','Snack','Very Hot','16 OZ',2.49,3.99),(127,'Royal Gold Tiny Pretzel','Snack','Tiny Twists','5 OZ',0.99,1.99),(128,'Doritos Cool Ranch','Snack','Family Pack','20 OZ',3.99,4.99),(129,'Orea Original','Snack','20 Counts','16 OZ',2.29,3.79),(130,'Ritz Original Crackers','Snack','Crunchy Crackers','8 OZ',1.99,2.29),(131,'Coca Cola','Soda','','1 L',1.61,3.49),(132,'Dr. Pepper','Soda','','8 OZ',0.99,2.49),(133,'Mtn Dew','Soda','','1 L',2.99,3.49),(134,'Pepsi','Soda','','16 OZ',2.29,3.35),(135,'Diet Pepsi','Soda','','8 OZ',1.29,2.35),(136,'Canada Dry','Soda','','1 L',2.49,3.49),(137,'Sprite','Soda','','1 L',3.67,4.49),(138,'Diet Coke','Soda','','16 OZ',1.99,2.99),(139,'Gatorade Fruit Punch','Soda','','16 OZ',1.99,2.49),(140,'Gatorade Orange','Soda','','16 OZ',1.99,2.49),(141,'Snickers','Candy','Chewy','1.5 OZ',0.99,1.99),(142,'MilkyWay','Candy','Chewy','1 OZ',0.49,0.99),(143,'Croy Engineering','Candy','Chewy Gum','1 OZ',0.49,0.99),(144,'Reese\'s Milk Chocolate','Candy','2 Peanut Butter Cups','2 OZ',3.49,4.99),(145,'Twix Chocolate','Candy','Chocolate Cookies','2.5 OZ',3.49,4.99),(146,'North American College','Candy','Fresh Gum','2.5 OZ',2.49,2.99),(147,'KitKat','Candy','Crispy Wafers','2.5 OZ',1.49,2.99),(148,'Daawat Biryani Basmati Rice','Grocery','Longest Grains','1 KG',4.99,5.99),(149,'Bobs Red Mill What Bran','Grocery','','20 OZ',1.99,3.27),(150,'Quaker Oats','Grocery','Rich in Fiber','16 OZ',3.29,4.99),(151,'Heinz Tomato Ketchup','Grocery','','16 OZ',2.99,3.99),(152,'Heinz Yellow Mustard','Grocery','','16 OZ',2.99,3.99),(153,'Heinz Brown Mustard','Grocery','','8 OZ',1.99,2.99),(154,'Wesson Canola Oil','Grocery','Rich in Vitamin K','8 OZ',1.99,2.99),(155,'Wesson Vegetable Oil','Grocery','Rich in Trans Fat','16 OZ',3.99,4.29),(156,'Swanson Chicken Broth','Grocery','','16 OZ',3.99,4.29),(157,'Hormel Chili Beans','Grocery','','8 OZ',3.91,4.21),(158,'Del Monte Sliced Beet','Grocery','Natural Veggie','8 OZ',0.99,2.29),(159,'Del Monte Sliced Potato','Grocery','Natural Veggie','8 OZ',0.99,2.29),(160,'Del Monte Green Beans','Grocery','Natural Veggie','8 OZ',0.99,2.29);
/*!40000 ALTER TABLE `Store_Product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07 14:18:49
