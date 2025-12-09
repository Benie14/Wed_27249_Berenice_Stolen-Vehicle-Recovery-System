SQL> CREATE OR REPLACE PROCEDURE process_location_logs(p_tracker_id IN NUMBER) IS
  2    CURSOR c_logs IS
  3      SELECT Log_ID, Log_Time, Latitude, Longitude
  4      FROM Location_Log
  5      WHERE Tracker_ID = p_tracker_id
  6      ORDER BY Log_Time;
  7
  8    v_log c_logs%ROWTYPE;
  9  BEGIN
 10    OPEN c_logs;
 11    LOOP
 12      FETCH c_logs INTO v_log;
 13      EXIT WHEN c_logs%NOTFOUND;
 14      -- Example processing: just print coordinates
 15      DBMS_OUTPUT.PUT_LINE('Log '||v_log.Log_ID||' at '||v_log.Log_Time||' lat='||NVL(TO_CHAR(v_log.Latitude),'NULL'));
 16    END LOOP;
 17    CLOSE c_logs;
 18  EXCEPTION
 19    WHEN OTHERS THEN
 20      log_error('process_location_logs', SQLCODE, SUBSTR(SQLERRM,1,2000), 'tracker='||p_tracker_id);
 21      RAISE;
 22  END;
 23  /

Procedure created.

SQL> CREATE OR REPLACE PROCEDURE summarize_location_logs(p_tracker_id IN NUMBER) IS
  2    TYPE t_log IS TABLE OF Location_Log%ROWTYPE;
  3    v_logs t_log;
  4  BEGIN
  5    SELECT * BULK COLLECT INTO v_logs
  6    FROM Location_Log
  7    WHERE Tracker_ID = p_tracker_id AND ROWNUM <= 500; -- cap for demo
  8
  9    IF v_logs.COUNT = 0 THEN
 10      DBMS_OUTPUT.PUT_LINE('No logs for tracker '||p_tracker_id);
 11      RETURN;
 12    END IF;
 13
 14    EXCEPTION
 15    WHEN OTHERS THEN
 16      log_error('summarize_location_logs', SQLCODE, SUBSTR(SQLERRM,1,2000), 'tracker='||p_tracker_id);
 17      RAISE;
 18  END;
 19  /

Procedure created.