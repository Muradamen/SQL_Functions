CREATE DATABASE  IF NOT EXISTS `freshgro_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `freshgro_db`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: freshgro_db
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price_per_unit` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `delivery_rating` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Zainab Boateng','Whole Milk',1,1.14,1.14,'2025-07-04','Pending','Card','Dakar',1),(2,'Fatou Molefe','Rice (5kg)',9,1.97,17.73,'2025-07-04','Cancelled','Cash','Addis Ababa',4),(3,'Amina Mwangi','Cooking Oil',9,3.64,32.76,'2025-07-08','Delivered','Card','Cairo',4),(4,'Kofi Abubakar','Tomatoes (kg)',9,3.49,31.41,'2025-07-10','Cancelled','Card','Tunis',3),(5,'Lindiwe Molefe','Cooking Oil',7,0.58,4.06,'2025-07-28','Cancelled','Card','Abidjan',4),(6,'Yared Mwangi','Beef Cuts',3,2.54,7.62,'2025-07-31','Delivered','Transfer','Accra',1),(7,'Kofi Mwangi','Tomatoes (kg)',2,0.62,1.24,'2025-07-13','Cancelled','Transfer','Abidjan',NULL),(8,'Kofi Bekele','Organic Apples',2,4.09,8.18,'2025-07-18','Cancelled','Transfer','Kampala',3),(9,'Amina Mensah','Tomatoes (kg)',9,3.05,27.45,'2025-07-23','Delivered','Card','Dakar',NULL),(10,'Lindiwe Diallo','Whole Milk',6,3.97,23.82,'2025-07-03','Delivered','Cash','Cairo',NULL),(11,'Fatou Omar','Bottled Water',2,3.84,7.68,'2025-07-13','Delivered','Transfer','Kampala',NULL),(12,'Kofi Bekele','Rice (5kg)',4,1.36,5.44,'2025-07-31','Delivered','Card','Tunis',5),(13,'Lindiwe Molefe','Oranges',4,4.58,18.32,'2025-07-31','Delivered','Card','Tunis',2),(14,'Amina Dlamini','Brown Bread',5,1.67,8.35,'2025-07-10','Pending','Cash','Cairo',NULL),(15,'Juma Osei','Brown Bread',6,4.39,26.34,'2025-07-19','Delivered','Card','Cairo',4),(16,'Amina Diallo','Brown Bread',1,1.45,1.45,'2025-07-14','Delivered','Card','Addis Ababa',4),(17,'Zainab Osei','Eggs (dozen)',10,1.90,19.00,'2025-07-08','Cancelled','Transfer','Addis Ababa',3),(18,'Amina Omar','Cooking Oil',9,2.35,21.15,'2025-07-30','Pending','Cash','Kampala',2),(19,'Amina Omar','Eggs (dozen)',9,1.90,17.10,'2025-07-09','Cancelled','Cash','Dakar',4),(20,'Thato Omar','Beef Cuts',10,1.98,19.80,'2025-07-15','Delivered','Cash','Abidjan',5),(21,'Zainab Dlamini','Yoghurt',6,0.53,3.18,'2025-07-30','Cancelled','Cash','Nairobi',NULL),(22,'Amina Boateng','Whole Milk',2,3.73,7.46,'2025-07-18','Pending','Card','Addis Ababa',5),(23,'Juma Molefe','Chicken Wings',1,1.77,1.77,'2025-07-22','Cancelled','Transfer','Addis Ababa',2),(24,'Zainab Bekele','Oranges',4,4.75,19.00,'2025-07-22','Cancelled','Cash','Addis Ababa',5),(25,'Kwame Diallo','Tomatoes (kg)',8,3.37,26.96,'2025-07-23','Cancelled','Cash','Accra',3),(26,'Abena Omar','Beef Cuts',6,0.63,3.78,'2025-07-15','Cancelled','Card','Tunis',NULL),(27,'Yared Diallo','Bottled Water',3,2.11,6.33,'2025-07-20','Cancelled','Card','Johannesburg',NULL),(28,'Amina Molefe','Beef Cuts',8,4.61,36.88,'2025-07-09','Pending','Transfer','Dakar',1),(29,'Amina Boateng','Eggs (dozen)',8,3.60,28.80,'2025-07-07','Pending','Cash','Tunis',NULL),(30,'Kofi Mensah','Beef Cuts',7,1.67,11.69,'2025-07-27','Delivered','Card','Cairo',NULL),(31,'Amina Bekele','Yoghurt',6,1.66,9.96,'2025-07-10','Cancelled','Transfer','Kampala',4),(32,'Yared Mwangi','Bottled Water',6,0.91,5.46,'2025-07-27','Pending','Card','Cairo',3),(33,'Abena Boateng','Organic Apples',9,2.68,24.12,'2025-07-24','Pending','Cash','Accra',NULL),(34,'Thato Mensah','Organic Apples',5,4.19,20.95,'2025-07-16','Pending','Transfer','Dakar',2),(35,'Abena Abubakar','Cooking Oil',1,3.05,3.05,'2025-07-10','Cancelled','Card','Johannesburg',2),(36,'Abena Omar','Yoghurt',4,3.12,12.48,'2025-07-27','Delivered','Card','Tunis',NULL),(37,'Fatou Molefe','Whole Milk',10,4.31,43.10,'2025-07-22','Cancelled','Cash','Addis Ababa',2),(38,'Lindiwe Boateng','Rice (5kg)',4,4.52,18.08,'2025-07-11','Delivered','Card','Accra',1),(39,'Lindiwe Diallo','Eggs (dozen)',4,2.79,11.16,'2025-07-18','Cancelled','Card','Addis Ababa',2),(40,'Amina Diallo','Brown Bread',9,4.21,37.89,'2025-07-28','Delivered','Card','Tunis',3),(41,'Abena Boateng','Cereal',8,1.66,13.28,'2025-07-08','Cancelled','Cash','Abidjan',NULL),(42,'Kwame Mensah','Beef Cuts',9,0.97,8.73,'2025-07-04','Delivered','Cash','Lagos',5),(43,'Amina Mwangi','Oranges',4,3.60,14.40,'2025-07-07','Pending','Transfer','Dakar',NULL),(44,'Kofi Abubakar','Cooking Oil',5,0.91,4.55,'2025-07-02','Pending','Transfer','Kampala',3),(45,'Abena Boateng','Brown Bread',2,1.06,2.12,'2025-07-12','Pending','Cash','Cairo',4),(46,'Juma Omar','Eggs (dozen)',9,0.67,6.03,'2025-07-04','Cancelled','Card','Cairo',1),(47,'Fatou Abubakar','Organic Apples',4,0.71,2.84,'2025-07-10','Pending','Card','Kampala',3),(48,'Thato Bekele','Bananas',7,2.45,17.15,'2025-07-22','Cancelled','Card','Cairo',NULL),(49,'Lindiwe Dlamini','Spinach',9,3.10,27.90,'2025-07-11','Cancelled','Cash','Nairobi',5),(50,'Fatou Abubakar','Whole Milk',5,0.83,4.15,'2025-07-29','Pending','Transfer','Johannesburg',2),(51,'Lindiwe Molefe','Beef Cuts',4,4.48,17.92,'2025-07-06','Cancelled','Cash','Kampala',4),(52,'Kofi Bekele','Beef Cuts',1,4.28,4.28,'2025-07-01','Cancelled','Cash','Johannesburg',NULL),(53,'Kofi Mwangi','Cooking Oil',8,1.48,11.84,'2025-07-20','Cancelled','Transfer','Dakar',5),(54,'Fatou Molefe','Organic Apples',2,3.28,6.56,'2025-07-29','Cancelled','Transfer','Lagos',NULL),(55,'Fatou Dlamini','Chicken Wings',7,4.32,30.24,'2025-07-19','Pending','Card','Cairo',NULL),(56,'Thato Boateng','Brown Bread',6,0.70,4.20,'2025-07-02','Cancelled','Card','Addis Ababa',1),(57,'Kwame Bekele','Organic Apples',4,3.79,15.16,'2025-07-04','Pending','Transfer','Nairobi',2),(58,'Kwame Mwangi','Rice (5kg)',6,1.64,9.84,'2025-07-01','Delivered','Cash','Cairo',NULL),(59,'Amina Boateng','Cooking Oil',7,4.06,28.42,'2025-07-09','Delivered','Card','Accra',3),(60,'Amina Mwangi','Whole Milk',3,3.99,11.97,'2025-07-03','Delivered','Transfer','Nairobi',1),(61,'Thato Dlamini','Eggs (dozen)',5,4.34,21.70,'2025-07-13','Delivered','Cash','Addis Ababa',4),(62,'Kofi Boateng','Bottled Water',2,3.71,7.42,'2025-07-17','Delivered','Transfer','Dakar',2),(63,'Zainab Boateng','Bottled Water',5,3.38,16.90,'2025-07-13','Cancelled','Transfer','Dakar',4),(64,'Zainab Boateng','Cooking Oil',8,4.28,34.24,'2025-07-06','Pending','Cash','Johannesburg',3),(65,'Zainab Diallo','Yoghurt',3,4.44,13.32,'2025-07-21','Cancelled','Card','Tunis',3),(66,'Abena Diallo','Organic Apples',10,1.35,13.50,'2025-07-01','Delivered','Cash','Cairo',NULL),(67,'Yared Omar','Bottled Water',5,2.61,13.05,'2025-07-07','Delivered','Card','Nairobi',2),(68,'Kwame Diallo','Spinach',7,1.95,13.65,'2025-07-22','Cancelled','Cash','Kampala',NULL),(69,'Zainab Osei','Spinach',1,1.39,1.39,'2025-07-05','Cancelled','Cash','Addis Ababa',NULL),(70,'Kofi Bekele','Beef Cuts',9,3.59,32.31,'2025-07-19','Cancelled','Card','Accra',2),(71,'Abena Osei','Yoghurt',6,3.36,20.16,'2025-07-09','Cancelled','Card','Johannesburg',5),(72,'Kwame Dlamini','Oranges',10,4.09,40.90,'2025-07-04','Pending','Cash','Johannesburg',2),(73,'Abena Abubakar','Whole Milk',7,1.90,13.30,'2025-07-04','Cancelled','Transfer','Dakar',3),(74,'Thato Diallo','Whole Milk',7,4.65,32.55,'2025-07-20','Delivered','Cash','Accra',2),(75,'Juma Molefe','Cereal',1,1.67,1.67,'2025-07-23','Cancelled','Transfer','Dakar',NULL),(76,'Juma Abubakar','Bottled Water',7,4.86,34.02,'2025-07-14','Delivered','Transfer','Accra',1),(77,'Juma Osei','Chicken Wings',2,4.23,8.46,'2025-07-27','Pending','Card','Tunis',NULL),(78,'Fatou Boateng','Yoghurt',2,4.28,8.56,'2025-07-30','Cancelled','Card','Johannesburg',2),(79,'Juma Diallo','Oranges',5,2.79,13.95,'2025-07-08','Cancelled','Card','Johannesburg',3),(80,'Kofi Omar','Eggs (dozen)',1,1.39,1.39,'2025-07-13','Delivered','Transfer','Dakar',3),(81,'Amina Molefe','Rice (5kg)',3,1.86,5.58,'2025-07-12','Pending','Cash','Dakar',NULL),(82,'Yared Osei','Cereal',7,4.16,29.12,'2025-07-12','Delivered','Transfer','Nairobi',4),(83,'Juma Molefe','Brown Bread',9,3.76,33.84,'2025-07-11','Delivered','Card','Tunis',1),(84,'Yared Boateng','Beef Cuts',9,4.27,38.43,'2025-07-03','Pending','Card','Nairobi',4),(85,'Kofi Omar','Chicken Wings',4,3.37,13.48,'2025-07-28','Pending','Transfer','Kampala',NULL),(86,'Fatou Diallo','Whole Milk',7,2.11,14.77,'2025-07-04','Cancelled','Transfer','Kampala',1),(87,'Yared Mwangi','Beef Cuts',5,4.23,21.15,'2025-07-26','Pending','Card','Nairobi',NULL),(88,'Kwame Osei','Organic Apples',4,1.94,7.76,'2025-07-16','Pending','Cash','Dakar',3),(89,'Juma Mwangi','Tomatoes (kg)',5,0.61,3.05,'2025-07-14','Cancelled','Transfer','Accra',1),(90,'Abena Diallo','Bottled Water',2,2.46,4.92,'2025-07-03','Pending','Card','Tunis',NULL),(91,'Abena Diallo','Rice (5kg)',3,3.15,9.45,'2025-07-16','Cancelled','Card','Kampala',1),(92,'Kwame Omar','Chicken Wings',3,2.78,8.34,'2025-07-09','Delivered','Cash','Accra',NULL),(93,'Fatou Bekele','Beef Cuts',9,4.76,42.84,'2025-07-02','Delivered','Cash','Cairo',NULL),(94,'Yared Osei','Chicken Wings',9,0.77,6.93,'2025-07-02','Delivered','Card','Addis Ababa',NULL),(95,'Yared Molefe','Brown Bread',3,1.79,5.37,'2025-07-14','Pending','Card','Nairobi',4),(96,'Kwame Omar','Brown Bread',6,1.81,10.86,'2025-07-16','Delivered','Cash','Kampala',NULL),(97,'Lindiwe Mwangi','Rice (5kg)',6,2.94,17.64,'2025-07-26','Cancelled','Card','Tunis',2),(98,'Zainab Mensah','Chicken Wings',4,2.03,8.12,'2025-07-29','Delivered','Cash','Addis Ababa',1),(99,'Thato Mensah','Cooking Oil',6,4.89,29.34,'2025-07-27','Cancelled','Card','Abidjan',3),(100,'Kofi Boateng','Organic Apples',2,2.38,4.76,'2025-07-09','Pending','Cash','Nairobi',3),(101,'Grace Anya','Bottled Water',10,0.60,6.00,'2025-07-04','Pending','Transfer','Jos',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-23  3:39:51

