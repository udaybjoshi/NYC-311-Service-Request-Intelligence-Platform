# NYC 311 Service Request Intelligence Platform

A production-grade data pipeline that ingests NYC 311 service request data daily, processes it using the Medallion Architecture (Bronze → Silver → Gold), applies forecasting and anomaly detection, and visualizes insights via a Streamlit dashboard.

---

## 💼 Business Case: Why Anomaly Detection?

NYC’s 311 service provides a critical channel for citizens to report non-emergency issues ranging from noise complaints to infrastructure failures. However, due to the large volume and wide variety of incoming requests, sudden spikes or anomalies often go undetected or are manually flagged too late.

**Gaps in the current process:**
- No automated way to detect abnormal increases in specific complaint types or boroughs.
- Operational teams are reactive rather than proactive in responding to surges.
- Delays in detecting anomalies can lead to service degradation, inefficiencies, and missed resource allocation.

**This project solves:**
- Timely detection of unusual spikes in 311 requests using model-based thresholds.
- Predictive insights to forecast service demand and enable better planning.
- A transparent and reproducible ML system with full lineage, auditability, and visualization.

---

## 🚀 Features

- **Daily Data Ingestion** from NYC Open Data API
- **Bronze → Silver → Gold** architecture using Delta Lake
- **Forecasting** of future service volumes with Prophet + Optuna tuning
- **Anomaly Detection** using Prophet model thresholds
- **Experiment Tracking** with MLflow
- **Streamlit Dashboard** for stakeholder insights
- **CI/CD** with GitHub Actions
- **Fully containerized** and deployable

---

## 🏗 Architecture Diagram

