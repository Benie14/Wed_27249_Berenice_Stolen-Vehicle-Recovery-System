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