-- 🛒 FreshGro Webinar: SQL Functions & Business Insights

-- 📂 Database: freshgro_db
-- 📊 Table: orders

-- ------------------------------------------------------------

-- 🛒 FreshGro Storyline: Continued

-- 🌟 Your Impact
-- Impressed by your insights — from spotting top cities 
-- to reducing cancellations and improving satisfaction.

-- 🔁 You're Back
-- FreshGro has invited you again for a deeper dive.

-- ------------------------------------------------------------

-- 💡 New Business Problem
-- “Our data is growing, and we need to clean, standardize, 
-- and understand it faster — without manual fixes.”

-- ------------------------------------------------------------

-- 🔍 The New Ask
-- “Can you use SQL functions to help us:
-- 🧠 Find patterns faster
-- 🧹 Clean up data inconsistencies
-- 📊 Make smarter, data-driven decisions?”

-- ------------------------------------------------------------

-- 🎯 Your Role
-- Introduce and demonstrate SQL functions that will help FreshGro:
-- 🧹 Clean & format messy text data
-- 📅 Extract insights from date fields
-- 🧠 Classify & group customers using conditional logic
-- 🚫 Handle NULLs and missing values gracefully
-- 🔄 Create flexible, logic-driven queries





-- 🛒 FreshGro Webinar: SQL Functions & Business Insights
-- -------------------------------------------------------
-- Database: freshgro_db
-- Table: orders



