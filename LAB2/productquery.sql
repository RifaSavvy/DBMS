create table products(p_id number(10),p_price number(10),p_name char(10));

insert into products values (&p_id ,&p_price,'&p_name');

select min(p_price) AS Minimum_Price from products;

select max(p_price) AS Maximum_Price from products;

select count(p_id) AS Total_No_of_Products from products;

select sum(p_price) AS Total_Price_of_all_Products from products;

select avg(p_price) AS Average_Price_of_all_Products from products;

