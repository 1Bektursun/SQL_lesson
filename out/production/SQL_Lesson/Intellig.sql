

CREATE TABLE regions(
    id SERIAL primary key ,
    name varchar(50)
);
DROP TABLE regions;

INSERT INTO regions(name)
VALUES ('Чуй'),('Ысык-Кол'),('Жалал-Абад'),('Баткен'),('Талас'),('Нарын'),('Ош');

SELECT * FROM regions;

CREATE TABLE cities(
    id SERIAL primary key ,
    name varchar(50),
    regions_id INT REFERENCES regions(id) NOT NULL
);

INSERT INTO cities(name,regions_id)
VALUES ('Айдаркен',4),('Балыкчы',2),('Баткен',4),('Базар-Коргон',3),('Бишкек',1),('Чолпон-Ата',2),('Исфана',4),
       ('Жалал-Абад',3),('Кадамжай',4),('Кант',1),('Кара-Балта',1),('Каракол',2),('Кара-Көл',3),('Кара-Cуу',7),
       ('Кайынды',1),('Кемин',1),('Кербен',3),('Кочкор-Ата',3),('Көк-Жаңгак',3),('Кызыл-Кыя',4),('Майлуу-Суу',3),
       ('Нарын',6),('Ноокат',7),('Орловка',1),('Oш',7),('Өзгөн',7),('Шопоков',1),('Сүлүктү',4),('Tалас',5),
       ('Таш-Көмүр',3),('Tокмок',1),('Токтогул',1);

SELECT * FROM cities;


CREATE TABLE areas(
    id SERIAL primary key ,
    name varchar(50),
    regions_id INT REFERENCES regions(id)
);

INSERT INTO areas(name,regions_id)
VALUES ('Баткенский',4),('Кадамжайский',4),('Лейлекский',4),('Аксыйский',3),('Базар-Коргонский',3),('Ала-Букинский',3),('Чаткальский',3),
       ('Ноокенский',3),('Сузакский',3),('Тогуз-Тороуский ',3),('Токтогульский',3),
       ('Алайский',7),('Араванский',7),('Чон-Алайский',7),('Кара-Кулжинский',7),('Кара-Сууский',7),('Ноокатский',7),('Узгенский',7),
       ('Аламудунский',1),('Чуйский',1),('Жайылский',1),('Кеминский',1),('Московский',1),('Панфиловский',1),('Сокулукский',1),('Ысык-Атинский',1),
       ('Бакай-Атинский',5),('	Кара-Бууринский',5),('Манасский',5),('Таласский',5),
       ('Ак-Талинский ',6),('Ат-Башынский ',6),('Джумгальский',6),('Кочкорский',6),('Нарынский',6),
       ('Ак-Суйский',2),('Жети-Огузский',2),('Тонский',2),('Тюпский',2),('	Иссык-Кульский',2);

SELECT * FROM areas;


CREATE TABLE instructors(
                            id serial primary key ,
                            first_name varchar(50) not null ,
                            last_name varchar(50) not null ,
                            phone_number varchar(30),
                            email varchar(80) unique
);

INSERT INTO instructors(first_name, last_name, phone_number, email)
VALUES ('Aijamal','Asangazieva','','asankazyeva@gmail.com'),
       ('Mukhammed','Asantegin','','masantegin@gmail.com'),
       ('Rahim','Bazarbai uulu','','rahim@gmail.com');

select * from instructors;

CREATE TABLE courses(
                        id serial primary key ,
                        language varchar(50) NOT NULL ,
                        format varchar(50) NOT NULL ,
                        price int NOT NULL,
                        instructors int references instructors(id)
);

INSERT INTO courses(language, format, price, instructors)
VALUES ('Java','Offline',12000,1),('Java','Online',800,1),
       ('JavaScript','Offline',12000,2),('JavaSript','Online',8000,3);

SELECT * FROM courses;

CREATE TABLE students(
                         id serial primary key ,
                         first_name varchar(50) not null ,
                         last_name varchar(50) not null ,
                         phone_number varchar(30),
                         email varchar(30) not null,
                         instructors int references instructors(id)
);

