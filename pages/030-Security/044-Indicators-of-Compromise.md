# Indicators of Compromise

- [Account Lockouts](#account-lockouts)
- [Concurrent Session Utilization](#concurrent-session-utilization)
- [Blocked Content](#blocked-content)
- [Impossible Travel](#impossible-travel)
- [Resource Consumption](#resource-consumption)
- [Resource Inaccessibility](#resource-inaccessibility)
- [Out-of-Cycle Logging](#out-of-cycle-logging)
- [Missing Logs](#missing-logs)
- [Published or Documented Attacks](#published-or-documented-attacks)


These indicators help in detecting and responding to potential malicious activity on a network or a system.

## Account Lockouts

Repeated failed login attempts resulting in accounts being locked.

- Multiple login failures in a short period.
- Users reporting unexpected account lockouts.
- Account lockout events in security logs.

## Concurrent Session Utilization

Multiple sessions active from different locations for a single user account.

- User account logged in from different geographic locations simultaneously.
- Unusual login times.
- Elevated number of active sessions.

## Blocked Content

Legitimate content being blocked by security mechanisms.

- Access to safe websites or services is denied.
- Frequent false positives by security filters.
- Users reporting inability to access necessary resources.

## Impossible Travel

Logins from geographically distant locations within an impossible timeframe.

- Login from one country followed by a login from another country within minutes.
- Alerts for impossible travel scenarios.
- Discrepancies in login locations.

## Resource Consumption

Excessive use of system resources like CPU, memory, or network bandwidth.

- Systems running unusually slow.
- Spikes in CPU or memory usage.
- Increased network traffic.

## Resource Inaccessibility

Legitimate users unable to access system resources or services.

- Users reporting inability to access files or applications.
- Services becoming unavailable.
- Frequent timeouts or access errors.

## Out-of-Cycle Logging

Unexpected logging activity outside of normal operational hours.

- Log entries during off-hours or holidays.
- Unusual patterns in log activity.
- System generating logs when idle.

## Missing Logs

Absence of expected log entries indicating potential tampering.

- Gaps in log records.
- Critical events not logged.
- Log tampering alerts.

## Published or Documented Attacks

Known attack methods or vulnerabilities being actively exploited.

- Reports of attacks using known vulnerabilities.
- Alerts from threat intelligence feeds.
- Documentation of attack patterns similar to observed activities.

