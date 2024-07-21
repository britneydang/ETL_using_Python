-- Dimension table milktea_order
CREATE TABLE milktea_order (
    order_id VARCHAR(20) PRIMARY KEY,
    drink_name VARCHAR(20) NOT NULL,
    cup_size VARCHAR(10) NOT NULL,
    topping VARCHAR(20) NULL,
    ice_level INT NULL,
    sugar_level INT NULL,
    togo VARCHAR(3) NULL,
    price MONEY NOT NULL
);

-- Dimension table ingredient_vendor (Snowflake dimension)
CREATE TABLE ingredient_vendor (
    vendor_id VARCHAR(20) PRIMARY KEY,
    vendor_name VARCHAR(50) NOT NULL,
    vendor_address VARCHAR(50) NULL,
    contact_number VARCHAR(10) NULL,
    email VARCHAR(50) NULL
);

-- Dimension table drink_ingredient
CREATE TABLE drink_ingredient (
    ingredient_id VARCHAR(20) PRIMARY KEY,
    ingredient_name VARCHAR(20) NOT NULL,
    ingredient_type VARCHAR(20) NULL,
    vendor_id VARCHAR(20) NULL,
    FOREIGN KEY (vendor_id) REFERENCES ingredient_vendor(vendor_id)
);

-- Dimension table loyal_customer_info
CREATE TABLE loyal_customer_info (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(30) NOT NULL,
    phone_number VARCHAR(10) NULL,
    drink_points INT NULL
);

-- Dimension table calendar
CREATE TABLE calendar (
    date_id VARCHAR(20) PRIMARY KEY,
    purchase_date DATE NOT NULL,
    day_of_week VARCHAR(10) NULL,
    purchase_month VARCHAR(10) NULL,
    purchase_year INT NOT NULL
);

-- Dimension table payment_dimension
CREATE TABLE payment (
    payment_id VARCHAR(20) PRIMARY KEY,
    payment_type VARCHAR(10) NOT NULL,
    transaction_date DATETIME NOT NULL,
    amount MONEY NOT NULL
);

-- Fact table milktea_sales
CREATE TABLE milktea_sales (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id VARCHAR(20) NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    ingredient_id VARCHAR(20) NOT NULL,
    date_id VARCHAR(20) NOT NULL,
    payment_id VARCHAR(20) NOT NULL,
    sale_date DATE NOT NULL,
    quantity INT NOT NULL,
    total_price MONEY NOT NULL,
    FOREIGN KEY (order_id) REFERENCES milktea_order(order_id),
    FOREIGN KEY (customer_id) REFERENCES loyal_customer_info(customer_id),
    FOREIGN KEY (ingredient_id) REFERENCES drink_ingredient(ingredient_id),
    FOREIGN KEY (date_id) REFERENCES calendar(date_id),
    FOREIGN KEY (payment_id) REFERENCES payment(payment_id)
);

-- Drop tables if they exist
DROP TABLE IF EXISTS milktea_sales;
DROP TABLE IF EXISTS drink_ingredient;
DROP TABLE IF EXISTS ingredient_vendor;
DROP TABLE IF EXISTS loyal_customer_info;
DROP TABLE IF EXISTS calendar;
DROP TABLE IF EXISTS payment_dimension;
DROP TABLE IF EXISTS milktea_order;

