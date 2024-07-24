# ETL_using_Python
Project description: Build a data warehouse from scratch with my own milk tea data in SSMS. Build ETL using Python. Finally, create job schedule in SQL Server Agent to automate the ETL process.

1. Create a data warehouse in SSMS incorporating both the star schema and snowflake structure. I need a fact table to capture daily transactions and several dimensional tables to describe various aspects of those transactions.

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

2. After creating all tables and insert data. I am moving on to the Python part.
I will have 3 .py files: 

- sql_connection.py: stores database connection string and sqlalchemy connection string
- ETL.py: stores an ETL_Data class that has several methods for ETL operations
  - Extraction: extract from file format csv, excel, json, and sql table.
  - Transformation: cleaning data methods (remove duplication, handle missing value, correct data types, correct format text, remove column, check unique ID, check NULL values, check NaN values) and aggregation methods (sorting by price in ascending order and vice versa, calculate total sales for each drink, calculate average sales price for each drink, calculate monthly total sales, find top 2 most expensive/cheapest drinks)
  - Loading: load to file format csv, excel, json, and sql table. 
- main.py: stores some ETL scenarios:
  - ETL 1: extract csv, transform, and load to sql table. In this scenario, for transformation, I will use convert_empty_strings method. After load df into the SQL database, NaN values will be automatically treated as NULL in SQL database. Also, use correct format_text.
![image](https://github.com/user-attachments/assets/1fba629b-4952-4347-a29a-280085e95b77)

Snip below is a screenshot of original csv file.

![image](https://github.com/user-attachments/assets/74ccdc7d-9766-47f4-9295-a6ef7b691a95)

My milktea_order table before ETL process

![image](https://github.com/user-attachments/assets/e82abdc6-2e61-4f93-9d9b-2d0dba5f4b68)

My milktea_order table after ETL process

![image](https://github.com/user-attachments/assets/18658435-4214-4502-aabd-8716a48cb358)

  - ETL 2: extract excel, transform, and load to json. In this scenario, for transformation, I will use format_date to convert into YYYY-MM-DD format. Also use convert_to_numeric in amount column to round to 2 decimals.
![image](https://github.com/user-attachments/assets/88cdd206-00c3-4dbb-b7a8-e786d6e7bf4b)

Snip below is a screenshot of original excel file.

![image](https://github.com/user-attachments/assets/054f72f9-6d10-4538-b116-424d2cb2e232)

Load to json format

![image](https://github.com/user-attachments/assets/2fbf333a-2fa5-46aa-9ee6-992f90bf8017)

  - ETL 3: extract json, transform, and load to csv. In this scenario, for transformation, I will use sorting to sort by amount in an ascending order.
![image](https://github.com/user-attachments/assets/34d2d2c4-29d9-42ac-9f96-4787afbfa5aa)

Load to csv and sort by amount in asc order.

![image](https://github.com/user-attachments/assets/2c05fc47-d4ba-4d4e-8998-8d9622c9a156)

  - ETL 4: extract sql query, transform, and load to excel. In this scenario, for transformation, I will use aggregation methods to find the average sales price by drink and top 2 most expensive drinks. 

![image](https://github.com/user-attachments/assets/03527840-6c40-413c-9f69-afe55647e804)

Load to excel. Each calculation will be in separate sheet.

![image](https://github.com/user-attachments/assets/3975f334-be93-4f7a-abab-c15315cb05a3)

3. Now, I want to automate one of my ETL process using Python and SSMS.
- Save the ETL script that I want to automate
- Use SQL Server Agent to schedule
  - Start the SQL Server Agent in Object Explorer in SSMS -> new job -> add Name -> new step -> add Step Name and select py file

![image](https://github.com/user-attachments/assets/62aa07aa-a502-43c1-9c72-63ecdede6866)

![image](https://github.com/user-attachments/assets/8a327a2d-aa01-4f65-a744-3ddd6b6f22c6)
  - Schedules: New -> add Name, choose type of schedule and frequency
![image](https://github.com/user-attachments/assets/2dee44a9-9863-4ed5-aa38-ec23a9e395e3)
  - 









