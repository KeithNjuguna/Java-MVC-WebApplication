CREATE DATABASE IF NOT EXISTS ecommerce_cart;
USE ecommerce_cart;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  o_id int NOT NULL AUTO_INCREMENT,
  p_id int NOT NULL,
  u_id int NOT NULL,
  o_quantity int NOT NULL,
  o_date varchar(450) NOT NULL,
  PRIMARY KEY (o_id)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES orders WRITE;
INSERT INTO orders VALUES (25,3,1,3,'2021-05-15'),(26,2,1,1,'2021-05-15');
UNLOCK TABLES;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(450) NOT NULL,
  category varchar(450) NOT NULL,
  price double NOT NULL,
  image varchar(450) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES products WRITE;
INSERT INTO products VALUES 
(1,'New Arrival Femal Shoes','Female Shoes',120,'female-shoes.jpg'),
(2,'Ladies Pure PU Shoulder Bag','Ladis Bag',69.99,'ladis-bag.jpg'),
(3,'Stylish Men Office Suits','Men Clothes',169,'men-suits.jpg'),
(4,'Jaeger-LeCoultre Men Watch','Men Watch',2500.99,'men-watch.jpg'),
(5,'FreeMax e-cigarettes VB-456','E-Cigarattes',310,'smoking-e-cigarette.jpg'),
(6,'GeekVapee e-cigarattes MM-632','E-Cigarattes',555.5,'smoking-e-cigarette-2.jpg');
UNLOCK TABLES;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(250) NOT NULL,
  email varchar(250) NOT NULL,
  password varchar(250) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email_UNIQUE (email)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES users WRITE;
INSERT INTO users VALUES (1,'Almamun','almamun@mail.com','123456'),
                          (2,'Keith','keith@mail.com','password123'),
                          (3,'Rachel','rachel@mail.com','password123'),
                          (4,'Roy','roy@mail.com','password123'),
                          (5,'Tanu','tanu@mail.com','password123');
UNLOCK TABLES;
new db with some other users
