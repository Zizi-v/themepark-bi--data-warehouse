# Theme Park Business Intelligence & Data Warehouse

## 📌 Project Overview
This project designs and implements a Business Intelligence (BI) solution for a theme park, focusing on sales performance, ride utilization, and visitor behavior. The goal is to transform raw transactional data into analytical insights that support operational and managerial decision-making.

## 🎯 Business Problem
Theme parks generate large volumes of transactional data from ticket sales, ride operations, and food purchases. However, operational systems (OLTP) are not optimized for analytics. This project addresses:
- Monitoring revenue trends over time
- Analyzing ride utilization and visitor satisfaction
- Evaluating the impact of discounts and promotions
- Supporting operational KPIs such as revenue per visitor and average queue time

## 🏗 Architecture
The project follows a classical BI architecture:

OLTP (MySQL)  
→ Data Warehouse (Star Schema)  
→ ETL (Pentaho Data Integration)  
→ OLAP (SQL Views)  
→ Reporting (Pentaho Report Designer)

## 🗄 Data Model
### OLTP Schema
The OLTP database captures operational data using normalized tables such as:
- visitor
- ticket
- ride
- location
- employee
- ridelog
- food_order

### Data Warehouse Schema
The Data Warehouse is implemented using a star schema with:
- Fact table: `fact_sales`
- Dimension tables:
  - `dim_product`
  - `dim_person`
  - `dim_time`

This structure enables fast aggregation and analytical querying.

## 🔄 ETL Process
ETL pipelines were developed using **Pentaho Data Integration (Kettle)**:
- Extract data from OLTP tables
- Transform data (joins, calculations, enrichment, surrogate keys)
- Load data into the Data Warehouse

ETL transformations include:
- Dimension Product
- Dimension Person
- Dimension Time
- Fact Sales

## 📊 Analytics & Reporting
- SQL Views for analytical slicing (e.g., customer satisfaction by age group)
- A revenue report created using **Pentaho Report Designer**, summarizing gross, net, and discount amounts per product

## 🛠 Tools & Technologies
- MySQL & MySQL Workbench
- Pentaho Data Integration (ETL)
- Pentaho Report Designer
- SQL
- CSV (mock data generation)

## 📁 Repository Structure
See folders for:
- SQL schemas and views
- ETL transformation files (.ktr)
- Report files (.prpt)
- CSV datasets
- Screenshots and documentation

## 👩‍💻 Authors
Academic group project – Business Intelligence for Data Science  
Tilburg University, 2025