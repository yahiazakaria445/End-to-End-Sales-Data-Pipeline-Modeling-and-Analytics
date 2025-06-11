-- Create Database and Schema
CREATE OR REPLACE DATABASE pizza_dw;
USE DATABASE pizza_dw;

CREATE OR REPLACE SCHEMA analytics;
USE SCHEMA analytics;

-- Create date_dim 
CREATE OR REPLACE TABLE analytics.date_dim (
    date_id     INTEGER AUTOINCREMENT PRIMARY KEY,
    order_date  STRING,
    order_time  STRING,
    day         INTEGER,
    month       INTEGER,
    year        INTEGER
);

-- Create pizza_category_dim 
CREATE OR REPLACE TABLE analytics.pizza_category_dim (
    pizza_name_id       STRING PRIMARY KEY,
    pizza_category      STRING,
    pizza_ingredients   STRING
);

-- Create pizza_dim 
CREATE OR REPLACE TABLE analytics.pizza_dim (
    pizza_id            NUMBER PRIMARY KEY,
    pizza_name_id       STRING,
    pizza_name          STRING,
    pizza_size          STRING,
    unit_price          FLOAT,
    FOREIGN KEY (pizza_name_id) REFERENCES analytics.pizza_category_dim(pizza_name_id)
);

-- Create order_fact 
CREATE OR REPLACE TABLE analytics.order_fact (
    order_fact_SK   INTEGER AUTOINCREMENT PRIMARY KEY,
    order_id        NUMBER,
    quantity        FLOAT,
    total_price     FLOAT,
    date_id         INTEGER,
    pizza_id        NUMBER,
    FOREIGN KEY (date_id) REFERENCES analytics.date_dim(date_id),
    FOREIGN KEY (pizza_id) REFERENCES analytics.pizza_dim(pizza_id)
);
