INSERT INTO customers(
	customer_id,
	first_name,
	last_name,
	age
) VALUES (
	1,
	'Leo',
	'Bush',
	7
);

INSERT INTO concessions(
	concession_id,
	concession_name,
	concession_quantity,
	concession_cost,
	con_total_cost,
	customer_id
) VALUES (
	1,
	'rawhide bone',
	2,
	0.99,
	1.98,
	1
);

INSERT INTO movies(
	movie_id,
	movie_name,
	rating,
	customer_id
) VALUES (
	1,
	'All Dogs Go To Heaven',
	'G',
	1
);

INSERT INTO tickets(
	ticket_id,
	ticket_cost,
	customer_id,
	movie_id
) VALUES (
	1,
	9.00,
	1,
	1
);

