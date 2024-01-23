CREATE OR REPLACE FUNCTION insert_customer(
    cust_id_param INT,
    name_param VARCHAR(100),
    age_param INT,
    phone_param BIGINT,
    email_param VARCHAR(100),
    action_param customer_action
)
RETURNS VOID AS $$
BEGIN
    INSERT INTO Customers (cust_id, Name, Age, Phone, Email, Action)
    VALUES (cust_id_param, name_param, age_param, phone_param, email_param, action_param);
END;
$$ LANGUAGE plpgsql;

-- Inserting two rows using the stored function
SELECT insert_customer(106, 'Eva Davis', 32, 8888777766, 'eva@example.com', 'Service');
SELECT insert_customer(107, 'Michael Johnson', 28, 4444333322, 'michael@example.com', 'Buy');


--  Let's call the function directly without using SELECT
DO $$
Begin
    Perform insert_customer(108, 'Harvey Specter', 36, 8888777766, 'specter@example.com', 'Service');
    Perform insert_customer(109, 'Mike Ross', 28, 4444333322, 'ross@example.com', 'Buy');
End $$;

SELECT *
from customers


-- Inserting intp Cars Table 

CREATE OR REPLACE FUNCTION insert_car(
    serial_number_param VARCHAR,
    model_param VARCHAR(100),
    m_year_param VARCHAR(100),
    available_param BOOLEAN
)
RETURNS VOID AS $$
BEGIN
    INSERT INTO Cars (Serial_Number, Model, M_year, Available)
    VALUES (serial_number_param, model_param, m_year_param, available_param);
END;
$$ LANGUAGE plpgsql;

-- Inserting two rows using the stored function
DO $$ 
BEGIN
    PERFORM insert_car('VIN113', 'Tesla Model 3', '2022', TRUE);
    PERFORM insert_car('VIN114', 'Audi A4', '2021', FALSE);
END $$;
