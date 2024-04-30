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

ALTER TABLE car
ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id)
REFERENCES user_data(id);
