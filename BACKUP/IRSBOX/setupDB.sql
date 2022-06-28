USE IRSbox; 

DROP TABLE IF EXISTS merchandise;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;

CREATE TABLE customers (
	customerID int NOT NULL,
	firstName varchar(255),
	lastName varchar(2550),
	PRIMARY KEY(customerID)
);

CREATE TABLE merchandise (
	merchID int NOT NULL,
	name varchar(255),
	PRIMARY KEY(merchID)
);

CREATE TABLE orders (
	orderID int NOT NULL,
	customerID int,
	merchID int,
	PRIMARY KEY(orderID)
);

INSERT INTO customers(customerID, firstName, lastName)
VALUES 
	(1, "Levi", "Ackermann"),
	(2, "Eren", "Jeager"),
	(3, "Mikasa","Ackermann");

INSERT INTO merchandise (merchID, name)
VALUES 
	(1, "apple"),
	(2, "orange"),
	(3, "banana");

INSERT INTO orders(orderID, customerID, merchID)
VALUES 
	(1,1,2),
	(2,2,1);
