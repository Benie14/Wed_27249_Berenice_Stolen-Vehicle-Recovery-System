# KPI Definitions

This file documents the Key Performance Indicators used in the BI dashboards.

## 1. Total Alerts per Day / Week
**Description:** Number of alerts generated in a given period.  
**Formula:**  
```sql
SELECT COUNT(*) FROM Alert WHERE TRUNC(Alert_Date) = TRUNC(SYSDATE);]

2. Alerts Denied (Weekdays / Holidays)

Description: Total DML operations prevented by the trigger.
Source: alert_audit table entries with action_type = 'DENIED'.
Formula:

SELECT COUNT(*) 
FROM alert_audit 
WHERE action_type = 'DENIED';

3. Average Response Time

Description: Avg. time between alert creation and vehicle status update.
Formula:

SELECT AVG(resolved_date - alert_date) * 24 AS avg_hours
FROM Alert
WHERE resolved_date IS NOT NULL;

4. Percentage of Resolved Alerts

Formula:

(# resolved alerts / total alerts) * 100


SQL:

SELECT 
  (COUNT(resolved_date) / COUNT(*)) * 100 AS pct_resolved
FROM Alert;

5. Vehicles with Multiple Alerts

Description: Vehicles generating 2+ alerts (potential high-risk).
Formula:

SELECT vehicle_id, COUNT(*)
FROM Alert
GROUP BY vehicle_id
HAVING COUNT(*) > 1;

6. Peak Alert Hours

Formula:

SELECT EXTRACT(HOUR FROM alert_date), COUNT(*)
FROM Alert
GROUP BY EXTRACT(HOUR FROM alert_date);


