create database Task3;

use Task3;

select * from inventory_data;

select * from transaction_data;
---------------------------------------------------------------------------------------------------
/* 1. Task: Find the top 3 products having the most number of transactions.
## Hint: Use group by and order by clauses. */

# taking transaction_id unique as per video explanation
select a.product_name,count(distinct b.transaction_id) as Total_Cnt
from inventory_data as a
left join transaction_data as b
on a. product_id = b. product_id
group by 1
order by 2 desc
limit 3;
---------------------------------------------------------------------------------------------------
/* 2. Find the top 10 products having the most number of transactions from snacks product type.
## Hint: Join the required tables and use group by, order by and where clauses. */

select a.product_name,count(b.transaction_id) as Total_Cnt
from inventory_data as a
left join transaction_data as b
on a. product_id = b. product_id
where product_type ="snacks" 
group by 1
order by 2 desc
limit 10;

---------------------------------------------------------------------------------------------------
/* 3. Find the top 5 transactions which had the most number of products in it.
## Hint: Use group by and order by clauses */

select b.transaction_id, count(a.product_id) as Total_cnt
from inventory_data as a
left join transaction_data as b
on a. product_id = b. product_id
group by 1
order by 2 desc
limit 5;
---------------------------------------------------------------------------------------------------
/* 4. Find the list of transactions having products from ‘produce’ type and unit price more than the average unit price of ‘produce’ product type.
##Hint: Join the required tables and use where clause and subquery. */

SELECT a.transaction_id, b.product_id,a.time,b.product_type
FROM transaction_data as a
JOIN inventory_data b 
ON a.product_id = b.product_id
WHERE b.product_type = 'produce' AND b.price_unit > ( SELECT AVG(price_unit)
													  FROM inventory_data
													  WHERE product_type = 'produce');
---------------------------------------------------------------------------------------------------
/* 5. From the transactions table find the sum of unit price for all the unique product types and 
 filter the list of those product types having a sum of unit price greater than 150 dollars from the transactions.
## Hint: Use group by and having clauses and join. */
/* we can also add Product_Type,to display Product in select statement */

SELECT a.product_id,count(distinct product_type) as count,SUM(a.price_unit) as total_unit_price
FROM inventory_data as a
JOIN  transaction_data as b
ON a.product_id = b.product_id
GROUP BY 1
HAVING total_unit_price > 150
order by 2 desc;

