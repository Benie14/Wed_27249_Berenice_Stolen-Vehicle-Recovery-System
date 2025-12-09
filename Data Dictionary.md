# Data Dictionary – Stolen Vehicle Recovery System

## Owner
| Column Name | Data Type | PK/FK | Constraints | Description |
|------------|-----------|------|------------|-------------|
| Owner_ID   | INT       | PK   | NOT NULL   | Unique identifier for each owner |
| Name       | VARCHAR(100) |   | NOT NULL   | Full name of the owner |
| Contact    | VARCHAR(20)  |   | NOT NULL   | Phone number of the owner |
| Email      | VARCHAR(100) |   |            | Email address of the owner |

## Vehicle
| Column Name  | Data Type | PK/FK | Constraints | Description |
|-------------|-----------|------|------------|-------------|
| Vehicle_ID  | INT       | PK   | NOT NULL   | Unique identifier for each vehicle |
| License_Plate | VARCHAR(15) |   | NOT NULL, UNIQUE | Vehicle registration number |
| Model       | VARCHAR(50)  |   | NOT NULL   | Vehicle model |
| Owner_ID    | INT       | FK   | NOT NULL   | References Owner(Owner_ID) |
| Tracker_ID  | INT       | FK   |            | References GPS_Tracker(Tracker_ID) |

## GPS_Tracker
| Column Name   | Data Type | PK/FK | Constraints | Description |
|---------------|-----------|------|------------|-------------|
| Tracker_ID    | INT       | PK   | NOT NULL   | Unique tracker ID |
| Device_Serial | VARCHAR(50) |     | NOT NULL   | Tracker device serial number |
| Status        | VARCHAR(20) |     | NOT NULL   | Tracker status (“Active”, “Inactive”) |
| Vehicle_ID    | INT       | FK   | NOT NULL   | References Vehicle(Vehicle_ID) |

## Theft_Report
| Column Name   | Data Type | PK/FK | Constraints | Description |
|---------------|-----------|------|------------|-------------|
| Report_ID     | INT       | PK   | NOT NULL   | Unique report ID |
| Vehicle_ID    | INT       | FK   | NOT NULL   | References Vehicle(Vehicle_ID) |
| Date_Reported | DATE      |      | NOT NULL   | Date the theft was reported |
| Status        | VARCHAR(20) |    | NOT NULL   | Status of report (“Pending”, “Confirmed”, “Closed”) |
| Reported_By   | INT       | FK   | NOT NULL   | References Owner(Owner_ID) |

## Alert
| Column Name   | Data Type | PK/FK | Constraints | Description |
|---------------|-----------|------|------------|-------------|
| Alert_ID      | INT       | PK   | NOT NULL   | Unique alert ID |
| Report_ID     | INT       | FK   | NOT NULL   | References Theft_Report(Report_ID) |
| Date_Sent     | DATETIME  |      | NOT NULL   | Date and time alert was sent |
| Recipient     | VARCHAR(100) |    | NOT NULL   | Recipient of the alert |
| Method        | VARCHAR(20)  |    | NOT NULL   | Delivery method (“SMS”, “Email”) |

## Location_Log
| Column Name  | Data Type   | PK/FK | Constraints | Description |
|-------------|------------|------|------------|-------------|
| Log_ID      | INT        | PK   | NOT NULL   | Unique log entry ID |
| Tracker_ID  | INT        | FK   | NOT NULL   | References GPS_Tracker(Tracker_ID) |
| Timestamp   | DATETIME   |      | NOT NULL   | Time of location update |
| Latitude    | DECIMAL(9,6) |    | NOT NULL   | Latitude coordinate |
| Longitude   | DECIMAL(9,6) |    | NOT NULL   | Longitude coordinate |

## Recovery_Action
| Column Name | Data Type   | PK/FK | Constraints | Description |
|------------|------------|------|------------|-------------|
| Action_ID  | INT        | PK   | NOT NULL   | Unique recovery action ID |
| Report_ID  | INT        | FK   | NOT NULL   | References Theft_Report(Report_ID) |
| Date       | DATETIME   |      | NOT NULL   | Date of recovery action |
| Description| VARCHAR(200)|     | NOT NULL   | Description of the recovery step |
| Status     | VARCHAR(20) |     | NOT NULL   | Status of action (“Pending”, “Completed”) |

