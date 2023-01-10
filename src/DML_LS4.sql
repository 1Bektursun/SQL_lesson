CREATE TABLE users(
                      id SERIAL PRIMARY KEY,
                      name VARCHAR (30),
                      email VARCHAR DEFAULT 'no email provided!', -- таблицага маани бербей койгон учурда по умолчани/ чыга турчу меседж
                      age INT CHECK (age >= 16) ,--16жаштан ойдолорду гана киргизет чектоо
                      gender varchar CHECK(gender = 'FEMALE' OR gender = 'MALE')
);


INSERT INTO users(name, age,gender)
VALUES ('Saltanat',18,'FEMALE') RETURNING *;--маалыматты кайра кайтарып берет


--Таблицаны  тазалайт
TRUNCATE users;
DROP TABLE users;
SELECT  * FROM users;





CREATE TABLE students(
                         id serial primary key ,
                         first_name varchar not null ,
                         last_name varchar not null,
                         gender varchar check(gender = 'FEMALE' or gender = 'MALE'),
                         email varchar unique ,
                         course varchar,
                         course_fee numeric,
                         duration int ,
                         date_of_start date
);
drop table students;
INSERT INTO students(first_name, last_name, gender, email, course, course_fee, duration, date_of_start)
VALUES ('Zarina','Sydykova','FEMALE','zarina@gmai.com','Java',8000.500,9,date '2022-09-03'),
       ('Iilim','Shabdanov','MALE','ilim@gmai.com','Java',12000.00,9,date '2022-09-03'),
       ('Bayish','Orozaliev','MALE','bai@gmai.com','JavaScript',6500,6,date '2021-09-03'),
       ('Altynbek','Shkirov','MALE','altynbek@gmai.com','Java',7500,7,date '2021-05-03'),
       ('Kutman','Kaseinov','MALE','kutman@gmai.com','Java',6000,6,date '2021-10-13'),
       ('Ainazik','Amangeldiev','FEMALE','ainazik@gmai.com','JavaSript',12000.00,9,date '2022-09-03'),
       ('Lira','Kanatove','FEMALE','lira@gmai.com','Java',9000.00,9,date '2023-01-03'),
       ('Nuradil','Moldoshov','MALE','nuradil@gmai.com','Java',7300.00,6,date '2021-05-01'),
       ('Kanykey','Askaralieva','FEMALE','kanykei@gmai.com','JavaScipt',12000.00,9,date '2023-01-03'),
       ('Nuriza','Ibraimova','FEMALE','nuriza@gmai.com','Java',6000,6,date '2022-09-03');

--------------------SELECT------------------  операторлору

select * from students;

select first_name,last_name from students;

select first_name as name from students;

select first_name,course_fee * duration as total_fee from students;

select concat(first_name ,' ', last_name) as full_name from students;

select * from students order by first_name;

select *
from students order by last_name desc;

select distinct course from students;

------------------WHERE операторлору------------------

select * from students where id =9;
select first_name from students where gender = 'FEMALE'; --filter
select * from students where course_fee = 12000 or course_fee = 6000;
select * from students limit 4;
select * from students offset 6;
select * from students limit 3 offset 5;
select * from students fetch first 7 rows only; -- birinchi 7 strokany chygarat
select * from students where course_fee in('12000','6000');
select * from students where duration in (6,3);-- ushul aidagy okuuchulardy chygaryp beret
select * from students where duration not in (6,3); -- ushul ekoonon bashka bolgondordu chygaryp beret
select * from students where date_of_start between date '2021-01-01' and date '2022-01-01';
select * from students where course_fee between 3000 and 8000;
select * from students where last_name like '%va'; --last_name'degi va barlardy chygaryp beret
select * from students where last_name like '______';--6 tamgadan turgan lastname chygarat
select * from students where last_name ilike 'A%'; -- A je a tamgalary memen bashtalgan studentterdi chygaryp beret
select distinct course from students;--Unikalnyi lardy chygaryp beret


-------------------------AGGREGATE FUNCTION----------------------

select course,count(*) from students group by course; --course'ta kancha student kaisy kursta okuit oshonu esepteit
select course,count(*) from students group by course having count(*) > 5; -- course'tun 5ten ashyk student bolso oshonu chygaryp beret
select max(course_fee) from students;--max course'tu chygaryp beret
select min(course_fee) from students; -- min
select avg(course_fee) from students;--
select round(avg(course_fee)) from students;
select sum(course_fee) from students;
select coalesce(email,'email not provided') from students;--null bolup kalsa oshogo message chygarsak bolot
select now();-- azyrky ubakytty chygaryp beret
select now()::date;-- azyrky datany chygarat
select now()-interval '10 years';--10'jyldy alyp salat
select now()-interval '1 month';--1 aidy alat koshsoda bolot
select extract(year from now()) ;-- tolko jyldy alsak bolot
select (day from now()); -- kundu chygarat
select first_name,last_name,(now()-date_of_start) as expirence from students;


-------------------------DELETE---------------------------

delete from students where id = 1;--ar kanday kylyp delete kylsak bolot
select * from students;


------------------------UPDATE----------------------------

update students set course = 'JavaScript' where course = 'JavaScipt';--ozgortot



















