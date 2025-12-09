SQL> ALTER SYSTEM SET sga_target=1G SCOPE=SPFILE;

System altered.

SQL> ALTER SYSTEM SET pga_aggregate_target=500M SCOPE=SPFILE;

System altered.

SQL> SHUTDOWN IMMEDIATE;
Pluggable Database closed.
SQL> STARTUP;
Pluggable Database opened.
SQL> SELECT PDB_NAME, STATUS FROM DBA_PDBS;

PDB_NAME
--------------------------------------------------------------------------------
STATUS
----------
WED_27249_BERENICE_STOLENVEHICLERECOVERY_DB
NORMAL
