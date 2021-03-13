-- Create schema for store
CREATE SCHEMA store

-- Create tables
-- Table to store car characteristics
CREATE TABLE car_characteristics (
    "model_name" text NOT NULL,
    "manufacturer" text NOT NULL,
    "weight" real NOT NULL,
    "price" real NOT NULL,
    PRIMARY KEY ("model_name", "manufacturer")
)

-- Table to store car inventory
CREATE TABLE car_inventory (
    "serial_number" integer UNIQUE NOT NULL,
    "model_name" text NOT NULL,
    "manufacturer" text NOT NULL,
    PRIMARY KEY ("serial_number"),
    FOREIGN KEY ("model_name", "manufacturer")
        REFERENCES "car_characteristics" ("model_name", "manufacturer")
)

-- Table to store customers details
CREATE TABLE customers (
    "name" text UNIQUE NOT NULL,
    "phone" integer NOT NULL,
    PRIMARY KEY ("name")
)

-- Table to store sales transactions
CREATE TABLE sales_transactions (
    "serial_number" integer UNIQUE NOT NULL,
    "datetime" timestamp without time zone NOT NULL,
    "salesperson" text NOT NULL,
    "customer_name" text NOT NULL,
    PRIMARY KEY ("serial_number"),
    FOREIGN KEY ("customer_name")
        REFERENCES "customers" ("name")
)