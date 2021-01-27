CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders(
	order_id,
	customer_id
) VALUES (
	1,
	1
);

ALTER TABLE concessions
DROP customer_id;

ALTER TABLE concessions
ADD order_id INTEGER;

UPDATE concessions
SET order_id = 1
WHERE concession_id = 1;

ALTER TABLE concessions
ADD CONSTRAINT order_id
FOREIGN KEY(order_id) REFERENCES orders(order_id);
