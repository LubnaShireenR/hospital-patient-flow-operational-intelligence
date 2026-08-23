USE hospital_operations;

-- 1. Overall hospital operations
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT patient_id) AS unique_patients,
    COUNT(DISTINCT appointment_id) AS unique_appointments,
    COUNT(DISTINCT prescription_doctor_id) AS unique_doctors,
    COUNT(DISTINCT lab_id) AS laboratory_records,
    COUNT(DISTINCT imaging_request_id) AS imaging_records,
    COUNT(DISTINCT pharmacy_sale_line_id) AS pharmacy_records;


-- 2. Operational date coverage
SELECT
    MIN(appointment_start_datetime) AS first_appointment,
    MAX(appointment_start_datetime) AS last_appointment
FROM hospital_opd;


-- 3. Patient-flow distribution
SELECT
    flow_name,
    COUNT(*) AS records
FROM hospital_opd
GROUP BY flow_name
ORDER BY records DESC;


-- 4. Missing flow classification
SELECT
    COUNT(*) AS missing_flow_records,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hospital_opd),
        2
    ) AS missing_flow_percentage
FROM hospital_opd
WHERE flow_name IS NULL;
