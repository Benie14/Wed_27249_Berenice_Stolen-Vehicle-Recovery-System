-- 01. Check PDB status

SQL> SELECT PDB_NAME, STATUS FROM DBA_PDBS;

PDB_NAME
--------------------------------------------------------------------------------
STATUS
----------
WED_27249_BERENICE_STOLENVEHICLERECOVERY_DB
NORMAL

-- 02. Check tablespaces

SQL> SELECT TABLESPACE_NAME, STATUS FROM DBA_TABLESPACES;

TABLESPACE_NAME                STATUS
------------------------------ ---------
SYSTEM                         ONLINE
SYSAUX                         ONLINE
UNDOTBS1                       ONLINE
TEMP                           ONLINE
DATA_TS                        ONLINE
IDX_TS                         ONLINE
TEMP_TS                        ONLINE

7 rows selected.

-- 03. Check admin user
SQL> SELECT USERNAME FROM DBA_USERS WHERE USERNAME='BERENICE_ADMIN';

USERNAME
--------------------------------------------------------------------------------
BERENICE_ADMIN

-- 04. Check archive log mode (ARCHIVELOG = enabled)

SQL> SELECT LOG_MODE FROM V$DATABASE;

LOG_MODE
------------
ARCHIVELOG

-- 05. Check memory parameters

SQL> SHOW PARAMETER sga_target;

NAME                                 TYPE        VALUE
------------------------------------ ----------- ------------------------------
sga_target                           big integer 1G

SQL> SHOW PARAMETER pga_aggregate_target;

NAME                                 TYPE        VALUE
------------------------------------ ----------- ------------------------------
pga_aggregate_target                 big integer 500M

-- 06. List all datafiles to confirm autoextend is set

SQL> SELECT FILE_NAME, AUTOEXTENSIBLE, BYTES/1024/1024 AS SIZE_MB
  2  FROM DBA_DATA_FILES
  3  WHERE TABLESPACE_NAME IN ('DATA_TS','IDX_TS');

FILE_NAME
--------------------------------------------------------------------------------
AUT    SIZE_MB
--- ----------
C:\APP\PRODUCT\21C\ORADATA\XE\WED_27249_BERENICE_STOLENVEHICLERECOVERY_DB\DATA_T
S01.DBF
YES        200

C:\APP\PRODUCT\21C\ORADATA\XE\WED_27249_BERENICE_STOLENVEHICLERECOVERY_DB\IDX_TS
01.DBF
YES        100

-- 07. List temporary files

SQL> SELECT FILE_NAME, BYTES/1024/1024 AS SIZE_MB
  2  FROM DBA_TEMP_FILES
  3  WHERE TABLESPACE_NAME='TEMP_TS';

FILE_NAME
--------------------------------------------------------------------------------
   SIZE_MB
----------
C:\APP\PRODUCT\21C\ORADATA\XE\WED_27249_BERENICE_STOLENVEHICLERECOVERY_DB\TEMP_T
S01.DBF
       100