-- 🎓 Section 1: Numeric Functions & Aggregations

-- 🔹 1. What is the total revenue generated from all orders?
-- 💼 Business Question: "What is the total revenue contributed by all customer orders?"

-- 🔹 2. What is the average order value?
-- 💼 Business Question: "What is the average value of a customer order?"

-- 🔹 3. What is the highest and lowest order value placed?
-- 💼 Business Question: "What is the highest and lowest value of a single order placed by any customer?"

-- 🔹 4. Round average delivery rating to 1 decimal place
-- 💼 Business Question: "What is the average delivery satisfaction rating from customers?"




-- 📅 Section 2: Date & Time Functions

-- 🔹 5. What year did most orders occur in?
-- 💼 Business Question: "In which year did FreshGro receive the highest number of customer orders?"

-- 🔹 6. How many days since the earliest order?
-- 💼 Business Question: "How many days have passed since the first recorded customer order?"

-- 🔹 7. Add 7 days to each order date to simulate delivery due date
-- 💼 Business Question: "What is the expected delivery due date for each order, 
-- assuming a 7-day delivery timeline?"




-- 📝 Section 3: String Functions

-- 🔹 8. Display all customer names in uppercase
-- 💼 Business Question: "What are the unique customer names in our records, standardized in uppercase for 
-- consistency?"

