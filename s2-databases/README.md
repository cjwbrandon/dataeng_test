## Assumptions
1. Each car model produced by the same manufacturer should have the same price and weight.
2. Customer names are unique.

## Setup
- Docker - https://docs.docker.com/engine/install/
- Docker Compose - https://docs.docker.com/compose/install/

## Usage
1. Navigate to s2-database folder directory
2. Run `docker-compose up --build`

## Folder structure
- ./postgres_init - Store DDL statements and seed data to run when postgres container is initialised.
- ./sql - SQL statements to perform the tasks requirements.
- docker-compose.yml - Docker compose configuration file to run postgres container.
- schema_design.png - Image of the database schema.