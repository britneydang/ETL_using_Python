# ETL_using_Python
Project description: Build a data warehouse from scratch with my own milk tea data in SSMS. Build ETL using Python

Create a data warehouse in SSMS incorporating both the star schema and snowflake structure. I need a fact table to capture daily transactions and several dimensional tables to describe various aspects of those transactions.

Fact Table: milktea_sales (This table will capture the daily transactions.)

milktea_sales:
- sale_id (Primary Key, integer, auto-increment)
- order_id (Foreign Key, integer, references milktea_order.order_id)
- customer_id (Foreign Key, integer, references loyalcustomerinfo.customer_id)
- ingredient_id (Foreign Key, integer, references drinkingredient.ingredient_id)
- date_id (Foreign Key, integer, references calendar.date_id)
- payment_id (Foreign Key, integer, references payment_dimension.payment_id)
- sale_date (Date)
- quantity (Integer)
- total_price (Money)

Dimensional Tables (These tables will capture various aspects of the daily transaction)

milktea_order:
- order_id (Primary Key, integer, auto-increment)
- drink_name (String)
- cup_size (String)
- topping (String)
- ice_level (Integer)
- sugar_level (Integer)
- togo (Boolean)
- price (Money)
  
drink_ingredient:
- ingredient_id (Primary Key, integer, auto-increment)
- ingredient_name (String)
- ingredient_type (String)
- vendor_id (Foreign Key, integer, references ingredient_vendor.vendor_id)

ingredient_vendor:
- vendor_id (Primary Key, integer, auto-increment)
- vendor_name (String)
- vendor_address (String)
- contact_number (String)
- email (String)
  
loyal_customer_info:
- customer_id (Primary Key, integer, auto-increment)
- customer_name (String)
- phone_number (String)
- drink_points (Integer)

calendar:
- date_id (Primary Key, integer, auto-increment)
- date (Date)
- day_of_week (String)
- month (String)
- quarter (String)
- year (Integer)
- is_weekend (Boolean)

payment:
- payment_id (Primary Key, integer, auto-increment)
- payment_type (String)
- transaction_date (DateTime)
- amount (Money)
