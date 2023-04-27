create database Movie_Monk;

use Movie_Monk

select * from bookings;

select * from customer;

select * from due_date;

select * from movies;

select * from promocode;

select * from theater;



SELECT *
FROM bookings as a
left JOIN customer as b
ON a.FK_Customer_Key = b.Customer_Key

left JOIN due_date as c
ON a.FK_Date_Key = c.date_key

left JOIN movies as d
ON a.FK_Movies_Key = d.Movie_Key

left JOIN promocode as e
ON a.FK_PromoCode_Key = e.PromoCode_Key

left JOIN theater as f
ON a.FK_Theater_Key = f.Theater_Key;