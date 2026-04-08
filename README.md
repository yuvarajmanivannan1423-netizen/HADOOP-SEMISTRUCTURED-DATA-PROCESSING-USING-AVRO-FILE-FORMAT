This project demonstrates a Big Data pipeline that imports data from MySQL into Hadoop HDFS using Sqoop and processes it in Hive using Avro format.

Technologies Used
- MySQL
- Apache Sqoop
- Hadoop HDFS
- Apache Hive
- Avro

Pipeline Flow

MySQL → Sqoop → HDFS → Hive

Steps

1. Create MySQL database and tables.
2. Insert sample data into customer_total.
3. Move subset of data to customer_src table.
4. Create Sqoop job to import data from MySQL to HDFS.
5. Store data as Avro files.
6. Upload AVSC schema to HDFS.
7. Create Hive tables using AvroSerDe.
8. Query the data in Hive.

Project Structure

mysql/
Contains SQL scripts for database and tables.

sqoop/
Contains passfile and Sqoop job script.

hive/
Contains Hive table creation scripts.

Security Note

Passwords are not stored in this repository.
Replace the placeholder in passfile.txt with your local database password.
