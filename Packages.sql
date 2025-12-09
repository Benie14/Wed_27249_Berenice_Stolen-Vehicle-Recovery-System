SQL> CREATE OR REPLACE PACKAGE alerts_pkg IS
  2    PROCEDURE send_alert(p_report_id IN NUMBER, p_type IN VARCHAR2, p_message IN VARCHAR2);
  3    PROCEDURE mark_alert_resolved(p_alert_id IN NUMBER);
  4    FUNCTION count_unresolved RETURN NUMBER;
  5  END alerts_pkg;
  6  /

Package created.

SQL> CREATE OR REPLACE PACKAGE BODY alerts_pkg IS
  2
  3    PROCEDURE send_alert(p_report_id IN NUMBER, p_type IN VARCHAR2, p_message IN VARCHAR2) IS
  4      v_alert_id NUMBER;
  5      v_vehicle_id NUMBER;
  6    BEGIN
  7      -- find vehicle for report
  8      SELECT VEHICLE_ID INTO v_vehicle_id FROM Theft_Report WHERE REPORT_ID = p_report_id;
  9
 10      SELECT NVL(MAX(Alert_ID),0) + 1 INTO v_alert_id FROM Alert;
 11
 12      INSERT INTO Alert (Alert_ID, Report_ID, Vehicle_ID, Alert_Type, Alert_Time, Resolved)
 13      VALUES (v_alert_id, p_report_id, v_vehicle_id, p_type, SYSTIMESTAMP, 'N');
 14
 15      -- Optionally, record the message in error_log or another audit table
 16      log_error('alerts_pkg.send_alert', 0, 'Sent alert', 'alert='||v_alert_id||' msg='||SUBSTR(p_message,1,200));
 17
 18      COMMIT;
 19    EXCEPTION
 20      WHEN NO_DATA_FOUND THEN
 21        log_error('alerts_pkg.send_alert', -1, 'No report found', 'report='||p_report_id);
 22        RAISE_APPLICATION_ERROR(-20010, 'Report not found: '||p_report_id);
 23      WHEN OTHERS THEN
 24        log_error('alerts_pkg.send_alert', SQLCODE, SUBSTR(SQLERRM,1,2000), 'report='||p_report_id);
 25        RAISE;
 26    END send_alert;
 27
 28    PROCEDURE mark_alert_resolved(p_alert_id IN NUMBER) IS
 29    BEGIN
 30      UPDATE Alert SET Resolved = 'Y' WHERE Alert_ID = p_alert_id;
 31      IF SQL%ROWCOUNT = 0 THEN
 32        RAISE_APPLICATION_ERROR(-20011, 'Alert not found: '||p_alert_id);
 33      END IF;
 34      COMMIT;
 35    EXCEPTION
 36      WHEN OTHERS THEN
 37        log_error('alerts_pkg.mark_alert_resolved', SQLCODE, SUBSTR(SQLERRM,1,2000), 'alert='||p_alert_id);
 38        RAISE;
 39    END mark_alert_resolved;
 40
 41    FUNCTION count_unresolved RETURN NUMBER IS
 42      v_cnt NUMBER;
 43    BEGIN
 44      SELECT COUNT(*) INTO v_cnt FROM Alert WHERE Resolved = 'N';
 45      RETURN v_cnt;
 46    EXCEPTION
 47      WHEN OTHERS THEN
 48        log_error('alerts_pkg.count_unresolved', SQLCODE, SUBSTR(SQLERRM,1,2000), NULL);
 49        RAISE;
 50    END count_unresolved;
 51
 52  END alerts_pkg;
 53  /

Package body created.
