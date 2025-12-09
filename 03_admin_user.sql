SQL> ALTER SESSION SET CONTAINER=wed_27249_berenice_stolenVehicleRecovery_db;

Session altered.

SQL> CREATE USER berenice_admin IDENTIFIED BY Berenice
  2  DEFAULT TABLESPACE data_ts
  3  TEMPORARY TABLESPACE temp_ts
  4  QUOTA UNLIMITED ON data_ts;

User created.

SQL> GRANT DBA TO berenice_admin;

Grant succeeded.