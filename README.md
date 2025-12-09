# Wed_27249_Berenice_Stolen-Vehicle-Recovery-System
Stolen Vehicle Recovery System
1. Project Idea
Vehicle theft is a significant public safety issue causing financial loss and distress for owners while challenging law enforcement agencies. Many stolen vehicles remain unrecovered due to inefficient reporting and fragmented tracking systems.
The Stolen Vehicle Recovery and Alert System is a PL/SQL-based solution designed for professional use by law enforcement. The system allows:
•	Vehicle owners to report stolen vehicles with details like registration number, VIN, make, model, color, and theft location.
•	Law enforcement to record recovered vehicles and automatically match them with stolen reports.
•	Historical tracking for analysis of theft patterns, hotspots, and repeat offenders.
This system is scalable, secure, and auditable, supporting real-world operations and improving recovery efficiency.
2. Database Schema
The system uses a comprehensive schema with 12 tables:
Core Tables
1.	OWNER – Owner_ID, Name, Contact, Address, Email
2.	VEHICLE – Vehicle_ID, Owner_ID, VIN, Registration_Number, Make, Model, Color, Year
3.	STOLEN_REPORT – Stolen_ID, Vehicle_ID, Date_Reported, Location_Stolen, Description, Priority, Status
4.	RECOVERY_REPORT – Recovery_ID, Vehicle_ID, Date_Recovered, Location_Recovered, Recovered_By, Status
5.	MATCH_RESULT – Match_ID, Stolen_ID, Recovery_ID, Match_Score, Match_Date, Verified
Supporting Tables
6.	LAW_ENFORCEMENT – Officer_ID, Name, Department, Role, Contact
7.	TOW_LOT – Lot_ID, Name, Location, Capacity, Current_Vehicles
8.	VEHICLE_INTAKE – Intake_ID, Recovery_ID, Lot_ID, Intake_Date, Release_Status
9.	LOCATION_HISTORY – History_ID, Vehicle_ID, Location, Event_Type, Timestamp
10.	THEFT_PATTERN_ANALYSIS – Pattern_ID, Location, Vehicle_Type, Number_Of_Thefts, Hotspot_Flag
11.	OFFICER_ACTIVITY_LOG – Log_ID, Officer_ID, Action_Type, Action_Date, Related_Case
This schema supports operational management, administrative workflows, and analytical reporting for law enforcement.
3. Innovation and Improvements
This system introduces several key innovations over manual or traditional tracking systems:
1.	Automated Recovery Matching – PL/SQL triggers automatically match recovered vehicles with active stolen reports, reducing manual verification.
2.	Multi-Level Verification – Matching uses VIN, registration number, make/model, color, and location proximity for accuracy.
3.	Data-Driven Security Insights – Historical tracking and pattern analysis help identify theft hotspots and recurring offenders.
4.	Professional-Grade Design – The system includes administrative controls, audit logs, and scalable architecture, making it suitable for real law enforcement deployment.
5.	Scalability for Future Integration – Can integrate with GPS tracking, mobile applications, or national vehicle databases.
Outcome:
The system provides a robust, professional solution for stolen vehicle management, enhancing public security, improving recovery efficiency, and offering analytical insights for law enforcement. It demonstrates advanced PL/SQL techniques including triggers, procedures, functions, collections, exception handling, and data analytics.

