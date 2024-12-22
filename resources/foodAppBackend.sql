-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: foodappbackend_db
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (0,'btn_1','Pizza'),(1,'btn_2','Burger'),(2,'btn_3','Chicken'),(3,'btn_4','Sushi'),(4,'btn_5','Meat'),(5,'btn_6','Hotdog'),(6,'btn_7','Drink'),(7,'btn_8','More');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foods` (
  `id` bigint NOT NULL,
  `best_food` bit(1) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `star` double NOT NULL,
  `time_value` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `price_id` bigint DEFAULT NULL,
  `time_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (0,_binary '',0,'A timeless classic, the Margherita pizza captures the essence of Italian simplicity. The thin, crispy crust is adorned with a luscious layer of fresh tomato sauce, delicate mozzarella cheese, and fragrant basil leaves. This pizza is a celebration of flavors in every bite, delivering a taste of Italy to your palate.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/margherita.jpg?alt=media&token=0d080cb6-af12-4b16-87b9-f4e32ec01842',10.99,4.5,15,'Margherita',0,1,0),(1,_binary '\0',0,'Indulge in the Pepperoni Lovers pizza, a carnivore\'s dream come true. The crust is generously topped with zesty pepperoni slices, perfectly melding with the melted mozzarella and robust tomato sauce. Each mouthful is a symphony of savory and spicy notes, making it a go-to choice for those who savor the boldness of pepperoni.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Pepperoni%20Lovers.jpg?alt=media&token=4264fb37-bc4a-4551-b653-623e42f0360e',12.99,4.7,18,'Pepperoni Lovers',0,1,0),(2,_binary '\0',0,'The Veggie Supreme pizza is a colorful masterpiece that caters to vegetarian cravings. Loaded with a medley of bell peppers, onions, olives, and mushrooms, this pizza offers a symphony of textures and tastes. The combination of fresh, vibrant vegetables atop a golden crust creates a delightful and satisfying experience.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Veggie%20Supreme.jpg?alt=media&token=ee01d22d-15e4-4955-9811-e7eef1d356f2',11.99,4.5,20,'Veggie Supreme',0,1,0),(3,_binary '\0',0,'Experience the smoky allure of the BBQ Chicken Delight pizza. Succulent pieces of BBQ-infused chicken are paired with the sweetness of red onions and the crunch of bell peppers. All of this is embraced by a delectable blend of cheeses, making every slice a journey into the world of bold barbecue flavors.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/BBQ%20Chicken%20Delight.jpg?alt=media&token=39f373cb-95c7-4762-9a70-dc3b30aff1cc',13.99,4.6,22,'BBQ Chicken Delight',0,1,0),(4,_binary '',0,'Transport your taste buds to a tropical paradise with the Hawaiian pizza. This delightful creation features a harmonious blend of savory ham, juicy pineapple chunks, and a tantalizing drizzle of BBQ sauce. Each bite is a blissful combination of sweet and savory, capturing the essence of a Hawaiian escape.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Hawaiian%20Paradise.jpg?alt=media&token=e7249022-f830-4efa-b8ae-e3d311a48d1a',11.99,4.3,17,'Hawaiian Paradise',0,1,0),(5,_binary '\0',0,'The Meat Feast pizza is a carnivore\'s extravaganza, boasting a tantalizing assortment of meats. From savory sausage to crispy bacon and zesty pepperoni, this pizza is a flavor-packed journey through the rich and hearty world of meaty goodness. Perfect for those who crave a protein-packed pizza experience.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Meat%20Feast%20pizza.jpg?alt=media&token=9f4dfa6f-9d92-4795-acdf-5245b39667e3',14.99,4.8,35,'Meat Feast',0,1,0),(6,_binary '\0',0,'Embark on a culinary journey to the Mediterranean with the Mediterranean Joy pizza. Laden with briny olives, creamy feta cheese, sun-kissed tomatoes, and a sprinkle of oregano, this pizza captures the essence of Mediterranean cuisine. Each bite is a delightful exploration of robust and wholesome flavors.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Mediterranean%20Joy.jpg?alt=media&token=6d046060-61fd-4fac-884c-c8677fadaee1',12.99,4.5,21,'Mediterranean Joy',0,1,0),(7,_binary '\0',0,'Cheese enthusiasts rejoice in the Four Cheese Delight pizza. A symphony of mozzarella, cheddar, parmesan, and feta cheeses come together to create a mouthwatering blend of cheesy perfection. Each bite is a celebration of indulgence for those who appreciate the rich and diverse world of cheeses.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Four%20Cheese%20Delight.jpg?alt=media&token=8a4bcd8c-81c2-47db-a93d-fb64fb680cc7',13.99,4.7,23,'Four Cheese Delight',0,1,0),(8,_binary '\0',1,'Embrace the simplicity of the Classic Beef Burger, featuring a juicy beef patty nestled between a toasted sesame seed bun. Topped with crisp lettuce, ripe tomato, and a special sauce, it\'s a timeless rendition of the all-American burger.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Classic%20Beef%20Burger.jpg?alt=media&token=fab47ee5-6741-4966-87fa-dfbf31ec2c36',8.99,4.5,15,'Classic Beef Burger',0,0,0),(9,_binary '',1,'Heat things up with the Spicy Jalapeño Burger. A flame-kissed patty infused with jalapeños is crowned with pepper jack cheese and a zesty chipotle mayo, offering a tantalizing kick for those who crave a spicy burger adventure.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spicy%20Jalape%C3%B1o%20Burger.jpg?alt=media&token=e5d65b1d-f1fe-4274-a6b2-3349d699c369',9.99,4.7,18,'Spicy Jalapeño Burger',0,0,0),(10,_binary '\0',1,'Indulge in the earthy flavors of the Mushroom Swiss Delight Burger. A succulent patty is topped with sautéed mushrooms and a drizzle of truffle aioli, creating a burger that caters to the discerning palate.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Mushroom%20Swiss%20Delight.jpg?alt=media&token=d45c98bf-33da-495a-ab02-e112e2337113',10.49,4.7,18,'Mushroom Swiss Delight',0,1,0),(11,_binary '\0',1,'Opt for a healthier option with the Chicken Avocado Bliss Burger. A grilled chicken breast takes center stage, adorned with fresh avocado, crisp lettuce, and creamy ranch dressing on a wholesome whole wheat bun.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Chicken%20Avocado%20Bliss.jpg?alt=media&token=6e6ff0eb-b7bd-47e6-841e-ebd49fa7961e',10.49,4.4,20,'Chicken Avocado Bliss',0,1,0),(12,_binary '\0',1,'For bacon aficionados, the Bacon and Cheese Heaven Burger is a must-try. A beef patty is adorned with crispy bacon, cheddar cheese, and a tangy BBQ sauce, creating a heavenly combination of smoky and savory flavors.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Bacon%20and%20Cheese%20Heaven.jpg?alt=media&token=1b9a5033-4b10-4e76-b990-3ae3a99fc5b3',11.99,4.3,17,'Bacon and Cheese Heaven',0,1,0),(13,_binary '\0',1,'Experience a symphony of flavors with the Veggie Extravaganza Burger. A hearty veggie patty takes center stage, complemented by grilled vegetables, hummus, and tzatziki sauce, catering to those who prefer a vegetarian delight.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Veggie%20Extravaganza.jpg?alt=media&token=37f02406-1bf1-4de6-adeb-ef3b122c566d',10.99,4.8,35,'Veggie Extravaganza',0,1,0),(14,_binary '\0',1,'Transport your taste buds to the tropics with the Teriyaki Pineapple Pleasure Burger. Featuring teriyaki-glazed chicken or tofu, grilled pineapple, and green onions, it\'s a delightful fusion of sweet and savory flavors.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Teriyaki%20Pineapple%20Pleasure.jpg?alt=media&token=7ad07890-23ed-41c2-aedc-ff0a78f2a95b',11.49,4.5,21,'Teriyaki Pineapple Pleasure',0,1,0),(15,_binary '\0',1,'Experience a flavor explosion with the BBQ Ranch Delight Burger. A beef patty is joined by crispy bacon, cheddar cheese, BBQ ranch dressing, and crispy onions on a ciabatta bun, creating a symphony of bold and savory notes.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/BBQ%20Ranch%20Delight.jpg?alt=media&token=fd1d22d1-3aca-4c8f-b90b-87e7ff872e9b',12.49,4.7,23,'BBQ Ranch Delight',0,1,0),(16,_binary '\0',2,'Delight in the crispy perfection of our Original Crispy Chicken, seasoned to golden-brown perfection for a satisfying crunch in every bite.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Original%20Crispy%20Chicken.jpg?alt=media&token=bbe50d1b-f695-4292-a091-4e9466c366b6',9.99,4.7,18,'Original Crispy Chicken',0,0,0),(17,_binary '\0',2,'Experience a burst of heat with our Spicy Buffalo Wings, tender chicken wings coated in a zesty buffalo sauce for a fiery kick.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spicy%20Buffalo%20Wings.jpg?alt=media&token=950bb2e9-9cd3-44b4-8372-db8983c796d2',8.99,4.6,18,'Spicy Buffalo Wings',0,0,0),(18,_binary '\0',2,'Indulge in the sweet and savory goodness of our Honey Mustard Glazed Tenders, featuring succulent chicken tenders coated in a luscious honey mustard glaze.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Honey%20Mustard%20Glazed%20Tenders.jpg?alt=media&token=4beefd9a-b1db-4201-8f0e-12cacf595588',10.49,4.5,9,'Honey Mustard Glazed Tenders',0,1,0),(19,_binary '\0',2,'Elevate your taste buds with our Lemon Pepper Chicken, crispy tenders seasoned with zesty lemon and aromatic black pepper for a refreshing flavor.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Lemon%20Pepper%20Chicken.jpg?alt=media&token=379d53ed-57c9-4a8e-a18b-1d5839c1e21d',9.49,4.4,16,'Lemon Pepper Chicken',0,0,0),(20,_binary '\0',2,'Embark on a flavorful journey with our Korean Fried Chicken, featuring a crispy exterior and a tantalizing sweet and spicy glaze.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Korean%20Fried%20Chicken.jpg?alt=media&token=20dcffc2-e9c0-401c-be40-5b7b755397e0',11.99,4.8,22,'Korean Fried Chicken',0,1,0),(21,_binary '\0',2,'Experience Southern comfort with our Southern-Style Chicken Biscuit, pairing a crispy chicken fillet with a warm, flaky biscuit.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Southern-Style%20Chicken%20Biscuit.jpg?alt=media&token=58b8cadf-73fd-4268-bcbb-1503052c1442',8.99,4.6,12,'Southern-Style Chicken Biscuit',0,0,0),(22,_binary '\0',2,'Enjoy the fusion of flavors with our Teriyaki Chicken Wings, glazed in a luscious teriyaki sauce for a perfect blend of sweet and savory.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Teriyaki%20Chicken%20Wings.jpg?alt=media&token=408f510b-8fbe-4a80-92a2-fdcd21c19b90',8.99,4.6,17,'Teriyaki Chicken Wings',0,0,0),(23,_binary '\0',2,'Indulge in the rich and savory goodness of our Garlic Parmesan Chicken, featuring succulent chicken bites coated in a flavorful garlic and parmesan crust.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Garlic%20Parmesan%20Chicken.jpg?alt=media&token=f9ac6f4d-9b75-4c93-848e-2f244a854ed1',9.99,4.5,19,'Garlic Parmesan Chicken',0,0,0),(24,_binary '\0',5,'Embrace tradition with the Classic Beef Hot Dog, a quintessential favorite featuring a succulent beef frankfurter topped with mustard and diced onions.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Classic%20Beef%20Hot%20Dog.jpg?alt=media&token=aac08519-176d-4e6a-a4c7-37d7b4c6dcf0',5.99,4.2,9,'Classic Beef Hot Dog',0,0,0),(25,_binary '\0',5,'Indulge in comfort with the Chili Cheese Dog, a hearty delight boasting a beef hot dog smothered in rich chili, melted cheddar cheese, and diced onions.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Chili%20Cheese%20Dog.jpg?alt=media&token=bdfb1d08-020f-4ee6-a12c-179afc0d92f6',6.49,4.5,12,'Chili Cheese Dog',0,0,0),(26,_binary '\0',5,'Enjoy a plant-based option with the Veggie Dog featuring sauerkraut, mustard, and a flavorful veggie frankfurter in a soft bun.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Veggie%20Dog%20with%20Sauerkraut.jpg?alt=media&token=6c719684-0dcb-4d7d-8518-20646968aaab',6.49,4.5,12,'Veggie Dog with Sauerkraut',0,0,0),(27,_binary '\0',5,'Take a bite of Chicago with the Chicago Style Hot Dog, a beef frankfurter adorned with mustard, onions, sweet pickle relish, tomatoes, and a pickle spear.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Chicago%20Style%20Hot%20Dog.jpg?alt=media&token=c2df3b98-c203-4ece-8450-92252e8e004e',7.49,4.3,15,'Chicago Style Hot Dog',0,0,0),(28,_binary '\0',5,'Elevate your hot dog experience with the Pretzel Bun Dog, featuring a beef frankfurter nestled in a soft pretzel bun.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Pretzel%20Bun%20Dog.jpg?alt=media&token=2484dd09-212d-4272-9953-81977577d1c2',6.99,4.4,18,'Pretzel Bun Dog',0,0,0),(29,_binary '\0',5,'Embark on a tropical journey with the Hawaiian BBQ Dog, featuring a beef frankfurter topped with Hawaiian flavors, including pineapple and BBQ sauce.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Hawaiian%20BBQ%20Dog.jpg?alt=media&token=5f57b27e-c987-444f-aa21-0fa4eaddb55c',7.99,4.4,17,'Hawaiian BBQ Dog',0,0,0),(30,_binary '\0',5,'Spice things up with the Kimchi Hot Dog, a fusion of flavors with a beef frankfurter topped with spicy kimchi.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Kimchi%20Hot%20Dog.jpg?alt=media&token=aaf6d322-ebb0-44f4-adc0-255d73c9e075',7.99,4.8,20,'Kimchi Hot Dog',0,0,0),(31,_binary '\0',5,'Experience a twist on a classic with the Reuben Style Hot Dog, featuring a beef frankfurter topped with corned beef, sauerkraut, Swiss cheese, and Thousand Island dressing.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Reuben%20Style%20Hot%20Dog.jpg?alt=media&token=5508603c-97db-401a-aa3d-b00635d59516',25,4.7,8,'Reuben Style Hot Dog',0,1,0),(32,_binary '\0',3,'Dive into the Classic California Roll, featuring crab, avocado, and cucumber wrapped in a sheet of nori.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/California%20Roll.jpg?alt=media&token=8f6aec92-2ee2-468f-b4c8-d544de370eff',9.99,4.6,20,'California Roll',0,0,0),(33,_binary '\0',3,'Heat things up with the Spicy Tuna Roll, a tantalizing blend of spicy tuna, cucumber, and fiery mayo.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spicy%20Tuna%20Roll.jpg?alt=media&token=519e241c-e39d-4d10-80c9-cb4a161f288b',10.49,4.7,22,'Spicy Tuna Roll',0,1,0),(34,_binary '\0',3,'Savor simplicity with our Salmon Nigiri, featuring succulent salmon slices atop seasoned rice.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Salmon%20Nigiri.jpg?alt=media&token=a8d70d62-ca3a-48f2-962a-b5fc1a451219',7.99,4.5,18,'Salmon Nigiri',0,0,0),(35,_binary '\0',3,'Indulge in artistic presentation with the Dragon Roll, featuring eel, avocado, and cucumber topped with thinly sliced avocado.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Dragon%20Roll.jpg?alt=media&token=631243ef-955b-4ce6-a27c-cc8b04ed084b',12.99,4.9,25,'Dragon Roll',0,1,0),(36,_binary '\0',3,'Enjoy a burst of colors and flavors with the Rainbow Roll, showcasing a variety of fresh vegetables and avocado atop a maki roll.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Rainbow%20Roll.jpg?alt=media&token=cdf5d52d-e0da-42be-a454-f160c4d39c43',11.99,4.9,30,'Rainbow Roll',0,1,0),(37,_binary '\0',3,'Experience the crispy goodness of our Tempura Shrimp Roll, featuring tempura shrimp, avocado, and cucumber wrapped in a cone of nori.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Tempura%20Shrimp%20Roll.jpg?alt=media&token=b78d40ee-1f92-4fab-a2e8-9961054cc256',11.99,4.9,26,'Tempura Shrimp Roll',0,1,0),(38,_binary '\0',3,'Savor the freshness of our Veggie Roll, filled with a medley of crisp vegetables for a delightful vegetarian option.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Veggie%20Roll.jpg?alt=media&token=2a4d3059-061c-4cd9-8b8d-7971735dad1a',9.49,4.5,21,'Veggie Roll',0,0,0),(39,_binary '\0',3,'Indulge in the purity of flavors with our Sashimi Platter, featuring an assortment of fresh and thinly sliced raw fish.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Sashimi%20Platter.jpg?alt=media&token=1946e5f2-64be-4422-9ebf-5197db4b0873',16.99,4.9,35,'Sashimi Platter',0,1,0),(40,_binary '\0',4,' Savor the richness of our Grilled Ribeye Steak, a succulent and well-marbled cut, expertly grilled to perfection. Accompanied by a flavorful blend of herbs and spices, this dish promises a melt-in-your-mouth experience.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Grilled%20Ribeye%20Steak.jpg?alt=media&token=b08133e0-b427-4d48-86ef-05e11c047649',34.99,4.6,25,'Grilled Ribeye Steak',0,2,0),(41,_binary '\0',4,'Embark on a culinary journey with our Spicy Moroccan Lamb Chops, featuring tender lamb chops marinated in exotic spices and grilled to a spicy perfection. A bold and flavorful choice for lamb enthusiasts.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spicy%20Moroccan%20Lamb%20Chops.jpg?alt=media&token=7e2fd701-7ae6-4246-a85e-b64a368770e1',29.99,4.5,35,'Spicy Moroccan Lamb Chops',0,1,0),(42,_binary '\0',4,'Dive into the smoky goodness of our Smoked BBQ Brisket, a slow-cooked masterpiece featuring tender brisket, seasoned with our signature barbecue rub, and smoked to perfection. A true barbecue delight.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Smoked%20BBQ%20Brisket.jpg?alt=media&token=4ebce46e-5a37-42d3-b694-03c6b0d15c12',32.99,4.8,60,'Smoked BBQ Brisket',0,2,0),(43,_binary '\0',4,' Indulge in the elegance of our Pan-Seared Garlic Butter Sirloin, a juicy sirloin steak pan-seared to perfection and topped with a luscious garlic butter sauce. A symphony of flavors for steak connoisseurs.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Pan-Seared%20Garlic%20Butter%20Sirloin.jpg?alt=media&token=cb81cf4c-fa7d-4eb1-920f-929565bbb5fe',26.99,4.7,23,'Pan-Seared Garlic Butter Sirloin',0,1,0),(44,_binary '\0',4,' Experience the sweet and savory fusion of our Teriyaki Glazed Chicken Thighs, featuring succulent chicken thighs marinated in a flavorful teriyaki sauce and grilled to perfection. A delightful Asian-inspired choice.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Teriyaki%20Glazed%20Chicken%20Thighs.jpg?alt=media&token=6719df7f-db6a-4ea5-be45-54aaa7be65b8',18.99,4.6,30,'Teriyaki Glazed Chicken Thighs',0,1,0),(45,_binary '\0',4,'Elevate your dining experience with our Bacon-Wrapped Filet Mignon, a premium cut of beef tenderloin wrapped in savory bacon, cooked to your desired level of doneness. A true indulgence for steak enthusiasts.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Bacon-Wrapped%20Filet%20Mignon.jpg?alt=media&token=77c9feaa-8007-4dcf-988d-6c698ef4150f',36.99,5,20,'Bacon-Wrapped Filet Mignon',0,2,0),(46,_binary '\0',4,'Immerse yourself in the bold flavors of our Korean BBQ Short Ribs, featuring marinated short ribs grilled to perfection, delivering a delightful combination of sweetness and savory goodness.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Korean%20BBQ%20Short%20Ribs.jpg?alt=media&token=20c57549-ba57-4d16-a719-457d8211bf3a',22.99,4.4,40,'Korean BBQ Short Ribs',0,1,0),(47,_binary '\0',4,'Delight in our Stuffed Bell Peppers with Ground Turkey, a wholesome dish featuring bell peppers filled with a flavorful blend of ground turkey, herbs, and spices, baked to perfection.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Stuffed%20Bell%20Peppers%20with%20Ground%20Turkey.jpg?alt=media&token=a2cf40fa-37f6-452d-89ee-eca1af83594c',16.99,4.3,45,'Stuffed Bell Peppers with Ground Turkey',0,1,0),(48,_binary '\0',6,'Refresh with our Fresh Orange Juice, a zesty and invigorating drink squeezed from the finest oranges.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Fresh%20Orange%20Juice.jpg?alt=media&token=5fe1f7ce-d55f-4a66-9de1-e22f69b4e36f',3.99,4.6,5,'Fresh Orange Juice',0,0,0),(49,_binary '\0',6,'Indulge in the Berry Blast Smoothie, a refreshing blend of mixed berries and yogurt for a fruity and nutritious treat.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Berry%20Blast%20Smoothie.jpg?alt=media&token=f16318c9-7919-4a66-a177-d837e450e726',4.49,4.8,7,'Berry Blast Smoothie',0,0,0),(50,_binary '\0',6,'Savor the Iced Caramel Macchiato, a sweet and energizing coffee delight made with espresso, caramel syrup, milk, and ice.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Iced%20Caramel%20Macchiato.jpg?alt=media&token=add86e23-6591-40b5-8e8d-7f9f6ae6b173',4.99,4.5,3,'Iced Caramel Macchiato',0,0,0),(51,_binary '\0',6,'Quench your thirst with the Mint Lemonade, a cool and tangy beverage perfect for a hot day.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Mint%20Lemonade.jpg?alt=media&token=e38bcc19-b742-4c94-b208-eb89532a9358',3.99,4.4,4,'Mint Lemonade',0,0,0),(52,_binary '\0',6,'Beat the heat with the Mango Tango Slush, a tropical delight offering a slushy blend of mango goodness.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Mango%20Tango%20Slush.jpg?alt=media&token=f7a3d21a-9f41-4c1b-8e18-ce8bad9ed8af',4.99,4.7,6,'Mango Tango Slush',0,0,0),(53,_binary '\0',6,'Enjoy the soothing Green Tea Latte, a comforting blend of matcha and steamed milk for a touch of elegance.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Green%20Tea%20Latte.jpg?alt=media&token=695d3f71-ee14-4147-9311-a1617fde8910',4.49,4.5,8,'Green Tea Latte',0,0,0),(54,_binary '\0',6,'Hydrate naturally with Coconut Water, a refreshing and electrolyte-packed beverage straight from the coconut.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Coconut%20Water.jpg?alt=media&token=a7054e9e-0155-40fd-ba57-5d94ec93f885',2.99,4.3,2,'Coconut Water',0,0,0),(55,_binary '\0',6,'Indulge in the sophisticated Espresso Martini, a luxurious cocktail blending espresso, vodka, and coffee liqueur.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Espresso%20Martini.jpg?alt=media&token=360f5595-93d1-42bb-bc2f-d68f3fb21bde',7.99,4.9,10,'Espresso Martini',0,0,0),(56,_binary '\0',7,'Indulge in the classic Italian comfort of Pasta Carbonara, featuring al dente spaghetti tossed in a creamy sauce with pancetta, Parmesan cheese, and black pepper.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Pasta%20Carbonara.jpg?alt=media&token=c87532c6-3fc8-4e47-92b5-c409abbcc0aa',12.99,4.7,22,'Pasta Carbonara',0,1,0),(57,_binary '\0',7,'Experience the bold and aromatic flavors of Thai cuisine with our Thai Red Curry, a tantalizing dish with tender chicken or tofu, vegetables, and a rich red curry sauce.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Thai%20Red%20Curry.jpg?alt=media&token=1827cbde-73a4-4a75-97e8-f0be4addb225',13.49,4.8,25,'Thai Red Curry',0,1,0),(58,_binary '\0',7,'Savor the vibrant and flavorful Vegetarian Pad Thai, a stir-fried noodle dish with tofu, bean sprouts, peanuts, and lime for a perfect balance of sweet, sour, and savory.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Vegetarian%20Pad%20Thai.jpg?alt=media&token=7390c8fd-026d-44e4-b894-06435a7061a6',13.49,4.8,25,'Vegetarian Pad Thai',0,1,0),(59,_binary '\0',7,'Delight in a gourmet experience with our Spinach and Feta Stuffed Chicken, featuring succulent chicken breasts stuffed with a blend of spinach, feta cheese, and herbs.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spinach%20and%20Feta%20Stuffed%20Chicken.jpg?alt=media&token=b7c896a3-bf62-4c40-9a1e-a4a69203e77a',14.99,4.9,30,'Spinach and Feta Stuffed Chicken',0,1,0),(60,_binary '\0',7,'Enjoy the savory goodness of our Beef Stir-Fry with Broccoli, a quick and delicious dish featuring tender beef strips, crisp broccoli, and a flavorful stir-fry sauce.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Beef%20Stir-Fry%20with%20Broccoli.jpg?alt=media&token=f62558c6-e7ac-4004-a353-8024ad7b734b',13.99,4.7,32,'Beef Stir-Fry with Broccoli',0,1,0),(61,_binary '\0',7,'Experience the simplicity of the Margherita Flatbread, featuring a thin and crispy crust topped with fresh tomatoes, mozzarella cheese, and basil for a taste of Italy.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Margherita%20Flatbread.jpg?alt=media&token=7fb03bf9-ce35-43eb-8a98-7eaf52166803',10.99,4.5,18,'Margherita Flatbread',0,1,0),(62,_binary '\0',7,'Embrace a nutritious and satisfying option with our Quinoa Salad Bowl, featuring a colorful medley of quinoa, mixed greens, vegetables, and a zesty vinaigrette dressing.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Quinoa%20Salad%20Bowl.jpg?alt=media&token=0f2ec0da-d8b4-4803-9863-a46ce6cb5b71',9.99,4.4,11,'Quinoa Salad Bowl',0,0,0),(63,_binary '\0',7,'Indulge in the delightful flavors of Shrimp Scampi, featuring plump shrimp sautéed in a garlic-infused butter and white wine sauce, served over a bed of pasta.','https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Shrimp%20Scampi.jpg?alt=media&token=dec5f8f7-9231-4f1d-8496-eaf84b298b7e',16.99,4.8,32,'Shrimp Scampi',0,1,0);
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` bigint NOT NULL,
  `loc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (0,'Split');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `order_id` bigint NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (3,0,2,10.99,2,NULL),(4,9,2,9.99,3,NULL),(5,9,2,9.99,4,NULL),(6,0,2,10.99,4,NULL),(7,9,1,9.99,5,NULL),(8,0,2,10.99,5,NULL),(11,101,2,25,1,NULL),(12,102,1,50,1,NULL),(13,9,1,9.99,6,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spicy%20Jalape%C3%B1o%20Burger.jpg?alt=media&token=e5d65b1d-f1fe-4274-a6b2-3349d699c369'),(14,0,1,10.99,6,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/margherita.jpg?alt=media&token=0d080cb6-af12-4b16-87b9-f4e32ec01842'),(15,4,1,11.99,6,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Hawaiian%20Paradise.jpg?alt=media&token=e7249022-f830-4efa-b8ae-e3d311a48d1a'),(16,9,1,9.99,7,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spicy%20Jalape%C3%B1o%20Burger.jpg?alt=media&token=e5d65b1d-f1fe-4274-a6b2-3349d699c369'),(17,0,1,10.99,7,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/margherita.jpg?alt=media&token=0d080cb6-af12-4b16-87b9-f4e32ec01842'),(18,4,1,11.99,7,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Hawaiian%20Paradise.jpg?alt=media&token=e7249022-f830-4efa-b8ae-e3d311a48d1a'),(19,9,1,9.99,8,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spicy%20Jalape%C3%B1o%20Burger.jpg?alt=media&token=e5d65b1d-f1fe-4274-a6b2-3349d699c369'),(20,0,1,10.99,8,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/margherita.jpg?alt=media&token=0d080cb6-af12-4b16-87b9-f4e32ec01842'),(21,4,1,11.99,8,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Hawaiian%20Paradise.jpg?alt=media&token=e7249022-f830-4efa-b8ae-e3d311a48d1a'),(22,9,2,9.99,9,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spicy%20Jalape%C3%B1o%20Burger.jpg?alt=media&token=e5d65b1d-f1fe-4274-a6b2-3349d699c369'),(23,0,2,10.99,9,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/margherita.jpg?alt=media&token=0d080cb6-af12-4b16-87b9-f4e32ec01842'),(24,4,1,11.99,9,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Hawaiian%20Paradise.jpg?alt=media&token=e7249022-f830-4efa-b8ae-e3d311a48d1a'),(25,9,2,9.99,10,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Spicy%20Jalape%C3%B1o%20Burger.jpg?alt=media&token=e5d65b1d-f1fe-4274-a6b2-3349d699c369'),(26,0,1,10.99,10,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/margherita.jpg?alt=media&token=0d080cb6-af12-4b16-87b9-f4e32ec01842'),(27,0,2,10.99,11,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/margherita.jpg?alt=media&token=0d080cb6-af12-4b16-87b9-f4e32ec01842'),(28,34,2,7.99,11,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Salmon%20Nigiri.jpg?alt=media&token=a8d70d62-ca3a-48f2-962a-b5fc1a451219'),(29,0,2,10.99,12,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/margherita.jpg?alt=media&token=0d080cb6-af12-4b16-87b9-f4e32ec01842'),(30,34,2,7.99,12,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Salmon%20Nigiri.jpg?alt=media&token=a8d70d62-ca3a-48f2-962a-b5fc1a451219'),(31,0,1,10.99,13,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/margherita.jpg?alt=media&token=0d080cb6-af12-4b16-87b9-f4e32ec01842'),(32,34,2,7.99,13,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Salmon%20Nigiri.jpg?alt=media&token=a8d70d62-ca3a-48f2-962a-b5fc1a451219'),(33,8,1,8.99,14,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Classic%20Beef%20Burger.jpg?alt=media&token=fab47ee5-6741-4966-87fa-dfbf31ec2c36'),(34,48,1,3.99,14,'https://firebasestorage.googleapis.com/v0/b/foodapp-d0d0f.appspot.com/o/Fresh%20Orange%20Juice.jpg?alt=media&token=5fe1f7ce-d55f-4a66-9de1-e22f69b4e36f');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `total_amount` double NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,100,'PENDING',NULL,NULL),(2,-1,23.98,'Pending',NULL,NULL),(3,-1,21.98,'Pending',NULL,NULL),(4,6,43.96,'Pending',NULL,NULL),(5,7,33.97,'Pending',NULL,NULL),(6,12,34.97,'Pending','2024-08-19 17:43:17',NULL),(7,12,34.97,'Accepted','2024-08-21 17:06:30',NULL),(8,12,34.97,'Accepted','2024-08-28 15:05:02',NULL),(9,12,56.95,'Accepted','2024-08-30 15:40:57',NULL),(10,12,32.97,'Accepted','2024-08-30 16:10:28','Vukovarska 43'),(11,13,39.96,'Accepted','2024-09-13 15:07:11',''),(12,13,39.96,'On the way','2024-09-15 15:50:59',''),(13,13,28.97,'On the way','2024-09-15 17:43:50',''),(14,13,14.98,'On the way','2024-09-15 17:50:00','vukovarska 45');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price` (
  `id` bigint NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (0,'1$ - 10$'),(1,'10$ - 30$'),(2,'more than 30$');
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time` (
  `id` bigint NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (0,'5 - 30 min');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Marul','Babic','mbabic@gmail.com','$2a$10$Fl4FcL5ygN.ByK/Txf4a1.C7z7UNCS2hDaGUbETvtnbTJDVNxAI36',NULL),(2,'Mia','Marin','miamarin@gmail.com','$2a$10$QeSUoxdh/wtIiol4.5OR8OLYa72PM36.f955t2NwQ41./tyEje07K',NULL),(3,'Marul','Babic','marulbabic885@gmail.com','$2a$10$RR9DYvtxV2MQ2Z1P0/zTqOIUCZtT4xP5i2wcH1BOgmPFXiDmKxEiy',NULL),(4,'Test','User','testuser@example.com','$2a$10$FwcoBUrvuwxgeTTLicpdReOgjYrd3siaPMKCYfrIoUFYi40rn4P6i',NULL),(5,'Test','Users','testusers123@gmail.com','$2a$10$ni3LEW1EGmGo8Qg8mzOjKOgDr1ZgqJ1gTpZoV60rYqz9i4.qn.j1y',NULL),(6,'test','user','testuser12345@gmail.com','$2a$10$DiylhC1WnyohmZ9XVW8wGuBLllV1KPsgejmXMGJfbYSha98i4fYqa',NULL),(7,'user','test','usertest1@gmail.com','$2a$10$sCKB.0veTyXj0Hba9o6dveC42beiiOFfZNN3xvl/iXa/o31ECYTbm',NULL),(8,'John','Doe','john.doe@example.com','$2a$10$lr2qGSc9vfePWtq9UOmcXO8kp8LgkhkaKZPB0Q2eU611vYrY8H64K','user'),(9,'test','chef','testchef123@gmail.com','$2a$10$aK44LmVJKWRHlNbycifjYuRrZnT0JBLQWO9.50IgnZwkCwPEOO5Uy','user'),(10,'test','chef2','testchef12345@gmail.com','$2a$10$s.uQOtFoy.aegIM9T31dDulEIO2FSesPjYpvTv3fnVmudbV0Fzame','chef'),(11,'Marul','Babic','marulchef@gmail.com','$2a$10$Sybwf5mAFVDbLp.lpsWzHOFKolWYf4LpRNDzF.bHCl6S3jIRAXxkS','chef'),(12,'Zeljko','Babic','zeljkobabic@gmail.com','$2a$10$q3suXrRYnME/s8CPEoFmaufwNYZ4IwPBdaqy.qj1oW7Yju5abaZ2e','chef'),(13,'Mia','Marin','miamarin123@gmail.com','$2a$10$uHSZZ2c6giO4AD/Q7rzWJ.LK8W7DuEdkvvG2WTQt3Mi5i38bImEEO','user'),(14,'Marko','markic','markomarkic@gmail.com','$2a$10$jwbK04jjlINLNaMl3gYFTOwS5dOrZx3foXUhS3Tjyeqe/CQvrw7Vi','chef'),(15,'marta','babic','martababic12345@gmail.com','$2a$10$aLOCvCwsbxRqSpKDSCEPXOK.uSCfST7o1WIfJ5DRbmwGVWFHklYjW','chef'),(16,'John','Doe','john.doe@example2.com','$2a$10$5fhxJ2BjMlw3QkcM7JnSBeOsp7geeBTKvn8UBcMR42HGCorW/tzMG','delivery'),(17,'TestDeliv','deliveryTest','testingdelivery@gmail.com','$2a$10$NwxfDETIeKZsu0WaIXysMeYQfWy2YMpgOWsviOvL13y0xgITSAibm','delivery'),(18,'mate','matic','matematic123@gmail.com','$2a$10$z8cSN2vNu1i1bTHoJ2UqVe9Ghy4AcTSVj.asi1erEu8nH5nbZ/Xqm','delivery');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 19:58:40
