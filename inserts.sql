DELETE FROM PACKAGE;
DELETE FROM SHIPPING_TYPE;
DELETE FROM MAILING_ADDRESS;
DELETE FROM STATE;
DELETE FROM CUS_TRANSACTION;
DELETE FROM ACCOUNT;
DELETE FROM CUSTOMER;
DELETE FROM INVENTORY;
DELETE FROM SELLER;
DELETE FROM PRODUCT_CATEGORY;


SET DEFINE OFF;

-- PRODUCT_CATEGORY INSERTS			 
INSERT INTO Product_Category VALUES(1001,'Amazon Device Accessories',null, 'Amazon Device Accessories');
INSERT INTO Product_Category VALUES(1002,'Amazon Kindle',null, 'Amazon Kindle');
INSERT INTO Product_Category VALUES(1003,'Automotive & Powersports',null, 'Automotive & Powersports');
INSERT INTO Product_Category VALUES(1004,'Baby Products',null, 'Baby Products');
INSERT INTO Product_Category VALUES(1005,'Beauty',null, 'Beauty');
INSERT INTO Product_Category VALUES(1006,'Books',null, 'Books');			 
INSERT INTO Product_Category VALUES(1007,'Camera & Photo',null, 'Camera &  Photo');
INSERT INTO Product_Category VALUES(1008,'Cell Phones & Accessories',null, 'Cell Phones & Accessories');
INSERT INTO Product_Category VALUES(1009,'Collectible Coins',null, 'Collectible Coins');
INSERT INTO Product_Category VALUES(1010,'Electronics',null, 'Consumer Electronics');
INSERT INTO Product_Category VALUES(1011,'Entertainment Collectibles',null, 'Entertainment Collectibles');
INSERT INTO Product_Category VALUES(1012,'Fine Art',null, 'Fine Art');
INSERT INTO Product_Category VALUES(1013,'Grocery & Gourmet Food',null, 'Grocery & Gourmet Food');
INSERT INTO Product_Category VALUES(1014,'Health & Personal Care',null, 'Health & Personal Care');
INSERT INTO Product_Category VALUES(1015,'Home & Garden',null, 'Home & Garden');
INSERT INTO Product_Category VALUES(1016,'Independent Design',null, 'Independent Design');
INSERT INTO Product_Category VALUES(1017,'Industrial & Scientific',null, 'Industrial & Scientific');
INSERT INTO Product_Category VALUES(1018,'Kindle & Amazon Fire TV Accessories',null, 'Kindle & Amazon Fire TV Accessories');
INSERT INTO Product_Category VALUES(1019,'Major Appliances',null, 'Major Appliances');
INSERT INTO Product_Category VALUES(1020,'Music',null, 'Music');
INSERT INTO Product_Category VALUES(1021,'Musical Instruments',null, 'Musical Instruments');
INSERT INTO Product_Category VALUES(1022,'Office Products',null, 'Office Products');
INSERT INTO Product_Category VALUES(1023,'Outdoors',null, 'Outdoors');
INSERT INTO Product_Category VALUES(1024,'Personal Computers',null, 'Personal Computers');			 
INSERT INTO Product_Category VALUES(1025,'Pet Supplies',null, 'Pet Supplies');			 
INSERT INTO Product_Category VALUES(1026,'Software',null, 'Software');			 
INSERT INTO Product_Category VALUES(1027,'Sports',null, 'Sports');			 
INSERT INTO Product_Category VALUES(1028,'Sports Collectibles',null, 'Sports Collectibles');			 
INSERT INTO Product_Category VALUES(1029,'Tools & Home Improvement',null, 'Tools & Home Improvement');			 
INSERT INTO Product_Category VALUES(1030,'Toys & Games',null, 'Toys & Games');			 
INSERT INTO Product_Category VALUES(1031,'Video, DVD & Blu-ray',null, 'Video, DVD & Blu-ray');			
INSERT INTO Product_Category VALUES(1032,'Video Games',null, 'Video Games');			
INSERT INTO Product_Category VALUES(1033,'Watches',null, 'Watches');			


			 			 			 
-- PRODUCT TABLE INSERTS
INSERT INTO Product VALUES(3003, 1033, 'Garmin WaterProof Watch', 'WaterProof Watch up to 10 hrs');
INSERT INTO Product VALUES(3004, 1004, 'Baby Travel Bag', 'Multi Compartment travel all weather companion');
INSERT INTO Product VALUES(3005, 1010, 'Samsung TV', 'The beauty of the Q7C arc is a visual spectacle');
INSERT INTO Product VALUES(3006, 1010, 'CYBERPOWERPC Gamer Xtreme', 'Desktop Gaming PC, Intel i5-8400');
INSERT INTO Product VALUES(3007, 1010, 'Anker PowerCore 13000', 'Compact 13000mAh 2-Port Ultra-Portable Phone Charger Power Bank');
INSERT INTO Product VALUES(3008, 1010, 'Sunrise Alarm Clock', ' Wake Up Light with 6 Nature Sounds, FM Radio, color Light');
INSERT INTO Product VALUES(3009, 1010, 'Beats Studio3', ' Wireless Headphones - Matte Black');
INSERT INTO Product VALUES(3010, 1010, 'HP DeskJet 1112', ' Wake Up Light with 6 Nature Sounds, FM Radio, color Light');

 	 
	 
