# Section 2: Databases
For this section, I've used a PostgreSQL as my database and Docker to provision containers for the database.

## Assumptions
1. Each car model produced by the same manufacturer should have the same price and weight.
2. Customer names are unique.

# Setup
- Docker - https://docs.docker.com/engine/install/
- Docker Compose - https://docs.docker.com/compose/install/

# Usage
1. Run `docker-compose up --build`
2. Access database at `postgresql://postgres:postgres@localhost:5432/postgres`
3. Execute commands from `/sql`

Note: Visit `schema_design.png` for a simple layout of the database.

# Folder structure
- `/postgres_init` - Store DDL statements and seed data to run when postgres container is initialised.
- `/sql` - SQL statements to perform the tasks requirements.
- `docker-compose.yml` - Docker compose configuration file to run postgres container.
- `schema_design.png` - Image of the database schema.