-- Insert data into milktea_order table
INSERT INTO milktea_order (order_id, drink_name, cup_size, topping, ice_level, sugar_level, togo, price)
VALUES
('O0001', 'Green milk tea', 'Medium', 'Black boba', 30, 70, 'Yes', 7.50),
('O0002', 'Peach green tea', 'Large', 'Popping boba', 70, 100, 'No', 6.75),
('O0003', 'Lychee yogurt', 'Medium', 'Fruit jelly', 0, 30, 'Yes', 8.00),
('O0004', 'Strawberry smoothie', 'Large', 'Herbal jelly', 100, 0, 'No', 7.00),
('O0005', 'Rose black tea', 'Medium', 'Crystal boba', 30, 30, 'Yes', 6.50),
('O0006', 'Honey tea', 'Large', 'Whipped cream', 70, 70, 'No', 7.25),
('O0007', 'Blueberry smoothie', 'Medium', 'Black boba', 0, 70, 'Yes', 8.50),
('O0008', 'Apple hot tea', 'Large', 'Popping boba', 100, 100, 'No', 6.25),
('O0009', 'Taro milk tea', 'Medium', 'Fruit jelly', 30, 0, 'Yes', 7.75),
('O0010', 'Black milk tea', 'Large', 'Herbal jelly', 70, 30, 'No', 6.00),
('O0011', 'Mango yogurt', 'Medium', 'Crystal boba', 100, 70, 'Yes', 8.00),
('O0012', 'Grape green tea', 'Large', 'Whipped cream', 0, 100, 'No', 7.50),
('O0013', 'Green milk tea', 'Medium', 'Popping boba', 30, 30, 'Yes', 6.75),
('O0014', 'Peach green tea', 'Large', 'Black boba', 70, 70, 'No', 7.25),
('O0015', 'Lychee yogurt', 'Medium', 'Herbal jelly', 0, 100, 'Yes', 8.50),
('O0016', 'Strawberry smoothie', 'Large', 'Crystal boba', 100, 30, 'No', 6.50),
('O0017', 'Rose black tea', 'Medium', 'Whipped cream', 30, 70, 'Yes', 7.00),
('O0018', 'Honey tea', 'Large', 'Fruit jelly', 70, 0, 'No', 6.75),
('O0019', 'Blueberry smoothie', 'Medium', 'Black boba', 0, 70, 'Yes', 8.00),
('O0020', 'Apple hot tea', 'Large', 'Popping boba', 100, 30, 'No', 6.25);

-- Insert data into ingredient_vendor table
INSERT INTO ingredient_vendor (vendor_id, vendor_name, vendor_address, contact_number, email)
VALUES
('v0001', 'Top Toppings Co.', '123 Elm Street, UT', '5551234567', 'top_toppings@gmail.com'),
('v0002', 'Sweeteners Inc.', '456 Maple Avenue, UT', '5552345678', 'sweeteners@gmail.com'),
('v0003', 'Dairy Delights Ltd.', '789 Oak Road, UT', '5553456789', 'dairy_delights@gmail.com'),
('v0004', 'Concentrate Creations', '101 Pine Lane, UT', '5554567890', 'concentrate_creations@gmail.com'),
('v0005', 'Syrup Solutions', '202 Birch Blvd, UT', '5555678901', 'syrup_solutions@gmail.com');

