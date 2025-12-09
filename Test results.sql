SQL> BEGIN
  2      DBMS_OUTPUT.PUT_LINE('--- Phase VII Testing Started ---');
  3
  4      -- 1️⃣ Weekday insert test (should be DENIED)
  5      BEGIN
  6          INSERT INTO alert(alert_id, vehicle_id, status, message, alert_type, report_id, resolved, alert_time)
  7          VALUES (101, 201, 'ACTIVE', 'Weekday alert test', 'Theft', 1001, 'N', SYSDATE);
  8      EXCEPTION
  9          WHEN OTHERS THEN
 10              DBMS_OUTPUT.PUT_LINE('Weekday INSERT DENIED: ' || SQLERRM);
 11      END;
 12
 13      -- 2️⃣ Weekend insert test (should be ALLOWED)
 14      BEGIN
 15          -- Make sure this test runs on a weekend, or temporarily adjust SYSDATE logic in your trigger
 16          INSERT INTO alert(alert_id, vehicle_id, status, message, alert_type, report_id, resolved, alert_time)
 17          VALUES (102, 202, 'ACTIVE', 'Weekend alert test', 'Theft', 1002, 'N', SYSDATE);
 18          DBMS_OUTPUT.PUT_LINE('Weekend INSERT ALLOWED');
 19      EXCEPTION
 20          WHEN OTHERS THEN
 21              DBMS_OUTPUT.PUT_LINE('Weekend INSERT DENIED: ' || SQLERRM);
 22      END;
 23
 24      -- 3️⃣ Holiday insert test (should be DENIED)
 25      BEGIN
 26          -- Ensure the holiday exists in the HOLIDAYS table
 27          INSERT INTO alert(alert_id, vehicle_id, status, message, alert_type, report_id, resolved, alert_time)
 28          VALUES (103, 203, 'ACTIVE', 'Holiday alert test', 'Theft', 1003, 'N', SYSDATE);
 29      EXCEPTION
 30          WHEN OTHERS THEN
 31              DBMS_OUTPUT.PUT_LINE('Holiday INSERT DENIED: ' || SQLERRM);
 32      END;
 33
 34      -- 4️⃣ Duplicate active alert test (should be DENIED)
 35      BEGIN
 36          INSERT INTO alert(alert_id, vehicle_id, status, message, alert_type, report_id, resolved, alert_time)
 37          VALUES (104, 204, 'ACTIVE', 'First alert', 'Theft', 1004, 'N', SYSDATE);
 38
 39          INSERT INTO alert(alert_id, vehicle_id, status, message, alert_type, report_id, resolved, alert_time)
 40          VALUES (105, 204, 'ACTIVE', 'Duplicate alert', 'Theft', 1005, 'N', SYSDATE);
 41      EXCEPTION
 42          WHEN OTHERS THEN
 43              DBMS_OUTPUT.PUT_LINE('Duplicate alert DENIED: ' || SQLERRM);
 44      END;
 45
 46      -- 5️⃣ Show audit log for verification
 47      DBMS_OUTPUT.PUT_LINE('--- Audit Log Snapshot ---');
 48      FOR rec IN (SELECT * FROM alert_audit ORDER BY action_date DESC) LOOP
 49          DBMS_OUTPUT.PUT_LINE(
 50              'AUDIT_ID: ' || rec.audit_id ||
 51              ', ALERT_ID: ' || rec.alert_id ||
 52              ', ACTION_TYPE: ' || rec.action_type ||
 53              ', ACTION_DATE: ' || rec.action_date ||
 54              ', USERNAME: ' || rec.username
 55          );
 56      END LOOP;
 57
 58      DBMS_OUTPUT.PUT_LINE('--- Testing Completed ---');
 59  END;
 60  /
--- Phase VII Testing Started ---
Weekday INSERT DENIED: ORA-20001: DML not allowed on weekdays or
holidays.
ORA-06512: at "BERENICE_ADMIN.TRG_ALERT_COMPOUND", line 22
ORA-04088:
error during execution of trigger 'BERENICE_ADMIN.TRG_ALERT_COMPOUND'
Weekend INSERT DENIED: ORA-20001: DML not allowed on weekdays or
holidays.
ORA-06512: at "BERENICE_ADMIN.TRG_ALERT_COMPOUND", line 22
ORA-04088:
error during execution of trigger 'BERENICE_ADMIN.TRG_ALERT_COMPOUND'
Holiday INSERT DENIED: ORA-20001: DML not allowed on weekdays or
holidays.
ORA-06512: at "BERENICE_ADMIN.TRG_ALERT_COMPOUND", line 22
ORA-04088:
error during execution of trigger 'BERENICE_ADMIN.TRG_ALERT_COMPOUND'
Duplicate alert DENIED: ORA-20001: DML not allowed on weekdays or
holidays.
ORA-06512: at "BERENICE_ADMIN.TRG_ALERT_COMPOUND", line 22
ORA-04088:
error during execution of trigger 'BERENICE_ADMIN.TRG_ALERT_COMPOUND'
--- Audit Log Snapshot ---
--- Testing Completed ---

PL/SQL procedure successfully completed.

SQL> SELECT audit_id, alert_id, action_type, username, action_date
  2  FROM alert_audit
  3  ORDER BY audit_id;

no rows selected

SQL> SELECT *
  2  FROM alert_audit
  3  ORDER BY action_date DESC;

no rows selected

SQL> SELECT COUNT(*) AS total_audit_entries FROM alert_audit;

TOTAL_AUDIT_ENTRIES
-------------------
                  0
