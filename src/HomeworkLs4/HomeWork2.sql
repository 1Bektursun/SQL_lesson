SELECT * FROM cars;
--#1 Отображать только марки автомобилей и модели автомобилей и цену автомобиля
SELECT brand,model,price FROM cars;

--#2 Показать количество всех автомобилей
SELECT COUNT(*) AS TotalCars FROM cars ;

--#3 Показать все автомобили марки Hyundai
SELECT * FROM cars WHERE brand = 'Hyundai';

--#4 Показать все красные и синие автомобили
SELECT * FROM cars WHERE color = 'Red' OR color = 'Blue';

--#5 Показать все автомобили, выпущенные с 2000 по 2010 год
SELECT * FROM cars WHERE year_of_issue BETWEEN 2000 AND 2010;

--#6 Показать количество автомобилей марки Chevrolet
SELECT  COUNT(*) FROM cars WHERE brand LIKE '%Chevrolet%' ;

--#7 Отображение среднего года выпуска автомобилей
SELECT AVG(year_of_issue) FROM  cars;

--# 8 Вывести все автомобили брендов Audi, Toyota, Kia и Ford
SELECT * FROM cars WHERE  brand = 'Audi' OR brand = 'Toyota' OR brand = 'Kia' OR brand = 'Ford';

--# 9 Показать автомобили, где модель автомобиля начинается с «Т»
SELECT * FROM cars WHERE model LIKE 'T%';

--#10 Показать автомобили, где модель автомобиля заканчивается на «е»;
SELECT * FROM cars WHERE model LIKE '%e';

--#11 Показать бренды, содержащие только 5 символов
SELECT * FROM cars WHERE brand LIKE '_____';

--#12 Показать общую сумму всех автомобилей марки Mercedes-Benz
SELECT SUM(price) FROM cars WHERE brand = 'Mercedes-Benz';

--#13 Показать самую дорогую и самую дешевую машину
SELECT MAX(price),MIN(price) FROM cars  ;

--#14 Показать все автомобили, где марка автомобиля не TOYOTA
SELECT * FROM cars WHERE brand NOT IN ('Toyota');

--#15 Показать 10 самых дорогих автомобилей
SELECT * FROM cars  ORDER BY price DESC LIMIT 10;

--#16 Отображение новейших автомобилей с 5-го по 15-е
SELECT * FROM cars ORDER BY year_of_issue DESC LIMIT 10 OFFSET 5;

--#17 Вывести все автомобили, кроме тех автомобилей которые выпустились между 1995 и 2005;
SELECT * FROM cars WHERE year_of_issue NOT IN (1996,1997,1998,1999,2000,2001,2002,2003,2004);

--# 18 Вывести автомобилей одного цвета и наибольшего количества
SELECT color,count(*) as total FROM cars GROUP BY color  ORDER BY total DESC;
SELECT * FROM cars WHERE color = 'Khaki';