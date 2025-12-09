SQL> BEGIN
  2    FOR i IN 1..100 LOOP
  3      INSERT INTO Owner (Owner_ID, Full_Name, Phone, Email, Owner_Address)
  4      VALUES (
  5        i,
  6        'Owner_' || i,
  7        '555-' || TO_CHAR(1000 + i),
  8        'owner' || i || '@example.com',
  9        'Address ' || i
 10      );
 11    END LOOP;
 12    COMMIT;
 13  END;
 14  /

PL/SQL procedure successfully completed.

SQL> BEGIN
  2    FOR i IN 1..200 LOOP
  3      INSERT INTO Vehicle (Vehicle_ID, Owner_ID, Model, Vehicle_Year, Status, LICENSE_PLATE)
  4      VALUES (
  5        i,
  6        MOD(i-1,100)+1,  -- Owner_ID cycles 1..100
  7        CASE MOD(i,3) WHEN 0 THEN 'Civic' WHEN 1 THEN 'Camry' ELSE 'Focus' END,
  8        2015 + MOD(i,8),
  9        'Active',
 10        'PLATE' || LPAD(i, 5, '0')  -- fake license plate
 11      );
 12    END LOOP;
 13    COMMIT;
 14  END;
 15  /

PL/SQL procedure successfully completed.

SQL> BEGIN
  2    FOR i IN 1..200 LOOP  -- one tracker per vehicle
  3      INSERT INTO GPS_Tracker (Tracker_ID, Vehicle_ID, Status)
  4      VALUES (
  5        i,
  6        i,  -- Vehicle_ID matches
  7        'Active'
  8      );
  9    END LOOP;
 10    COMMIT;
 11  END;
 12  /

PL/SQL procedure successfully completed.

SQL> BEGIN
  2    FOR i IN 1..150 LOOP
  3      INSERT INTO Theft_Report (REPORT_ID, VEHICLE_ID, REPORT_DATE, STATUS)
  4      VALUES (
  5        i,
  6        MOD(i-1,200)+1,  -- Vehicle_ID cycles 1..200
  7        SYSTIMESTAMP - NUMTODSINTERVAL(i*60,'MINUTE'),
  8        CASE MOD(i,3)
  9          WHEN 0 THEN 'Pending'
 10          WHEN 1 THEN 'Recovered'
 11          ELSE 'Rejected'
 12        END
 13      );
 14    END LOOP;
 15
 16    COMMIT;
 17  END;
 18  /

PL/SQL procedure successfully completed.


