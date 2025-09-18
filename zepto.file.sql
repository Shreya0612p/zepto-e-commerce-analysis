create database zepto;
use zepto;
ALTER TABLE data 
ADD COLUMN SKU_ID SERIAL PRIMARY KEY;
select count(*)from data
select * from data
#null values 
select * from data
where name is NOT null
or 
Category is null
or
mrp is null
or
outOfStock is null
or
quantity is null
or
discountPercent is null
or
availableQuantity is null
or
discountedSellingPrice is null
or 
weightInGms is null;
#different products
select distinct category
from data 
order by category
# product in stock and outofstock
select *
from data 
where outofstock="TRUE";
select *
from data 
where outofstock="FALSE";
select outofstock,COUNT(SKU_ID)
FROM DATA
GROUP BY outofstock;
#PRODUCT NAMES PRESNT MULTIPLE TIMES
SELECT name, COUNT(sku_id) AS "Number of SKUs"
FROM data
GROUP BY name
HAVING count(sku_id) > 0
ORDER BY count(sku_id) DESC;
#product with price=0
select * from data
where mrp=0 OR discountedSellingPrice = 0;
 delete from data
where  mrp=0 and sku_id>0
#converting paise to rupees
UPDATE data
SET 
    mrp = mrp / 100.0,
    discountedSellingPrice = discountedSellingPrice / 100.0
WHERE SKU_ID > 0;
#find top 10 best-value products based on discount percentage
select distinct (name),discountpercent,category
from data
order by discountpercent desc 
limit 10;
#Identified high-MRP products that are currently out of stock
 select mrp, name
 from data 
where  outOfstock = 'TRUE' and mrp>300
order by mrp  desc;
#Estimated potential revenue for each product category
SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM data
GROUP BY category
ORDER BY total_revenue;
#Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent
FROM data
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;
# Identify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM data
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;
#Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM data
WHERE weightInGms >= 100
ORDER BY price_per_gram;
#Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
	WHEN weightInGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM data;
#What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM data
GROUP BY category
ORDER BY total_weight;