-- Insert data into drink_ingredient table with updated vendor_id associations
INSERT INTO drink_ingredient (ingredient_id, ingredient_name, ingredient_type, vendor_id)
VALUES
('i0001', 'Black boba', 'Topping', 'v0001'),
('i0002', 'White sugar', 'Sweetener', 'v0002'),
('i0003', 'Brown sugar', 'Sweetener', 'v0002'),
('i0004', 'Popping boba', 'Topping', 'v0001'),
('i0005', 'Fruit jelly', 'Topping', 'v0001'),
('i0006', 'Herbal jelly', 'Topping', 'v0001'),
('i0007', 'Whipped cream', 'Dairy', 'v0003'),
('i0008', 'Crystal boba', 'Topping', 'v0001'),
('i0009', 'Green tea', 'Tea', 'v0004'),
('i0010', 'Yogurt', 'Dairy', 'v0003'),
('i0011', 'Smoothie', 'Concentrate', 'v0004'),
('i0012', 'Black tea', 'Tea', 'v0004'),
('i0013', 'Milk', 'Dairy', 'v0003'),
('i0014', 'Apple', 'Syrup', 'v0005'),
('i0015', 'Rose', 'Syrup', 'v0005'),
('i0016', 'Peach', 'Syrup', 'v0005'),
('i0017', 'Lychee', 'Syrup', 'v0005'),
('i0018', 'Strawberry', 'Syrup', 'v0005'),
('i0019', 'Blueberry', 'Syrup', 'v0005'),
('i0020', 'Taro', 'Concentrate', 'v0004'),
('i0021', 'Grape', 'Syrup', 'v0005'),
('i0022', 'Mango', 'Syrup', 'v0005'),
('i0023', 'Honey', 'Concentrate', 'v0004');

-- Insert data into loyal_customer_info table
INSERT INTO loyal_customer_info (customer_id, customer_name, phone_number, drink_points)
VALUES
('c0001', 'Mickey Mouse', '8010001234', 150),
('c0002', 'Donald Duck', '8010005678', 120),
('c0003', 'Goofy', '8010008765', 180),
('c0004', 'Pluto', '8010004321', 100),
('c0005', 'Daisy Duck', '8010003456', 160),
('c0006', 'Simba', '8010006543', 140),
('c0007', 'Nala', '8010007890', 170),
('c0008', 'Aladdin', '8010001235', 130),
('c0009', 'Jasmine', '8010005679', 190),
('c0010', 'Ariel', '8010008766', 110),
('c0011', 'Flounder', '8010004322', 180),
('c0012', 'Belle', '8010003457', 150),
('c0013', 'Beast', '8010006544', 120),
('c0014', 'Cinderella', '8010007891', 200),
('c0015', 'Prince Charming', '8010001236', 140),
('c0016', 'Snow White', '8010005670', 160),
('c0017', 'Dwarfs', '8010008767', 130),
('c0018', 'Pocahontas', '8010004323', 170),
('c0019', 'John Smith', '3150001234', 150),
('c0020', 'Mulan', '3150005678', 180),
('c0021', 'Shang', '3150008765', 120),
('c0022', 'Merida', '3150004321', 140),
('c0023', 'Hercules', '3150003456', 160),
('c0024', 'Megara', '3150006543', 190),
('c0025', 'Tiana', '3150007890', 130),
('c0026', 'Naveen', '3150001235', 170),
('c0027', 'Rapunzel', '3150005679', 150),
('c0028', 'Flynn Rider', '3150008766', 120),
('c0029', 'Jack Sparrow', '3150004322', 140),
('c0030', 'Will Turner', '3150003457', 180);

