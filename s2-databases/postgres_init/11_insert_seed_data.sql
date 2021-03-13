INSERT INTO 
    store.car_characteristics ("model_name", "manufacturer", "weight", "price")
VALUES 
    ('model_a', 'manufacturer_a', 100.9, 100.5), 
    ('model_b', 'manufacturer_a', 150.2, 139.4), 
    ('model_c', 'manufacturer_b', 160.2, 135.5);

INSERT INTO 
    store.car_inventory ("serial_number", "model_name", "manufacturer")
VALUES 
    (1, 'model_a', 'manufacturer_a'), 
    (2, 'model_a', 'manufacturer_a'), 
    (3, 'model_a', 'manufacturer_a'), 
    (4, 'model_a', 'manufacturer_a'), 
    (5, 'model_a', 'manufacturer_a'), 
    (6, 'model_b', 'manufacturer_a'), 
    (7, 'model_b', 'manufacturer_a'), 
    (8, 'model_c', 'manufacturer_b'), 
    (9, 'model_c', 'manufacturer_b');

INSERT INTO 
    store.customers ("name", "phone")
VALUES 
    ('customer_a', 901), 
    ('customer_b', 902), 
    ('customer_c', 903);

INSERT INTO 
    store.sales_transactions("serial_number", "datetime", "salesperson", "customer_name")
VALUES 
    (1, '2021-01-01 12:10:10-00', 'salesperson_a', 'customer_a'), 
    (2, '2021-01-01 12:10:10-00', 'salesperson_a', 'customer_b'), 
    (3, '2021-02-01 12:10:10-00', 'salesperson_a', 'customer_a'), 
    (4, '2021-01-01 12:10:10-00', 'salesperson_a', 'customer_b'), 
    (5, '2021-01-01 12:10:10-00', 'salesperson_a', 'customer_a'), 
    (6, '2021-01-01 12:10:10-00', 'salesperson_a', 'customer_c'),  
    (7, '2021-01-01 12:10:10-00', 'salesperson_a', 'customer_a'),  
    (8, '2021-01-01 12:10:10-00', 'salesperson_a', 'customer_c'),
    (9, '2021-01-01 12:10:10-00', 'salesperson_a', 'customer_a');