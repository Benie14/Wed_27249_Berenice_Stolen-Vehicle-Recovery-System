1️⃣ Data Integrity Test results

all tables have data:

OWNER_COUNT
-----------
        100

VEHICLE_COUNT
-------------
          200

THEFT_REPORT_COUNT
------------------
               150

ALERT_COUNT
-----------
        150

GPS_TRACKER_COUNT
-----------------
              200

LOCATION_LOG_COUNT
------------------
               501

Check NOT NULL and other constraints Test results:

-- Vehicles with missing year or model
SQL> SELECT * FROM Vehicle WHERE Vehicle_Year IS NULL OR Model IS NULL;

no rows selected

-- Alerts with invalid resolved values
SQL> SELECT * FROM Alert WHERE Resolved NOT IN ('Y','N');

no rows selected

-- Theft reports with invalid status
SQL> SELECT * FROM Theft_Report WHERE Status NOT IN ('Pending','Recovered','Rejected');

no rows selected

Check foreign key relationships Test results: 

-- Alerts linked to non-existing theft reports
SQL> SELECT * 
  2  FROM Alert a
  3  LEFT JOIN Theft_Report t ON a.Report_ID = t.Report_ID
  4  WHERE t.Report_ID IS NULL;

no rows selected

-- Vehicles linked to non-existing owners
SQL> SELECT *
  2  FROM Vehicle v
  3  LEFT JOIN Owner o ON v.Owner_ID = o.Owner_ID
  4  WHERE o.Owner_ID IS NULL;

no rows selected

Subqueries Test results:

-- Owners without vehicles
SQL> SELECT *
  2  FROM Owner
  3  WHERE Owner_ID NOT IN (SELECT DISTINCT Owner_ID FROM Vehicle);

no rows selected

-- Vehicles without alerts
SQL> SELECT *
  2  FROM Vehicle
  3  WHERE Vehicle_ID NOT IN (SELECT DISTINCT Vehicle_ID FROM Alert);

VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       151 PLATE00151 Camry
                             51 Active                       2022

       152 PLATE00152 Focus
                             52 Active                       2015

       153 PLATE00153 Civic
                             53 Active                       2016


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       154 PLATE00154 Camry
                             54 Active                       2017

       155 PLATE00155 Focus
                             55 Active                       2018

       156 PLATE00156 Civic
                             56 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       157 PLATE00157 Camry
                             57 Active                       2020

       158 PLATE00158 Focus
                             58 Active                       2021

       159 PLATE00159 Civic
                             59 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       160 PLATE00160 Camry
                             60 Active                       2015

       161 PLATE00161 Focus
                             61 Active                       2016

       162 PLATE00162 Civic
                             62 Active                       2017


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       163 PLATE00163 Camry
                             63 Active                       2018

       164 PLATE00164 Focus
                             64 Active                       2019

       165 PLATE00165 Civic
                             65 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       166 PLATE00166 Camry
                             66 Active                       2021

       167 PLATE00167 Focus
                             67 Active                       2022

       168 PLATE00168 Civic
                             68 Active                       2015


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       169 PLATE00169 Camry
                             69 Active                       2016

       170 PLATE00170 Focus
                             70 Active                       2017

       171 PLATE00171 Civic
                             71 Active                       2018


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       172 PLATE00172 Camry
                             72 Active                       2019

       173 PLATE00173 Focus
                             73 Active                       2020

       174 PLATE00174 Civic
                             74 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       175 PLATE00175 Camry
                             75 Active                       2022

       176 PLATE00176 Focus
                             76 Active                       2015

       177 PLATE00177 Civic
                             77 Active                       2016


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       178 PLATE00178 Camry
                             78 Active                       2017

       179 PLATE00179 Focus
                             79 Active                       2018

       180 PLATE00180 Civic
                             80 Active                       2019


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       181 PLATE00181 Camry
                             81 Active                       2020

       182 PLATE00182 Focus
                             82 Active                       2021

       183 PLATE00183 Civic
                             83 Active                       2022


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       184 PLATE00184 Camry
                             84 Active                       2015

       185 PLATE00185 Focus
                             85 Active                       2016

       186 PLATE00186 Civic
                             86 Active                       2017


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       187 PLATE00187 Camry
                             87 Active                       2018

       188 PLATE00188 Focus
                             88 Active                       2019

       189 PLATE00189 Civic
                             89 Active                       2020


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       190 PLATE00190 Camry
                             90 Active                       2021

       191 PLATE00191 Focus
                             91 Active                       2022

       192 PLATE00192 Civic
                             92 Active                       2015


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       193 PLATE00193 Camry
                             93 Active                       2016

       194 PLATE00194 Focus
                             94 Active                       2017

       195 PLATE00195 Civic
                             95 Active                       2018


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       196 PLATE00196 Camry
                             96 Active                       2019

       197 PLATE00197 Focus
                             97 Active                       2020

       198 PLATE00198 Civic
                             98 Active                       2021


VEHICLE_ID LICENSE_PL MODEL
---------- ---------- --------------------------------------------------
COLOR                  OWNER_ID STATUS               VEHICLE_YEAR
-------------------- ---------- -------------------- ------------
       199 PLATE00199 Camry
                             99 Active                       2022

       200 PLATE00200 Focus
                            100 Active                       2015


50 rows selected.

