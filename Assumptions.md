## Assumptions

1. Owner \& Vehicle:
   Each vehicle has only **one active tracker**.
   One owner can register multiple vehicles.
   Each vehicle is registered to only one active owner at a time.
2. Theft Reports:
   A theft report is always created by an owner (no anonymous reports).
   A single vehicle can have multiple theft reports over time, but only one active theft report at a time.
   Each theft report must have a valid timestamp and must reference an existing vehicle.
3. GPS Tracker:
   Every tracked vehicle must have exactly one active GPS tracker.
   Trackers send location updates every 10 seconds.
   If the tracker fails or signal is lost, the system records an error event.
4. Location Logs:
   The system stores every location update as a new record (no overwriting).
   GPS coordinates are stored with latitude, longitude, and timestamp.
   Location logs only exist for vehicles that currently have an active theft report.
5. Alerts:
   Alerts are only sent **after theft confirmation**.
   Alerts are created only when the system detects important events:
   Vehicle recovered
   Vehicle immobilization triggered
   GPS signal lost
   Invalid report submitted
   Alerts are always linked to the theft report that triggered them.
