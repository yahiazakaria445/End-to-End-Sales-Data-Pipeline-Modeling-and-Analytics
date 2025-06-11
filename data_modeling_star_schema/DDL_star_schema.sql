CREATE OR REPLACE DATABASE pizza_dw;
USE DATABASE pizza_dw;

CREATE OR REPLACE SCHEMA analytics;
USE SCHEMA analytics;

--date_dim
CREATE OR REPLACE TABLE date_dim (
    date_id     INTEGER PRIMARY KEY AUTOINCREMENT,
    order_date  STRING,         
    order_time  STRING,         
    day         INTEGER,
    month       INTEGER,
    year        INTEGER
);

-- pizza_dim
CREATE OR REPLACE TABLE pizza_dim (
    pizza_id            NUMBER PRIMARY KEY,
    pizza_name_id       STRING,
    pizza_category      STRING,
    pizza_ingredients   STRING,
    pizza_name          STRING,
    pizza_size          STRING,
    unit_price          FLOAT
);

-- order_fact
CREATE OR REPLACE TABLE order_fact (
    order_fact_SK   INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id        NUMBER,
    quantity        FLOAT,
    total_price     FLOAT,

    date_id         NUMBER,
    pizza_id        NUMBER,

    FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    FOREIGN KEY (pizza_id) REFERENCES pizza_dim(pizza_id)
);



