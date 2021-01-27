CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	age INTEGER
);

CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	concession_name VARCHAR(100),
	concession_quantity INTEGER,
	concession_cost NUMERIC(10,2),
	con_total_cost NUMERIC(10,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	rating VARCHAR(100),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	ticket_date DATE DEFAULT CURRENT_DATE,
	ticket_cost NUMERIC(10,2),
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);