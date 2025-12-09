SQL> CREATE OR REPLACE FUNCTION fn_get_owner_vehicle_count(p_owner_id IN NUMBER) RETURN NUMBER IS
  2    v_count NUMBER;
  3  BEGIN
  4    SELECT COUNT(*) INTO v_count FROM Vehicle WHERE Owner_ID = p_owner_id;
  5    RETURN v_count;
  6  EXCEPTION
  7    WHEN OTHERS THEN
  8      log_error('fn_get_owner_vehicle_count', SQLCODE, SUBSTR(SQLERRM,1,2000), 'owner='||p_owner_id);
  9      RAISE;
 10  END;
 11  /

Function created.

SQL> CREATE OR REPLACE FUNCTION fn_validate_license(p_license IN VARCHAR2)
  2  RETURN CHAR IS
  3      v_count NUMBER;
  4  BEGIN
  5      SELECT COUNT(*)
  6      INTO v_count
  7      FROM Vehicle
  8      WHERE LICENSE_PLATE = p_license;
  9
 10      IF v_count > 0 THEN
 11          RETURN 'Y';
 12      ELSE
 13          RETURN 'N';
 14      END IF;
 15
 16  EXCEPTION
 17      WHEN OTHERS THEN
 18          log_error('fn_validate_license', SQLCODE, SUBSTR(SQLERRM,1,2000), 'license='||p_license);
 19          RETURN 'N';
 20  END fn_validate_license;
 21  /

Function created.

SQL> CREATE OR REPLACE FUNCTION fn_calc_time_to_recovery(p_report_id IN NUMBER)
  2  RETURN NUMBER IS
  3      v_report_date   TIMESTAMP;
  4      v_recovery_time TIMESTAMP;
  5      v_diff_interval INTERVAL DAY TO SECOND;
  6      v_hours         NUMBER;
  7  BEGIN
  8      -- Get report date
  9      SELECT REPORT_DATE INTO v_report_date
 10      FROM Theft_Report
 11      WHERE REPORT_ID = p_report_id;
 12
 13      -- Get first resolved 'Push' alert
 14      SELECT MIN(Alert_Time) INTO v_recovery_time
 15      FROM Alert a
 16      WHERE a.Report_ID = p_report_id
 17        AND a.Alert_Type = 'Push'
 18        AND a.Resolved = 'Y';
 19
 20      -- If no recovery alert, return NULL
 21      IF v_recovery_time IS NULL THEN
 22          RETURN NULL;
 23      END IF;
 24
 25      -- Compute interval
 26      v_diff_interval := v_recovery_time - v_report_date;
 27
 28      -- Convert interval to hours
 29      v_hours := EXTRACT(DAY FROM v_diff_interval)*24
 30                 + EXTRACT(HOUR FROM v_diff_interval)
 31                 + EXTRACT(MINUTE FROM v_diff_interval)/60
 32                 + EXTRACT(SECOND FROM v_diff_interval)/3600;
 33
 34      RETURN v_hours;
 35
 36  EXCEPTION
 37      WHEN NO_DATA_FOUND THEN
 38          RETURN NULL;
 39      WHEN OTHERS THEN
 40          log_error('fn_calc_time_to_recovery', SQLCODE, SUBSTR(SQLERRM,1,2000), 'report='||p_report_id);
 41          RAISE;
 42  END fn_calc_time_to_recovery;
 43  /

Function created.

SQL> CREATE OR REPLACE FUNCTION fn_lookup_owner_by_plate(p_plate IN VARCHAR2)
  2  RETURN VARCHAR2 IS
  3      v_owner VARCHAR2(200);
  4  BEGIN
  5      SELECT o.Full_Name
  6      INTO v_owner
  7      FROM Owner o
  8      JOIN Vehicle v ON o.Owner_ID = v.Owner_ID
  9      WHERE v.LICENSE_PLATE = p_plate;
 10
 11      RETURN v_owner;
 12
 13  EXCEPTION
 14      WHEN NO_DATA_FOUND THEN
 15          RETURN NULL;
 16      WHEN OTHERS THEN
 17          log_error('fn_lookup_owner_by_plate', SQLCODE, SUBSTR(SQLERRM,1,2000), 'plate='||p_plate);
 18          RAISE;
 19  END fn_lookup_owner_by_plate;
 20  /

Function created.


