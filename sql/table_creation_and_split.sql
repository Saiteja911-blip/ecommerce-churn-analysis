CREATE TABLE raw_customers (
    customer_id SERIAL PRIMARY KEY,
    tenure INT,
    warehouse_to_home INT,
    number_of_device_registered INT,
    prefered_order_cat VARCHAR(50),
    satisfaction_score INT,
    marital_status VARCHAR(20),
    number_of_address INT,
    complain INT,
    day_since_last_order INT,
    cashback_amount NUMERIC,
    churn INT
);

select * from raw_customers

CREATE TABLE customers AS 
SELECT customer_id,tenure,
marital_status,
number_of_device_registered,
number_of_address,
prefered_order_cat,
churn 
FROM raw_customers

CREATE TABLE transactions AS
SELECT customer_id,
warehouse_to_home,
satisfaction_score,
complain,
day_since_last_order,
cashback_amount
FROM raw_customers

select * from customers
select * from transactions
