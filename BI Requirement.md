# Business Intelligence Requirements  
## Stolen Vehicle Recovery System

### 1. Purpose of BI
The BI component layer is there to help everyone understand what’s really happening inside the system. BI gives a clear picture of alert activity, audit logs, system performance, and how quickly law enforcement is responding. With these insights, stakeholders can spot trends, catch unusual behavior, and make better decisions—whether that’s improving response times or strengthening security checks.

### 2. Key Stakeholders
| 	Stakeholder 	       | 	 Role in System 		      | 			What They Need from BI 					   |
|------------------------------|----------------------------------------------|------------------------------------------------------------------------------------|
| **Police Officers** 	       | Receive and respond to alerts                | Instant visibility into new alerts, priority vehicles, and how long responses take |
| **System Administrators**    | Manage database, security, and auditing      | Clear audit logs of violations, trigger activity, and overall system performance   |
| **City Traffic Department**  | Citywide vehicle tracking & policy decisions | Monthly trends, peak alert times, and general compliance reports                   |
| **Management / Supervisors** | Provide direction and evaluate system impact | High-level dashboards, KPI summaries, and tools to detect inconsistencies or fraud |

### 3. Decision-Support Needs
1. **Prioritization of high-risk vehicles**  
   - Vehicles generating repeated alerts  
   - Vehicles flagged during weekends/holidays  

2. **Compliance and monitoring**  
   - How often operations are denied by the trigger DML (weekdays/holidays/duplicates)  
   - Trigger efficiency and system behavior (Whether the system is enforcing rules correctly) 

3. **Operational performance**  
   - Response times  
   - Alert volume trends  
   - Vehicles resolved vs unresolved  

4. **Resource allocation**  
   - Peak alert hours  
   - Geographical trends (if location data is added later)

### 4. Reporting Frequency
|	 Report 	|	 Frequency 	    |	 Target Group 		     |
|-----------------------|---------------------------|--------------------------------|
| Daily alert summary   | Daily                     | Police, Administrators         |
| Audit violation log   | Daily / On-demand         | Administrators 		     |
| Weekly trends         | Weekly                    | Management       		     |
| Executive summary     | Monthly                   | Management, Traffic Department |
| Performance dashboard | Continuous (BI dashboard) | All departments 		     |

### 5. BI Output Deliverables
- Executive Summary Dashboard  
- Audit & Compliance Dashboard  
- Performance/Operations Dashboard  
- KPI Cards  
- Analytical SQL queries  
