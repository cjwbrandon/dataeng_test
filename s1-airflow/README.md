# Section 1: Data Pipelines
For this section, I've used Apache Airflow to implement the scheduling component.

# Setup
- Docker - https://docs.docker.com/engine/install/
- Docker Compose for dev - https://docs.docker.com/compose/install/

# Usage
- Run `docker-compose up --build`.
- Visit `localhost:8080` to access Airflow's web interface.
- Turn on DAG using the toggle on the left

# Testing
- Run `docker build --file Dockerfile.dev -t dataeng-s1 .`
- Run `docker run -it dataeng-s1`

# Folder Structure
- `/dags` - Folder to store all workflows.
  - `/data` - Store all data used for the job.
  - `/jobs` - Processing tasks.
  - `simple_dag.py` - Simple Directed Acyclic Graph to schedule job to run at 1am everyday.
- `/requirements` - Store dependencies files.
- `docker-compose.yml` - Docker compose file to orchestrate Airflow containers.
- `Dockerfile.dev` - Docker container for testing using PyTest.