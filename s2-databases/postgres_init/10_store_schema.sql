-- Create schema for store
CREATE SCHEMA store

-- Create tables
-- Table to store car inventory
CREATE TABLE car_inventory (
    "serial_number" integer NOT NULL,
    "model_name" text NOT NULL,
    "manufacturer" text NOT NULL,
    CONSTRAINT "car_inventory_pkey" PRIMARY KEY ("serial_number"),
    CONSTRAINT "car_inventory_serial_number_key" UNIQUE ("serial_number")
    CONSTRAINT "car_inventory_car_characteristics_fkey" FOREIGN KEY ("model_name", "manufacturer")
)

-- Table to store car characteristics
CREATE TABLE car_characteristics (
    "model_name" text NOT NULL,
    "manufacturer" text NOT NULL,
    "weight" real NOT NULL,
    "price" real NOT NULL,
    CONSTRAINT "car_characteristics_pkey" PRIMARY KEY ("model_name", "manufacturer")
)

-- Table to store sales transactions
CREATE TABLE sales_transactions (
    "serial_number" integer NOT NULL,
    "salesperson" text NOT NULL,
    "customer_name" text NOT NULL,
    CONSTRAINT "sales_transactions_pkey" PRIMARY KEY ("serial_number"),
    CONSTRAINT "sales_transactions_customers_fkey" FOREIGN KEY ("customer_name")
)

-- Table to store customers details
CREATE TABLE customers (
    "customer_name" text NOT NULL,
    "customer_phone" integer NOT NULL,
    CONSTRAINT "customers_pkey" PRIMARY KEY ("customer_name")
)