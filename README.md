# ETL_using_Python
Project description: Build a data warehouse from scratch with my own milk tea data in SSMS. Build ETL using Python

Create a data warehouse in SSMS incorporating both the star schema and snowflake structure. I need a fact table to capture daily transactions and several dimensional tables to describe various aspects of those transactions.

Fact Table: milktea_sales captures transactions and links to all the dimension tables.
Dimensional Tables: milktea_order, drink_ingredient, ingredient_vendor, loyal_customer_info, calendar, and payment_dimension provide the descriptive attributes and are linked to the fact table.
Snowflake structure: The drink_ingredient table links to the ingredient_vendor table, creating a snowflake schema within the star schema.

Fact Table: milktea_sales (This table will capture the daily transactions.)

milktea_sales:
- sale_id (Primary Key)
- order_id (Foreign Key, references milktea_order.order_id)
- customer_id (Foreign Key, references loyalcustomerinfo.customer_id)
- ingredient_id (Foreign Key, references drinkingredient.ingredient_id)
- date_id (Foreign Key, references calendar.date_id)
- payment_id (Foreign Key, references payment_dimension.payment_id)
- sale_date 
- quantity 
- total_price

Dimensional Tables (These tables will capture various aspects of the daily transaction)

milktea_order:
- order_id (Primary Key)
- drink_name 
- cup_size 
- topping 
- ice_level 
- sugar_level 
- togo 
- price
  
drink_ingredient:
- ingredient_id (Primary Key)
- ingredient_name 
- ingredient_type 
- vendor_id (Foreign Key, references ingredient_vendor.vendor_id)

ingredient_vendor:
- vendor_id (Primary Key)
- vendor_name
- vendor_address 
- contact_number
- email
  
loyal_customer_info:
- customer_id (Primary Key)
- customer_name 
- phone_number 
- drink_points

calendar:
- date_id (Primary Key)
- purchase_date 
- day_of_week 
- purchase_month 
- purchase_year

payment:
- payment_id (Primary Key)
- payment_type 
- transaction_date 
- amount
  
![image](https://github.com/user-attachments/assets/a15ac745-4478-4a1b-b810-baf0ec501408)

After creating all tables and insert data. I am moving on to the Python part.