-- Insert data into calendar table
INSERT INTO calendar (date_id, purchase_date, day_of_week, purchase_month, purchase_year)
VALUES
('d0001', '2023-12-01', 'Friday', 'December', 2023),
('d0002', '2023-12-03', 'Sunday', 'December', 2023),
('d0003', '2023-12-05', 'Tuesday', 'December', 2023),
('d0004', '2023-12-07', 'Thursday', 'December', 2023),
('d0005', '2023-12-10', 'Sunday', 'December', 2023),
('d0006', '2023-12-12', 'Tuesday', 'December', 2023),
('d0007', '2023-12-14', 'Thursday', 'December', 2023),
('d0008', '2023-12-16', 'Saturday', 'December', 2023),
('d0009', '2023-12-18', 'Monday', 'December', 2023),
('d0010', '2023-12-20', 'Wednesday', 'December', 2023),
('d0011', '2023-12-22', 'Friday', 'December', 2023),
('d0012', '2023-12-24', 'Sunday', 'December', 2023),
('d0013', '2023-12-26', 'Tuesday', 'December', 2023),
('d0014', '2023-12-28', 'Thursday', 'December', 2023),
('d0015', '2023-12-30', 'Saturday', 'December', 2023),
('d0016', '2024-01-01', 'Monday', 'January', 2024),
('d0017', '2024-01-04', 'Thursday', 'January', 2024),
('d0018', '2024-01-06', 'Saturday', 'January', 2024),
('d0019', '2024-01-08', 'Monday', 'January', 2024),
('d0020', '2024-01-11', 'Thursday', 'January', 2024),
('d0021', '2024-01-13', 'Saturday', 'January', 2024),
('d0022', '2024-01-15', 'Monday', 'January', 2024),
('d0023', '2024-01-18', 'Thursday', 'January', 2024),
('d0024', '2024-01-20', 'Saturday', 'January', 2024),
('d0025', '2024-01-22', 'Monday', 'January', 2024),
('d0026', '2024-01-25', 'Thursday', 'January', 2024),
('d0027', '2024-01-27', 'Saturday', 'January', 2024),
('d0028', '2024-01-29', 'Monday', 'January', 2024),
('d0029', '2024-02-01', 'Thursday', 'February', 2024),
('d0030', '2024-02-03', 'Saturday', 'February', 2024),
('d0031', '2024-02-05', 'Monday', 'February', 2024),
('d0032', '2024-02-08', 'Thursday', 'February', 2024),
('d0033', '2024-02-10', 'Saturday', 'February', 2024),
('d0034', '2024-02-12', 'Monday', 'February', 2024),
('d0035', '2024-02-15', 'Thursday', 'February', 2024),
('d0036', '2024-02-17', 'Saturday', 'February', 2024),
('d0037', '2024-02-19', 'Monday', 'February', 2024),
('d0038', '2024-02-22', 'Thursday', 'February', 2024),
('d0039', '2024-02-24', 'Saturday', 'February', 2024),
('d0040', '2024-02-26', 'Monday', 'February', 2024),
('d0041', '2024-03-01', 'Friday', 'March', 2024),
('d0042', '2024-03-03', 'Sunday', 'March', 2024),
('d0043', '2024-03-05', 'Tuesday', 'March', 2024),
('d0044', '2024-03-08', 'Friday', 'March', 2024),
('d0045', '2024-03-10', 'Sunday', 'March', 2024),
('d0046', '2024-03-12', 'Tuesday', 'March', 2024),
('d0047', '2024-03-15', 'Friday', 'March', 2024),
('d0048', '2024-03-17', 'Sunday', 'March', 2024),
('d0049', '2024-03-19', 'Tuesday', 'March', 2024),
('d0050', '2024-03-22', 'Friday', 'March', 2024);

