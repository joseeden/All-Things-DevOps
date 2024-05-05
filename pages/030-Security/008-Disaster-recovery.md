
# Disaster Recovery

- [The Goal of Disaster Recovery](#the-goal-of-disaster-recovery)
- [Disaster Recovery in the Real World](#disaster-recovery-in-the-real-world)
- [Financial Department is rarely involved](#financial-department-is-rarely-involved)
- [Components of a Disaster Recovery Plan](#components-of-a-disaster-recovery-plan)
- [Data Backups](#data-backups)
    - [Full Backup](#full-backup)
    - [Incremental Backup](#incremental-backup)
    - [Differential Backup](#differential-backup)
    - [Mirror Backup](#mirror-backup)
    - [Snapshot Backup](#snapshot-backup)
    - [Cloud Backup](#cloud-backup)
- [Failover](#failover)
- [Disaster Recovery Sites](#disaster-recovery-sites)
    - [Warm Site](#warm-site)
    - [Hot Site](#hot-site)
    - [Cold Site](#cold-site)
- [Disaster Recovery Tests](#disaster-recovery-tests)
    - [Parallel Test](#parallel-test)
    - [Full Interruption Test](#full-interruption-test)
    - [Checklist Reviews](#checklist-reviews)
    - [Tabletop Exercises](#tabletop-exercises)
- [Business Continuity versus Disaster Recovery](#business-continuity-versus-disaster-recovery)






## The Goal of Disaster Recovery

- Complements Business Continuity for IT and communication service restoration
- Guides emergency response for full recovery
- Aims to restore to last-known reliable operations
- Critical for overall business operation recovery


## Disaster Recovery in the Real World

Ensure critical systems are formally identified and regularly test backups, as incidents may go undetected for extended periods.

- Complex systems store valuable information across multiple servers.
- Basic disaster recovery involves server-level data backup.
- Considerations for databases and dependencies are vital.
- Data entered into one system is distributed to others in large enterprises.
- Coordination among systems is crucial for maintaining common data.
- Understanding data flow and dependencies is essential for successful disaster recovery.

**Sample Scenario:**

At a hospital in Los Angeles, it took 260 days (about 8 and a half months) to discover that there was a compromise.

- Time-based malware corrupted the last backup.
- Restoration required going back nearly a year prior to the incident.
- Data was restored piece-by-piece to avoid reinfection.
- Highlights the need for multiple backup levels and retention periods.

## Financial Department is rarely involved 

- **Executives** and **Public Relations** staff need to be aware of the company's Disaster Recovery Plan (DRP) to properly handle the expectations of the public, as well as of company stakeholders. 

- **IT personnel** should be focused on helping businesses return to normal operations. 

A company's financial department is rarely involved in a disaster recovery plan, except when the issue at hand is directly connected to company finances (see Chapter 2 ISC2 Study Guide, module 3, under Components of a Disaster Recovery Plan).

## Components of a Disaster Recovery Plan

Organizations often maintain diverse documents for different audiences in their Disaster Recovery Planning (DRP) efforts. These include:

- **Executive summary**: High-level plan overview.
- **Department-specific plans**: Tailored for various organizational units.
- **Technical guides**: For IT personnel handling critical backup systems.
- **Full plan copies**: For critical disaster recovery team members.
- **Checklists**: Tailored for specific roles, including:
  - Critical disaster recovery team members
  - IT personnel
  - Managers and public relations personnel

## Data Backups 

Data Backup involves creating duplicate copies of critical data and storing them off-site. These backups serve as a safeguard in case the primary data becomes unavailable due to a disaster or incident.

### Full Backup
- Copies all selected files and data.
- Provides a complete snapshot at a specific point in time.

### Incremental Backup
- Copies only the data that has changed since the last backup.
- Efficient in terms of storage space but may require multiple backups for a complete restore.

### Differential Backup
- Copies all the data that has changed since the last full backup.
- Requires less time for restoration compared to incremental backups.

### Mirror Backup
- Creates an exact copy of the source data.
- Ensures a one-to-one replica of the original but may not offer versioning.

### Snapshot Backup
- Captures the state of the system or data at a specific point in time.
- Provides a consistent view for backup purposes without affecting ongoing operations.

### Cloud Backup
- Involves storing data in an offsite cloud environment.
- Enhances data accessibility and provides a secure offsite backup solution.


## Failover 

Failover involves establishing an alternate location, such as a secondary data center or cloud infrastructure, where critical business functions can continue in case the primary site becomes unavailable due to a disaster or incident.


## Disaster Recovery Sites 

### Warm Site

  - Has necessary systems but lacks current data for immediate operations.
  - Hardware and connectivity are in place.
  - Data is restored from backups, which may not be up-to-date.
  - Example: A financial services company with a warm site in another city.

### Hot Site

  - Fully operational duplicate of the primary site.
  - Real-time data replication for immediate takeover.
  
### Cold Site

  - Basic facility with power and cooling.
  - No pre-installed hardware or data.
  - Requires significant time to become operational.

## Disaster Recovery Tests 

### Parallel Test

- Runs primary and alternate processing facilities simultaneously.
- Primary site continues normal operations while alternate site processes backup transactions.
- Evaluates compatibility and backup system support.
- Least disruptive and time-consuming among disaster recovery tests.
- *Reference:* ISC2 Study Guide, Module 3, Disaster Recovery Tests.

### Full Interruption Test

- Shuts down primary site, relies entirely on the alternate site.
- More disruptive and costly compared to a parallel test.

### Checklist Reviews

- Evaluates procedures and protocols, not technical recovery aspects.

### Tabletop Exercises

- Focuses on assessing procedures and protocols rather than technical recovery.

## Business Continuity versus Disaster Recovery

Business Continuity (BC) plans focus on proactive measures to prevent incidents and ensure the continuous operation of critical business functions. 

Disaster Recovery (DR) plans, on the other hand, focus on reactive measures to recover IT systems, applications, and data after a disaster or major incident.


----------------------------------------------

[Back to main page](../../README.md#security)    