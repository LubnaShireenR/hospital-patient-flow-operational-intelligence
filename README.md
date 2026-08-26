# Hospital Patient Flow & Operational Intelligence — EDA

## Project Overview

This project analyzes hospital patient-flow operations to identify operational bottlenecks, evaluate department-level processing performance, detect data-quality issues, and identify opportunities to improve overall hospital efficiency.

The analysis covers patient appointments, prescription processing, laboratory processing, imaging, and pharmacy operations.

## Dataset

- **Total patient-flow records analyzed:** 61,895
- **Operational areas:** Appointments, Prescription, Laboratory, Imaging, Pharmacy
- **Primary measures:** Processing times, patient journeys, department workload, and patient-flow performance

The final findings are based on the corrected and deduplicated patient-flow analysis.

## Tools & Technologies

- Python
- Pandas
- Matplotlib
- Jupyter Notebook
- Exploratory Data Analysis (EDA)
- Data cleaning and validation
- Operational KPI analysis

## Key Findings

### 1. Laboratory is the primary operational bottleneck

Laboratory has the highest overall processing workload and the highest average processing time among the departments analyzed.

| Department | Records | Mean Processing Time | Median Processing Time | Total Processing Hours |
|---|---:|---:|---:|---:|
| Laboratory | 12,537 | 167.29 min | 119.00 min | 34,955.72 |
| Prescription | 50,103 | 3.02 min | 0.00 min | 2,519.98 |
| Imaging | 5,461 | 11.12 min | 3.00 min | 1,012.32 |
| Pharmacy | 302 | 5.36 min | 1.00 min | 27.00 |

Laboratory therefore represents the strongest opportunity for operational improvement.

### 2. Lab-related patient flows experience the longest delays

The highest corrected average patient-flow times are:

| Patient Flow | Records | Average Total Processing Time |
|---|---:|---:|
| Appointment → Prescription → Lab + Pharmacy | 14 | 207.86 min |
| Appointment → Prescription → Lab + Imaging | 1,545 | 145.31 min |
| Appointment → Prescription → Lab | 4,839 | 132.90 min |

The Lab + Pharmacy flow has the highest average delay, but its small sample size means it should be interpreted cautiously.

### 3. Prescription data requires a separate data-quality investigation

The original prescription data contained substantial duplication:

- Original prescription records: **61,891**
- Unique prescription events after deduplication: **50,103**
- Records removed: **11,788**

Prescription processing has a low typical processing time, but duplicate records and extreme delays create data-quality and operational concerns.

The analysis identified **6,217 records beyond the IQR outlier boundary**, including **225 records above 60 minutes** and **15 records above 240 minutes**.

### 4. Imaging requires targeted investigation

Imaging has:

- **Mean processing time:** 11.12 minutes
- **Median processing time:** 3 minutes

The difference between the mean and median indicates that some Imaging transactions experience substantially longer delays. These may be associated with specific time periods, scheduling patterns, capacity constraints, or operational exceptions.

## Operational Priorities

| Priority | Area | Recommended Action |
|---|---|---|
| 1 | Laboratory | Optimize workflow, capacity and turnaround time |
| 2 | Prescription | Investigate duplicate records and extreme delays |
| 3 | Lab-related flows | Reduce delays in high-volume Lab patient journeys |
| 4 | Imaging | Investigate time-specific scheduling and capacity issues |

## Recommended Actions

### Priority 1 — Optimize Laboratory Workflow

Focus on:

- Laboratory queue and turnaround time
- Staffing during high-demand periods
- Sample collection and handling
- Equipment availability
- Result processing and release
- Handoffs between departments

Reducing Laboratory turnaround time is expected to provide the greatest operational impact based on the analysis.

### Priority 2 — Investigate Prescription Data Quality

Review duplicate prescription records and determine why duplicate events occur.

Extreme delays should also be investigated for:

- Timestamp accuracy
- Data-entry issues
- System-generated duplicate events
- Delayed order completion
- Genuine operational delays

### Priority 3 — Improve Lab-related Patient Journeys

Prioritize high-volume patient flows involving Laboratory, particularly:

- Appointment → Prescription → Lab
- Appointment → Prescription → Lab + Imaging

The Lab + Pharmacy flow should also be reviewed, while considering its small sample size.

### Priority 4 — Review Imaging Scheduling and Capacity

Investigate whether long Imaging delays are concentrated around:

- Specific hours
- Specific days
- High-volume periods
- Equipment availability
- Staffing levels
- Appointment scheduling patterns

## Visual Analysis

The analysis includes visualizations for:

- Appointment distribution
- Department-level mean vs. median processing time
- Patient-flow bottlenecks
- Corrected department performance
- Corrected patient-flow bottlenecks

## Business Conclusion

**Laboratory operations provide the greatest opportunity for improving overall hospital efficiency.**

The primary operational focus should therefore be on reducing Laboratory turnaround time and improving Lab-related patient journeys.

Prescription data-quality issues and extreme delays should be investigated separately, while Imaging should be reviewed for potential scheduling and capacity constraints.

## Project Structure

```text
Hospital_Operations_Project/
│
├── Hospital_Operations_EDA.ipynb
├── Hospital_Operations_EDA.html
└── README.md
```

## Final Note

Earlier exploratory calculations are retained in the analysis for transparency. The **corrected and deduplicated results** should be used for interpretation, reporting, and business decision-making.
