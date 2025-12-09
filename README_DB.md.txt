# Database Creation & Configuration

**Project:** Stolen Vehicle Recovery System  
**Pluggable Database:** wed_27249_berenice_stolenVehicleRecovery_db

## Admin User
- Username: `BERENICE_ADMIN`
- Password: `Berenice`
- Privileges: DBA (super-admin)

## Tablespaces
- `data_ts` - Main data tablespace (AUTOEXTEND ON)
- `idx_ts` - Index tablespace (AUTOEXTEND ON)
- `temp_ts` - Temporary tablespace (AUTOEXTEND ON)

## Memory Parameters
- SGA_TARGET: 1G
- PGA_AGGREGATE_TARGET: 500M

## Archive Logging
- Enabled

## How to Run
1. Connect as SYSDBA:
   sqlplus / as sysdba
		
		01_create_pdb.sql
		02_tablespaces.sql
		03_admin_user.sql
		04_memory_parameters (SGA and PGA).sql
		05_archivelog_config.sql
		06_outcome.sql

