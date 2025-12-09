# Stolen Vehicle Recovery \& Alert System — README

## Student Information

**Name**: Berenice Niyokuri
\*\*Student ID: 27249

1. Project Overview

This project implements a simplified Stolen Vehicle Recovery and Alert System designed to help police officers, system administrators, and city management monitor alert activity in real time.
It includes a fully designed database, business rules, automated auditing, stored procedures, BI reports, dashboards, and administrative controls.
The goal is to provide fast, reliable, and traceable handling of stolen vehicle alerts while producing useful insights for decision-making.

2. Problem Statement

Vehicle theft continues to be a growing public-safety challenge, and manual monitoring often leads to delays, missing records, and inconsistent enforcement.
This system solves that problem by automating alerts, enforcing rules through triggers, logging every allowed or denied attempt, and generating analytics that support operational decisions.

3. Key Objectives

Establish a structured relational database for vehicles, alerts, and users.

Enforce rules using triggers (holiday/weekend restrictions, duplicate alerts, etc.).

Track all activity through an audit log with both allowed and denied events.

Implement stored procedures for controlled updates.

Provide BI insights through KPIs, analytical SQL queries, and dashboard mockups.

Support police operations with prioritized and data-driven reporting.

4. Quick Start Instructions
   Prerequisites

Oracle Database XE 21c (or your pluggable database)

SQL Developer

Valid database user with CONNECT + RESOURCE privileges

Setup Steps
Step 1 — Clone the Project
git clone https://github.com/your-username/stolen-vehicle-recovery-system.git
cd stolen-vehicle-recovery-system

Step 2 — Connect to Your PDB
sqlplus Wed\_27249\_berenice\_stolenvehiclerecovery\_db

Step 3 — Run the Schema Scripts

Execute in this order inside SQL Developer or SQL\*Plus:

01\_create\_tables.sql

02\_instert\_data.sql

03\_validation\_queries.sql

04\_triggers.sql

05\_procedures.sql

06\_functions.sql

07\_cursors and bulk.sql

08\_packages.sql

Step 4 — Test an Alert
INSERT INTO Alert(Vehicle\_ID, Alert\_Type, Alert\_Time)
VALUES (101, 'STOLEN', SYSDATE);



Check the audit log:

SELECT \* FROM alert\_audit ORDER BY audit\_time DESC;

5. Documentation Links

All documentation is included in the repository:

Project overview.md

Readme.md

Assumptions.md
Data dictionary.md
README\_DB.md
BI Requirement.md
Dashboard.md
KPI Definitions and queries.md