-- SELLER TABLE	INSERTS		 
INSERT INTO Seller VALUES(4001, 'Jewel', 'Pollard', 'Pollard Electronics', 'Hawaii');
INSERT INTO Seller VALUES(4002, 'Tim', 'Tapp', 'Tapp Computers', 'Virginia Beach');
INSERT INTO Seller VALUES(4003, 'Jeff', 'Bezos', 'Amazon Corporation', 'Seattle');

			 


-- INVENTORY TABLE INSERTS			 
INSERT INTO Inventory VALUES (5003, 4003, 3003, 129.91, 20,'New' );
INSERT INTO Inventory VALUES (5004, 4003, 3004, 29.98, 4,'New');
INSERT INTO Inventory VALUES (5005, 4003, 3005, 499.98, 12,'New');
INSERT INTO Inventory VALUES (5006, 4003, 3006, 250.05, 20,'New');
INSERT INTO Inventory VALUES (5007, 4003, 3007, 28.89, 15,'New');
INSERT INTO Inventory VALUES (5008, 4003, 3008, 24.49, 4,'New');
INSERT INTO Inventory VALUES (5009, 4003, 3009, 330.05, 10,'New');
INSERT INTO Inventory VALUES (5010, 4003, 3010, 29.91, 33,'New');

		 
			 			 
