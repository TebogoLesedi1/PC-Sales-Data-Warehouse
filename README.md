# **PC-Sales-Data-Warehouse**
**Staging & Dimensional Modeling**

## 🚀 Project Overview

This project showcases the end-to-end design and implementation of a Data Warehouse solution built from raw, unstructured PC sales data.

Developed as part of the Bright Learn Bootcamp, the goal was to simulate a real-world data engineering pipeline by transforming noisy source data into a clean, analytics-ready Star Schema.

---

## 🧱 Architecture at a Glance

| Component | Description |
|-----------|-------------|
| **Staging Layer** (Computer_std) | Raw data lands here in its original, unrefined form |
| **Data Warehouse Layer** (Computer_dhw) | Clean, structured, and optimized for querying and reporting |

### Modeling Approach

**Star Schema** with a central Fact table connected to 9 Dimension tables:

![PC Sales Schema](https://github.com/TebogoLesedi1/PC-Sales-Data-Warehouse/blob/main/docs_snapshoots/pc_sales_schema.png?raw=true)

The schema was designed to:
- ✅ Reduce redundancy through normalization
- ✅ Improve query performance
- ✅ Support scalable analytics

---

## ⚙️ Tech Stack

| Technology | Purpose |
|-----------|---------|
| **SQL Server (SSMS)** | Database Engine |
| **T-SQL** | DDL & DML Operations |
| **draw.io** | Data Modeling & Schema Design |

---

## 🔄 ETL Pipeline

### 1. **Extraction**
Raw PC sales data is ingested into the staging database without modification.
- Source: `raw_data/raw_pc_data.csv` (10,000+ records)

### 2. **Transformation**
This is where chaos becomes structure:

- ✅ Removed duplicate records using `SELECT DISTINCT`
- ✅ Standardized data formats and data types
- ✅ Grouped attributes into logical entities:
  - **Dim_Product** → Hardware specs (RAM, Storage, Brand)
  - **Dim_Customer** → Customer details
  - **Dim_Location** → Geographic data
  - **Dim_Channel** → Sales channels
  - **Dim_Payment** → Payment methods
  - **Dim_Priority** → Order priority levels
  - **Dim_Date** → Temporal dimensions
  - **Dim_SalesPerson** → Sales representative info
  - **Dim_Shop** → Shop/Store information

### 3. **Loading**
- Inserted clean data into dimension tables
- Generated surrogate keys using `IDENTITY(1,1)`
- Prepared the Fact table for analytical queries

**Metrics:**
- ✅ Rows processed: 10,000+
- ✅ Duplicate records removed
- ✅ Surrogate keys generated
- ✅ Data standardized and normalized

---

## 🧩 Key Design Decisions

### ⭐ Star Schema over Snowflake
**Chosen for:**
- Faster query performance
- Simpler joins
- Better usability for BI tools

### 🗃️ Dual-Database Architecture
**Separating staging and warehouse layers ensures:**
- Data integrity
- Easier debugging
- Clear data flow lifecycle

### 🔑 Surrogate Keys
**Used to:**
- Ensure uniqueness across different source systems
- Avoid dependency on raw source data
- Improve join performance

---

## 📂 Project Structure

```
PC-Sales-Data-Warehouse/
│
├── dim_&_fact_tables/              # Table creation DDL scripts
│   ├── dim_channel.sql             # Sales channel dimension
│   ├── dim_customer.sql            # Customer dimension
│   ├── dim_date.sql                # Date dimension for temporal analysis
│   ├── dim_location.sql            # Geographic location dimension
│   ├── dim_payment.sql             # Payment method dimension
│   ├── dim_priority.sql            # Order priority dimension
│   ├── dim_product.sql             # Product/Hardware dimension
│   ├── dim_sales_person.sql        # Sales representative dimension
│   ├── dim_shop.sql                # Shop/Store dimension
│   └── fact_sales.sql              # Central fact table (measures & foreign keys)
│
├── stored_procedure/               # ETL automation stored procedures
│   ├── sp_dim_channel_table.sql    # Load Dim_Channel
│   ├── sp_dim_customer_table.sql   # Load Dim_Customer
│   ├── sp_dim_date_table.sql       # Load Dim_Date
│   ├── sp_dim_location_table.sql   # Load Dim_Location
│   ├── sp_dim_payment_table.sql    # Load Dim_Payment
│   ├── sp_dim_priority_table.sql   # Load Dim_Priority
│   ├── sp_dim_product_table.sql    # Load Dim_Product
│   ├── sp_dim_sales_person.sql     # Load Dim_SalesPerson
│   ├── sp_dim_shop_table.sql       # Load Dim_Shop
│   └── sp_fact_pc_sales_table.sql  # Load Fact_Sales
│
├── raw_data/
│   └── raw_pc_data.csv             # Source data (10,000+ PC sales records)
│
├── docs_snapshoots/                # Documentation & implementation screenshots
│   ├── pc_sales_schema.png         # Schema diagram
│   ├── databses_creation.png       # Database setup
│   ├── dim_customer.png            # Dimension table creation proof
│   ├── dim_payment.png             # Dimension table creation proof
│   ├── inserting_data_into_dims_part1-4.png  # Data loading evidence
│
└── README.md
```

---

## 🧪 Sample Transformation

### De-duplication Process
```sql
INSERT INTO Dim_Product (ProductName, RAM, Storage)
SELECT DISTINCT ProductName, RAM, Storage
FROM Computer_std.dbo.Raw_PC_Data;
```

### How It Works
1. **Before:** Raw data in staging layer (messy, duplicates, inconsistencies)
2. **After:** Normalized dimensions in warehouse layer (clean, unique, ready for analysis)

---

## 📊 Dimensional Tables Overview

| Dimension | Key Attributes | Purpose |
|-----------|---------------|---------|
| **Dim_Customer** | CustomerID, Name, Email, Phone | Analyze sales by customer |
| **Dim_Product** | ProductID, Brand, RAM, Storage | Track product performance |
| **Dim_Location** | LocationID, City, Region, Country | Geographic sales analysis |
| **Dim_Channel** | ChannelID, ChannelName | Compare channel performance |
| **Dim_Payment** | PaymentID, PaymentMethod | Payment trend analysis |
| **Dim_Date** | DateID, Date, Month, Quarter, Year | Time-series analysis |
| **Dim_SalesPerson** | SalesPersonID, Name | Sales rep performance |
| **Dim_Shop** | ShopID, ShopName, Location | Store-level metrics |
| **Dim_Priority** | PriorityID, PriorityLevel | Order prioritization analysis |

---

## 🎯 Fact Table

**Fact_Sales** connects all dimensions and contains measures such as:
- Sales Amount
- Quantity Sold
- Transaction Dates
- Foreign Keys to all Dimension tables

---

## 📈 Future Enhancements

This project is actively evolving. Next steps include:

- 🔗 Implementing Foreign Key constraints in the Fact table
- 📐 Creating calculated measures (Total Sales, Profit, Finance Metrics)
- 🛡️ Enforcing data validation & integrity constraints
- 📊 Connecting to a BI tool (Power BI / Tableau) for interactive dashboards
- 🔄 Implementing incremental load strategies (SCD Type 2)
- 📈 Performance optimization with indexing strategies

---

## 🎯 What This Project Demonstrates

- ✅ Data modeling & dimensional design
- ✅ Building ETL pipelines using SQL
- ✅ Data cleaning and transformation techniques
- ✅ Designing scalable data warehouse architecture
- ✅ Translating raw data into business-ready insights
- ✅ Writing production-grade T-SQL code

---

## 🚀 Quick Start

### Prerequisites
- SQL Server 2016 or later
- SQL Server Management Studio (SSMS)

### Setup Steps
1. Create two databases: `Computer_std` (Staging) and `Computer_dhw` (Warehouse)
2. Execute all scripts in `dim_&_fact_tables/` folder to create table structures
3. Load raw data from `raw_data/raw_pc_data.csv` into staging
4. Execute stored procedures from `stored_procedure/` folder in sequence to populate dimensions and fact table

---

## 📌 Note

All data used in this project is synthetic and provided for educational purposes by Bright Learn Bootcamp.

---

## 🌱 About Me

Aspiring Data Engineer / Data Scientist passionate about building real-world data solutions.

Currently developing projects that blend data engineering, analytics, and machine learning foundations.

---

## 📞 Support & Contributions

Feel free to fork, star, and contribute to this project. For questions or suggestions, please open an issue!
