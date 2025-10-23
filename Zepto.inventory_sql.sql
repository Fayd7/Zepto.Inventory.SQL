drop table if exists Zepto;

create table  Zepto(SKU_id SERIAL PRIMARY KEY,
category VARCHAR (150), name VARCHAR (150) not null,
mrp NUMERIC (8,2), discountpercent NUMERIC (5,2), availablequantity INTEGER,
discountedsellingPrice NUMERIC (10,2),
weightingms INTEGER, outofstock BOOLEAN,
quantity INTEGER);


-- data exploration

--count of rows
SELECT COUNT (*) FROM zepto;

-- sample data
SELECT * FROM zepto LIMIT 100;

-- null values 

SELECT  * FROM zepto WHERE
name IS NULL OR 
category IS NULL OR 
mrp IS NULL OR 
discountpercent IS NULL OR  
availablequantity IS NULL OR  
discountedsellingprice IS NULL OR 
weightingms IS NULL OR 
outofstock IS NULL OR 
quantity IS NULL;


-- different product categories


 SELECT distinct category from zepto
 ORDER BY category;

 SELECT DISTINCT name from zepto
 order by name;
 
 
 -- products in stock vs out of stock
 
 SELECT outofstock, COUNT(sku_id) FROM
 zepto GROUP BY outofstock;
 

 -- product names present multiple times 

 SELECT name , COUNT (sku_id) FROM zepto
 GROUP BY name HAVING COUNT (sku_id)> 1 ORDER BY count (sku_id) desc; 


 -- data cleaning

 -- product with price 0

 select * from zepto where mrp = 0 or
 discountedsellingprice=0;

delete from zepto where mrp = 0;


-- convert paise into rupees

update zepto
set mrp = mrp/100.0 , discountedsellingprice =  discountedsellingprice/100.0;

select mrp, discountedsellingprice from zepto;


Q1: Find the top 15 best value products based on the discount percentage?

select distinct name,mrp,discountpercent from zepto 
order by discountpercent desc limit 15;



Q2: What are the products with high mrp but out of stock?

select distinct name,mrp,outofstock from zepto 
where  outofstock = 'true' and mrp > 300 order by mrp desc;


Q3: calculate estimated revenue for each category?

select category, sum(discountedsellingprice*availablequantity)
as total_revenue from zepto  group by category 
order by total_revenue;



Q4:find all products where mrp is greater than 500  and discount is less than 10?

select distinct name,mrp,discountpercent from
zepto where mrp >500 and
discountpercent <10 order by mrp desc;





Q5:identify the top 5 categories offering the highest average discount percentage?

select category, round(avg(discountpercent),2) as
average_discount from zepto group by category 
order by average_discount desc limit 5;



Q6:find price per gram for products above 100g and sort by best value?

select distinct name,weightingms, discountedsellingprice,
round(discountedsellingprice/weightingms,2)
as price_pergm from zepto where weightingms >= 100 
order by price_pergm ;



Q7: group the products into category like low, medium, bulk


select distinct name, weightingms, 
case when weightingms <1000 then 'low'
when weightingms <5000 then 'medium'
else 'bulk'
end as weight_category
from zepto;


Q8: what is total inventory weight per category?

select category, sum(weightingms * availablequantity)
as total_weight from zepto
group by category
order by total_weight desc;