-- ACCOUNT TABLE INSERTS			 
INSERT INTO Account VALUES(6001, 'Pamela', 'Farr',  CAST('14-JUN-1979' AS DATE), 'pfarr@mail.com','female'); 
INSERT INTO Account VALUES(6002, 'Timothy', 'Abiok',  CAST('14-MAY-1985' AS DATE), 'tabiok@mail.com','male'); 
INSERT INTO Account VALUES(6003, 'Jewel', 'Smith',  CAST('14-JUN-1980' AS DATE), 'jsmith@mail.com','female');
INSERT INTO Account VALUES(6004, 'Matt', 'Baggot',  CAST('04-OCT-1985' AS DATE), 'mbaggot@mail.com','male');
INSERT INTO Account VALUES(6005, 'Thomas', 'Wells',  CAST('14-FEB-1980' AS DATE), 'twells@mail.com','male');
INSERT INTO Account VALUES(6006,'Stephen','Price',CAST('07-SEP-1974' AS DATE),'StephenLPrice@teleworm.us','male');
INSERT INTO Account VALUES(6007,'Donnell','Trott',CAST('17-MAR-1988' AS DATE),'DonnellDTrott@jourrapide.com','male');
INSERT INTO Account VALUES(6008,'Marcus','Monks',CAST('07-APR-1970' AS DATE),'MarcusCMonks@cuvox.de','male');
INSERT INTO Account VALUES(6009,'Carly','Johnson',CAST('08-JUN-1978' AS DATE),'CarlyPJohnson@dayrep.com','female');
INSERT INTO Account VALUES(6010,'Justin','Monks',CAST('15-NOV-1987' AS DATE),'JustinLBerndt@einrot.com','male');
INSERT INTO Account VALUES(6011,'Tana','Vang',CAST('10-OCT-1955' AS DATE),'TanaAVang@gustr.com','female');
INSERT INTO Account VALUES(6012,'Jenna','Smallwood',CAST('24-SEP-1984' AS DATE),'JennaSSmallwood@cuvox.de','female');
INSERT INTO Account VALUES(6013,'Jeffery','Ramos',CAST('23-JUN-1993' AS DATE),'JefferyPRamos@fleckens.hu','male');
INSERT INTO Account VALUES(6014,'Andres','Brubaker',CAST('14-JUL-1970' AS DATE),'AndresSBrubaker@fleckens.hu','male');
INSERT INTO Account VALUES(6015,'Patricia','Bracewell',CAST('10-JUL-1971' AS DATE),'PatriciaJBracewell@einrot.com','female');
INSERT INTO Account VALUES(6016,'Sheila','Hall',CAST('15-MAR-1972' AS DATE),'SheilaDHall@cuvox.de','female');
INSERT INTO Account VALUES(6017,'Marin','Tyler',CAST('25-DEC-1975' AS DATE),'MarinJTyler@einrot.com','female');
INSERT INTO Account VALUES(6018,'Claretta','Edwards',CAST('01-MAY-1983' AS DATE),'ClarettaJEdwards@cuvox.de','female');
INSERT INTO Account VALUES(6019,'Brenda','Monks',CAST('25-JUL-1969' AS DATE),'BrendaJRife@jourrapide.com','female');
INSERT INTO Account VALUES(6020,'Elizabeth','Sowa',CAST('08-OCT-1974' AS DATE),'ElizabethTSowa@jourrapide.com','female');
INSERT INTO Account VALUES(6021,'Wanda','Edmond',CAST('16-MAR-1970' AS DATE),'WandaREdmond@armyspy.com','female');
INSERT INTO Account VALUES(6022,'Michael','Montalto',CAST('17-DEC-1983' AS DATE),'MichaelTMontalto@superrito.com','male');
INSERT INTO Account VALUES(6023,'Carl','Hicks',CAST('18-FEB-1973' AS DATE),'CarlRHicks@jourrapide.com','male');
INSERT INTO Account VALUES(6024,'Christopher','Ramos',CAST('02-MAY-1968' AS DATE),'ChristopherEHollingsworth@gustr.com','male');			 
INSERT INTO Account VALUES(6025,'Jillian','Sowa',CAST('13-JAN-1960' AS DATE),'JillianNMiller@dayrep.com','female');			 
INSERT INTO Account VALUES(6026,'Elizabeth','Monks',CAST('25-OCT-1966' AS DATE),'ElizabethDJames@cuvox.de','female');
INSERT INTO Account VALUES(6027,'Bryan','Harris',CAST('08-DEC-1949' AS DATE),'BryanMHarris@einrot.com','male');
INSERT INTO Account VALUES(6028,'Robert','Johnson',CAST('09-AUG-1950' AS DATE),'RobertSJohnson@cuvox.de','male');
INSERT INTO Account VALUES(6029,'James','Sowa',CAST('05-MAR-1962' AS DATE),'JamesLMingo@armyspy.com','male');
INSERT INTO Account VALUES(6030,'Glenn','Ramos',CAST('11-MAY-1959' AS DATE),'GlennJDonaldson@rhyta.com','male');
INSERT INTO Account VALUES(6031,'Juanita','Harris',CAST('28-FEB-1984' AS DATE),'JuanitaJWhisler@superrito.com','female');
INSERT INTO Account VALUES(6032,'Karen','Harris',CAST('27-APR-1985' AS DATE),'KarenMBarker@superrito.com','female');
INSERT INTO Account VALUES(6033,'Michael','Ramos',CAST('13-JUN-1980' AS DATE),'MichaelSZerbe@gustr.com','male');
INSERT INTO Account VALUES(6034,'Kathryn','Norman',CAST('28-AUG-1981' AS DATE),'KathrynINorman@armyspy.com','female');
INSERT INTO Account VALUES(6035,'Sonia','Garcia',CAST('05-MAR-1982' AS DATE),'SoniaJGarcia@fleckens.hu','female');
INSERT INTO Account VALUES(6036,'Joanne','Clark',CAST('17-APR-1983' AS DATE),'JoanneDClark@fleckens.hu','female');
INSERT INTO Account VALUES(6037,'Emily','Rico',CAST('13-JULY-1984' AS DATE),'EmilyKRico@superrito.com','female');
INSERT INTO Account VALUES(6038,'Theresa','Wilson',CAST('01-DEC-1985' AS DATE),'TheresaJWilson@superrito.com','female');
INSERT INTO Account VALUES(6039,'Patricia','Harris',CAST('08-JUN-1986' AS DATE),'PatriciaDGallo@fleckens.hu','female');
INSERT INTO Account VALUES(6040,'Brittany','Harris',CAST('07-FEB-1988' AS DATE),'BrittanyJLabbe@rhyta.com','female');
INSERT INTO Account VALUES(6041,'Mary','Hoffman',CAST('04-FEB-1989' AS DATE),'MarySJung@teleworm.us','female');
INSERT INTO Account VALUES(6042,'Gail','Enriquez',CAST('12-JUN-1979' AS DATE),'GailMEnriquez@teleworm.us','female');
INSERT INTO Account VALUES(6043,'Katherine','Hoffman',CAST('07-OCT-1987' AS DATE),'KatherineRHoffman@jourrapide.com','female');
INSERT INTO Account VALUES(6044,'Juan','Williams',CAST('11-DEC-1972' AS DATE),'JuanVWilliams@rhyta.com','male');
INSERT INTO Account VALUES(6045,'Ethel','Angulo',CAST('23-MAR-1971' AS DATE),'EthelHAngulo@gustr.com','female');
INSERT INTO Account VALUES(6046,'Norman','Hoffman',CAST('19-OCT-1975' AS DATE),'NormanFShaughnessy@superrito.com','male');
INSERT INTO Account VALUES(6047,'Gale','Sowa',CAST('15-AUG-1984' AS DATE),'GaleCCarpenter@armyspy.com','female');
INSERT INTO Account VALUES(6048,'Daniel','Sowa',CAST('17-FEB-1983' AS DATE),'DanielTYarbrough@einrot.com','male');
INSERT INTO Account VALUES(6049,'Brian','Ramos',CAST('08-DEC-1980' AS DATE),'BrianMRamos@rhyta.com','male');
INSERT INTO Account VALUES(6050,'James','Otoole',CAST('03-APR-1974' AS DATE),'JamesAOtoole@armyspy.com','male');


