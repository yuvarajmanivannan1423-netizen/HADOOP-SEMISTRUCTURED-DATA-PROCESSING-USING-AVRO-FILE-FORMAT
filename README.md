# End-to-End Customer Data Ingestion Pipeline using SQL, Sqoop, HDFS, and Hive

This project demonstrates a Big Data data ingestion pipeline that transfers customer data from a relational SQL database to Hadoop HDFS using Sqoop and creates a Hive table using Avro schema.

## Step 1: SQL Source Table

A source table named `customer_total` is created in MySQL to store customer log data.

The table contains fields such as:

- id
- username
- host
- date_time
- method
- procedure
- status_code

Sample customer records are inserted into the table to simulate real application log data.

The SQL script for table creation and data insertion is available in the **sql folder**.

## Technologies Used

SQL  
Apache Sqoop  
Hadoop HDFS  
Apache Hive  
Avro  
Linux