# ☁️ Cloud Analytics Pipeline on Google Cloud Platform. 

This project implements a full cloud-based data analytics workflow using **Google Cloud Platform** services. It combines SQL-based querying, data visualization, and web deployment. The goal was to analyze retail data from a fictional e-commerce store (`thelook` dataset) and serve business insights via dashboards and a live querying web application.

## 🎯 Project Objective

Analyze customer and order data to uncover patterns in regional distribution and purchasing trends. Present the results in an interactive dashboard and a lightweight, scalable web app.

## 📦 Components

### 🔍 Data Exploration (BigQuery)

* Analyzed customer geography and quarterly order growth from `thelook.users` and `thelook.orders` tables.
* Used CTEs, `RANK()`, `EXTRACT()`, and aggregate functions for SQL transformations.

### 📊 Interactive Dashboards (Looker Studio)

* Built two dashboards:

  * **Customer Distribution Dashboard** (top countries and states)
  * **Order Volume Dashboard** (quarterly growth trends)
* Included bar, line, pie charts, and KPI scorecards.
* Dashboards are filterable by time period and geography.

### 🚀 FastAPI + Cloud Run Deployment

* Developed a **FastAPI** application with two buttons:

  * View customer distribution
  * View order growth by quarter
* Queries BigQuery in real-time and renders results using **Jinja2** templates.
* Packaged via **Docker** and deployed to **Cloud Run** (region: `us-central1`)
* Accessible via HTTPS link with CSV/Excel/PDF export options

## 🔗 Key Links

* 🔍 [Live Dashboard (Looker Studio)](https://lookerstudio.google.com/embed/reporting/808fd43b-ee88-471f-aa5f-277b83b992bd/page/p_j3uxvxc3rd)
* 🌐 [Live Web App (Cloud Run)](https://bq-api-service-117345134195.us-central1.run.app)

## 🛠️ Tech Stack

* BigQuery (SQL transformations & views)
* Looker Studio (dashboards)
* FastAPI (web backend)
* Docker (containerization)
* Cloud Run (deployment)
* Cloud Storage (static files)
* Jinja2 (templating)

## 🌟 What Makes It Stand Out

* End-to-end GCP-native solution for cloud analytics
* Combines interactive dashboards and real-time querying
* Full containerized deployment on Cloud Run
* Clean, filterable visualizations for business decision support
* Conceptual comparison between GCP and AWS implementations

## 📁 Repository Structure
cloud-analytics-pipeline-gcp/
├── app/                   # FastAPI backend
├── sql/                   # SQL queries
├── dashboards/            # Dashboard links and screenshots
├── README.md              # You’re here
└── requirements.txt       # FastAPI dependencies

## 👩‍💻 Author

**Shivasmi Sharma**
Bioinformatics Analyst | MSc Data Science
📧 [shivasmisharma646@gmail.com](mailto:shivasmisharma646@gmail.com)
🔗 [LinkedIn](https://linkedin.com/in/shivasmi-sharma)
🐙 [GitHub](https://github.com/shivasmi07)
