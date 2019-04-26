-- ***ASPECT ONE***
-- NEW PRODUCTS, question b			 
-- parameterized stored procedure that is used when a seller needs to add any new product.
CREATE OR REPLACE PROCEDURE ADD_PRODUCT (
        product_id_arg IN DECIMAL, 
        category_id_arg IN DECIMAL, 
        name_arg IN VARCHAR, 
        description_arg IN VARCHAR)
IS
BEGIN
	 INSERT INTO Product 
     VALUES(product_id_arg, category_id_arg, name_arg,description_arg);
     COMMIT;
END;
		 			 
-- DROP FUNCTION ADD_PRODUCT(decimal,decimal,varchar,varchar);
			 
			 
SELECT * FROM Product	
ORDER BY Product_id;	
			 
--ASPECT ONE 
--question c
-- 			 			 
-- A seller adds two new products.


BEGIN
ADD_PRODUCT(3001, 1024, 'Holographic Keyboard', '3-dimensional holographic projection keyboard');  -- New computer category product added
ADD_PRODUCT(3002, 1007, 'Self Driving Cam', 'Automatic self-driving video camera'); -- New camera & photo category product added
END; 

-- SELECT * From Product;
			 
--ASPECT ONE 
-- question d
-- 
-- list of existing products in the â€œComputersâ€? or â€œElectronicsâ€? categories that cost $30 or less
SELECT Product.product_id, Product.name, to_char(Inventory.unit_price, 'FM$99.99') AS unit$price
 FROM Product
 JOIN Inventory ON Inventory.product_id = Product.product_id
 JOIN Product_category ON Product_category.category_id = Product.category_id
 WHERE Product_category.category_name = 'Electronics' 
 OR Product_category.category_name ='Personal Computers'
 GROUP BY Product.product_id, Product.name, Inventory.unit_price
 HAVING (Inventory.unit_price) < 31	
 ORDER BY product_id; 
			 
-- ***END OF ASPECT ONE***
		 
-- ***ASPECT TWO***,PRODUCT DELIVERY, question b
-- Develop a parameterized stored procedure that is used when any seller delivers any product to Amazonâ€™s warehouse.
CREATE OR REPLACE PROCEDURE Ship_Product(
       inventory_id_arg IN DECIMAL, seller_id_arg IN DECIMAL,
       product_id_arg IN DECIMAL, unit_price_arg IN DECIMAL, 
       quantity_shipped_arg IN DECIMAL, 
       product_condition_arg IN VARCHAR)
IS
BEGIN
	 INSERT INTO Inventory 
     VALUES(inventory_id_arg, seller_id_arg, product_id_arg, unit_price_arg, quantity_shipped_arg, product_condition_arg);
     COMMIT;
END;
			 
-- DROP FUNCTION Ship_Product(DECIMAL, DECIMAL, DECIMAL, DECIMAL, DECIMAL, VARCHAR);
-- 			 
-- ASPECT TWO 		 
-- question c
-- 
-- A seller delivers four each of the two new products			 

BEGIN
Ship_Product(5001, 4001, 3001, 29.99, 4, 'New'); --4 Holographic keyboards shipped amazon's warehouse
Ship_Product(5002, 4001, 3002, 99.99, 4, 'New'); --4 Self Driving Cams shipped to amazon's warehouse
END; 
-- 
-- ASPECT TWO, question d
-- listing of all of its products that have an inventory of 11 or less.
SELECT Product.product_id, Product.name, Inventory.unit_price, Inventory.quantity_shipped
 FROM Inventory
 JOIN Product ON Product.product_id = Inventory.product_id
 GROUP BY Product.product_id, Product.name, Inventory.unit_price, Inventory.quantity_shipped
 HAVING (Inventory.quantity_shipped) < 12	
 ORDER BY product_id;
-- ***END OF ASPECT TWO***

-- *** ASPECT THREE ***		 
-- NEW CUSTOMER ACCOUNTS 
-- question b
-- 
-- parameterized stored procedure that is used when any new customer signs up for a new account on Amazon
CREATE OR REPLACE PROCEDURE Add_Cus(
       customer_id_arg IN DECIMAL, 
       account_id_arg IN DECIMAL, 
       customer_since IN TIMESTAMP)
IS 
BEGIN
	 INSERT INTO Customer 
     VALUES(customer_id_arg, account_id_arg, customer_since );
     COMMIT;
END;			 
-- DROP FUNCTION Add_Cus(decimal, DECIMAL, TIMESTAMP);
			 		 
-- ASPECT THREE
-- question c
-- Invoking stored procedure for customers Timothy Abiok and Pamela Farr.			 
BEGIN
 Add_Cus(11001, 6001, NULL ); -- New customer Pamela Farr added
 Add_Cus(11002, 6002, NULL); -- New customer Timothy Abiok's added
END; 

SELECT * FROM CUSTOMER
ORDER BY CUSTOMER_ID;
	 
-- ASPECT THREE 
-- question d

