Note : Before this you have to create the customer_total_creation table.

===============
🔴 Go to Mysql 
===============

-- Connect to MySQL
mysql -u "username" -p "password"

-- Create database
CREATE DATABASE IF NOT EXISTS prodb;

-- Use database
USE prodb;

-- Verify source data
SELECT * FROM customer_total;

-- Create incremental source table
CREATE TABLE customer_src(
id INT,
username VARCHAR(100),
sub_port VARCHAR(100),
host VARCHAR(100),
date_time VARCHAR(100),
hit_count_val_1 VARCHAR(100),
hit_count_val_2 VARCHAR(100),
hit_count_val_3 VARCHAR(100),
timezone VARCHAR(100),
method VARCHAR(100),
procedure1 VARCHAR(100),
value VARCHAR(100),
sub_product VARCHAR(100),
web_info VARCHAR(100),
status_code VARCHAR(100)
);

-- Insert incremental data
INSERT INTO customer_src
SELECT *
FROM customer_total
WHERE id >= 301 AND id <= 330;

-- Verify data
SELECT * FROM customer_src;

EXIT;