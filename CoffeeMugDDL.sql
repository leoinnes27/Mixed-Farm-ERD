
-- DROP THE DATABASE IF IT EXISTS;
DROP DATABASE IF EXISTS mixedfarm;

-- 
--CREATE DATABASE mixedfarm;
-- 
USE mixedfarm;

-- 
CREATE TABLE M_plantations (
    -- 
    area_id INT VARCHAR(4) PRIMARY KEY NOT NULL,
    _product_quantity VARCHAR(1000) NOT NULL,
    _product_name NVARCHAR(50) NOT NULL,
    plant_date date NOT NULL,
    _plant_number INT NOT NULL,
    
);

CREATE TABLE products (
    -- 
    product_id INT VARCHAR(10) PRIMARY KEY NOT NULL,
    _product_name NVARCHAR(50) NOT NULL,
    _product_quantity VARCHAR(10000) NOT NULL,
    product_type VARCHAR(50) NOT NULL,
    
);




CREATE TABLE land (
    -- 
    land_id INT VARCHAR(4) PRIMARY KEY NOT NULL,
    animal_name VARCHAR(30) NOT NULL,
    _product_name NVARCHAR(50) NOT NULL,
    _plant_number INT NOT NULL,
    hatchery_number INT NOT NULL,
    
);

CREATE TABLE fertilizers (
    fertilizer_number PRIMARY KEY INT VARCHAR(4) NOT NULL,
    product_name NVARCHAR(40) NOT NULL,
    fertilizer_type NVARCHAR(40) NOT NULL,
);

CREATE TABLE storage (
    storage_ID PRIMARY KEY INT VARCHAR(4),
    product_name NVARCHAR(40) NOT NULL,
    product_quantity VARCHAR(10000) NOT NULL,
    product_type NVARCHAR(50) NOT NULL,
    storage_date date NOT NULL,

);

CREATE TABLE animals (
    animal_id PRIMARY KEY INT VARCHAR(4),
    hatchery_number INT VARCHAR(3),
    _animal_name NVARCHAR(15) NOT NULL, 
    animal_type NVARCHAR(30) NOT NULL, 
    animal_quantity VARCHAR(10) NOT NULL,
    HATCH_DATE date NOT NULL,
);

CREATE TABLE fodder (
    fodder_number PRIMARY KEY INT VARCHAR(4),
    _animal_name NVARCHAR(40) NOT NULL,
    fodder_type NVARCHAR(30) NOT NULL, 
    fodder_date date NOT NULL, 
    fodder_quantity VARCHAR(10) NOT NULL

);

CREATE TABLE orders (
    order_number PRIMARY KEY INT VARCHAR(4) NOT NULL,
    customer_id VARCHAR(10) INT NOT NULL,
    customer_first_name NVARCHAR(30) NOT NULL,
    customer_last_name NVARCHAR(30) NOT NULL,
    customer_address NVARCHAR(50) NOT NULL,
    PRIMARY KEY (order_number),
    FOREIGN KEY (product_name),
    FOREIGN KEY (animal_name),
    order_date date NOT NULL,
    order_quantity VARCHAR(10) NOT NULL,
       
);

CREATE TABLE machinaries (
    machine_number PRIMARY KEY NOT NULL INT,
    machine_type NVARCHAR(20) NOT NULL,
    machine_name NVARCHAR(20) NOT NULL,
);

CREATE TABLE customers (
    customer_id PRIMARY KEY VARCHAR(10) INT NOT NULL,
    customer_first_name NVARCHAR(30) NOT NULL,
    customer_last_name NVARCHAR(30) NOT NULL, 
    customer_address NVARCHAR(50) NOT NULL,
);

CREATE TABLE desposals (
    desposals_date PRIMARY KEY date NOT NULL,
    desposals_items NVARCHAR(30) NOT NULL,
    desposal_way NVARCHAR(100) NOT NULL,
);

CREATE TABLE employees (
    employee_id PRIMARY KEY VARCHAR(10) INT NOT NULL,
    employee_first_name NVARCHAR(30) NOT NULL,
    employee_last_name NVARCHAR(30) NOT NULL,
    employee_adress NVARCHAR(50) NOT NULL,
    position_job NVARCHAR(30) NOT NULL,
);


