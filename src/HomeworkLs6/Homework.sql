--Вывести всех клиентов из страны Canada
select * from customer where country = 'Canada';

--Вывести все страны клиентов
select country from customer group by country;

--Вывести количество всех заказов
select count(*)as total_orders from orders;

--Вывести максимальную стоимость заказа
select id,order_date,order_number,total_amount from orders where total_amount = (select max(total_amount) from orders);

--Найти сумму всех заказов
select sum(total_amount) as sum_of_total from orders;

--Найти сумму всех заказов за 2014 год
select sum(total_amount) as sum_of_total from orders where order_date between '2013-12-31' and '2015-01-01';

--Найти среднюю стоимость всех заказов
select avg(total_amount) from orders;

--Найти среднюю стоимость всех заказов по каждому клиенту
select first_name, avg(total_amount) from customer join orders o on customer.id = o.customer_id group by first_name;

--Найти всех клиентов, которые живут в Бразилии или Испании
select * from customer where country = 'Brazil' or country = 'Spain';

--Найти все заказы между 2013ым и 2014ым годами, которые стоили меньше 100.00$
select * from orders where total_amount < 100 and order_date between '2013-01-01' and '2014-01-01';

--Найти всех клиентов, которые в одной из стран: Испания, Италия, Германия, Франция. Отсортируйте по странам
select country,count(*) from customer where country in('Spain','Italy','Germany','France') group by country;

--Найти все страны клиентов, страны которых содержаться в таблице поставщиков
select country from customer except select country from supplier;

--Найти всех клиентов, имена которых начинаются на ‘Jo’
select * from customer where first_name like 'Jo%';

--Найти всех клиентов, имена которых заканчиваются на ‘a’ и имеют длину ровно 4 символа
select * from customer where  first_name like '____' and first_name like '%a' ;

--Найти количество клиентов по странам
select country,count(o.id) from customer join orders o on o.customer_id = customer.id group by country;

--Найти количество клиентов по странам. Вывести в порядке убывания
select country,count(o.id) as count from customer join orders o on o.customer_id = customer.id  group by country order by count desc ;

--Найти общую сумму стоимости заказов и количество заказов по каждому клиенту (customer_id). Отсортировать по сумме
select first_name,sum(total_amount),count(o.id) from customer join orders o on customer.id = o.customer_id group by first_name;

--Найти общую сумму стоимости заказов и количество заказов по каждому клиенту (customer_id), у которых общее количество заказов больше 20ти
select first_name,sum(total_amount),count(o.id) from customer join orders o on customer.id = o.customer_id group by first_name having count(o.id) > 20;

--Найти количество городов в каждой из стран клиентов
select  country,count(city) from customer group by country;