 DROP TABLE Package CASCADE CONSTRAINTS;
 DROP TABLE Shipping_Type CASCADE CONSTRAINTS ;
 DROP TABLE Mailing_Address CASCADE CONSTRAINTS ;
 DROP TABLE State CASCADE CONSTRAINTS;
 DROP TABLE Cus_Transaction CASCADE CONSTRAINTS ;
 DROP TABLE Account CASCADE CONSTRAINTS ;
 DROP TABLE Customer CASCADE CONSTRAINTS;
 DROP TABLE Inventory CASCADE CONSTRAINTS;
 DROP TABLE Seller CASCADE CONSTRAINTS;
 DROP TABLE Product_Category CASCADE CONSTRAINTS ;

-- PRODUCT_CATEGORY TABLE CREATES
CREATE TABLE Product_Category(
category_ID DECIMAL(12) NOT NULL,
category_name VARCHAR(64),
quantity DECIMAL(12),
description VARCHAR(255),
PRIMARY KEY (CATEGORY_ID));

			 
-- PRODUCT_CATEGORY CREATES INDEXES			 
CREATE UNIQUE INDEX idx_category 
ON Product_Category (category_name);	 		 			 
-- DROP INDEX idx_category;			 


-- PRODUCT TABLE
CREATE TABLE Product(
product_ID DECIMAL(12) NOT NULL,
category_ID DECIMAL(12) NOT NULL,
name VARCHAR(64),
description VARCHAR(255),
FOREIGN KEY (CATEGORY_ID) REFERENCES Product_Category,
PRIMARY KEY (PRODUCT_ID));

-- PRODUCT TABLE INDEXES			 
CREATE INDEX idx_Product 
ON Product(category_ID);			 			 
-- DROP INDEX idx_Product;			 
CREATE UNIQUE INDEX idx_prod_name 
ON Product (name);
 	 
	 
-- SELLER TABLE CREATES
CREATE TABLE Seller(
seller_ID DECIMAL(12) NOT NULL,
seller_first VARCHAR(64),
seller_last VARCHAR(64),
company_name VARCHAR(64),
seller_location VARCHAR(64),
PRIMARY KEY (SELLER_ID));
	
			 
-- SELLER TABLE INDEX
CREATE INDEX idx_Seller 
ON Seller(Seller_first, Seller_last);			 			 
-- DROP INDEX idx_Seller;			 
CREATE UNIQUE INDEX idx_company_name 
ON Seller (Company_name);

			 
-- INVENTORY TABLE CREATES
CREATE TABLE Inventory(
inventory_id DECIMAL(12) NOT NULL,
seller_id DECIMAL(12) NOT NULL,
product_id DECIMAL(12) NOT NULL,
unit_price DECIMAL(19,2),
quantity_shipped DECIMAL(12),
product_condition VARCHAR(12),
FOREIGN KEY (PRODUCT_ID) REFERENCES Product,
FOREIGN KEY (SELLER_ID) REFERENCES Seller,
PRIMARY KEY (PRODUCT_ID, SELLER_ID));

-- INVENTORY TABLE INDEXES CREATES
CREATE INDEX idx_Inventory 
ON Inventory(product_id, seller_id);			 			 
-- DROP INDEX idx_Inventory;	

			 
-- ACCOUNT TABLE CREATES			 
CREATE TABLE Account(
account_ID DECIMAL(12) NOT NULL,
account_first VARCHAR(64),
account_last VARCHAR(64),
dob DATE NOT NULL,
account_email VARCHAR(64),
account_gender VARCHAR(12),
PRIMARY KEY (ACCOUNT_ID));

			 
-- ACCOUNT INDEXES			 
CREATE INDEX idx_Account 
ON Account(account_first, account_first);			 			 
-- DROP INDEX idx_Account;	


-- CUSTOMER TABLE CREATES			 
CREATE SEQUENCE customer_seq START WITH 11003;
--DROP SEQUENCE customer_seq;	

CREATE TABLE Customer (
customer_id DECIMAL(12) DEFAULT customer_seq.NEXTVAL,
account_id DECIMAL,
customer_since TIMESTAMP,
PRIMARY KEY (CUSTOMER_ID),
FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNT);

