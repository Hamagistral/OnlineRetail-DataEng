<div align="center">
  <a href="https://lookerstudio.google.com/reporting/da5da0af-4be0-4f7d-a84b-f7c2892df612">
    <img src="https://github.com/Hamagistral/OnlineRetail-DataEng/assets/66017329/f9b84b6c-a444-4296-bb33-0d6322896cba" alt="Banner" width="720">
  </a>

  <div id="user-content-toc">
    <ul>
      <summary><h1 style="display: inline-block;">👨‍🔧 Online Retail Data Pipeline 👷</h1></summary>
    </ul>
  </div>
  
  <p>Retail Data Pipeline with Terraform, Airflow, GCP BigQuery, dbt, Soda, and Looker</p>
    <a href="https://lookerstudio.google.com/reporting/da5da0af-4be0-4f7d-a84b-f7c2892df612/" target="_blank">Dashboard</a>
    📊 
    <a href="https://github.com/Hamagistral/OnlineRetail-DataEng" target="_blank">Request Feature</a>
</div>
<br>

## 📝 Table of Contents

1. [ Project Overview ](#introduction)
2. [ Key Insights ](#features)
3. [ Project Architecture ](#arch)
4. [ Usage ](#usage)
5. [ Credits ](#refs)
6. [ Contact ](#contact)

<a name="introduction"></a>
## 🔬 Project Overview 

This an end-to-end data engineering project, where I created a robust data pipeline to extract, analyze, and visualize insights from the data of the online retail company.

### 💾 Dataset

This is a transnational data set that contains all the transactions occurring between 01/12/2010 and 09/12/2011 for a UK-based and registered non-store online retail. The company mainly sells unique all-occasion gifts. Many customers of the company are wholesalers.

The dataset includes the following columns:

| **Column** | **Description** |
| :--------------- |:---------------| 
| **InvoiceNo** |  Invoice number. Nominal, a 6-digit integral number uniquely assigned to each transaction. If this code starts with letter 'c', it indicates a cancellation.  |  
| **StockCode** | Product (item) code. Nominal, a 5-digit integral number uniquely assigned to each distinct product. |
| **Description**   |  Product (item) name. Nominal.  |
| **Quantity**   |  The quantities of each product (item) per transaction. Numeric.  |
| **InvoiceDate**   |  Invoice Date and time. Numeric, the day and time when each transaction was generated.  |
| **UnitPrice**   |  Unit price. Numeric, Product price per unit in sterling.  |
| **CustomerID**   |  Customer number. Nominal, a 5-digit integral number uniquely assigned to each customer.  |
| **Country**   |  Country name. Nominal, the name of the country where each customer resides.   |

### 🎯 Project Goals

- Set up the cloud infrastructure using Terraform.
- Set up your Airflow local environment with the Astro CLI.
- Create a data pipeline from scratch using Apache Airflow.
- Upload CSV files into Google Cloud Storage.
- Ingest data into BigQuery.
- Implement data quality checks in the pipeline using Soda.
- Integrate dbt and run data models with Airflow and Cosmos.
- Visualize insights using Looker Studio.

<a name="features"></a>
## 🕵️ Key Insights

- 💸 **Total Revenue by Country**
  - The UK 🇬🇧 is the country that generated the most of the company's revenue with over 7M followed by the Netherlands with 285k.
 
- 🎁 **Top 3 sold products**
  - **N°1:** "PAPER CRAFT, LITTLE BIRDIE" is the Top selling product with 24,5%
  - **N°2:** "MEDIUM CERAMIC TOP STORAGE JAR" is the second Top seller with 23%
  - **N°3:** "WORLD WAR 2 GLIDERS" are the third most selling gift product with 15,6%

 > These 3 products alone account for more than 50% of the sales.

- 📈 **Revenue by months**
  - The month with the most revenue is November with more than 1,1M.
  - The month with the lowest revenue is February.

> This can be explained by the months of October, November, and December having important holidays like Christmas, Halloween, etc... where people tend to give each other gifts.

<a name="arch"></a>
## 📝 Project Architecture

The end-to-end data pipeline includes the following steps:

- Setting up the infrastructure on GCP *(Terraform)*
- Downloading, processing, and uploading the initial dataset to a Data Lake *(GCP Storage Bucket)*
- Moving the data from the lake to a Data Warehouse *(GCP BigQuery)*
- Transforming the data in the Data Warehouse and preparing it for the dashboard *(dbt)*
- Checking the quality of the data in the Data Warehouse *(Soda)*
- Creating the dashboard *(Looker Studio)*
  
You can find the detailed information on the diagram below:

![Architecture](https://github.com/Hamagistral/OnlineRetail-DataEng/assets/66017329/43a6bf65-d5c2-45fb-8e22-08ec27d700ef)

### 🔧 Pipeline Architecture
![onlineretail-arch](https://github.com/Hamagistral/OnlineRetail-DataEng/assets/66017329/9ce4a822-3c4c-4371-93b0-ebbaeb4df67d)

### 🌪️ Pipeline on Airflow
![airflowretail](https://github.com/Hamagistral/OnlineRetail-DataEng/assets/66017329/70df1a85-7c22-4ffb-afcc-01a6b67e99c6)

### ⚙️ Data Modeling
![image](https://github.com/Hamagistral/OnlineRetail-DataEng/assets/66017329/8e901a41-b830-4266-81b6-22f448d7f950)

### 🛠️ Technologies Used

- **Infrastructure**: Terraform
- **Google Cloud Platform (GCP)**
  - Data Lake (DL): Cloud Storage
  - Data Warehouse (DWH): BigQuery
- **Astro SDK** for Airflow
- **Workflow orchestration:** Apache Airflow
- **Transforming data:** dbt (Data Build Tool)
- **Data quality checks:** Soda
- **Containerization:** Docker
- **Data Visualization:** Looker Studio

<a name="usage"></a>
## 💻 Usage

First, clone this repository.

```
git clone https://github.com/Hamagistral/OnlineRetail-DataEng.git
```

#### 1. Pre-requisites

Make sure you have the following pre-installed components:

- [GCP account](https://cloud.google.com/?hl=en)
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Docker](https://docs.docker.com/get-docker/)
  
#### 2. Google Cloud Platform
To set up GCP, please follow the steps below:

1. If you don't have a GCP account, please create a free trial.
2. Set up new project and write down your Project ID.
3. Configure service account to get access to this project and download auth-keys (.json). Please check the service account has all the permissions below:
    - Viewer
    - Storage Admin
    - Storage Object Admin
    - BigQuery Admin
4. Download SDK for local setup.
5. Set environment variable to point to your downloaded auth-keys:
```
export GOOGLE_APPLICATION_CREDENTIALS="<path/to/your/service-account-authkeys>.json"

# Refresh token/session, and verify authentication
gcloud auth application-default login
```

6. Enable the following options under the APIs and services section:
  - Identity and Access Management (IAM) API
  - IAM service account credentials API

#### 3. Terraform
We use Terraform to build and manage GCP infrastructure. Terraform configuration files are located in the separate folder. There are 3 configuration files:

- terraform-version - contains information about the installed version of Terraform;
- variables.tf - contains variables to make your configuration more dynamic and flexible;
- main.tf - is a key configuration file consisting of several sections.

Now you can use the steps below to generate resources inside the GCP:

1. Move to the terraform folder using bash command `cd`
2. Run `terraform init` command to initialize the configuration.
3. Use `terraform plan` to match previews local changes against a remote state.
4. Apply changes to the cloud with `terraform apply` command.

> Note: In steps 3 and 4 Terraform may ask you to specify the Project ID. Please use the ID that you noted down earlier at the project setup stage.

If you would like to remove your stack from the Cloud, use the `terraform destroy` command.

#### 4. Airflow

1. Start Airflow on your local machine by running:
```
astro dev start
```
This command will spin up 4 Docker containers on your machine, each for a different Airflow component:

- **Postgres:** Airflow's Metadata Database
- **Webserver:** The Airflow component responsible for rendering the Airflow UI
- **Scheduler:** The Airflow component responsible for monitoring and triggering tasks
- **Triggerer:** The Airflow component responsible for triggering deferred tasks

2. Verify that all 4 Docker containers were created by running 'docker ps'.

Note: Running 'astro dev start' will start your project with the Airflow Webserver exposed at port 8080 and Postgres exposed at port 5432. If you already have either of those ports allocated, you can either [stop your existing Docker containers or change the port](https://docs.astronomer.io/astro/test-and-troubleshoot-locally#ports-are-not-available).

3. Access the Airflow UI for your local Airflow project. To do so, go to http://localhost:8080/ and log in with 'admin' for both your Username and Password.

You should also be able to access your Postgres Database at 'localhost:5432/postgres'.

4. Configure your Google Cloud Platform credentials.
5. Create and configure the necessary connections in Airflow.
6. Customize the Airflow DAGs to suit your specific requirements.
7. Run the pipeline and monitor its execution.
8. Explore the data using Looker Studio for insights and visualization.

<a name="refs"></a>
## 📋 Credits

- This Project is inspired by the recent video of the [YouTube Channel Data With Marc](https://www.youtube.com/watch?v=DzxtCxi4YaA)  
- Readme inspired by this [Project](https://github.com/SVizor42/DE_Zoomcamp/tree/main/Project)

<a name="contact"></a>
## 📨 Contact Me

[LinkedIn](https://www.linkedin.com/in/hamza-elbelghiti/) •
[Website](https://Hamagistral.me) •
[Gmail](hamza.lbelghiti@gmail.com)


