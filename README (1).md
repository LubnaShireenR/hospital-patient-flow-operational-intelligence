# Hospital Patient Flow & Operational Intelligence — EDA

## Project Overview

This project analyzes hospital patient-flow operations to identify operational bottlenecks, service-processing delays, and opportunities to improve overall hospital efficiency.

The analysis focuses on patient journeys across:

- Patient appointments
- Prescription processing
- Laboratory processing
- Imaging
- Pharmacy

The project uses Python-based exploratory data analysis (EDA) to evaluate processing times, patient-flow patterns, departmental workload, and operational priorities.

## Dataset

The dataset contains **61,895 hospital patient-flow records**.

The analysis evaluates processing activity and patient journeys across multiple operational stages, with particular attention to:

- Processing workload
- Average processing time
- Patient-flow delays
- Department-level operational burden
- Data-quality concerns
- Potential scheduling and capacity constraints

## Tools & Technologies

- **Python**
- **Pandas**
- **NumPy**
- **Matplotlib**
- **Jupyter Notebook**
- **SQL / MySQL**
- **Power BI** (for business intelligence and visualization)

## Analysis Workflow

1. Data exploration and understanding
2. Data-quality investigation
3. Data cleaning and validation
4. Department-level processing analysis
5. Patient-flow analysis
6. Bottleneck identification
7. Visualization of operational patterns
8. Business recommendations
9. Final validated analysis

## Key Findings

### 1. Laboratory is the primary operational bottleneck

Laboratory operations have the highest overall processing workload.

- Approximately **34,955.72 processing hours**
- Highest average processing time: **167.29 minutes**

This makes Laboratory the main area for operational improvement.

### 2. Lab-related patient flows experience the longest delays

The analysis identified the following high-average processing patient flows:

| Patient Flow | Average Processing Time |
|---|---:|
| Appointment → Prescription → Lab + Pharmacy | **207.86 minutes** |
| Appointment → Prescription → Lab + Imaging | **145.31 minutes** |
| Appointment → Prescription → Lab | **132.90 minutes** |
| Appointment → Prescription → Imaging | **13.15 minutes** |
| Appointment → Prescription → Pharmacy | **9.86 minutes** |

These results indicate that patient journeys involving Laboratory processing require particular attention.

### 3. Prescription requires a separate data-quality investigation

The analysis identified:

- Duplicate records
- Extreme prescription delays

These issues should be investigated separately before using extreme prescription-delay values for operational decisions.

### 4. Imaging requires targeted investigation

Imaging has a relatively low typical processing time, but the difference between its mean and median suggests that some cases experience unusually long delays.

Potential areas for investigation include:

- Scheduling
- Time-specific demand
- Capacity constraints

## Operational Priorities

| Priority | Area | Recommended Action |
|---:|---|---|
| 1 | Laboratory | Optimize workflow, capacity and turnaround time |
| 2 | Prescription | Investigate duplicate records and extreme delays |
| 3 | Lab-related flows | Reduce delays in high-volume Lab patient journeys |
| 4 | Imaging | Investigate time-specific scheduling and capacity issues |

## Final Business Insight

**Laboratory operations provide the greatest opportunity for improving overall hospital efficiency.**

The primary operational focus should therefore be on:

1. Reducing Laboratory turnaround time
2. Improving Lab-related patient journeys
3. Optimizing Laboratory workflow and capacity
4. Investigating prescription data-quality issues separately
5. Reviewing Imaging for potential scheduling and capacity constraints

## Visual Analysis

The notebook includes visual analysis of hospital operational patterns, including:

- Appointment distribution
- Mean vs. median processing time
- Patient-flow bottlenecks
- Department-level operational workload

## Project Structure

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
```

## Conclusion

This project demonstrates how exploratory data analysis can be used to translate hospital operational data into actionable business insights.

The analysis highlights **Laboratory operations as the highest-priority improvement area**, while also identifying prescription data-quality problems and potential Imaging scheduling/capacity issues that require targeted investigation.

---

### Project Focus

**Hospital Operations • Patient Flow • Operational Bottlenecks • Service Utilization • Processing Times • Business Intelligence • Data Analytics**
