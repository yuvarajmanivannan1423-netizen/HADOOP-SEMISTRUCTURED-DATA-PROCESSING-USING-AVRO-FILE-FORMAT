====================================
🔴 Hive shell
====================================

-- Start Hive shell
hive

-- Create database
CREATE DATABASE IF NOT EXISTS prodb;

-- Use database
USE prodb;

-- Create Hive table on top of Avro data in HDFS
CREATE TABLE customer_src
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS AVRO
LOCATION '/user/cloudera/customer_stage_loc'
TBLPROPERTIES (
'avro.schema.url'='/user/cloudera/avscdirpro/customer_src.avsc'
);

-- Verify imported data
SELECT * FROM customer_src;


-- Create external target table with partitions
CREATE EXTERNAL TABLE customer_target_tab
PARTITIONED BY (
current_day STRING,
year STRING,
month STRING,
day STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS AVRO
LOCATION '/user/cloudera/customer_target_tab'
TBLPROPERTIES (
'avro.schema.url'='/user/cloudera/avscdirpro/customer_src.avsc'
);

-- Verify target table
SELECT * FROM customer_target_tab;