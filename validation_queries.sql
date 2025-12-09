1️⃣ Data Integrity Verification

Check that all tables have data:

SELECT COUNT(*) AS Owner_Count FROM Owner;
SELECT COUNT(*) AS Vehicle_Count FROM Vehicle;
SELECT COUNT(*) AS Theft_Report_Count FROM Theft_Report;
SELECT COUNT(*) AS Alert_Count FROM Alert;
SELECT COUNT(*) AS GPS_Tracker_Count FROM GPS_Tracker;
SELECT COUNT(*) AS Location_Log_Count FROM Location_Log;

Check NOT NULL and other constraints:

-- Vehicles with missing year or model
SELECT * FROM Vehicle WHERE Vehicle_Year IS NULL OR Model IS NULL;

-- Alerts with invalid resolved values
SELECT * FROM Alert WHERE Resolved NOT IN ('Y','N');

-- Theft reports with invalid status
SELECT * FROM Theft_Report WHERE Status NOT IN ('Pending','Recovered','Rejected');

Check foreign key relationships:

-- Alerts linked to non-existing theft reports
SELECT * 
FROM Alert a
LEFT JOIN Theft_Report t ON a.Report_ID = t.Report_ID
WHERE t.Report_ID IS NULL;

-- Vehicles linked to non-existing owners
SELECT * 
FROM Vehicle v
LEFT JOIN Owner o ON v.Owner_ID = o.Owner_ID
WHERE o.Owner_ID IS NULL;

Subqueries
-- Owners without vehicles
SELECT *
FROM Owner
WHERE Owner_ID NOT IN (SELECT DISTINCT Owner_ID FROM Vehicle);

-- Vehicles without alerts
SELECT *
FROM Vehicle
WHERE Vehicle_ID NOT IN (SELECT DISTINCT Vehicle_ID FROM Alert);

2️⃣ Testing Queries

Basic retrieval:

SELECT * FROM Owner WHERE ROWNUM <= 5;
SELECT * FROM Vehicle WHERE Vehicle_Year > 2018;

Joins (multi-table queries):

-- Vehicles with owner names
SELECT v.Vehicle_ID, v.Model, o.Full_Name
FROM Vehicle v
JOIN Owner o ON v.Owner_ID = o.Owner_ID;

-- Alerts and related theft report status
SELECT a.Alert_ID, a.Alert_Type, t.Status AS Report_Status
FROM Alert a
JOIN Theft_Report t ON a.Report_ID = t.Report_ID;

Aggregations (Gouped by):
-- Number of vehicles per owner
SELECT Owner_ID, COUNT(*) AS Vehicle_Count
FROM Vehicle
GROUP BY Owner_ID;

-- Number of alerts by type
SELECT Alert_Type, COUNT(*) AS Num_Alerts
FROM Alert
GROUP BY Alert_Type;

