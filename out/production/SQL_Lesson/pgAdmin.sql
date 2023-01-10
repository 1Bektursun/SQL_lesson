
CREATE TABLE country(
                        id serial primary key,
                        name varchar(30) not null
);

INSERT INTO country(name)
VALUES('Kyrgyzstan'),('Russia'),('Kazakstan'),('Tajikstan');

SELECT * FROM country;

CREATE TABLE city(
                     id serial primary key,
                     name varchar(30) not null,
                     country_id int references country(id) not null
);

INSERT INTO city(name,country_id)
VALUES('Bishkek',1),('Moscow',2),('Osh',1),('Novosibirsk',2),('Almaty',3),
      ('Astana',3),('Dushanbe',4),('Sankt-Perterburg',2),('Kostanai',3);

SELECT * FROM city;

CREATE TABLE books(
                      id serial primary key,
                      name varchar(60),
                      year int
);

INSERT INTO books(name,year)
VALUES('Gulsarat',2002),('Harry Potter',2015),('Java',2017);


SELECT * FROM books;

CREATE TABLE large_library(
                              id serial primary key,
                              name varchar(90) not null,
                              year int,
                              country varchar(50)
);


INSERT INTO large_library(name,year,country)
VALUES('The Danish Royal Library',1697,'Danish'),
      ('The National Library of China',1916,'China'),
      ('National Diet Library',1948,'Japan'),
      ('National Library of Russia',1795,'Russia'),
      ('Bibliotheque Nationale de France',1996,'France'),
      ('Russian State Library',1862,'Russia');

SELECT * FROM large_library;

CREATE TABLE car_bmw(
                        id serial primary key,
                        marka varchar(50),
                        year int not null,
                        volume varchar(15) not null,
                        colour varchar(15) not null
)

    INSERT INTO car_bmw(marka,year,volume,colour)
VALUES('BMW X1',2023,2,'Black'),
	  ('BMW 7 Series',2023,4,'Wite'),
	  ('BMW X1',2023,2,'White'),
	  ('BMW 7 Series',2023,4,'Red'),
	  ('BMW X6',2023,3,'Black'),
	  ('BMW X6',2023,3,'White'),
	  ('BMW X6',2023,3,'Red');
SELECT * FROM car_bmw;


CREATE TABLE mercedes_benz(
                              id serial primary key,
                              marka varchar(50),
                              year int not null,
                              volume varchar(15) not null,
                              colour varchar(15) not null
);


INSERT INTO mercedes_benz(marka,year,volume,colour)
VALUES('Mercedes-Benz GLS',2023,3,'Black'),
      ('Mercedes-Benz C-Class',2023,2,'White'),
      ('MERCEDES-BENZ SLS AMG',2014,5,'Black'),
      ('MERCEDES-BENZ S-CLASS W140',2002,3,'Red'),
      ('MERCEDES-BENZ CLK AMG GTR',1999,5,'White');

SELECT * FROM mercedes_benz;

CREATE TABLE toyota(
                       id serial primary key,
                       marka varchar(50),
                       year int not null,
                       volume varchar(15) not null,
                       colour varchar(15) not null
);


INSERT INTO toyota(marka,year,volume,colour)
VALUES('RAV4 Hybrid',2019,2,'Black'),
      ('Toyota Prius',2018,2,'Black'),
      ('Toyota Mirai',2019,2,'Black'),
      ('Toyota MR2',1985,3,'Red');

SELECT * FROM toyota;

CREATE TABLE Honda(
                      id serial primary key,
                      marka varchar(50),
                      year int not null,
                      volume varchar(15) not null,
                      colour varchar(15) not null
);

INSERT INTO Honda(marka,year,volume,colour)
VALUES('Honda CRX',2018,'1.6','White'),
      ('Honda Accord',2010,'2.0','Black'),
      ('Honda S2000',2009,'2.0','Silver'),
      ('Honda Prelude',2002,'2.2','Black');

SELECT * FROM Honda;


CREATE TABLE Nissan(
                       id serial primary key,
                       marka varchar(50),
                       year int not null,
                       volume varchar(15) not null,
                       colour varchar(15) not null
);

INSERT INTO Nissan(marka,year,volume,colour)
VALUES('Nissan Pathfinder',2023,'3.5','Black'),
      ('Nissan Rogue',2023,'1.5','White'),
      ('Nissan Altima',2023,'5.5','Black'),
      ('Nissan Sentra',2023,'2.0','Blue');

SELECT * FROM Nissan;


CREATE TABLE Hyundai(
                        id serial primary key,
                        marka varchar(50),
                        year int not null,
                        volume varchar(15) not null,
                        colour varchar(15) not null
);

INSERT INTO Hyundai(marka,year,volume,colour)
VALUES('Hyundai Ioniq',2023,'1.6','Black'),
      ('Hyundai Sonata',2023,'2.0','Silver'),
      ('Hyundai Elantra ',2023,'2.0','Black');

SELECT * FROM Hyundai;

