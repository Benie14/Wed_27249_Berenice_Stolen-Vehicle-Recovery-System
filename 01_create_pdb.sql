 CREATE PLUGGABLE DATABASE wed_27249_berenice_stolenVehicleRecovery_db
  2    ADMIN USER pdb_admin IDENTIFIED BY Berenice
  3    FILE_NAME_CONVERT = (
  4      'C:\app\product\21c\oradata\XE\pdbseed\',
  5      'C:\app\product\21c\oradata\XE\wed_27249_berenice_stolenVehicleRecovery_db\'
  6    );

Pluggable database created.

SQL>
SQL> ALTER PLUGGABLE DATABASE wed_27249_berenice_stolenVehicleRecovery_db OPEN;

Pluggable database altered.

SQL> ALTER PLUGGABLE DATABASE wed_27249_berenice_stolenVehicleRecovery_db SAVE STATE;

Pluggable database altered.