-- Insert data into payment table
INSERT INTO payment (payment_id, payment_type, transaction_date, amount)
VALUES
('p0001', 'Credit', '2023-12-01', 7.50),
('p0002', 'Debit', '2023-12-03', 6.75),
('p0003', 'Cash', '2023-12-05', 8.00),
('p0004', 'Credit', '2023-12-07', 7.25),
('p0005', 'Debit', '2023-12-10', 6.50),
('p0006', 'Cash', '2023-12-12', 8.25),
('p0007', 'Credit', '2023-12-14', 7.00),
('p0008', 'Debit', '2023-12-16', 6.85),
('p0009', 'Cash', '2023-12-18', 8.10),
('p0010', 'Credit', '2023-12-20', 7.60),
('p0011', 'Debit', '2023-12-22', 6.95),
('p0012', 'Cash', '2023-12-24', 8.20),
('p0013', 'Credit', '2023-12-26', 7.45),
('p0014', 'Debit', '2023-12-28', 6.80),
('p0015', 'Cash', '2023-12-30', 8.30),
('p0016', 'Credit', '2024-01-01', 7.55),
('p0017', 'Debit', '2024-01-04', 6.90),
('p0018', 'Cash', '2024-01-06', 8.15),
('p0019', 'Credit', '2024-01-08', 7.70),
('p0020', 'Debit', '2024-01-11', 6.80),
('p0021', 'Cash', '2024-01-13', 8.05),
('p0022', 'Credit', '2024-01-15', 7.20),
('p0023', 'Debit', '2024-01-18', 6.95),
('p0024', 'Cash', '2024-01-20', 8.25),
('p0025', 'Credit', '2024-01-22', 7.35),
('p0026', 'Debit', '2024-01-25', 6.85),
('p0027', 'Cash', '2024-01-27', 8.00),
('p0028', 'Credit', '2024-01-29', 7.65),
('p0029', 'Debit', '2024-02-01', 6.75),
('p0030', 'Cash', '2024-02-03', 8.10),
('p0031', 'Credit', '2024-02-05', 7.50),
('p0032', 'Debit', '2024-02-08', 6.90),
('p0033', 'Cash', '2024-02-10', 8.20),
('p0034', 'Credit', '2024-02-12', 7.40),
('p0035', 'Debit', '2024-02-15', 6.85),
('p0036', 'Cash', '2024-02-17', 8.30),
('p0037', 'Credit', '2024-02-19', 7.60),
('p0038', 'Debit', '2024-02-22', 6.95),
('p0039', 'Cash', '2024-02-24', 8.25),
('p0040', 'Credit', '2024-02-26', 7.75),
('p0041', 'Debit', '2024-03-01', 6.80),
('p0042', 'Cash', '2024-03-03', 8.15),
('p0043', 'Credit', '2024-03-05', 7.55),
('p0044', 'Debit', '2024-03-08', 6.70),
('p0045', 'Cash', '2024-03-10', 8.20),
('p0046', 'Credit', '2024-03-12', 7.65),
('p0047', 'Debit', '2024-03-15', 6.85),
('p0048', 'Cash', '2024-03-17', 8.30),
('p0049', 'Credit', '2024-03-19', 7.50),
('p0050', 'Debit', '2024-03-22', 6.95);

