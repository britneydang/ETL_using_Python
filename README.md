# ETL_using_Python
Project description: Build a data warehouse from scratch with my own data.

Create a data warehouse in SSMS with a star schema for my milktea data. I need a fact table to capture daily transactions and several dimensional tables to describe various aspects of those transactions.

Fact Table: milktea_sales (This table will capture the daily transactions.)

milktea_sales:
sale_id (Primary Key, integer, auto-increment)
order_id (Foreign Key, integer, references milktea_order.order_id)
customer_id (Foreign Key, integer, references loyalcustomerinfo.customer_id)
ingredient_id (Foreign Key, integer, references drinkingredient.ingredient_id)
sale_date (Date)
quantity (Integer)
total_price (Money)

Dimensional Tables (These tables will capture various aspects of the daily transaction)

milktea_order:
order_id (Primary Key, integer, auto-increment)
drink_name (String)
cup_size (String)
topping (String)
ice_level (Integer)
sugar_level (Integer)
togo (String - Yes/No)
price (Money)

drinkingredient:
ingredient_id (Primary Key, integer, auto-increment)
ingredient_name (String)
ingredient_type (String)

loyalcustomerinfo:
customer_id (Primary Key, integer, auto-increment)
customer_name (String)
phone_number (String)
drink_points (Integer)
