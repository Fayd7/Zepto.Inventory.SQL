# Zepto.Inventory.SQL

Overview

This project involves the creation and management of a Zepto product database using PostgreSQL.
It demonstrates data exploration, cleaning, and analytics-ready schema creation for a retail product dataset, including product details, pricing, discounts, stock, weight, and quantities.

Database Schema

Table: Zepto

Column Name	Data Type	Description
SKU_id	SERIAL PRIMARY KEY	Unique identifier for each product
category	VARCHAR(150)	Product category
name	VARCHAR(150) NOT NULL	Product name
mrp	NUMERIC(8,2)	Maximum retail price
discountpercent	NUMERIC(5,2)	Discount percentage
availablequantity	INTEGER	Number of units available
discountedsellingPrice	NUMERIC(10,2)	Price after discount
weightingms	INTEGER	Product weight in grams
outofstock	BOOLEAN	Indicates if product is out of stock
quantity	INTEGER	Units in a particular order or context
Data Exploration & Cleaning

Count total rows in the table.

Sample data retrieval.

Identify and handle NULL values.

Identify distinct product names and categories.

Analyze stock availability.

Identify duplicate product entries.

Remove invalid data (e.g., products with price = 0).

Convert pricing from paise to rupees.

Key SQL Features Used

Joins – Combine multiple tables (if extended in future).

Aggregate Functions (SUM, COUNT, AVG, ROUND) – Summarize key metrics like revenue, weight, and stock.

Window Functions – Rank or analyze data over partitions for advanced analytics.

CASE Statements – Implement conditional categorization, e.g., weight categories.

Date Functions – For future extensions with time-based analysis.

Data Cleaning Techniques – Filtering, deleting invalid records, handling nulls.

Project Setup

Install PostgreSQL (version 14+ recommended).

Create a new database:

CREATE DATABASE zepto;


Run the provided CREATE TABLE script to create the Zepto table.

Optionally, import CSV data into the table.

Use pgAdmin, DBeaver, or psql to perform queries and analysis.

Folder Structure
/Zepto_SQL_Project
│
├── schema/      https://drive.google.com/file/d/1TqHdWfivrkcTI4Ul8Z18IJNmEbbbpCcE/view?usp=drive_link    

├── queries/        https://drive.google.com/file/d/1VoTIygGmMmCA8gesmUiOeL519GiqbNm3/view?usp=drive_link


Author

Mohammed Fayd
SQL Developer | Data Analytics | Business Intelligence
