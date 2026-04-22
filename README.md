# **PC-Sales-Data-Warehouse**
**Staging &amp; Dimensional Modeling**

**Project Overview**

​This project focuses on the ETL (Extract, Transform, Load) process of transforming raw, redundant PC sales data into a structured and normalized Star Schema. This was developed as part of my journey at Bright Learn Bootcamp to demonstrate data engineering best practices in data staging, warehousing, and architectural design.

​ **Tech Stack**

​Database Engine: SQL Server (SSMS)

​Architectural Modeling: draw.io

​Language: T-SQL (DDL & DML)

​ **Key Milestones & Implementation**

​1. Data Modeling & Normalization

​The initial phase involved analyzing raw datasets to identify entities and attributes. Using draw.io, I designed a Star Schema with a focus on:

​Normalization: 
Breaking down a flat, redundant dataset into descriptive Dimension tables to reduce data redundancy and improve integrity.
​Attribute Grouping:
Separating hardware specifications (RAM, Storage, Make) into a dedicated Dim_Product table and organizing customer data into Dim_Customer.
Structural Design:
Defining the blueprint for Primary Keys to ensure unique identification of records.

![image alt](https://github.com/TebogoLesedi1/PC-Sales-Data-Warehouse/blob/main/DOCS/pc_schema2.png?raw=true)

​2. Dual-Database Architecture
​I established a professional environment by creating two separate databases:

​Staging Database (Computer_std): 
Acts as a landing zone for raw, uncleaned ingestion data.
​Warehouse Database (Computer_dhw): 
The destination for clean, standardized, and normalized data ready for analysis.

​3. Data Transformation (ETL)
​Using SQL scripts in SSMS, I executed the following:

​Schema Definition: 
Built the tables using DDL, implementing IDENTITY(1,1) for surrogate keys to automate record indexing.
​De-duplication: 
Applied SELECT DISTINCT logic during the migration from staging to the warehouse, ensuring only unique, high-quality records were inserted.
​Execution: 
Successfully processed and transformed 10,000+ rows of data while maintaining strict data types (e.g., nvarchar(50)).

**Future Scope (Continuous Project)**

​As this is a continuous project, the next development phases will include:
​Relational Integration: 
Altering the Fact_PC_Sales table to implement Foreign Keys, officially establishing the relational links between the central Fact table and the Dimension tables.

​Calculated Measures: 
Developing logic to calculate metrics such as Total Sales, Finance Amounts, and Profit directly within the warehouse.

​Data Validation:
Implementing constraints to ensure referential integrity across the entire schema.

​BI Visualization: 
Connecting the final warehouse to a BI tool to transform this structured data into an interactive dashboard.

​Note: All data used in this project is synthetic/dummy data provided for educational purposes by Bright Learn Bootcamp.

