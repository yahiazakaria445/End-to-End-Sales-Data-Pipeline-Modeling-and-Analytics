# End-to-End-Sales-Data-Pipeline-Modeling-and-Analytics

## 📌 Project Overview
![workflow](https://github.com/user-attachments/assets/571e0b16-8078-4407-8a7c-dbd32532c8d3)

This project demonstrates a full end-to-end data pipeline and analytics workflow using sales dataset. The process includes:

- Data ingestion and data quality validation using Python and Great Expectations.
- Exploratory Data Analysis (EDA) using Matplotlib and Seaborn.
- Dimensional modeling in Snowflake Data Warehouse using Star Schema and Snowflake Schema using SQL.
- Data transformation and loading using Python.
- Interactive business intelligence dashboard using Power BI.

---
## 📁 Repository Structure
```bash

├── data visualization/
│   ├── dashboard.pbip      
│   └── dashboard.png
│ 
├── EDA/
│   └── EDA.ipynb
│
├── data_modeling_snowflake_schema/
│   └── data_modeling_snowflake_schema.ipynb
│   └── DDL_snowflake.sql
│          
├── data_modeling_snowflake_schema/
│   └── data_modeling_star_schema.ipynb
│   └── DDL_star_schema.sql
│
├── data quality testing/
│   ├── data_quality_testing.ipynb  
│   └── q1.png
│   └── q2.png              

```
---
## 📦 Dataset Description

> [Kaggle Dataset - Pizza Sales](https://www.kaggle.com/datasets/nextmillionaire/pizza-sales-dataset)

| Column            | Description                                                                 |
|------------------|-----------------------------------------------------------------------------|
| `pizza_id`        | A unique identifier for each pizza variant.                                 |
| `order_id`        | Unique identifier for each customer order.                                  |
| `pizza_name_id`   | Links to a specific name of the pizza.                                      |
| `quantity`        | Number of units of a specific pizza ordered.                                |
| `order_date`      | Date of the order.                                                          |
| `order_time`      | Time of the order.                                                          |
| `unit_price`      | Price of a single unit of the pizza.                                        |
| `total_price`     | Total price for all units ordered of that variant.                          |
| `pizza_size`      | Pizza size (e.g., Small, Medium, Large).                                    |
| `pizza_category`  | Pizza type category (e.g., Vegetarian, Non-Vegetarian).                     |
| `pizza_ingredients`| Description of ingredients used.                                            |
| `pizza_name`      | Name of the pizza ordered.                                                  |

---

## 🔍 Data Quality Testing Results with Great Expectations
![q1](https://github.com/user-attachments/assets/0bb045ee-28b6-4984-8a76-b0654c7b28c3)
![q2](https://github.com/user-attachments/assets/5f7b8bb4-7579-4b07-befe-8f8ceae4ce61)

---

## 🏗️ Dimensional Modeling in Snowflake

Created a schema in snowflake data warehouse using both one for star schema and one for snowflake schema to support analytical queries.

### 1. Star Schema 
![star_schema](https://github.com/user-attachments/assets/bdaa4a58-e0c8-4451-9ff4-bf12bf9f3f9c)



### 2. Snowflake Schema
![Snowflake](https://github.com/user-attachments/assets/93261f98-6e5c-4091-99ac-a980fa3fd4f1)


---

## ❄️ Data Loading

Dataframes created and transformed in Python were loaded to Snowflake using the `Snowflake Connector for Python` method.

- star schema load:
  
![star_load](https://github.com/user-attachments/assets/89158270-3568-4cbf-af51-457169bc0ae5)




- Snowflake Schema load:
  
![snowflake_load](https://github.com/user-attachments/assets/f0e17bd3-fafd-4914-bef4-be7e7d32f44b)


---

## 📈 Power BI Dashboard

An interactive dashboard was built in Power BI, directly connected to the Snowflake Data Warehouse.
![dashboard](https://github.com/user-attachments/assets/59e1b7cc-4a7a-49cd-bd87-ebf8469bc4e7)


---

##  Tech Stack

- **Python** (pandas, seaborn, matplotlib)
- **Great Expectations** for data quality
- **Snowflake** for data warehousing
- **SQL**
- **Power BI** 

---