-- 🔹 9. Extract the first 3 characters of each city name
-- 💼 Business Question: "What are the unique cities in our order records, and what are their standardized 
-- 3-letter prefixes for tagging or grouping?"

-- 🔹 10. Replace 'Eggs (dozen)' with 'Eggs (12-pack)'
-- 💼 Business Question: "How can we update product naming in our records to ensure consistency and better 
-- alignment with customer-facing terminology?"

-- 🔹 11. Concatenate city and payment method
-- 💼 Business Question: "How are payment methods distributed across different cities, and how can we 
-- track city-payment combinations for analysis?"




-- ❓ Section 4: NULL Handling Functions

-- 🔹 12. Replace NULL delivery ratings with 0
-- 💼 Business Question: "How can we handle missing delivery ratings to ensure accurate analysis and 
-- prevent null values from skewing results?"

-- 🔹 13. Return NULL if delivery rating = 1 (poor)
-- 💼 Business Question: "How can we exclude extremely poor delivery ratings from analysis by treating 
-- them as missing data?"

-- 🔹 14. Show first non-null value from a list of columns
-- 💼 Business Question: "How can we ensure we always return a meaningful value from our order data, 
-- even when some fields are missing?"






-- ⚖️ Section 5: Conditional Logic (IF & CASE)

