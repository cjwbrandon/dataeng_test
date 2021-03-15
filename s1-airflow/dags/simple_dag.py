from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.utils.dates import days_ago
from datetime import timedelta

import jobs.dataset_job as dj

# configurations
default_args = {
    "owner": "my_airflow",
    "depends_on_past": False,
    "start_date": days_ago(1),
    "email_on_failure": False,
    "email_on_retry": False,
    "retries": 2,
    "retry_delay": timedelta(minutes=30),
}

# Create dag
dag = DAG(
    dag_id="simple_dag",
    default_args=default_args,
    description="Simple DAG to schedule processing tasks in Section 1.",
    schedule_interval="0 1 * * *",
)

# Create processing job for the dataset.
dataset_job = PythonOperator(task_id="dataset_job", python_callable=dj.main, dag=dag)