INSERT INTO students(first_name, last_name, phone_number, email, instructors)
VALUES ('Абдиразак','Ноорузбай уулу',' ','abdy@gmail.com',1),
       ('Абдурасул','Элмурат уулу',' ','rasul@gmail.com',1),
       ('Байтик','Таалайбеков',' ','baitik@gmail.com',1),
       ('Бектурсун','Адылбек уулу',' ','bek@gmail.com',2),
       ('Давран','ЭЖолдошбаев',' ','dav@gmail.com',2),
       ('Дастан','Акбаралиев',' ','das@gmail.com',2),
       ('Мээрим','Саскараева',' ','meerim@gmail.com',3),
       ('Нуржигит','Маликов',' ','nurzhigit@gmail.com',3),
       ('Нуриза','Муратова',' ','nuriza@gmail.com',3);

SELECT * FROM students;

CREATE TABLE phones(
                       id serial primary key ,
                       phone_name varchar(30) not null,
                       phone_model varchar(30) not null,
                       phone_colour varchar(30) not null,
                       phone_year int not null,
                       price numeric
);


INSERT INTO phones(phone_name, phone_model, phone_colour, phone_year, price)
VALUES ('Iphone','11 Pro','White',2018,44000),
       ('Sumsung','A 21','Black',2019,20000),
       ('Redmi','Note 11','Blue',2017,23000),
       ('Redmi','Note 11','White',2019,21000),
       ('Sumsung','S22 ultra','Black',2022,34000),
       ('Iphone','14 Pro','Green',2022,84000);

SELECT * FROM phones;
drop table laptops;
CREATE TABLE laptops(
                        id serial not null primary key,
                        laptop_name varchar(50),
                        ram varchar(50) not null ,
                        processor varchar(70) not null ,
                        storage varchar(50) not null ,
                        price numeric
);

INSERT INTO laptops(laptop_name, ram, processor, storage, price)
VALUES ('HP Envy 17T','16 GB','10th Gen Intel i7-1065G7 processor','1 TB SSD',76000),
       ('Apple MacBook Pro','8 GB','Apple M1 Chip,8-core CPU','256 GB SSD',114000),
       ('ASUS VivoBook 15','36 GB','AMD Ryzen 7 5700U processor','1 TB SSD',120000),
       ('ASUS ROG Strix G17','16 GB','AMD Ryzen 7 4800H 8-Core processor','1 TB SSD',123000),
       ('Lenovo Thinkpad P53s ','16 GB','8th Gen Intel 4-Core i7-8565U','512 GB SSD',76000),
       ('Dell G15','16 GB','AMD 8-Core Ryzen 7 5800H','512 GB SSD',12000),
       ('Acer Swift 3','8 GB','10th Gen Intel i7-1065G7 processor','1 TB SSD',85000);

SELECT * FROM laptops;


CREATE TABLE companies (
                           id serial not null primary key ,
                           name varchar(50),
                           address text,
                           email varchar(50),
                           phone varchar(10)
);

INSERT INTO companies(name, address, email, phone)
VALUES ('Cisco','Ahunbaeva 123','cisco@gmail.com','551123456'),
       ('Hilton','Nekrasova 12','hilton@gmail.com','551142456'),
       ('Salesforce','Tynalieva 15','salesforce@gmail.com','551154456'),
       ('NVIDIA Corporation','Manas 123','nivida@gmail.com','551673456'),
       ('Rocket Companies','Kiev 13','rocket@gmail.com','551121356');

SELECT * FROM companies;

CREATE TABLE banks (
                       id serial not null primary key ,
                       name varchar(50),
                       address text,
                       email varchar(50),
                       phone varchar(10)
);

INSERT INTO banks(name, address, email, phone)
VALUES ('Rsk','Ahunbaeva 13','rsk@gmail.com','551123456'),
       ('Optma bank','Nekrasova 12','optimawork@gmail.com','552342456'),
       ('Ayil bank','Tynalieva 15','ayilbank@gmail.com','551154456'),
       ('Kyrgyzstan bank','Manas 123','kr@gmail.com','551423456'),
       ('Doscredobank','Kiev 13','ds@gmail.com','551123456');

select * from banks;