-- Amazon requests the last names, number of accounts of customers where there are least 4 accounts associated with the last name.
SELECT  Account.account_last, COUNT(Account.account_id)
FROM Account
JOIN Customer ON Customer.account_id = Account.account_id
GROUP BY Account.account_last			 
HAVING COUNT(Customer.customer_id) > 3;		 
-- ***END OF ASPECT THREE***
			 
			 			 
-- 
-- *** ASPECT FOUR ***		 
-- PRODUCT PURCHASE 
-- question b
-- 
-- parameterized stored procedure that is used when any customer purchases
CREATE OR REPLACE PROCEDURE make_purchase(
       transaction_id_arg IN DECIMAL, product_id_arg IN DECIMAL,
       customer_id_arg IN DECIMAL, line_price_arg IN DECIMAL, 
       transaction_quantity_arg IN DECIMAL, transaction_stamp_arg IN TIMESTAMP,
       line_total_arg IN DECIMAL)
IS
BEGIN
	 INSERT INTO Cus_Transaction 
     VALUES(transaction_id_arg, product_id_arg, customer_id_arg, line_price_arg, 
					transaction_quantity_arg, transaction_stamp_arg, line_total_arg);
     COMMIT;
END;

-- DROP FUNCTION make_purchase(DECIMAL, DECIMAL, DECIMAL, DECIMAL, DECIMAL, TIMESTAMP, DECIMAL);
	 			 
-- ASPECT FOUR, question c
-- Customers Timothy Abiok and Pamela Farr make purchases
BEGIN
make_purchase (2001, 3001, 11001, 29.99, 3, LOCALTIMESTAMP , NULL);
make_purchase (2002, 3002, 11002, 99.99, 1, LOCALTIMESTAMP, NULL);
END; 
			 
SELECT * FROM Cus_Transaction
ORDER BY product_id;
-- 
-- ASPECT FOUR, question d
SELECT 	Account.Account_id, (Account.account_first|| ' ' ||Account.account_last) AS CustomerName,
			 (Mailing_Address.street1|| ', ' ||Mailing_Address.city|| ', ' 
			  ||Mailing_Address.postal_code|| ', ' || State.abbreviation) AS CustomerAddress
			 FROM Account
			 JOIN Customer ON Customer.account_id = Account.account_id
			 JOIN Mailing_Address ON Mailing_Address.account_id = Account.account_id
			 JOIN State ON State.state_id = Mailing_Address.state_id			 
WHERE Customer.customer_id IN				 
(SELECT Customer.customer_id
			 FROM
			 Customer
			 JOIN Cus_Transaction ON Cus_Transaction.customer_id = Customer.customer_id
WHERE Cus_Transaction.Product_id IN
			(SELECT Cus_Transaction.product_id
			 FROM
			 Cus_Transaction
			 JOIN Product ON Product.product_id = Cus_Transaction.product_id
			 GROUP BY Cus_Transaction.product_id
			 HAVING COUNT(Product.product_id) > 2));
			 
-- ***END OF ASPECT FOUR***
-- *** ASPECT FIVE ***PRODUCT SHIPMENT, question b
-- parameterized stored procedure that is used when Amazon ships any order
CREATE OR REPLACE PROCEDURE ship_package(
      package_id_arg IN DECIMAL, transaction_id_arg IN DECIMAL, 
      shipping_type_id_arg IN DECIMAL, item_count_arg IN DECIMAL, 
      dimensions_arg IN VARCHAR, Weight_arg IN DECIMAL, 
      shipping_date_arg IN DATE, delivery_date_arg IN DATE)
IS
BEGIN
	 INSERT INTO Package 
     VALUES(package_id_arg, transaction_id_arg, shipping_type_id_arg, 
					item_count_arg, dimensions_arg, Weight_arg, shipping_date_arg, delivery_date_arg);
    COMMIT;
END;

-- DROP FUNCTION ship_package(DECIMAL, DECIMAL, DECIMAL, DECIMAL, VARCHAR, DECIMAL, DATE, DATE);
			 
-- ASPECT FIVE, question c,  Amazon ships the orders			 
BEGIN			 
ship_package (12001, 2001, 1001, 3,  '6 x 6 x 10 ' , 5, LOCALTIMESTAMP, NULL);
ship_package (12002, 2002, 1001, 1, '4 x 4 x 8 ', 10, LOCALTIMESTAMP, NULL);
END;
			 
SELECT * FROM Package
ORDER BY package_id;
-- 
-- ASPECT FIVE, question d     

		
SELECT Seller.Seller_first, Seller.seller_last
	FROM 
	Seller  
	WHERE Seller.seller_id IN	
(SELECT Seller.seller_id
FROM Seller
JOIN Inventory ON Inventory.seller_id = Seller.seller_id
JOIN Product ON Product.product_id = Inventory.product_id
JOIN Product_Category ON Product_Category.category_id = Product.category_id	
GROUP BY Seller.seller_id
HAVING COUNT(Product.product_id) > 2);					 			 		 
-- *** END OF ASPECT FIVE ***		 
		 			 			 
					          
						 