-- CREATE TABLE user_data (
-- 	id INT PRIMARY KEY,
-- 	first_name VARCHAR(50),
-- 	last_name VARCHAR(50),
-- 	email VARCHAR(100) UNIQUE,
-- 	gender VARCHAR(50)
-- );

-- create table car (
-- 	id INT,
-- 	car_make VARCHAR(50),
-- 	car_model VARCHAR(50),
-- 	car_model_year VARCHAR(50),
-- 	car_vin VARCHAR(50),
-- 	user_id INT
-- );

-- ALTER TABLE car
-- ADD CONSTRAINT fk_user_id
-- FOREIGN KEY (user_id)
-- REFERENCES user_data(id);

-- ALTER TABLE car
-- ADD PRIMARY KEY (user_id);

-- CREATE TABLE kalenview (
--     uuid UUID PRIMARY KEY,
--     email VARCHAR(255) UNIQUE,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     password VARCHAR(255),
--     company_name VARCHAR(100),
--     company_role VARCHAR(100)
-- );

-- First, ensure you have the uuid-ossp extension installed. If not, you can install it:
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Then, alter the table to set the default value for the UUID column
ALTER TABLE kalenview
    ALTER COLUMN uuid SET DEFAULT uuid_generate_v4();
