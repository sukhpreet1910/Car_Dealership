create DATABASE car_dealership;

CREATE TYPE customer_action AS ENUM ('Buy', 'Service');

CREATE TABLE Customers (
    cust_ID int PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Phone BIGINT,
    Email VARCHAR(100),
    Action customer_action
);


-- -- Create the Cars table
CREATE TABLE Cars (
    Serial_Number VARCHAR PRIMARY KEY,
    Model VARCHAR(100),
    M_year VARCHAR(100),
    Available BOOLEAN
);


-- Create the Salesperson table
CREATE TABLE Salesperson (
    S_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Sex VARCHAR
);


-- Create the Invoice table

CREATE TABLE Invoice (
    ID VARCHAR(100) PRIMARY KEY,
    S_ID INT,
    cust_ID INT,
    serial_number VARCHAR(100),
    Amount NUMERIC,
    FOREIGN KEY (S_ID) REFERENCES Salesperson(S_ID),
    FOREIGN KEY (cust_ID) REFERENCES Customers(cust_ID),
    FOREIGN KEY (serial_number) REFERENCES Cars(Serial_Number)
);


-- Create the cars_for_service table
CREATE TABLE cars_for_service (
    serial_number_service VARCHAR(100) PRIMARY KEY,
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES Customers(cust_id)
);



-- Create the Action enum type
CREATE TYPE Action AS ENUM ('Repair', 'Service');

-- Create the Service_Ticket table
CREATE TABLE Service_Ticket (
    ticket_id varchar(100) PRIMARY KEY,
    cust_id INT,
    serial_number_service VARCHAR(100),
    FOREIGN KEY (cust_id) REFERENCES Customers(cust_id),
    FOREIGN KEY (serial_number_service) REFERENCES cars_for_service(serial_number_service),
    Action Action
);


-- Create the service_history table
CREATE TABLE service_history (
    id varchar(100) PRIMARY KEY,
    serial_number_service varchar(100) REFERENCES cars_for_service(serial_number_service),
    ticket_id varchar(100) REFERENCES Service_Ticket(ticket_id)
);



-- Create the Mechanics table
CREATE TABLE Mechanics (
    mech_id varchar(100) PRIMARY KEY,
    name varchar(100),
    age int
);



-- Create the spare_parts table
CREATE TABLE spare_parts (
    part_id varchar(100) PRIMARY KEY,
    Name varchar(100),
    ticket_id varchar(100),
    part_needed BOOLEAN,
    FOREIGN KEY (ticket_id) REFERENCES Service_Ticket(ticket_id)
);


