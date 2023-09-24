<div align="center">
  <a href="https://lookerstudio.google.com/reporting/da5da0af-4be0-4f7d-a84b-f7c2892df612">
    <img src="https://github.com/Hamagistral/OnlineRetail-DataEng/assets/66017329/e0688cc7-fe66-4752-a256-1539f13d58c9" alt="Banner" width="720">
  </a>

  <div id="user-content-toc">
    <ul>
      <summary><h1 style="display: inline-block;">👨‍🔧 Online Retail Data Pipeline 👷</h1></summary>
    </ul>
  </div>
  
  <p>Retail Data Pipeline with Airflow, GCP BigQuery, dbt, Soda, and Looker</p>
    <a href="https://lookerstudio.google.com/reporting/da5da0af-4be0-4f7d-a84b-f7c2892df612/" target="_blank">Dashboard</a>
    📊 
    <a href="https://github.com/Hamagistral/OnlineRetail-DataEng" target="_blank">Request Feature</a>
</div>
<br>

## 📝 Table of Contents

1. [ Project Overview ](#introduction)
2. [ Key Features ](#features)
3. [ Project Architecture ](#arch)
4. [ Usage ](#usage)
5. [ Credits ](#refs)
6. [ Contact ](#contact)

<a name="introduction"></a>
## 🔬 Project Overview 

This an end-to-end data engineering project, where I created a robust data pipeline using Airflow, BigQuery, dbt, Soda, and Looker Studio. 

### 🎯 Project Goals

- Create a data pipeline from scratch using Apache Airflow.
- Set up your Airflow local environment with the Astro CLI.
- Implement data quality checks in the pipeline using Soda.
- Integrate dbt and run data models with Airflow and Cosmos.
- Isolate tasks to avoid dependency conflicts.
- Upload CSV files into Google Cloud Storage.
- Ingest data into BigQuery using the Astro SDK.

<a name="features"></a>
## 🔌 Key Features

- **End-to-End Data Pipeline**: This project provides a complete data engineering solution, from data ingestion to visualization.

- **Modular Airflow DAGs**: Airflow Directed Acyclic Graphs (DAGs) are modular and easy to maintain, ensuring efficient pipeline execution.

- **Data Quality Checks**: Ensure data integrity and quality with automated data quality checks using Soda.

- **Integration with dbt**: Leverage dbt for data transformation and modeling within the Airflow pipeline.

- **Google Cloud Integration**: Utilize Google Cloud Storage and BigQuery for scalable and cost-effective data storage and processing.

<a name="arch"></a>
## 📝 Project Architecture

### 🔧 Pipeline Architecture
![image](https://github.com/Hamagistral/OnlineRetail-DataEng/assets/66017329/3f29afce-4e05-49ca-93d2-49115e1900a0)

### 🌪️ Pipeline on Airflow
![airflowretail](https://github.com/Hamagistral/OnlineRetail-DataEng/assets/66017329/70df1a85-7c22-4ffb-afcc-01a6b67e99c6)

### ⚙️ Data Modeling
![image](https://github.com/Hamagistral/OnlineRetail-DataEng/assets/66017329/8e901a41-b830-4266-81b6-22f448d7f950)

### 🛠️ Technologies Used

- **Google Cloud Platform (GCP)** Cloud Storage and BigQuery.
- **Astro SDK** for Airflow.
- **Apache Airflow**.
- **dbt (Data Build Tool)**.
- **Soda** for data quality checks.
- **Docker** for containerization.
- **Looker Studio** for data visualization and exploration.

<a name="usage"></a>
## 💻 Usage

1. Clone this repository.
```
git clone https://github.com/Hamagistral/OnlineRetail-DataEng.git
```
2. Start Airflow on your local machine by running:
```
astro dev start
```
This command will spin up 4 Docker containers on your machine, each for a different Airflow component:

- Postgres: Airflow's Metadata Database
- Webserver: The Airflow component responsible for rendering the Airflow UI
- Scheduler: The Airflow component responsible for monitoring and triggering tasks
- Triggerer: The Airflow component responsible for triggering deferred tasks

3. Verify that all 4 Docker containers were created by running 'docker ps'.

Note: Running 'astro dev start' will start your project with the Airflow Webserver exposed at port 8080 and Postgres exposed at port 5432. If you already have either of those ports allocated, you can either [stop your existing Docker containers or change the port](https://docs.astronomer.io/astro/test-and-troubleshoot-locally#ports-are-not-available).

4. Access the Airflow UI for your local Airflow project. To do so, go to http://localhost:8080/ and log in with 'admin' for both your Username and Password.

You should also be able to access your Postgres Database at 'localhost:5432/postgres'.

5. Configure your Google Cloud Platform credentials.
6. Create and configure the necessary connections in Airflow.
7. Customize the Airflow DAGs to suit your specific requirements.
8. Run the pipeline and monitor its execution.
9. Explore the data using Looker Studio for insights and visualization.

<a name="refs"></a>
## 📋 Credits

This Project is inspired by the recent video of the [YouTube Channel Data With Marc](https://www.youtube.com/watch?v=DzxtCxi4YaA)

<a name="contact"></a>
## 📨 Contact Me

[LinkedIn](https://www.linkedin.com/in/hamza-elbelghiti/) •
[Website](https://Hamagistral.me) •
[Gmail](hamza.lbelghiti@gmail.com)


