DROP DATABASE IF EXISTS travel_db;

CREATE DATABASE travel_db;

USE travel_db;

CREATE TABLE reservations (
	id INTEGER(10) AUTO_INCREMENT,
	reserved BOOLEAN DEFAULT FALSE,
	name VARCHAR(255),
	phone BIGINT (9),
	activity_id INTEGER(10),
	FOREIGN KEY (activity_id) REFERENCES activity(id),
	PRIMARY KEY(id)
);

CREATE TABLE activity (
	id INTEGER(10) AUTO_INCREMENT,
	category VARCHAR(255),
	name VARCHAR(255),
	price INTEGER(1),
	city_id INTEGER(10),
	PRIMARY KEY (id),
	FOREIGN KEY (city_id) REFERENCES city(id)
);

CREATE TABLE city (
	id INTEGER(10) AUTO_INCREMENT,
	city VARCHAR(255),
	PRIMARY KEY (id)
);

-- Inserting the city values into the city table and also the activity table
INSERT INTO city (city) VALUES ("Koreatown"); 
INSERT INTO city (city) VALUES ("Santa Monica");
INSERT INTO city (city) VALUES ("Downtown Los Angeles");
INSERT INTO city (city) VALUES ("Beverly Hills");
INSERT INTO city (city) VALUES ("Hollywood");




-- Restaurants

-- Koreatown restaurants ordered by cheapest to most expensive
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Beverly Soon Tofu", "1", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Guelaguetza", "1", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Kang-Ho Dong Baek-Jeong", "1", "3");

-- Santa Monica Restaurants ordered by cheapest to most expensive
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Father's Officers","2", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Fig", "2", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Melisse", "2", "3");

-- Downtown Los Angeles Restaurants ordered by cheapest to most expensive 
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Grand Central Market", "3", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Badmaash", "3", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Broken Spanish", "3", "3");

-- Beverly Hills restaurants ordered by cheapest to most expensive
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Il Pastio", "4", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Hinoki & the Bird", "4", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Spago", "4", "3");

-- Hollywood restaurants ordered by cheapest to most expensive 
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Guisados", "5", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Luv2eat Thai Bistro", "5", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Restaurant", "Toris Mec", "5", "3");




-- Hotels 

-- Koreatown Hotels ordered by cheapest to most expensive 
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Best Western Plus", "1", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "East West Hotel", "1", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "The LINE Hotel", "1", "3");

-- Santa Monica Hotels ordered by cheapest to most expensive
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Courtyard by Marriott", "2", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Hotel Casa del Mar", "2", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Loews Santa Monica Beach Hotel", "2", "3");

-- Downtown Los Angeles Hotels ordered by cheapest to most expensive 
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Freehand", "3", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Omni", "3", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Ritz-Carlton", "3", "3");

-- Beverly Hills Hotels ordered by cheapest to most expensive
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Sirtaj Hotel", "4", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "SIXTY", "4", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Viceroy L'Ermitage", "4", "3");

-- Hollywood Hotels ordered by cheapest to most expensive 
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Kimpton La Peer Hotel", "5", "1");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "Petit Ermitage", "5", "2");
INSERT INTO activity (category,name, city_id, price) VALUES ("Hotel", "The Jeremy West Hollywood", "5", "3");




