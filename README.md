# Hospital Patient Flow & Operational Intelligence — EDA

## 📌 Project Overview

This project analyzes hospital patient-flow operations to identify **operational bottlenecks, processing delays, department-level workload, data-quality issues, and opportunities to improve hospital efficiency**.

The analysis focuses on patient journeys across:

- Patient Appointments
- Prescription Processing
- Laboratory Processing
- Imaging
- Pharmacy

The project uses **Python, SQL, and Power BI-oriented business intelligence concepts** to transform hospital operational data into actionable insights.

---

## 🎯 Objectives

The main objectives of this project are to:

- Analyze hospital patient-flow patterns
- Identify operational bottlenecks
- Compare processing times across departments
- Identify high-delay patient journeys
- Investigate potential data-quality issues
- Evaluate department-level workload
- Identify opportunities for improving operational efficiency
- Translate analytical findings into business recommendations

---

## 📊 Dataset

The dataset contains **61,895 hospital patient-flow records** covering different stages of the hospital operational process.

The analysis evaluates:

- Patient appointments
- Prescription processing
- Laboratory processing
- Imaging
- Pharmacy
- Processing times
- Patient-flow combinations
- Department-level workload

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data analysis |
| Pandas | Data cleaning & manipulation |
| NumPy | Numerical analysis |
| Matplotlib | Data visualization |
| Jupyter Notebook | Exploratory Data Analysis |
| SQL / MySQL | Database analysis |
| Power BI | Business intelligence & visualization |

---

## 🔍 Analysis Workflow

The project follows the following analytical workflow:

1. Data exploration
2. Data-quality investigation
3. Data cleaning and validation
4. Department-level analysis
5. Processing-time analysis
6. Patient-flow analysis
7. Bottleneck identification
8. Data visualization
9. Operational prioritization
10. Business recommendations

---

# 📈 Key Findings

## 1. Laboratory is the Primary Operational Bottleneck

Laboratory operations have the **highest overall processing workload**.

- Approximately **34,955.72 processing hours**
- Highest average processing time: **167.29 minutes**

This makes the Laboratory the primary area for operational improvement.

---

## 2. Lab-Related Patient Flows Experience the Longest Delays

The analysis identified the following patient flows with the highest average processing times:

| Patient Flow | Average Processing Time |
|---|---:|
| Appointment → Prescription → Lab + Pharmacy | **207.86 minutes** |
| Appointment → Prescription → Lab + Imaging | **145.31 minutes** |
| Appointment → Prescription → Lab | **132.90 minutes** |
| Appointment → Prescription → Imaging | **13.15 minutes** |
| Appointment → Prescription → Pharmacy | **9.86 minutes** |

The results indicate that patient journeys involving **Laboratory processing** experience the greatest delays.

---

## 3. Prescription Requires a Separate Data-Quality Investigation

The analysis identified:

- Duplicate records
- Extreme prescription delays

These issues should be investigated separately before extreme prescription-delay values are used for operational decision-making.

---

## 4. Imaging Requires Targeted Investigation

Imaging has a relatively low typical processing time, but the difference between its **mean and median processing time** suggests that some cases experience unusually long delays.

Potential areas for investigation include:

- Scheduling
- Time-specific demand
- Capacity constraints

---

# 🚨 Operational Priorities

| Priority | Area | Recommended Action |
|---:|---|---|
| **1** | Laboratory | Optimize workflow, capacity and turnaround time |
| **2** | Prescription | Investigate duplicate records and extreme delays |
| **3** | Lab-related flows | Reduce delays in high-volume Lab patient journeys |
| **4** | Imaging | Investigate time-specific scheduling and capacity issues |

---

# 💡 Final Business Insight

**Laboratory operations provide the greatest opportunity for improving overall hospital efficiency.**

The primary operational focus should therefore be on:

- Reducing Laboratory turnaround time
- Improving Lab-related patient journeys
- Optimizing Laboratory workflow and capacity
- Investigating prescription data-quality issues separately
- Reviewing Imaging for potential scheduling and capacity constraints

---

# 📊 Visualizations

The exploratory analysis includes visualizations covering:

- Appointment patterns
- Processing-time distributions
- Mean vs. median processing times
- Department-level workload
- Patient-flow bottlenecks
- Operational processing patterns

---

# 📁 Project Structure

```text
hospital-patient-flow-operational-intelligence/
│
├── Hospital_Operations_EDA.ipynb
├── Hospital_Operations_EDA.html
├── README.md
├── LICENSE
│
└── sql/
    └── sql/
        └── 02_hospital_overview.sql