-- CUSTOMER TABLE INDEX			 
CREATE UNIQUE INDEX idx_Customer 
ON Customer(ACCOUNT_ID);				 
-- DROP INDEX idx_Customer;			 			 
-- DROP Table customer;	


 
			 
-- CUSTOMER TRANSACTION TABLE CRETATES			 		 
CREATE TABLE Cus_Transaction (
transaction_id DECIMAL(12) NOT NULL,
product_id DECIMAL(12) NOT NULL,
customer_id DECIMAL(12) NOT NULL,
line_price DECIMAL(12,2),
transaction_quantity DECIMAL(12),
transaction_stamp TIMESTAMP,
line_total DECIMAL(12,2),
PRIMARY KEY (TRANSACTION_ID),
FOREIGN KEY (PRODUCT_ID) REFERENCES Product,
FOREIGN KEY (CUSTOMER_ID) REFERENCES Customer);


-- CUSTOMER TRANSACTION TABLE INDEXES			 		 
CREATE INDEX idx_Transaction 
ON Cus_Transaction(product_id, customer_id);			 			 
--DROP INDEX idx_Transaction;	
		 
		 
-- STATE TABLE CREATES		 		 
CREATE TABLE State (
state_id DECIMAL(12) NOT NULL,
state_name VARCHAR(64),
abbreviation VARCHAR(12),
PRIMARY KEY (STATE_ID));

-- STATE TABLE INDEXES			 		 			 
CREATE UNIQUE INDEX idx_state 
ON State (state_name, abbreviation );
	

-- MAILING ADDRESS TABLE CREATES			 		 			 
CREATE TABLE Mailing_Address (
address_id DECIMAL(12) NOT NULL,
account_id DECIMAL(12) NOT NULL,
street1 VARCHAR(64),
street2 VARCHAR(64),
city VARCHAR(64),
state_id DECIMAL(12) NOT NULL,
postal_code VARCHAR(12),
PRIMARY KEY (ADDRESS_ID),
FOREIGN KEY (ACCOUNT_ID) REFERENCES Account,
FOREIGN KEY (STATE_ID) REFERENCES State);

-- MAILING ADDRESS TABLE INDEXES			 		 			 			 
CREATE INDEX idx_Mailing_Address
ON Mailing_Address(state_id, account_id, city);
-- DROP INDEX idx_Mailing_Address;	

			 
			 			 
-- SHIPPING ADDRESS TABLE CREATES			 		 			 			 
CREATE TABLE Shipping_Type (
shipping_type_id DECIMAL(12) NOT NULL,
Shipping_type VARCHAR(64),
shipping_cost DECIMAL(19,2),
num_days_to_delivery DECIMAL(12),
PRIMARY KEY (SHIPPING_TYPE_ID));
			 
-- CREATE UNIQUE INDEX idx_Shipping_Type 
-- ON Shipping_Type (Shipping_type);

			 
-- PACKAGE TABLE CREATES			 		 			 			 
CREATE SEQUENCE package_seq START WITH 12003;
CREATE SEQUENCE transaction_seq START WITH 2003;		 
--DROP SEQUENCE package_seq;		
--DROP SEQUENCE transaction_seq;	


CREATE TABLE Package (
package_id DECIMAL(12) DEFAULT package_seq.NEXTVAL,
transaction_id DECIMAL(12) DEFAULT transaction_seq.NEXTVAL,
shipping_type_id DECIMAL(12) NOT NULL,
item_count DECIMAL(12),
dimensions VARCHAR(12),
weight DECIMAL(12),
shipping_date TIMESTAMP NOT NULL,
delivery_date DATE,
FOREIGN KEY (TRANSACTION_ID) REFERENCES Cus_Transaction,
FOREIGN KEY (SHIPPING_TYPE_ID) REFERENCES Shipping_Type,
PRIMARY KEY (PACKAGE_ID));

-- PACKAGE TABLE CREATES			 		 			 			 
CREATE INDEX idx_Package
ON Package(transaction_id, shipping_type_id);			 			 
-- DROP INDEX idx_Inventory;
			 
--DROP SEQUENCE oe.customers_seq; 


