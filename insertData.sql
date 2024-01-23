
INSERT INTO Customers (cust_id, Name, Age, Phone, Email, Action)
VALUES
    (101, 'John Doe', 25, 1234567890, 'john@example.com', 'Buy'),
    (102, 'Jane Smith', 30, 9876543210, 'jane@example.com', 'Service'),
    (103, 'Bob Johnson', 22, 5555555555, 'bob@example.com', 'Buy'),
    (104, 'Alice Williams', 28, 1111222233, 'alice@example.com', 'Buy'),
    (105, 'Charlie Brown', 35, 9999888877, 'charlie@example.com', 'Service');



-- Insert 5 entries into the Cars table
INSERT INTO Cars (Serial_Number, Model, M_year, Available)
VALUES
    ('VIN123', 'Toyota Camry', '2022', TRUE),
    ('VIN456', 'Honda Accord', '2021', FALSE),
    ('VIN789', 'Ford Mustang', '2022', TRUE),
    ('VIN101', 'Chevrolet Malibu', '2020', FALSE),
    ('VIN112', 'Nissan Altima', '2021', TRUE);


-- Insert 5 entries into the Salesperson table
INSERT INTO Salesperson (S_ID, Name, Sex)
VALUES
    (1, 'John Doe', 'Male'),
    (2, 'Jane Smith', 'Female'),
    (3, 'Bob Johnson', 'Male'),
    (4, 'Alice Williams', 'Female'),
    (5, 'Charlie Brown', 'Male');


-- Insert 5 entries into the Invoice table
INSERT INTO Invoice (ID, S_ID, cust_ID, serial_number, Amount)
VALUES
    ('INV001', 1, 101, 'VIN123', 15000.00),
    ('INV002', 2, 102, 'VIN456', 20000.00),
    ('INV003', 3, 103, 'VIN789', 18000.00),
    ('INV004', 4, 104, 'VIN101', 22000.00),
    ('INV005', 5, 105, 'VIN112', 16000.00);


-- Example entries in the cars_for_service table
INSERT INTO cars_for_service (serial_number_service, cust_id)
VALUES
    ('VIN123', 101),
    ('VIN456', 102),
    ('VIN789', 103),
    ('VIN101', 104),
    ('VIN112', 105);


-- Insert 5 entries into the Service_Ticket table
INSERT INTO Service_Ticket (ticket_id, cust_id, serial_number_service, Action)
VALUES
    ('TICKET001', 101, 'VIN123', 'Repair'),
    ('TICKET002', 102, 'VIN456', 'Service'),
    ('TICKET003', 103, 'VIN789', 'Repair'),
    ('TICKET004', 104, 'VIN101', 'Service'),
    ('TICKET005', 105, 'VIN112', 'Repair');

    -- Insert 5 entries into the service_history table
INSERT INTO service_history (id, serial_number_service, ticket_id)
VALUES
    ('SH001', 'VIN123', 'TICKET001'),
    ('SH002', 'VIN456', 'TICKET002'),
    ('SH003', 'VIN789', 'TICKET003'),
    ('SH004', 'VIN101', 'TICKET004'),
    ('SH005', 'VIN112', 'TICKET005');


-- Insert 5 entries into the Mechanics table with changed names
INSERT INTO Mechanics (mech_id, name, age)
VALUES
    ('M001', 'Michael Johnson', 30),
    ('M002', 'Sophia Miller', 35),
    ('M003', 'Daniel White', 28),
    ('M004', 'Olivia Davis', 40),
    ('M005', 'Ethan Wilson', 32);


-- Insert 5 entries into the spare_parts table
INSERT INTO spare_parts (part_id, Name, ticket_id, part_needed)
VALUES
    ('P001', 'Spark Plug', 'TICKET001', true),
    ('P002', 'Oil Filter', 'TICKET002', true),
    ('P003', 'Brake Pads', 'TICKET003', true),
    ('P004', 'Air Filter', 'TICKET004', false),
    ('P005', 'Battery', 'TICKET005', true);