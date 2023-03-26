CREATE TABLE sales (
	userid 		int NOT NULL,
	productid 	int NOT NULL,
	quantity 	int NULL,
	price 		varchar(100) NULL,
	paymentmtd 	int NULL,
	paymentsts 	int NULL,
	dt_insert 	varchar(30) NULL,
	dt_update 	timestamp NULL
);


CREATE TABLE users (
	userid 		int NOT NULL PRIMARY KEY,
	username 	varchar(100) NULL,
	email 		varchar(100) NULL,
	birthdate 	varchar(10) NULL,
	state 		varchar(2) NULL	
);

CREATE TABLE products (
	productid 		int NOT NULL PRIMARY KEY,
	productname		varchar(100),
	pricetag		varchar(100)
);

CREATE TABLE paymentmethod (
	methodid	int NOT NULL PRIMARY KEY,
	methoddesc	varchar(6)
);

CREATE TABLE paymentstatus (
	statusid	int NOT NULL PRIMARY KEY,
	statusdesc	varchar(15)
);