INSERT INTO paymentmethod (
	methodid, methoddesc
)
VALUES
	(1, 'CREDIT'),
	(2, 'DEBIT');


INSERT INTO paymentstatus (
	statusid, statusdesc
)
VALUES
	(1, 'PENDING'),
	(2, 'CANCELLED'),
	(3, 'CONFIRMED');


INSERT INTO products (
	productid, productname, pricetag
)
VALUES
	(1,  'Echo Dot (4th Gen) | Smart speaker with Alexa', '$25.75'),
	(2,  'Mini Smart Plug, WiFi Compatible with Alexa and Google Assistant', '$10.99'),
	(3,  'Scotch Electrical Tape, 3/4-in by 66-ft, Black, 1-Roll', '$2.00'),
	(4,  'Redragon S101 Wired Gaming Keyboard and Mouse Combo ', '$35.98'),
	(5,  'Samsung Electronics 870 EVO 4TB 2.5 Inch SATA III Internal SSD', '$433.76'),
	(6,  'Alapmk Protective Case Cover for 14" HP ProBook 440 ', '$20.99'),
	(7,  'Cable Matters Active Mini DisplayPort to HDMI Adapter ', '$15.99'),
	(8,  'ACASIS Powered USB Hub 16 Ports USB 3.0 Data Hub with Individual On/Off Switches', '$79.99'),
	(9,  'LG Gram 16T90P - 16" WQXGA (2560x1600) 2-in-1 Lightweight Touch Display Laptop', '$1,696.99'),
	(10, 'Syntech USB C to USB Adapter Pack of 2 USB C Male to USB3 ', '$9.99'),
	(11, 'Yubico - YubiKey 5 NFC - Two Factor Authentication USB and NFC Security Key,', '$45.00'),
	(12, 'ViewSonic VG3456 34 Inch 21:9 UltraWide WQHD 1440p Monitor', '$599.99'),
	(13, '2021 Apple 11-inch iPad Pro (Wi-Fi, 128GB) - Space Gray', '$745.88'),
	(14, 'Logitech iPad Air (3rd generation) Keyboard Case', '$70.14'),
	(15, 'Apple MacBook Air with Apple M1 Chip (13-inch, 16GB RAM, 256GB SSD Storage) - Space Gray', '$1,191.96'),
	(16, 'SAMSUNG Galaxy S22 Smartphone', '$699.99'),
	(17, 'PatioMage Gaming Chair Ergonomic ', '$179.99'),
	(18, 'Redragon M602 RGB Wired Gaming Mouse', '$16.99'),
	(19, 'Nintendo Switch with Neon Blue and Neon Red Joy‑Con', '$299.00'),
	(20, 'PlayStation 5 Console', '$499.99');


INSERT INTO users (
	userid, username, email, birthdate, state
)
VALUES
	(1,  'Victoria Parker',		'fakeemail@fakeprovider.com', '2004-05-14', 'MG'),
	(2,  'Juan Barron', 		'fakeemail@fakeprovider.com', '2002-12-14', 'SP'),
	(3,  'Michael Smith', 		'fakeemail@fakeprovider.com', '2001-05-14', 'GO'),
	(4,  'Rebecca Gomez',		'fakeemail@fakeprovider.com', '2003-04-14', 'PB'),
	(5,  'Brianna Carter', 		'fakeemail@fakeprovider.com', '2002-05-14', 'CE'),
	(6,  'Jason Pitts', 		'fakeemail@fakeprovider.com', '2002-03-14', 'AL'),
	(7,  'Jonathan Phelps', 	'fakeemail@fakeprovider.com', '2001-05-14', 'RJ'),
	(8,  'Isabella Martin', 	'fakeemail@fakeprovider.com', '2002-06-14', 'RG'),
	(9,  'Benjamin Duncan', 	'fakeemail@fakeprovider.com', '2003-04-14', 'PR'),
	(10, 'Nathaniel Powers',	'fakeemail@fakeprovider.com', '2003-03-14', 'AC'),
	(11, 'Maria Perry', 		'fakeemail@fakeprovider.com', '2003-07-14', 'AM'),
	(12, 'James Williams', 		'fakeemail@fakeprovider.com', '2001-06-14', 'MG'),
	(13, 'Anthony Nunez', 		'fakeemail@fakeprovider.com', '2001-09-14', 'MG'),
	(14, 'Anthony Whitney', 	'fakeemail@fakeprovider.com', '2001-08-14', 'SC'),
	(15, 'Briana Montgomery', 	'fakeemail@fakeprovider.com', '2002-06-14', 'ES'),
	(16, 'Justin Martinez MD', 	'fakeemail@fakeprovider.com', '2002-05-14', 'GO'),
	(17, 'Amber Anderson', 		'fakeemail@fakeprovider.com', '2002-02-14', 'PB'),
	(18, 'Christopher Green', 	'fakeemail@fakeprovider.com', '2000-01-14', 'CE'),
	(19, 'Jamie Solis', 		'fakeemail@fakeprovider.com', '2000-03-14', 'AL'),
	(20, 'Kimberly Hampton', 	'fakeemail@fakeprovider.com', '2000-04-14', 'RN'),
	(21, 'Jacob Hill', 			'fakeemail@fakeprovider.com', '2000-03-14', 'MG'),
	(22, 'Susan Ferguson', 		'fakeemail@fakeprovider.com', '2000-07-14', 'PB'),
	(23, 'Cynthia Horton', 		'fakeemail@fakeprovider.com', '2003-06-14', 'PR'),
	(24, 'Gabriel Gonzales', 	'fakeemail@fakeprovider.com', '2002-05-14', 'PB'),
	(25, 'Donald Mcdonald', 	'fakeemail@fakeprovider.com', '2001-10-14', 'PA'),
	(26, 'Mrs. Jennifer White', 'fakeemail@fakeprovider.com', '2002-11-14', 'PA'),
	(27, 'Zachary Taylor III', 	'fakeemail@fakeprovider.com', '2003-11-14', 'MG'),
	(28, 'Robert Gardner', 		'fakeemail@fakeprovider.com', '2004-12-14', 'RJ'),
	(29, 'David Coleman', 		'fakeemail@fakeprovider.com', '2001-04-14', 'SP'),
	(30, 'Karen Kelley', 		'fakeemail@fakeprovider.com', '2002-07-14', 'PB');
 