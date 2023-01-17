select name,published_year,genre from books;

select country from authors group by country;

select * from books where published_year between date '01-01-2020' and date '01-01-2023';

select name,genre from books where genre = 'DETECTIVE';

select concat(first_name, ',',last_name) as author,email,date_of_birth,country,gender from authors ;

select concat(first_name, ',',last_name) as author,email,date_of_birth,country,gender from authors  where country in('Germany','France') order by author;

select * from books where genre not in('ROMANS') and  price < 500;

select * from authors where gender = 'Female' limit 3;

select * from authors where gender = 'Female' and email like '%.com' and first_name like '____';

select country,count(*) from authors group by country;

select country,count(*) from authors group by country having count(*) = 3 ;

select genre,count(*) from books group by genre;

select * from books where (genre = 'ROMANS' and price = (select min(price) from books)) or (genre = 'DETECTIVE' and price = (select min(price) from books));

select genre,count(*) from books where genre in ('HISTORY','BIOGRAPHY') group by genre;

select books.name,p.name,l.language from books join languages l on books.language_id = l.id join publishers p on books.publisher_id = p.id ;

select a.id,a.first_name,a.last_name,a.email,a.date_of_birth,a.country,a.gender,p.id,p.name from books join authors a on a.id = books.author_id left join publishers p on books.publisher_id = p.id;

select a.first_name,a.last_name,books.name from books right join authors a on books.author_id = a.id;

select l.language,count(*) from books join languages l on books.language_id = l.id group by l.language order by l.language;

select a.first_name,a.last_name,books.name,books.published_year from books join authors a on books.author_id = a.id where published_year between date '2010-01-01' and date '2015-01-01';
