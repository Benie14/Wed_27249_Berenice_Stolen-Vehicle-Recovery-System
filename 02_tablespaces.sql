SQL> ALTER SESSION SET CONTAINER=wed_27249_berenice_stolenVehicleRecovery_db;

Session altered.

SQL> CREATE TABLESPACE data_ts
  2    DATAFILE 'C:\app\product\21c\oradata\XE\wed_27249_berenice_stolenVehicleRecovery_db\data_ts01.dbf'
  3    SIZE 200M AUTOEXTEND ON NEXT 50M;

Tablespace created.

SQL>
SQL> CREATE TABLESPACE idx_ts
  2    DATAFILE 'C:\app\product\21c\oradata\XE\wed_27249_berenice_stolenVehicleRecovery_db\idx_ts01.dbf'
  3    SIZE 100M AUTOEXTEND ON NEXT 50M;

Tablespace created.

SQL>
SQL> CREATE TEMPORARY TABLESPACE temp_ts
  2    TEMPFILE 'C:\app\product\21c\oradata\XE\wed_27249_berenice_stolenVehicleRecovery_db\temp_ts01.dbf'
  3    SIZE 100M AUTOEXTEND ON NEXT 20M;

Tablespace created.