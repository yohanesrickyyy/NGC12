-- NGC 12 D2 W3

CREATE TABLE NGC_12;

CREATE TABLE destinations(
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    description VARCHAR(255) NOT NULL,
    rating INT(2) NOT NULL
    );

CREATE TABLE hotels(
    name VARCHAR(50) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    rating INT(2) NOT NULL,
    address VARCHAR(255) NOT NULL
    );
    
CREATE TABLE bookings(
    guest_details VARCHAR(100) NOT NULL,
    hotel_references VARCHAR(100) NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL
    )

-- DDL
INSERT INTO destinations (name, country, description, rating)
VALUES
    ('Kuta', 'Indonesia', 'friendly', '8'),
    ('Bromo', 'Indonesia', 'magnificent', '10'),
    ('Raja Empat', 'Indonesia', 'Utopia', '10');
    
INSERT INTO hotels (name, destination, rating, address)
VALUES
    ('Aston', 'Bromo', '9', 'JL Gunung NO.10'),
    ('Pop', 'Kuta', '7', 'JL Pantai NO.10'),
    ('Oyo', 'Raja Empat', '5', 'JL Pulau NO.1001');

INSERT INTO bookings (guest_details, hotel_references, check_in, check_out)
VALUES
    ('Touris/Lokal', 'Aston', '2024-01-12', '2024-01-13'),
    ('Tourist', 'Pop', '2024-01-17', '2024-01-18'),
    ('Lokal', 'Oyo', '2024-01-16', '2024-01-17');

-- A-C
SELECT * FROM `destination` 
SELECT * FROM `hotels` 
SELECT * FROM `bookings` 

--D
SELECT name, rating, address
FROM hotels
WHERE destination = 'Bromo';

--E
SELECT AVG(rating) AS rataRataRating
FROM hotels;