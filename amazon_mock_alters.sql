-- Changing database structure (when needed)
-- The following commands/clauses are also a part of the DDL statements family
-- The statements we use to change the database are:
-- ALTER, UPDATE/SET, DELETE/WHERE, ADD(used with an ALTER statement), DROP

-- ALTER statement for the order_ table
ALTER TABLE order_
ALTER COLUMN order_id
DROP NOT NULL;

-- Update statement for order_ table (changing order data)

-- Check order_date data
SELECT order_date
FROM order_;

UPDATE order_
SET order_date = '2021-01-27'
-- very important to use where clause after set, otherwise entire 
-- table will be changed
WHERE order_date = '2021-01-26' AND cart_id = 1;

-- DELETE statement for brand where the seller_id is 1
DELETE FROM brand
WHERE seller_id = 1;

-- ADD statement for the customer table
-- Used with an ALTER statement (usually)
ALTER TABLE customer
ADD email VARCHAR(200);

UPDATE customer
SET email = 'joelc@codingtemple.com'
WHERE customer_id = 1;

SELECT *
FROM customer;

-- DROP statement for removing table from database
-- CASCADE sever key relationships and then sever
DROP TABLE ;


