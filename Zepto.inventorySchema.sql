drop table if exists Zepto;

create table  Zepto(SKU_id SERIAL PRIMARY KEY,
category VARCHAR (150), name VARCHAR (150) not null,
mrp NUMERIC (8,2), discountpercent NUMERIC (5,2), availablequantity INTEGER,
discountedsellingPrice NUMERIC (10,2),
weightingms INTEGER, outofstock BOOLEAN,
quantity INTEGER);