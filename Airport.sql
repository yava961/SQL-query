CREATE DATABASE airport;
USE airport;
DROP TABLE IF EXISTS pilots;
DROP TABLE IF EXISTS planes;


CREATE TABLE planes (
    id INT NOT NULL AUTO_INCREMENT,
    model VARCHAR(50) NOT NULL,
    serial_number VARCHAR(50) NOT NULL,
    seats INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE pilots (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE pilots ADD planes VARCHAR(100);

ALTER TABLE planes ADD pilot_id INT;

ALTER TABLE planes ADD FOREIGN KEY (pilot_id) REFERENCES pilots(id);

INSERT INTO pilots (name, age, planes)
VALUES
    ('John Smith', 35, 'Boeing 747, Airbus A320'),
    ('Sarah Jones', 40, 'Boeing 747, Airbus A320'),
    ('Tom Lee', 28, 'Airbus A320'),
    ('Lisa Kim', 33, 'Airbus A320'),
    ('Mike Chen', 42, 'Airbus A320'),
    ('Emily Wong', 29, 'Airbus A320'),
    ('David Park', 37, 'Airbus A320');

INSERT INTO planes (model, serial_number, seats, pilot_id)
VALUES
    ('Boeing 747', 'N111AA', 467, 1),
    ('Boeing 747', 'N222BB', 467, 1),
    ('Airbus A320', 'N333CC', 186, 2),
    ('Airbus A320', 'N444DD', 186, 3),
    ('Airbus A320', 'N555EE', 186, 4),
    ('Airbus A320', 'N666FF', 186, 5),
    ('Airbus A320', 'N777GG', 186, 6);
    