-- CUSTOMER TABLE INSERT			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6003, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6004, null);	
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6005, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6006, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6007, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6008, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6009, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6010, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6011, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6012, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6013, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6014, null);	
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6015, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6016, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6017, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6018, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6019, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6020, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6021, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6022, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6023, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6024, null);	
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6025, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6026, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6027, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6028, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6029, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6030, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6031, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6032, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6033, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6034, null);	
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6035, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6036, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6037, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6038, null);
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6039, null);			 
INSERT INTO Customer VALUES(customer_seq.NEXTVAL, 6040, null);	
			 

-- CUSTOMER TRANSACTION TABLE INSERTS		 		 
INSERT INTO Cus_Transaction VALUES (2003, 3005, 11003, 499.98, 2, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2004, 3004, 11004, 29.98, 2, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2005, 3005, 11005, 499.98, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2006, 3006, 11006, 250.05, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2007, 3007, 11007, 28.89, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2008, 3008, 11008, 24.49, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2009, 3009, 11009, 330.05, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2010, 3010,11010, 29.91, 1, LOCALTIMESTAMP, NULL);			 
INSERT INTO Cus_Transaction VALUES (2011, 3005, 11011, 499.98, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2012, 3010, 11012, 29.91, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2013, 3003, 11013, 499.98, 2, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2014, 3004, 11014, 29.98, 2, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2015, 3005, 11015, 499.98, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2016, 3006, 11016, 250.05, 1, LOCALTIMESTAMP, NULL);			 
INSERT INTO Cus_Transaction VALUES (2017, 3007, 11017, 28.89, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2018, 3008, 11018, 24.49, 1, LOCALTIMESTAMP), NULL);
INSERT INTO Cus_Transaction VALUES (2019, 3009, 11019, 330.05, 1, LOCALTIMESTAMP,NULL);
INSERT INTO Cus_Transaction VALUES (2020, 3010, 11020, 29.91, 1,LOCALTIMESTAMP, NULL);			 
INSERT INTO Cus_Transaction VALUES (2021, 3005, 11021, 499.98, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2022, 3010, 11022, 29.91, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2023, 3005, 11023, 499.98, 2, LOCALTIMESTAMP,NULL);
INSERT INTO Cus_Transaction VALUES (2024, 3004, 11024, 29.98, 2, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2025, 3005, 11025, 499.98, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2026, 3006, 11026, 250.05, 1, LOCALTIMESTAMP, NULL);			 
INSERT INTO Cus_Transaction VALUES (2027, 3007, 11027, 28.89, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2028, 3008, 11028, 24.49, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2029, 3009, 11029, 330.05, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2030, 3010, 11030, 29.91, 1, LOCALTIMESTAMP, NULL);	
INSERT INTO Cus_Transaction VALUES (2031, 3005, 11031, 499.98, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2032, 3010, 11032, 29.91, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2033, 3005, 11033, 499.98, 2, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2034, 3004, 11034, 29.98, 2, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2035, 3005, 11035, 499.98, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2036, 3006, 11036, 250.05, 1, LOCALTIMESTAMP, NULL);			 
INSERT INTO Cus_Transaction VALUES (2037, 3007, 11037, 28.89, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2038, 3008, 11038, 24.49, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2039, 3009, 11039, 330.05, 1,LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2040, 3010, 11040, 29.91, 3, LOCALTIMESTAMP, NULL);				 			 
INSERT INTO Cus_Transaction VALUES (2041, 3003, 11031, 129.91, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2042, 3010, 11032, 29.91, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2043, 3003, 11033, 129.91, 2, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2044, 3004, 11034, 29.98, 2, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2045, 3003, 11035, 129.91, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2046, 3006, 11036, 250.05, 1, LOCALTIMESTAMP, NULL);			 
INSERT INTO Cus_Transaction VALUES (2047, 3007, 11037, 28.89, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2048, 3003, 11035, 129.91, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2049, 3009, 11039, 330.05, 1, LOCALTIMESTAMP, NULL);
INSERT INTO Cus_Transaction VALUES (2050, 3003, 11031, 129.91, 1, LOCALTIMESTAMP, NULL);
			 			 
		 
	
			 
-- STATE INSERTS			 		 			 
INSERT INTO State VALUES(8001, 'Virginia', 'VA');
INSERT INTO State VALUES(8002, 'Illinois', 'IL');
INSERT INTO State VALUES(8003, 'New Jersey', 'NJ');
INSERT INTO State VALUES(8004, 'Texas', 'TX');
INSERT INTO State VALUES(8005, 'New York', 'OH');
INSERT INTO State VALUES(8006, 'Arkansas', 'AR');
INSERT INTO State VALUES(8007, 'California', 'CA');
INSERT INTO State VALUES(8008, 'Ohio', 'OH');		 
INSERT INTO State VALUES(8009, 'Iowa', 'IW');
INSERT INTO State VALUES(8010, 'Oregon', 'OR');
INSERT INTO State VALUES(8011, 'Wisconsin', 'WI');
INSERT INTO State VALUES(8012, 'Missouri', 'MO');
INSERT INTO State VALUES(8013, 'Montana', 'MT');
INSERT INTO State VALUES(8014, 'Florida', 'FL');
INSERT INTO State VALUES(8015, 'Pennsylvania', 'PA');
INSERT INTO State VALUES(8016, 'Connecticut', 'CT');
INSERT INTO State VALUES(8017, 'Michigan', 'MI');
INSERT INTO State VALUES(8018, 'Delaware', 'DE');
INSERT INTO State VALUES(8019, 'Louisinia', 'LA');
INSERT INTO State VALUES(8020, 'Hawaii', 'HI');
INSERT INTO State VALUES(8021, 'New Mexico', 'NM');
INSERT INTO State VALUES(8022, 'Washignton', 'WA');
INSERT INTO State VALUES(8023, 'Kentucky', 'KY');
INSERT INTO State VALUES(8024, 'North Dakota', 'ND');
INSERT INTO State VALUES(8025, 'Alaska', 'AK');
			 


