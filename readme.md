# 🏥 Healthcare Patient Analytics — Power BI

> A business-focused healthcare analytics project that transforms patient-level data into actionable insights for hospital stakeholders.

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![Python](https://img.shields.io/badge/Python-EDA%20%26%20Cleaning-3776AB?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analysis-4479A1?logo=mysql&logoColor=white)
![Patients](https://img.shields.io/badge/Patients-10K-0F766E)

---

## 📌 Project Overview

This project analyzes **10,000 unique patient records** to understand:

- Patient volume and demand
- Department-level workload
- Patient demographics
- Geographic distribution
- Length of Stay (LOS)
- Treatment-cost patterns
- Payment status
- Operational trends

The project follows an end-to-end analytics workflow:

**Raw Data → Python → Data Cleaning → SQL → Power BI → Business Insights**

---

## 🎯 Business Objective

The objective is to provide hospital stakeholders with a clear view of patient and operational performance.

The analysis focuses on three key stakeholder questions:

1. **Which departments are handling the highest number of patients?**
2. **Are patients staying in the hospital longer than expected?**
3. **Are there operational trends or patterns that suggest opportunities for improvement?**

---

## 📷 Dashboard Preview


# 📊 Dashboard

The Power BI dashboard provides an interactive view of:

- Total Patient Count
- Patient Volume by Department
- Monthly Patient Volume
- Patient Demographics
- Age Group Distribution
- Geographic Distribution
- Average Length of Stay
- Treatment Cost
- Payment Status
- Operational Key Findings

### Dashboard Features

| Feature | Purpose |
|---|---|
| Total Patients KPI | Shows overall patient volume |
| Average LOS KPI | Shows average patient stay |
| Highest Volume Department | Identifies department with highest workload |
| Max LOS KPI | Shows maximum observed stay |
| Patient Count by Department | Compares departmental workload |
| Monthly Patient Volume | Identifies demand patterns |
| Average LOS by Department | Compares length of stay |
| Age Group Analysis | Understands patient demographics |
| City Analysis | Identifies geographic concentration |
| Treatment Cost by Department | Identifies major cost drivers |
| Treatment Cost by Diagnosis | Identifies high-cost diagnoses |
| Payment Status | Shows paid, pending and insurance cases |
| Key Findings | Converts charts into business insights |

---

# 🔎 Key Findings

Based on the cleaned dataset:

### Patient & Operations

- **Dermatology** handled the highest patient volume with **1,318 patients**.
- **March** recorded the highest monthly patient volume with **1,017 patients**.
- **August** recorded the lowest monthly patient volume with **676 patients**.
- Overall average **Length of Stay was approximately 8.02 days**.
- **Oncology** had the highest average Length of Stay at approximately **8.20 days**.
- The monthly variation in patient volume suggests potential opportunities to review **staffing, bed capacity and resource allocation**.

**Dashboard Screenshot**

<img width="1155" height="720" alt="image" src="https://github.com/user-attachments/assets/eee8b47b-5d36-4619-a7ab-39da8df8401f" />

---

### Demographics

- **Adults** were the largest age group with **4,641 patients (46.41%)**.
- Geographic analysis identified **Jaipur** as the city with the highest patient volume at **992 patients**.

**Dashboard Screenshot**
<img width="1158" height="688" alt="Screenshot 2026-09-04 200708" src="https://github.com/user-attachments/assets/0798c1ad-01da-4822-9ba7-bad3cafc3b80" />
--
---

# 🏥 Hospital Operations Analysis

### 1. Department Workload

Department-level analysis identifies which departments are handling the greatest number of patients.

**Key insight:**

> Dermatology has the highest patient volume with 1,318 patients.

This can help hospital management understand where demand is concentrated.


---

### 2. Length of Stay

The dashboard analyzes Average Length of Stay by department.

**Key insight:**

> Oncology has the highest observed average LOS at approximately 8.20 days.

However, the dataset does not contain an official:

- Expected LOS
- Target LOS
- Department LOS benchmark
- Diagnosis-specific LOS benchmark

Therefore, the analysis **cannot conclusively determine whether patients are staying longer than expected**.

A future version should compare:

**Actual LOS vs Expected LOS**

to identify departments exceeding operational targets.

---

### 3. Operational Trends

Monthly patient volume shows considerable variation.

- **March:** 1,017 patients
- **August:** 676 patients

The decline from July to August represents a substantial change in patient volume.

This may warrant investigation into:

- Seasonal demand
- Staffing allocation
- Bed capacity
- Appointment scheduling
- Resource utilization

However, the dataset alone does not establish the cause of the variation.

> **Dashboard Screenshot**
<img width="1157" height="682" alt="image" src="https://github.com/user-attachments/assets/65ca26e8-1936-4a16-b749-17cc25639379" />


---
---

# 💰 Financial / Cost Analysis

The dataset contains a **TreatmentCost** field.

TreatmentCost is analyzed as a **cost metric**, not automatically as revenue.

### Cost Analysis Includes

- Total Treatment Cost
- Average Treatment Cost
- Treatment Cost by Department
- Treatment Cost by Diagnosis
- Monthly Treatment Cost
- Payment Status

### Major Cost Drivers

- **Oncology** has the highest total treatment cost at approximately **₹139.76M**.
- **Typhoid** has the highest treatment cost by diagnosis at approximately **₹104.52M**.
- February records the highest average monthly treatment cost at approximately **₹111K**.

### Revenue Limitation

The dataset does not contain a dedicated:

- Revenue field
- Actual collection field
- Reimbursement field
- Profit field
- Operating expense field

Therefore, this project does **not** claim to calculate hospital revenue or profit.

Instead, the financial analysis focuses on **treatment costs and payment status**.

> **Dashboard Screenshot**
<img width="1161" height="671" alt="Screenshot 2026-09-04 201157" src="https://github.com/user-attachments/assets/db385a63-4191-49bd-8887-ad6317ad0ffb" />

---

# 🧹 Data Preparation

Python and Pandas were used for data cleaning and exploratory analysis.

The workflow included:

1. Loading the healthcare dataset.
2. Inspecting the dataset structure.
3. Checking missing values.
4. Checking duplicate records.
5. Handling missing categorical values.
6. Handling missing numerical values.
7. Creating age groups.
8. Identifying duplicate PatientIDs.
9. Removing duplicate patient records.
10. Exporting the cleaned dataset.
11. Loading the cleaned data into MySQL.

### Duplicate Handling

The raw dataset contained:

**10,200 rows**

but only:

**10,000 unique PatientIDs**

Duplicate PatientID records were identified and removed for the final patient-level analysis.

The cleaned dataset therefore contains:

**10,000 patient records.**

---

# 🐍 Python Analysis

Python was used for:

- Data cleaning
- Exploratory Data Analysis
- Missing-value analysis
- Duplicate detection
- Data transformation
- Feature creation

Main libraries:

```text
pandas
numpy
matplotlib
sqlalchemy
pymysql
