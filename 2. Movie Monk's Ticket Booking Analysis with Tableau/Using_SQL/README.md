# Analysing Ticket Booking on Movie Monk

## Initial Steps in MySQL workbench:
### Step 1: Create a Database with name Movie_Monk
### Step 2: Import the CSV file in MySQL workbench
### Step 3: Perform Joni Operation (for joining all the Tables)
            We are not Handling Missing Values keeping as it is.
### Step 4: Importing the data in Tableau Public for visualization 

```
create database Movie_Monk;

use Movie_Monk

select * from bookings;
select * from customer;
select * from due_date;
select * from movies;
select * from promocode;
select * from theater;
```

```
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
```
## Sql Output after performing join operation
![image](https://user-images.githubusercontent.com/69152112/234870660-696ef9d3-11af-431f-be24-7177c1d4828b.png)

## Dashboard Url:
> https://public.tableau.com/app/profile/chandrakant.b.thakur/viz/Sql_Dashboard_task2_Updated/BI-Dashboard1

## DashBoard : Analysing Ticket Booking on Movie Monk [Part.1]
![image](https://user-images.githubusercontent.com/69152112/235253780-c6549a58-318f-4397-8a17-dc37e6ed36b4.png)


## Continued Dashboard Analysing Ticket Booking on Movie Monk [Part.2]
![image](https://user-images.githubusercontent.com/69152112/235253845-f1558682-d155-499d-9a66-65e844f897a8.png)


<---------------------------------------------------------------------------------------------------------------------------------------------------->

## Story 1 : Analysing Ticket Booking on Movie Monk [Part.1]
![image](https://user-images.githubusercontent.com/69152112/235253958-f70e6406-b42a-48d7-920b-50deaa99287f.png)


## Continued Story 2 Analysing Ticket Booking on Movie Monk [Part.2]
![image](https://user-images.githubusercontent.com/69152112/235254031-94ecd113-fee8-4e58-9fd6-bff1e8a3e45a.png)