-- MAILING ADDRESS TABLE INSERTS			 		 			 			 
INSERT INTO Mailing_Address VALUES (9001, 6001, '961 Green Hill Road', NULL,'Fort Smith', 8006, '72908'); 
INSERT INTO Mailing_Address VALUES (9002, 6002, '3617 Still Street', NULL, 'Norwalk', 8008, '44857'); 	
INSERT INTO Mailing_Address VALUES (9003, 6003, '236 Kerry Way', NULL,'Bellflower', 8007, '90706');			 
INSERT INTO Mailing_Address VALUES (9004, 6004, '856 West Drive',NULL, 'Chicago', 8002, '60606');
INSERT INTO Mailing_Address VALUES (9005, 6005, '4058 Rardin Drive',NULL, 'San Carlos', 8007, '94070');
INSERT INTO Mailing_Address VALUES (9006, 6006, '1102 Fairfax Drive', NULL,'Belleville', 8003, '07109');		 
INSERT INTO Mailing_Address VALUES (9007, 6007,'1674 Jehovah Drive',NULL,'Warrenton',8001,'22186');
INSERT INTO Mailing_Address VALUES (9008, 6008,'4700 Rosebud Avenue',NULL,'Mountain Home',8006,'72653');
INSERT INTO Mailing_Address VALUES (9009, 6009,'2403 Highland Drive',NULL,'Neenah',8011,'54956');
INSERT INTO Mailing_Address VALUES (9010, 6010,'3628 Chandler Drive',NULL,'Springfield',8012,'65806');
INSERT INTO Mailing_Address VALUES (9011, 6011,'1838 Johnstown Road',NULL,'Bensenville',8002,'60106');
INSERT INTO Mailing_Address VALUES (9012, 6012,'2579 West Fork Street',NULL,'Dagmar',8013,'59219');
INSERT INTO Mailing_Address VALUES (9013, 6013,'1995 Liberty Street',NULL,'Ennis',8004,'75119');
INSERT INTO Mailing_Address VALUES (9014, 6014,'2331 Alfred Drive',NULL,'New York',8005,'10011');
INSERT INTO Mailing_Address VALUES (9015, 6015,'1765 Turkey Pen Road',NULL,'New York',8005,'10016');
INSERT INTO Mailing_Address VALUES (9016, 6016,'2160 Emily Renzelli Boulevard',NULL,'Monterey',8007,'95940');
INSERT INTO Mailing_Address VALUES (9017, 6017,'1882 Eagle Drive',NULL,'Westland',8017,'48185');
INSERT INTO Mailing_Address VALUES (9018, 6018,'4012 Lake Road',NULL,'Camden',8003,'08102');
INSERT INTO Mailing_Address VALUES (9019, 6019,'4861 Boone Street',NULL,'Corpus Christi',8004,'78476');
INSERT INTO Mailing_Address VALUES (9020, 6020,'1071 Callison Lane',NULL,'Newark',8018,'19711');
INSERT INTO Mailing_Address VALUES (9021, 6021,'2903 August Lane',NULL,'Newellton',8019,'71357');
INSERT INTO Mailing_Address VALUES (9022, 6022,'1672 Mount Tabor',NULL,'White Plains',8005,'10601');
INSERT INTO Mailing_Address VALUES (9023, 6023,'3953 Ritter Avenue',NULL,'Birmingham',8017,'48009');
INSERT INTO Mailing_Address VALUES (9024, 6024,'2557 Indiana Avenue',NULL,'Waialua',8020,'96791');
INSERT INTO Mailing_Address VALUES (9025, 6025,'3720 Turkey Pen Road',NULL,'Manhattan',8005,'10016');
INSERT INTO Mailing_Address VALUES (9026, 6026,'559 Bingamon Branch Road',NULL,'Oak Brook',8002,'60523');
INSERT INTO Mailing_Address VALUES (9027, 6027,'510 Murphy Court',NULL,'Ontario',8007,'91761');
INSERT INTO Mailing_Address VALUES (9028, 6028,'2994 Adamsville Road',NULL,'Mcallen',8004,'78501');
INSERT INTO Mailing_Address VALUES (9029, 6029,'2572 Cherry Tree Drive',NULL,'Jacksonville',8014,'32217');
INSERT INTO Mailing_Address VALUES (9030, 6030,'517 Bird Street',NULL,'Portal',8021,'85632');
INSERT INTO Mailing_Address VALUES (9031, 6031,'828 Pratt Avenue',NULL,'Eatonville',8022,'98328');
INSERT INTO Mailing_Address VALUES (9032, 6032,'1676 Arlington Avenue',NULL,'Paragould',8006,'72450');
INSERT INTO Mailing_Address VALUES (9033, 6033,'844 Hemlock Lane',NULL,'Harlingen',8004,'78550');
INSERT INTO Mailing_Address VALUES (9034, 6034,'4603 Sycamore Road',NULL,'Enterprise',8010,'97828');
INSERT INTO Mailing_Address VALUES (9035, 6035,'1221 Hazelwood Avenue',NULL,'Urbandale',8009,'50322');
INSERT INTO Mailing_Address VALUES (9036, 6036,'1426 Fannie Street',NULL, 'New York', 8004,'77859');
INSERT INTO Mailing_Address VALUES (9037, 6037,'4654 Drummond Street',NULL,'Paterson',8003,'07501');
INSERT INTO Mailing_Address VALUES (9038, 6038,'3856 Burning Memory Lane',NULL,'Bensalem',8015,'19020');
INSERT INTO Mailing_Address VALUES (9039, 6039,'3894 Union Street',NULL,'Seattle',8022,'98122');
INSERT INTO Mailing_Address VALUES (9040, 6040,'2789 Copperhead Road',NULL,'Torrington',8016,'06790');
INSERT INTO Mailing_Address VALUES (9041, 6041,'4841 Maxwell Farm Road',NULL,'Staunton',8001,'24401');
INSERT INTO Mailing_Address VALUES (9042, 6042,'2560 Thrash Trail',NULL,'Wills Point',8004,'75169');
INSERT INTO Mailing_Address VALUES (9043, 6043,'3480 Fairmont Avenue',NULL,'Florence',8012,'65329');
INSERT INTO Mailing_Address VALUES (9044, 6044,'4368 Cerullo Road',NULL,'Louisville',8023,'40202');
INSERT INTO Mailing_Address VALUES (9045, 6045,'1493 Village View Drive',NULL,'Fort Myers',8014,'33901');
INSERT INTO Mailing_Address VALUES (9046, 6046,'781 Veltri Drive',NULL,'Anchorage',8025,'99501');
INSERT INTO Mailing_Address VALUES (9047, 6047,'4202 Walnut Drive',NULL,'Minot',8024,'58701');
INSERT INTO Mailing_Address VALUES (9048, 6048,'1597 Gordon Street',NULL,'Ontario',8007,'91761');			 
INSERT INTO Mailing_Address VALUES (9049, 6049,'4202 Walnut Drive',NULL,'Minot',8024,'58701');
INSERT INTO Mailing_Address VALUES (9050, 6050,'1597 Gordon Street',NULL,'Ontario',8007,'91761');				 
			 
