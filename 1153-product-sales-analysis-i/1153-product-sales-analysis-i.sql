/* Write your T-SQL query statement below */
Select 
Product.product_name,
Sales.year,
Sales.price
From 
Sales
Left Outer Join
Product
On
Product.product_id = Sales.product_id;