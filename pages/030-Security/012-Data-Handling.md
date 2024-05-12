
# Handling Data



- [Data States](#data-states)
   - [Data at Rest](#data-at-rest)
   - [Data in Use](#data-in-use)
   - [Data in Transit](#data-in-transit)
- [Data Types](#data-types)
   - [By Nature](#by-nature)
   - [By Format](#by-format)
   - [By Use](#by-use)
   - [By Origin](#by-origin)
   - [By Sensitivity](#by-sensitivity)
- [Data Classification](#data-classification)
- [Government Classifications](#government-classifications)
- [Data Ownership](#data-ownership)
- [Data Lifecycle](#data-lifecycle)
- [Identify and Assess Data](#identify-and-assess-data)
- [Data Sovereignty](#data-sovereignty)
- [Logging and Monitoring Security Events](#logging-and-monitoring-security-events)
- [Event Logging Best Practices](#event-logging-best-practices)
   - [Ingress Monitoring](#ingress-monitoring)
   - [Egress Monitoring](#egress-monitoring)




## Data States 

### Data at Rest

Data stored in a physical location, such as a hard drive, database, or cloud storage. 

- Vulnerable to physical theft, unauthorized access, or attacks that compromise storage systems.
- It is not actively moving or being transferred between systems.
- Security measures include physical security, access controls, and monitoring.

### Data in Use

Data currently being processed, manipulated, or accessed by an application or user.

- Data being analyzed by software, accessed by a user, or used by a running application or service.
- Vulnerable to unauthorized access, application-level attacks, memory-based exploits, and insider threats.
- Application security, user authentication, authorization controls, data masking, and memory protection techniques (e.g., address space layout randomization)

### Data in Transit

Data actively moving between locations or systems, such as over networks, between servers, or through communication channels.

- Sent via email, the internet, or communication between networked devices.
- Data remains unreadable without the proper decryption key. 
- TLS (Transport Layer Security) and VPNs (Virtual Private Networks) 
- Data in transit is susceptible to interception and eavesdropping. 


## Data Types 

### By Nature

- **Structured Data**
    -  Data organized into a defined format, such as tables or databases, where elements are easily identifiable (e.g., Excel spreadsheets, SQL databases).

- **Unstructured Data**
    -  Data without a specific structure, making it harder to organize and analyze (e.g., text documents, emails, images).

- **Semi-structured Data**
    -  Data with some organization but not fully structured, often containing metadata (e.g., JSON, XML).

### By Format

- **Text Data**
    -  Information stored in a text-based format, such as documents, emails, or code.

- **Numeric Data**
    -  Data represented by numbers, like financial data, statistics, or sensor readings.

- **Binary Data**
    -  Data represented in binary form, including computer files, images, videos, or audio.


### By Use

- **Operational Data**
    -  Data used in day-to-day operations, like customer records, sales transactions, or inventory information.

- **Analytical Data**
    -  Data used for analysis and business intelligence, often derived from operational data.

- **Master Data**
    -  Core business data that remains consistent across different systems, such as customer or product information.

- **Metadata**
    -  Data about data, providing information on the properties or structure of data.

### By Origin

- **Primary Data**
    -  Data collected directly from original sources through surveys, experiments, or direct observations.

- **Secondary Data**
    -  Data derived from existing sources, such as reports, studies, or databases. 

### By Sensitivity

- **Sensitive Data**
    -  Data that requires special protection due to privacy or security concerns (e.g., personal identifiable information, financial records).
    - Examples:

      - **Regulated data**
      
         - Falls under sensitive data due to legal regulations and privacy concerns.

      - **Trade secrets**
      
         - Considered sensitive due to their confidential nature and importance to business competitiveness.

      - **Intellectual property**
      
         - Classified as sensitive due to its value and the need for protection against theft or unauthorized use.
      
      - **Legal info**
      
         - Falls under sensitive data due to the confidentiality of legal matters and attorney-client privilege.
      
      - **Financial info**
      
         - Classified as sensitive due to the potential for financial fraud or identity theft.

- **Non-sensitive Data**
    -  Data that does not require stringent security measures, generally considered public or low-risk.



## Data Classification 

In general, data can be classified as:


- **Public Data** 

   - Data that has no impact on the company if released.
   - Often posted in an open-source environment, e.g. Websites

- **Sensitive Data** 

   - Data that has minimal impact if released.
   - Organization's financial data
   - Data that can be leveraged or taken advantaged of by competitors
   - PII and PHI:

      - **PII (Personally Identifiable Information)**
         - Identifying details like name, address, social security number, or biometric data.
         - Unauthorized access can lead to identity theft or financial fraud.

      - **PHI (Protected Health Information)**
         - Health-related data such as medical records or insurance information.
         - Subject to strict regulations like HIPAA.
         - Unauthorized disclosure can have legal consequences.

- **Private Data** 

   - Contains information that should only be used within an organization.
   - Internal data such as revenue, or social security numbers of employees
   - Example: Salary information, Organization Chart per departments

- **Confidential Data** 

   - Data that can only be viewed by approved personnel
   - Examples: intellectual property data, source code

- **Critical Data** 

   - Contains valuable information; Viewing is extremely restricted.
   - Examples: Credit card numbers

## Government Classifications 

- **Unclassified**
  - Publicly available information.
  - General government publications or press releases.
  - Publicly accessible government websites or databases.
  - Non-sensitive administrative records such as meeting minutes or agendas.
  
- **Sensitive but Unclassified**
  - Critical infrastructure vulnerabilities.
  - Data shared with relevant agencies for protection without formal classification.
  - Law enforcement records related to ongoing investigations
  - Personally identifiable information (PII) collected by government agencies for specific purposes.

- **Confidential**
  - Diplomatic cables detailing sensitive negotiations.
  - Plans for the security of a high-level government event.
  - Non-public financial information related to government budgets or expenditures.

- **Secret**
  - Intelligence reports on enemy troop movements.
  - Details of advanced military technologies under development.
  - Sensitive information related to ongoing covert operations or espionage activities.

- **Top Secret**
  - Nuclear launch codes.
  - Identities of undercover operatives in enemy territories.
  - Comprehensive intelligence assessments of foreign governments.

## Data Ownership 

- **Data Owner**

   - Legal data owner.
   - **Not the creator of the file, but a senior executive**.
   - Sets policies on how data will be managed.

- **Data Controller**

   - Ensure data complies with regulations.
   - Decides the purpose and methods for storage, collection, and usage.
   - **Ultimate accountability for any breaches**

- **Data Processor**

   - Person or group **hired by the data controller** to help with processing data.
   - Processes data while adhering to laws and regulations.
   - Handle data according to guidelines.

- **Data Custodian/Steward**

   - Focused on **quality of data and associated metadata**
   - Day-to-day management of data.
   - Is aligned with policies set by data owner. 
   - Owner sets rules, custodian enacts the rules.
   - Data custodian could be the system administrator.
   - Permissions, backup, etc.

- **Data Privacy Officer (DPO)**

   - Important data role.
   - Oversight of any privacy-related data, such as PII, SPI, or PHI.
   - Ensure data privacy regulation compliance such as GDPR.



## Data Lifecycle

Data undergoes a life cycle encompassing creation, usage, sharing, and modification. Various models exist, sharing common operational steps. 

1. **Collect/Create** 
   - Creating the knowledge, which is usually tacit knowledge at this point.

2. **Store** 
   - Storing or recording it in some fashion (which makes it explicit).

3. **Use/Process** 
   - Using the knowledge, which may cause the information to be modified, supplemented or partially deleted.    

4. **Share** 
   - Sharing the data with other users, whether as a copy or by moving the data from one location to another.

5. **Archive** 
   - Archiving the data when it is temporarily not needed.

6. **Destroy** 
   - Destroying the data when it is no longer needed.


## Identify and Assess Data

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

## Data Sovereignty  

Refers to the concept that digital information is subject to the laws of the country in which it is located.

- Where did the data originate?
- Where does the data reside?
- Which laws and regulations apply?


## Logging and Monitoring Security Events

Logging is critical for capturing events and ensuring accountability. 

According to the ISC2 Study Guide (chapter 5, module 1, under Data Handling Practices), logging and monitoring systems are characterized as being "Essential to identifying inefficient performing systems, detecting compromises, and providing a record of how systems are used".

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
   - IPS monitors network traffic and detects potential threats.
   - IPS then takes action to prevent unauthorized or malicious activities.

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


----------------------------------------------

[Back to main page](../../README.md#security)    