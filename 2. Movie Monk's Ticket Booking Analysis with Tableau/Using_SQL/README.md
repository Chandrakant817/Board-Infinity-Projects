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


## DashBoard : Analysing Ticket Booking on Movie Monk [Part.1]
![image](https://user-images.githubusercontent.com/69152112/234873009-a048cde9-1e22-47ec-9cfd-74781f1121a7.png)

## Continued Dashboard Analysing Ticket Booking on Movie Monk [Part.2]
![image](https://user-images.githubusercontent.com/69152112/234873125-22c23613-9d39-41cb-9c6b-d51cad4dedc9.png)

<---------------------------------------------------------------------------------------------------------------------------------------------------->

## Story 1 : Analysing Ticket Booking on Movie Monk [Part.1]
![image](https://user-images.githubusercontent.com/69152112/234873596-493914f5-7e29-4ad2-9fea-c64a1ad51548.png)

## Continued Story 2 Analysing Ticket Booking on Movie Monk [Part.2]
![image](https://user-images.githubusercontent.com/69152112/234874027-13ebb2d0-ed5b-4b1c-a553-26767e02413c.png)




