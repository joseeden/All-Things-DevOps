
# Data Security


- [Data Handling](#data-handling)
    - [Identify and Assess Data](#identify-and-assess-data)
- [Data Handling Practices](#data-handling-practices)
    - [Classification](#classification)
    - [Labeling](#labeling)
    - [Retention](#retention)
    - [Destruction](#destruction)
- [Logging and Monitoring Security Events](#logging-and-monitoring-security-events)
- [Event Logging Best Practices](#event-logging-best-practices)
    - [Ingress Monitoring](#ingress-monitoring)
    - [Egress Monitoring](#egress-monitoring)
- [Encryption](#encryption)
- [Hardening](#hardening)


## Data Handling

Data undergoes a life cycle encompassing creation, usage, sharing, and modification. Various models exist, sharing common operational steps. The data security life cycle model aligns with diverse roles and aids in understanding data states: in use, at rest, and in motion.

1. **Create** 
   - Creating the knowledge, which is usually tacit knowledge at this point.

2. **Store** 
   - Storing or recording it in some fashion (which makes it explicit).

3. **Use** 
   - Using the knowledge, which may cause the information to be modified, supplemented or partially deleted.    

4. **Share** 
   - Sharing the data with other users, whether as a copy or by moving the data from one location to another.

5. **Archive** 
   - Archiving the data when it is temporarily not needed.

6. **Destroy** 
   - Destroying the data when it is no longer needed.


### Identify and Assess Data

1. **Identification of Valuable Assets**
   - Recognize assets based on their value to the data owner.

2. **Risk Assessment**
   - Evaluate risks concerning data compromise, destruction, or alteration.
   - Identify vulnerabilities in the data life cycle.

3. **Data Life Cycle Stages**
   - Understand data handling practices from creation to destruction.
   - Recognize diverse risks and practices at each stage.

4. **Regulatory Compliance**
   - Adhere to government standards and regulations.
   - Examples include OSHA, HIPAA, PCI DSS, and GDPR.

5. **Geographic Considerations**
   - Be aware of regulations across different geographic areas.
   - Ensure compliance with multiple jurisdictional rules.

6. **Technical Considerations**
   - Be cautious about relying on virtual trash cans for data deletion.
   - Use appropriate tools for secure destruction, considering recovery possibilities.

7. **Compliance Protocols**
    - Follow specific protocols and processes for regulatory compliance.
    - Ensure data is irreversibly destroyed as required.

## Data Handling Practices

### Classification

Classification involves assessing potential impacts on confidentiality, integrity, and availability.

- **Assessment**
   - Evaluate impacts on confidentiality, integrity, and availability.
   - Understand sensitivity before labeling.

- **Labeling and Handling**
   - Classify based on laws, regulations, or business expectations.
   - Labels reflect impacts, guiding protection.

- **Risk Management**
   - Classifications range from minor disruptions to severe threats.
   - Align with the organization's risk approach.

- **Efficiency in Security**
   - Enables efficient security processes.
   - Similar levels share common controls.

### Labeling

Label information to enforce appropriate access controls.

**Data Sensitivity Levels**

1. **Highly Restricted**
    - Potential risk to the organization's future existence.
    - Could result in significant harm, loss of life, injury, or property damage.

2. **Moderately Restricted**
    - Risk of loss of temporary competitive advantage.
    - May lead to revenue loss or disruption of planned investments.

3. **Low Sensitivity (Internal Use Only)**
    - Possible minor disruptions, delays, or impacts.

4. **Unrestricted Public Data**
    - Already published; no harm from further dissemination or disclosure.

### Retention

It is the responsibility of the organization to establish and enforce a comprehensive data retention policy.

1. **Compliance**
   - Adhere to industry standards, laws, and regulations.
   - Establish an organization-specific data retention policy.

2. **Destruction**
   - Implement systematic data destruction when assets reach their retention limits.
   - Maintain a precise inventory detailing asset location and retention requirements.

3. **Review**
   - Conduct periodic reviews of retained records.
   - Reduce information volume, retaining only necessary data.

4. **Implementation**
   - Ensure personnel understand and follow retention requirements.
   - Document specific retention guidelines for each type of information.

5. **Avoid Uniform Retention**
   - Steer clear of applying the longest retention period universally.
   - Prevent unnecessary data storage, minimizing the risk of exposure.

6. **Legal Compliance**
   - Dispose of records not mandated for retention.
   - Adhere to enterprise policies and legal requirements in the destruction process.

### Destruction

Data remanence, or residual data left on media after deletion, poses a security risk. Mitigation strategies include:

1. **Clearing**
   - Involves overwriting with random patterns.
   - Known as "zeroizing," but zeroing has risks.

2. **Purging**
   - Eliminates residual effects from original data.
   - Some technologies may retain recoverable data "ghosts."
   - Degaussing may be needed for certain media.

3. **Destruction**
   - Ultimate remedy for data remanence.
   - Involves shredding, chopping, burning, or etching.
   - Remains disposed of in protected landfills.


## Logging and Monitoring Security Events

Logging is critical for capturing events and ensuring accountability. 

- **Event Logging**
   - Records measurable changes caused by system events.
   - Imposes computational cost but aids in accountability.

- **Framework Emphasis**
   - Major controls frameworks stress organizational logging practices.
   - Relevant information includes user IDs, system activities, key event timestamps, and more.

- **Monitoring Health**
   - Essential for identifying system inefficiencies and compromises.
   - Enables correlation of information for a comprehensive understanding of activities.

- **Log Reviews**
   - Crucial for security assessment, incident identification, and audits.
   - Supports forensic analysis, helping determine if vulnerabilities were exploited.

- **Log Management Infrastructure**
   - Components define how interactions occur.
   - Preserves log data integrity and confidentiality.

- **Control Implementation**
   - Protects against unauthorized log changes.
   - Ensures adherence to retention policies and addresses storage capacity issues.

- **Preservation of Evidence**
   - Policies should preserve original logs.
   - Protects log data from malicious use and maintains confidentiality.

## Event Logging Best Practices

### Ingress Monitoring

- **Firewalls**
   - Surveillance and assessment of inbound communications traffic.
   - Logging and alerting capabilities for monitoring access attempts.

- **Gateways**
   - Control points for monitoring and regulating inbound traffic.
   - Provide logging and alerting features to enhance security.

- **Remote Authentication Servers**
   - Monitor and authenticate inbound access attempts.
   - Offer logging and alerting functionalities for enhanced security.

- **IDS/IPS Tools**
   - Intrusion Detection Systems/Intrusion Prevention Systems.
   - Identify and prevent unauthorized access with logging and alert features.

- **SIEM Solutions**
   - Security Information and Event Management.
   - Centralized platform for comprehensive security monitoring and logging.

- **Anti-Malware Solutions**
   - Monitor and block malicious activities from inbound traffic.
   - Logging and alerting capabilities to enhance threat detection.

### Egress Monitoring

- **Email Content and Attachments**
   - DLP solutions inspect outgoing emails for sensitive data.

- **Copy to Portable Media**
   - Monitor and control data transfer to external devices.
   - DLP solutions ensure sensitive data is not copied without authorization.

- **File Transfer Protocol (FTP)**
   - Monitor data transfers via FTP to prevent unauthorized outbound data flow.

- **Posting to Web Pages/Websites**
   - Control and inspect data postings to external web pages.
   - DLP ensures compliance with data protection policies.

- **Applications/APIs**
   - DLP solutions regulate data leaving the organization through applications and APIs.
   - Monitor and prevent unauthorized data access and transmission.

## Encryption 

Cryptography is essential in our digital era, ensuring security and authenticity in various online activities:

- **Encryption for Transactions**
   - Safeguards personal and business transactions.
   - Protects information by making it unreadable without decryption.

- **Digital Signatures for Authenticity**
   - Verifies the legitimacy of software updates and sources.
   - Ensures the integrity and authenticity of digital content.

- **Secure Email Communication**
   - Enables the exchange of digitally signed contracts.
   - Validates the binding nature and authenticity of digital contracts.

**Cryptography Services**
Cryptography is a versatile tool, providing crucial services like confidentiality and integrity for enhanced system security.

- **Confidentiality**
   - Hides messages, ensuring restricted access.
   - Keeps information secret, accessible only to authorized users.

- **Integrity Services**
   - Utilizes hash functions and digital signatures.
   - Verifies message integrity, detecting any alterations.

<br>
    <p align=center>
    <img width=700 src='../../Images/security-encryption-cryptograpghy.png'>
    </p>



----------------------------------------------

[Back to main page](../../README.md#security)    