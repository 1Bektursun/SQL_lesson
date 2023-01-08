CREATE TABLE macbook(
                        id serial primary key,
                        name varchar(60) not null,
                        ram varchar(15) not null,
                        storage varchar(30) not null,
                        processor varchar(50) not null,
                        display varchar(50) not null );

INSERT INTO macbook(name,ram,storage,processor,display)
VALUES('Macbook Air','8 GB','256 GB','Chip m1','13.3'),
      ('Macbook Pro','16 GB','256 GB','Chip m1 Pro','14'),
      ('Macbook Pro','8 GB','256 GB','Core i5','13.3'),
      ('Macbook Pro','32 GB','1 TB','Core i7','15'),
      ('Macbook Pro','32 GB','1 TB','Chip m1 Pro','16');
SELECT * FROM macbook;


CREATE TABLE dell(
                     id serial primary key,
                     name varchar(60) not null,
                     ram varchar(15) not null,
                     storage varchar(30) not null,
                     processor varchar(50) not null,
                     display varchar(50) not null );
INSERT INTO dell(name,ram,storage,processor,display)
VALUES('Dell Latitude','8 GB','256 GB','Core i5','13.3'),
      ('Dell Inspiron 3000','16 GB','1 TB','Core i7','17.3'),
      ('Dell Inspiron 3000','8 GB','256 GB','Core i5','15'),
      ('Dell XPS 13','16 GB','1 TB','Core i7','13'),
      ('Dell XPS 15','16 GB','1 TB','Core i7','15');
SELECT * FROM dell;


CREATE TABLE asus(
                     id serial primary key,
                     name varchar(60) not null,
                     ram varchar(15) not null,
                     storage varchar(30) not null,
                     processor varchar(50) not null,
                     display varchar(50) not null );
INSERT INTO asus(name,ram,storage,processor,display)
VALUES('ASUS ZenBook Pro','32 GB','1 TB','Core i9','15'),
      ('VivoBook S','8 GB','256 GB','Core i7','14'),
      ('ASUS VivoBook Classic','16 GB','256 GB','Core i5','15'),
      ('ASUS VivoBook Pro','8 GB','256 GB','Core i7','17'),
      ('ASUS TUF Gaming','16 GB','1 TB','Core i7','15');
SELECT * FROM asus;


CREATE TABLE hp(
                     id serial primary key,
                     name varchar(60) not null,
                     ram varchar(15) not null,
                     storage varchar(30) not null,
                     processor varchar(50) not null,
                     display varchar(50) not null );
INSERT INTO hp(name,ram,storage,processor,display)
VALUES('HP ZBook 14u','16 GB','256 GB','Core i5','14'),
      ('HP ElitBook 850','16 GB','256 GB','Core i7','14'),
      ('HP ElitBook 840','16 GB','256 GB','Core i7','14'),
      ('HP ProBook 430','4 GB','64 GB','Core i3','14'),
      ('AHP ENVY 13','16 GB','1 TB','Core i7','17');
SELECT * FROM hp;



CREATE TABLE lenovo(
                   id serial primary key,
                   name varchar(60) not null,
                   ram varchar(15) not null,
                   storage varchar(30) not null,
                   processor varchar(50) not null,
                   display varchar(50) not null );
INSERT INTO lenovo(name,ram,storage,processor,display)
VALUES('T-Series','16 GB','512 GB','Core i7','14'),
      (' Ideapad 130','4 GB','64 GB','Intel Quad-Core Pentium N 9220C','14'),
      ('Lenovo Flex 14','16 GB','256 GB','Core i7','14'),
      ('Chromebook','4 GB','64 GB','Core i3','11'),
      ('C Series','16 GB','1 TB','Core i7','13');
SELECT * FROM lenovo;


CREATE TABLE huawei(
                       id serial primary key,
                       name varchar(60) not null,
                       ram varchar(15) not null,
                       storage varchar(30) not null,
                       processor varchar(50) not null,
                       display varchar(50) not null );
INSERT INTO huawei(name,ram,storage,processor,display)
VALUES('HUAWEI MateBook 13','16 GB','512 GB','Core i7','13'),
      ('HUAWEI MateBook Pro','16 GB','512 GB','Core i7','13');
SELECT * FROM huawei;



CREATE TABLE acer(
                   id serial primary key,
                   name varchar(60) not null,
                   ram varchar(15) not null,
                   storage varchar(30) not null,
                   processor varchar(50) not null,
                   display varchar(50) not null );
INSERT INTO acer(name,ram,storage,processor,display)
VALUES('Acer Swift 5','16 GB','1 TB','Core i7','15'),
      ('Acer Swift 7','16 GB','512 GB','Core i7','14'),
      ('Acer Spin 3','16 GB','256 GB','Core i5','14'),
      ('Acer Switch 7','16 GB','512 GB','Core i7','13'),
      ('Acer Nitro 7','8 GB','256 GB','Core i7','15');
SELECT * FROM acer;



CREATE TABLE samsung(
                     id serial primary key,
                     name varchar(60) not null,
                     ram varchar(15) not null,
                     storage varchar(30) not null,
                     processor varchar(50) not null,
                     display varchar(50) not null );
INSERT INTO samsung(name,ram,storage,processor,display)
VALUES('Galaxy Book2 Pro 360','16 GB','1 TB','Core i7','15'),
      ('Galaxy Book2 Pro','16 GB','512 GB','Core i7','13'),
      ('Galaxy Book2 Pro','16 GB','256 GB','Core i5','15'),
      ('Galaxy Book2 Pro 360','16 GB','256 GB','Core i7','13'),
      ('Galaxy Book Pro 360 5G','8 GB','256 GB','Core i7','15');
SELECT * FROM samsung;



CREATE TABLE alienware(
                        id serial primary key,
                        name varchar(60) not null,
                        ram varchar(15) not null,
                        storage varchar(30) not null,
                        processor varchar(50) not null,
                        display varchar(50) not null );
INSERT INTO alienware(name,ram,storage,processor,display)
VALUES('Alienware m15','16 GB','1 TB','Core i7','15.6'),
      ('Alienware m15','16 GB','512 GB','AMD Ryzen R7 5800H','15.6'),
      ('Alienware x14','16 GB','1 TB','Core i7','14');
SELECT * FROM alienware;



CREATE TABLE eluktronics(
                        id serial primary key,
                        name varchar(60) not null,
                        ram varchar(15) not null,
                        storage varchar(30) not null,
                        processor varchar(50) not null,
                        display varchar(50) not null );
INSERT INTO eluktronics(name,ram,storage,processor,display)
VALUES('MAX-17 - Ultra Light Magnesium Alloy ','16 GB','1 TB','Core i7','17.3'),
      ('MAG-15R - Ultra Light Magnesium Alloy','16 GB','512 GB','Core i7','13'),
      ('MECH-15 G3R - Ultra Performance','8 GB','256 GB','Core i5','15.6'),
      ('MAX-15 - Ultra Light Magnesium Alloy ','32 GB','1 TB','Core i9','15.6'),
      ('Prometheus XVII - Ultra Performance','8 GB','256 GB','Core i7','15.6');
SELECT * FROM eluktronics;




