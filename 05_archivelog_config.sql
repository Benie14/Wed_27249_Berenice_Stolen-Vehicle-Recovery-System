SQL> ALTER SESSION SET CONTAINER=CDB$ROOT;

Session altered.

SQL> SELECT LOG_MODE FROM V$DATABASE;

LOG_MODE
------------
NOARCHIVELOG

SQL> ALTER SESSION SET CONTAINER=CDB$ROOT;

Session altered.

SQL> ALTER PLUGGABLE DATABASE wed_27249_berenice_stolenVehicleRecovery_db CLOSE IMMEDIATE;

Pluggable database altered.

SQL> SHUTDOWN IMMEDIATE;
Database closed.
Database dismounted.
ORACLE instance shut down.
SQL> STARTUP MOUNT;
ORACLE instance started.

Total System Global Area 1610610712 bytes
Fixed Size                  9857048 bytes
Variable Size             486539264 bytes
Database Buffers         1107296256 bytes
Redo Buffers                6918144 bytes
Database mounted.
SQL> ALTER DATABASE ARCHIVELOG;

Database altered.

SQL> ALTER DATABASE OPEN;

Database altered.

ALTER PLUGGABLE DATABASE wed_27249_berenice_stolenVehicleRecovery_db SAVE STATE;

Pluggable database altered.

SQL> ALTER SESSION SET CONTAINER=CDB$ROOT;

Session altered.

SQL> SELECT LOG_MODE FROM V$DATABASE;

LOG_MODE
------------
ARCHIVELOG