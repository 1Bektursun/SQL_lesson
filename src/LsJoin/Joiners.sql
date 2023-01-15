create table courses(
    id serial primary key,
    name varchar,
    date_of_start date

);

create table instructors(
    id serial primary key ,
    firs_name varchar not null ,
    last_name varchar not null,
    email varchar unique ,
    phone_number varchar,
    course_id int references courses(id)
);

insert into courses(name, date_of_start) VALUES
('Java',date '2022-09-05'),('JavaSript',date '2022-12-01'),('Soft Skills',date '2022-12-01');
insert into courses(name, date_of_start) VALUES ('English',date '2022-05-15');
select * from instructors;

insert into instructors(firs_name, last_name, email, phone_number, course_id) VALUES
('Aijamal ','Asangazieva','a@gmail.com','0700122112',1),
('Jasmina ','Isaeva','j@gmail.com','0700124512',2),
('Muna  ','Aitbek kyzy','m@gmail.com','0702122112',3);

insert into instructors(firs_name, last_name, email, phone_number) VALUES
   ('Nurisa','Mamirova','nurisa@gmail.com','0705124314');


-----------------Cros Join----------------
--Биринчи таблицанын ар бир полесин кийинки таблицанын ар бир айдисин берип чыгат

select * from instructors ,courses;

-----------------Inner join---------------
--Биринчи таблица менен экинчи таблицанын ортосунда окшош маалымат болсо ошолорду чыгарып берет

select * from instructors inner join courses c on instructors.course_id = c.id;

select * from instructors  left outer join courses c on instructors.course_id = c.id;
select * from instructors  right outer join courses c on instructors.course_id = c.id;
select * from instructors  full outer join courses c on instructors.course_id = c.id;



create table products(
    id serial primary key ,
    name varchar,
    description text,
    price numeric
);


create table product_info(
    id serial primary key ,
    expiration_date date,
    product_id int references products(id)
);

insert into products(name, description, price) VALUES
('Cheese','Cream cheese',500),
('Milk','Almond milk',250),
('Yougurt','Strawberry  yogurt',50);

insert into product_info(expiration_date, product_id) VALUES
(date '01-05-2022',1),
(date '04-01-2023',2),
(date '02-05-2022',3);

select * from products;
select * from product_info;

select * from products join product_info pi on products.id = pi.product_id;

select products.name,pi.expiration_date from products join product_info pi on products.id = pi.product_id;





create table books(
    id serial primary key ,
    name varchar,
    author varchar,
    published_year date,
    book_quantity int,
    price numeric
);

create table person(
    id serial primary key ,
    first_name varchar
);

create table baskets(
    id serial primary key ,
    book_id int references books(id),
    person_id int references person(id),
    purchase_date date,
    book_quantity int,
    price numeric

);


insert into books(name, author, published_year, book_quantity, price)
VALUES ('Harry Potter','Joanna Rouling',date '2-15-1997 ',45,1000),
('Jamila','Chyngyz Aitmatov',date '2-15-2005 ',15,1000),
('Harry Potter: Chamber of secret','Joanna Rouling',date '2-15-1997 ',5,1000),
('Sila Voli','Joanna limas',date '2-15-1994 ',5,500),
('Alchemist','Paulo Coelio',date '4-15-2014 ',13,320),
('Ak-Keme','Chyngyz Aitmatov',date '4-25-2018 ',10,350),
('The Greate Gatsby','Scott Fitzgerald ',date '4-25-1968 ',1,700);


insert into person(first_name)
values ('Begaly'),
       ('Bektrsun'),
       ('Ilim'),
       ('Iliyaz'),
       ('Khafiz'),
       ('Duulat');

select * from books;
select * from person;
select * from baskets;
insert into baskets(book_id, person_id, purchase_date, book_quantity, price)
values
       (
           (select id from books where id = 6),
           (select id from person where first_name = 'Ilim'),
           date '1-14-2023',1,(select price from books where id = 6)
       );

truncate baskets;

select * from books where price = (select min(price) from books);


-----------------Array----------------


alter table person add column first_names varchar[];

insert into person (first_names) values ('{"Bayish","Dastan","Aigerim"}');

select first_names[2] from person;
select first_names[2:3] from person;

update person set first_names[4]='Ilim';
update person set first_names[1]='Aiperi';

select * from person;


---------------------Enum---------------------------

create type genre as enum('drama','fantazy','detective');

alter table books add column genre genre ;

update books set genre = 'detective' where id = 3;
select * from books;

alter type genre add value 'history';



------------------Union----------------

alter table person rename first_name to name;
insert into person(name) values ('Jamila');
select * from person;

--эгерде маанилери окшош болсо анда бир эле маанини чыгарып берет
select name from person union select name from books;
--окшош маанилердин баарын чыгарат
select name from person union all select name from books;


-----------------Except------------------
--books'та жок маалыматтарды чыгар
select name from person except select name from books;


-----------------intersect---------------
--Экоондо да болгон маалымат кайсыл ошону чыгарат
select name from person intersect select name from books;

----------------Группировка в соединениях----------------
select author,count(* ) from books group by author;
select author,count(*) from books group by author having count(*) > 1;
select price,count(*) from books group by price having price < 500;
select author,count(*),sum(book_quantity) as units from books where price * book_quantity > 600
group by author;

select name,count(baskets.id) from person join baskets on baskets.person_id = person.id
group by name;

select * from baskets ;


































