-- Fact table milktea_sales
-- Insert into milktea_sales with the given conditions
INSERT INTO milktea_sales (order_id, customer_id, ingredient_id, date_id, payment_id, sale_date, quantity, total_price)
VALUES
('O0001', 'c0001', 'i0002', 'd0001', 'p0001', '2023-12-01', 2, 14.00),
('O0002', 'c0005', 'i0004', 'd0002', 'p0002', '2023-12-02', 1, 7.50),
('O0003', 'c0003', 'i0006', 'd0003', 'p0003', '2023-12-05', 3, 22.50),
('O0004', 'c0008', 'i0008', 'd0004', 'p0004', '2023-12-08', 2, 15.00),
('O0005', 'c0002', 'i0015', 'd0005', 'p0005', '2023-12-10', 1, 8.00),
('O0006', 'c0006', 'i0009', 'd0006', 'p0006', '2023-12-12', 4, 28.00),
('O0007', 'c0004', 'i0011', 'd0007', 'p0007', '2023-12-15', 3, 21.00),
('O0008', 'c0007', 'i0013', 'd0008', 'p0008', '2023-12-18', 2, 14.50),
('O0009', 'c0001', 'i0020', 'd0009', 'p0009', '2023-12-20', 2, 16.00),
('O0010', 'c0003', 'i0018', 'd0010', 'p0010', '2024-01-02', 1, 7.75),
('O0011', 'c0005', 'i0017', 'd0011', 'p0011', '2024-01-05', 3, 22.50),
('O0012', 'c0008', 'i0016', 'd0012', 'p0012', '2024-01-10', 2, 14.00),
('O0013', 'c0009', 'i0001', 'd0013', 'p0013', '2024-01-15', 1, 6.50),
('O0014', 'c0002', 'i0007', 'd0014', 'p0014', '2024-01-20', 4, 29.00),
('O0015', 'c0006', 'i0004', 'd0015', 'p0015', '2024-02-01', 2, 14.25),
('O0016', 'c0004', 'i0010', 'd0016', 'p0016', '2024-02-05', 1, 7.00),
('O0017', 'c0008', 'i0012', 'd0017', 'p0017', '2024-02-10', 3, 19.50),
('O0018', 'c0003', 'i0021', 'd0018', 'p0018', '2024-02-15', 2, 16.50),
('O0019', 'c0007', 'i0014', 'd0019', 'p0019', '2024-02-20', 1, 8.25),
('O0020', 'c0001', 'i0003', 'd0020', 'p0020', '2024-03-01', 4, 30.00),
('O0001', 'c0005', 'i0005', 'd0021', 'p0021', '2024-03-05', 2, 14.75),
('O0002', 'c0008', 'i0006', 'd0022', 'p0022', '2024-03-10', 1, 6.75),
('O0003', 'c0002', 'i0008', 'd0023', 'p0023', '2024-03-15', 3, 21.00),
('O0004', 'c0009', 'i0011', 'd0024', 'p0024', '2024-03-20', 2, 15.50),
('O0005', 'c0003', 'i0014', 'd0025', 'p0025', '2024-03-25', 1, 7.25),
('O0006', 'c0004', 'i0009', 'd0026', 'p0026', '2024-04-01', 3, 20.00),
('O0007', 'c0006', 'i0012', 'd0027', 'p0027', '2024-04-05', 2, 14.00),
('O0008', 'c0008', 'i0010', 'd0028', 'p0028', '2024-04-10', 1, 7.50),
('O0009', 'c0002', 'i0018', 'd0029', 'p0029', '2024-04-15', 4, 28.00),
('O0010', 'c0005', 'i0019', 'd0030', 'p0030', '2024-04-20', 2, 13.75),
('O0011', 'c0009', 'i0007', 'd0031', 'p0031', '2024-04-25', 1, 6.50),
('O0012', 'c0001', 'i0005', 'd0032', 'p0032', '2024-05-01', 3, 19.00),
('O0013', 'c0008', 'i0016', 'd0033', 'p0033', '2024-05-05', 2, 14.50),
('O0014', 'c0002', 'i0020', 'd0034', 'p0034', '2024-05-10', 1, 8.00),
('O0015', 'c0005', 'i0013', 'd0035', 'p0035', '2024-05-15', 4, 30.00),
('O0016', 'c0003', 'i0006', 'd0036', 'p0036', '2024-05-20', 2, 15.00),
('O0017', 'c0007', 'i0011', 'd0037', 'p0037', '2024-06-01', 1, 7.75),
('O0018', 'c0004', 'i0014', 'd0038', 'p0038', '2024-06-05', 3, 21.50),
('O0019', 'c0006', 'i0017', 'd0039', 'p0039', '2024-06-10', 2, 14.75),
('O0020', 'c0008', 'i0009', 'd0040', 'p0040', '2024-06-15', 1, 8.50),
('O0001', 'c0002', 'i0010', 'd0041', 'p0041', '2024-06-20', 4, 28.00),
('O0002', 'c0005', 'i0018', 'd0042', 'p0042', '2024-06-25', 2, 15.25),
('O0003', 'c0003', 'i0020', 'd0043', 'p0043', '2024-07-01', 1, 8.50),
('O0004', 'c0004', 'i0011', 'd0044', 'p0044', '2024-07-05', 3, 20.00),
('O0005', 'c0006', 'i0004', 'd0045', 'p0045', '2024-07-10', 2, 14.00),
('O0006', 'c0008', 'i0012', 'd0046', 'p0046', '2024-07-15', 1, 16.00),
('O0007', 'c0002', 'i0019', 'd0047', 'p0047', '2024-07-20', 3, 22.00),
('O0008', 'c0003', 'i0007', 'd0048', 'p0048', '2024-07-25', 2, 15.00),
('O0009', 'c0005', 'i0016', 'd0049', 'p0049', '2024-07-30', 4, 30.00),
('O0010', 'c0007', 'i0014', 'd0050', 'p0050', '2024-07-31', 1, 8.00);





