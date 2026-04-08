<p align="center">
  <h1 align="center">HADOOP SEMISTRUCTURED DATA PROCESSING USING AVRO FILE FORMAT</h1>
  <p align="center">
    Big Data ETL Pipeline using MySQL, Sqoop, HDFS, Hive, and Avro
  </p>
</p>

---

## Project Overview

This project demonstrates a **Big Data ETL pipeline** that imports semi-structured data from **MySQL** into **Hadoop HDFS** using **Apache Sqoop**, and processes it in **Apache Hive** using the **Avro file format**.

The project is designed to showcase how semi-structured data can be efficiently moved, stored, and queried in a Hadoop ecosystem using industry-relevant Big Data tools.

---

## Architecture Diagram

<p align="center">
  <img src="https://raw.githubusercontent.com/yuvarajmanivannan1423-netizen/HADOOP-SEMISTRUCTURED-DATA-PROCESSING-USING-AVRO-FILE-FORMAT/main/Docs_FOLDER/architecture.png" alt="Architecture Diagram" width="900"/>
</p>

---

## Technologies Used

* **MySQL**
* **Apache Sqoop**
* **Hadoop HDFS**
* **Apache Hive**
* **Apache Avro**
* **Linux / Hadoop Ecosystem**

---

## Pipeline Flow

```text
MySQL → Sqoop → HDFS → Hive
```

### Data Flow Explanation

1. **MySQL** stores the source relational data.
2. **Sqoop** imports the required dataset into **HDFS**.
3. Data is stored in **Avro format** for schema-based semi-structured storage.
4. **AVSC schema** is uploaded to HDFS.
5. **Hive** reads the Avro data using **AvroSerDe**.
6. Users can run SQL-like queries on the imported dataset in Hive.

---

## Project Objectives

* Demonstrate data ingestion from **RDBMS to Hadoop**
* Store data in **Avro format** for efficient schema handling
* Process semi-structured data using **Hive**
* Build a simple **Big Data pipeline** using Hadoop ecosystem tools

---

## Implementation Steps

### 1. Create MySQL Database and Tables

* Create the required database
* Create the source tables

### 2. Insert Sample Data

* Insert records into `customer_total`

### 3. Prepare Source Table

* Move a subset of records into `customer_src`

### 4. Create Sqoop Import Job

* Configure and run a **Sqoop job** to import data from MySQL to HDFS

### 5. Store Data as Avro Files

* Imported data is stored in **Avro file format**

### 6. Upload Avro Schema

* Upload the `.avsc` schema file to **HDFS**

### 7. Create Hive External Table

* Use **AvroSerDe** in Hive to define the schema and access Avro files

### 8. Query Data in Hive

* Perform SQL-like analysis and data validation in Hive

---

## Project Structure

```text
HADOOP-SEMISTRUCTURED-DATA-PROCESSING-USING-AVRO-FILE-FORMAT/
│
├── mysql/
│   └── SQL scripts for database creation and sample data
│
├── sqoop/
│   └── Sqoop job scripts and passfile configuration
│
├── hive/
│   └── Hive table creation and query scripts
│
├── Docs_FOLDER/
│   └── Architecture diagram
│
└── README.md
```

---

## Folder Details

### `mysql/`

Contains:

* Database creation scripts
* Table creation scripts
* Sample data insertion queries

### `sqoop/`

Contains:

* Sqoop import job scripts
* Password configuration for Sqoop execution

### `hive/`

Contains:

* Hive table creation scripts
* Avro table configuration
* Query execution scripts

### `Docs_FOLDER/`

Contains:

* Project architecture diagram
---

## Sample Use Case

This project can be used in scenarios where:

* Data needs to be moved from **traditional databases** to **Hadoop**
* Semi-structured storage format is required
* Hive-based querying is needed for analytics workflows

---

## Key Learning Outcomes

Through this project, I gained hands-on experience in:

* **Data ingestion using Apache Sqoop**
* **Working with Hadoop Distributed File System (HDFS)**
* **Schema-based storage using Apache Avro**
* **Hive table creation with AvroSerDe**
* **Designing simple ETL pipelines in Big Data environments**

---

## Security Note

Passwords are stored securely in the edge node and are not included in this repository.


If you found this project useful, feel free to explore and connect.