-- 🔹 15. Label large orders as 'Bulk' if quantity > 5
-- 💼 Business Question: "How can we classify orders as 'Bulk' or 'Standard' based on quantity purchased?"

-- 🔹 16. Use CASE to classify cities into regions
-- 💼 Business Question: "How can we group customer cities into regional categories to analyze trends 
-- across West, East, and other parts of Africa?"

-- 🔹 17. Nested IF: Label order quality
-- 💼 Business Question: "How can we categorize delivery experiences into quality tiers to better understand 
-- customer satisfaction?"

-- 🔹 18. Nested CASE + IF: Label orders as Excellent, Average, Needs Improvement
-- 💼 Business Question: "How can we classify the quality of each order based on customer satisfaction 
-- and order size, so we can prioritize follow-up or improvement efforts?"





-- 🔄 Section 6: Window Function Simulations (Simple Context)

-- 🧠 What is a Window Function in SQL?
-- A window function performs a calculation across a set of rows that are related to the current row,
-- without collapsing the result into a single row (as aggregate functions do).
-- It allows you to retain row-level detail while also adding rankings, running totals, averages, 
-- or differences across rows.

-- 🔹 19. Rank orders by total amount (ROW_NUMBER)
-- 💼 Business Question: "Which customers placed the highest-value orders, and how do their purchases rank 
-- compared to o





-- 💡 Bonus Section: Advanced Queries with Business Relevance

-- 🔹 20. Which cities have an average delivery rating below 3?
-- 💼 Business Question: "Which cities have an average delivery rating below 3, indicating potential issues 
-- with delivery satisfaction?"

-- 🔹 21. Which products are underperforming based on both order frequency and total revenue?
-- 💼 Business Question: "Which products are underperforming in both sales volume and total revenue, 
-- and may need to be reevaluated or promoted?"

-- 🔹 22. Rank customers by total amount spent (with ties given same rank)
-- 💼 Business Question: "Who are our top-spending customers, and how do they rank based on total revenue 
-- contributed — including tied ranks?"

-- 🔹 23. Identify peak ordering day of the week with revenue totals
-- 💼 Business Question: "Which day of the week generates the highest number of orders and revenue, 
-- and how do other days compare?"





