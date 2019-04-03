

--createdb bookings;

-- CUSTOMERS
CREATE TABLE CUSTOMERS (
	id int NOT NULL,
	last_name text,
	first_name text,
	address text,
	zipcode text,
	phonenumber text,
	recommended_id int,
	registerdate timestamp
);

--BOOKINGS
CREATE TABLE BOOKINGS (
	fac_id int NOT NULL,
	cust_id int NOT NULL,
	start_datetime timestamp NOT NULL,
	nhours smallint
);

--FACILITIES
CREATE TABLE FACILITIES (
	id int NOT NULL,
	name text,
	cust_cost money,
	guest_cost money,
	purchase_cost money,
	maintenance_cost money
);

COPY facilities FROM '/home/sergi/Escritorio/facilities.csv' WITH (DELIMITER ',',FORMAT CSV, HEADER true, null '', quote "'");
COPY customers FROM '/home/sergi/Escritorio/customers.csv' WITH (DELIMITER ',',FORMAT CSV, HEADER true, null '', quote "'");
COPY bookings FROM '/home/sergi/Escritorio/bookings.csv' WITH (DELIMITER ',',FORMAT CSV, HEADER true, null '', quote "'");

--CONSTRAINTS
ALTER TABLE CUSTOMERS ADD PRIMARY KEY (id);
ALTER TABLE BOOKINGS ADD PRIMARY KEY (fac_id, cust_id, start_datetime);
ALTER TABLE FACILITIES ADD PRIMARY KEY (id);

ALTER TABLE CUSTOMERS ADD FOREIGN KEY (recommended_id) REFERENCES CUSTOMERS (id);
ALTER TABLE BOOKINGS ADD FOREIGN KEY (fac_id) REFERENCES FACILITIES (id);
ALTER TABLE BOOKINGS ADD FOREIGN KEY (cust_id) REFERENCES CUSTOMERS (id);


	