-- MAILING ADDRESS TABLE INSERTS			 		 			 
INSERT INTO Shipping_Type VALUES(1001,'PRIME', 0.0, 2);
INSERT INTO Shipping_Type VALUES(1002,'EXPEDITED', 3.99, 4);
INSERT INTO Shipping_Type VALUES(1003,'REGULAR', 7.99, 5);		 

			 
-- PACKAGE TABLE INSERTS			 		 			 			 		 
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 2, '6 x 6 x 10 ', 12, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 11, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 14, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 4, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 8, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '3 x 3 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 2, '16 x 16 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 2, '5 x 5 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '3 x 3 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '4 x 4 x 4 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '8 x 8 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '8 x 8 x 8 ', 10, LOCALTIMESTAMP, NULL);																		
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '3 x 3 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 2, '16 x 16 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 2, '5 x 5 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1003, 1, '3 x 3 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '4 x 4 x 4 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '8 x 8 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '8 x 8 x 8 ', 10, LOCALTIMESTAMP, NULL);			 
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1003, 1, '3 x 3 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 2, '16 x 16 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1002, 2, '5 x 5 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '3 x 3 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '4 x 4 x 4 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1002, 1, '8 x 8 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1002, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1002, 1, '3 x 3 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1003, 2, '16 x 16 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1002, 2, '5 x 5 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '3 x 3 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1002, 1, '4 x 4 x 4 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1003, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1002, 1, '8 x 8 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '6 x 6 x 10 ', 10, LOCALTIMESTAMP, NULL);
INSERT INTO Package VALUES (package_seq.NEXTVAL, transaction_seq.NEXTVAL, 1001, 1, '8 x 8 x 8 ', 10, LOCALTIMESTAMP, NULL);		 		 			 
			 
			 
			  

        
						 