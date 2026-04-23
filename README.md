# **PC-Sales-Data-Warehouse**
**Staging &amp; Dimensional Modeling**

**🚀 Project Overview**

This project showcases the end-to-end design and implementation of a Data Warehouse solution built from raw, unstructured PC sales data.

Developed as part of the Bright Learn Bootcamp, the goal was to simulate a real-world data engineering pipeline by transforming noisy source data into a clean, analytics-ready Star Schema.


**🧱 Architecture at a Glance**

Staging Layer (Computer_std)
Raw data lands here in its original, unrefined form.
Data Warehouse Layer (Computer_dhw)
Clean, structured, and optimized for querying and reporting

**Modeling Approach**

Star Schema with a central Fact table connected to Dimension tables.
![image alt](https://github.com/TebogoLesedi1/PC-Sales-Data-Warehouse/blob/main/DOCS/pc_schema2.png?raw=true)


The schema was designed to:

Reduce redundancy through normalization

Improve query performance

Support scalable analytics

**⚙️ Tech Stack**

Database Engine: SQL Server (SSMS)

Language: T-SQL (DDL & DML)

Data Modeling: draw.io

**🔄 ETL Pipeline**

1. Extraction

Raw PC sales data is ingested into the staging database without modification.

2. Transformation

This is where chaos becomes structure:

Removed duplicate records using SELECT DISTINCT

Standardized data formats and data types

Grouped attributes into logical entities:

Dim_Product → Hardware specs (RAM, Storage, Brand)

Dim_Customer → Customer details

3. Loading
   
Inserted clean data into dimension tables

Generated surrogate keys using IDENTITY(1,1)

Prepared the Fact table for analytical queries


✅ Rows processed: 10,000+

✅ Duplicate records removed

✅ Surrogate keys generated

✅ Data standardized and normalized

**🧩 Key Design Decisions**

⭐ Star Schema over Snowflake

Chosen for:

Faster query performance

Simpler joins

Better usability for BI tools

**🗃️ Dual-Database Architecture**

Separating staging and warehouse layers ensures:

Data integrity

Easier debugging

Clear data flow lifecycle

**🔑 Surrogate Keys**

Used to:

Ensure uniqueness

Avoid dependency on raw source 

Improve join performance

**📂 Project Structure**


PC-Sales-Data-Warehouse/
│
├── docs_snapshoots/
│   ├── pc_sales_schema.png
│   ├── databases_creation.png
│   ├── inserting data into dims part1.png
│   ├── dim_payment.png
│   └── dim_customer.png
│
├── raw_data/
│   └── raw_pc_data.csv
│
├── dim_&_fact_tables/
│   ├── fact_sales.sql
│   ├── dim_channel.sql
│   ├── dim_customer.sql
│   ├── dim_date.sql
│   ├── dim_location.sql
│   ├── dim_payment.sql
│   ├── dim_priority.sql
│   ├── dim_product.sql
│   ├── dim_sales_person.sql
│   └── dim_shop.sql
│
├── stored_procedure/
│   ├── sp_dim_channel_table.sql
│   ├── sp_dim_customer_table.sql
│   ├── sp_dim_date_table.sql
│   ├── sp_dim_location_table.sql
│   ├── sp_dim_payment_table.sql
│   ├── sp_dim_priority_table.sql
│   ├── sp_dim_product_table.sql
│   ├── sp_dim_sales_person_table.sql 
│   ├── sp_dim_shop_table.sql
│   └── sp_fact_pc_sales_table.sql
│
└── README.md

**🧪 Sample Transformation**

De-duplication Process

INSERT INTO Dim_Product (ProductName, RAM, Storage)

SELECT DISTINCT ProductName, RAM, Storage

FROM Computer_std.dbo.Raw_PC_Data;

🔍 Before vs After

Raw Data (Staging)

Clean Data (Warehouse)

**📈 Future Enhancements**

This project is actively evolving. Next steps include:

🔗 Implementing Foreign Key constraints in the Fact table

📐 Creating calculated measures (Total Sales, Profit, Finance Metrics)

🛡️ Enforcing data validation & integrity constraints

📊 Connecting to a BI tool for interactive dashboards

🎯 What This Project Demonstrates

Data modeling & dimensional design

Building ETL pipelines using SQL

Data cleaning and transformation techniques

Designing scalable data warehouse architecture

Translating raw data into business-ready insights

📌 Note

All data used in this project is synthetic and provided for educational purposes by Bright Learn Bootcamp.

🌱 About Me

Aspiring Data Engineer / Data Scientist passionate about building real-world data solutions.
Currently developing projects that blend data engineering, analytics, and machine learning foundations.









​
