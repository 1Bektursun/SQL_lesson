--------------1. Кардардын атын, шаарын чыгарыныз
SELECT CustomerName,City FROM Customers;


--------------2. Кардарлардын олкосун (уникалдуу) чыгарыныз
SELECT DISTINCT Country FROM Customers;


--------------3. Кардарлардын олкосунун (уникалдуу) санын чыгарыш керек
SELECT Country,count(*) FROM Customers GROUP BY Country;


--------------4.Мексикалык кардарларды чыгарыныз
SELECT CustomerName,Country FROM Customers WHERE  Country = 'Mexico';


--------------5. Айдиси#1 болгон кардардын шаарын, дарегин чыгарыныз
SELECT City,Address FROM Customers WHERE CustomerId = 1;


--------------6. Германиялык же Испаниялык кардарларды чыгарыныз
SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';


--------------7. Кардарлардын олкосун алфавит менен, атын алфавиттин аягы менен сорттоп чыгарыныз
SELECT * FROM Customers ORDER BY Country ;
SELECT * FROM Customers ORDER BY CustomerName DESC;


--------------8. Дареги жазылбаган кардарларды чыгарыныз
SELECT * FROM Customers WHERE Address = '';


--------------9. Продуктулардын минимальный баасын чыгарыныз
SELECT MIN(Price) FROM Products;


--------------10. Канча продукт бар экенин чыгарыныз
SELECT COUNT(*) AS TotalProducts FROM Products;


--------------11. Баш тамгасы ‘А’ башталган бардык кардарлардын атын чыгарыныз
SELECT * FROM Customers WHERE CustomerName LIKE 'A%';


--------------12. Германиялык, Франциялык, Британиялык кардарларды чыгарыныз
SELECT * FROM [Customers] WHERE Country = 'Germany' OR Country = 'UK' OR Country = 'France';


--------------13. Поставщик менен бир олкодон болгон кардарларды чыгарыныз
SELECT * FROM Customers,Suppliers WHERE Customers.Country = Suppliers.Country;


--------------14. 1996-жылкы жалпы заказдарды чыгарыныз
SELECT * FROM Orders WHERE OrderDate BETWEEN  '1995-12-31' AND  '1996-12-31';



SELECT SUM(OrderDate BETWEEN '1995 - 12 - 31' AND '1997 - 01 - 01') AS OrdersIn1996
FROM Orders;