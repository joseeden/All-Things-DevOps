
# Disaster Recovery

- [The Goal of Disaster Recovery](#the-goal-of-disaster-recovery)
- [Disaster Recovery in the Real World](#disaster-recovery-in-the-real-world)
- [Components of a Disaster Recovery Plan](#components-of-a-disaster-recovery-plan)


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


----------------------------------------------

[Back to main page](../../README.md#security)    