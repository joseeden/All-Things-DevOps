
# Access Control

- [Security Control](#security-control)
- [Elements of Access Control](#elements-of-access-control)
    - [Subjects](#subjects)
    - [Objects](#objects)
    - [Rules](#rules)
- [Controls Assessment](#controls-assessment)
- [Privileged Acces Management](#privileged-acces-management)
- [Physical Access Controls](#physical-access-controls)
    - [What it is](#what-it-is)
    - [Types of Physical Access Controls](#types-of-physical-access-controls)
    - [Monitoring](#monitoring)
- [Logical Access Controls](#logical-access-controls)
    - [What it is](#what-it-is)
    - [Discretionary Access Control (DAC)](#discretionary-access-control-dac)
    - [Mandatory Access Control (MAC)](#mandatory-access-control-mac)
    - [Role-Based Access Control (RBAC)](#role-based-access-control-rbac)


## Security Control 


A control is a protective measure aiming to uphold the principles of Confidentiality, Integrity, and Availability (CIA Triad) for data. 

**Access control**, a subset, dictates the availability of objects to subjects based on specific rules.

For instance, a firewall is a control implemented in systems or networks to prevent external threats from compromising the environment and restrict unauthorized access to information within.

## Elements of Access Control 

Access controls involve more than just limiting access; they also encompass facilitating appropriate access for authorized personnel and processes while blocking access for unauthorized functions or individuals.

### Subjects

Subjects are the active initiators of service requests.

- Types: Users, processes, clients, programs, devices (endpoints, smartphones, etc.).
- Activity: Actively initiate access requests to resources or services.
- Interaction: Request services from objects.
- Clearance: Require suitable clearance (permissions) for accessing services or resources.

### Objects

By definition, anything that a subject attempts to access is referred to as an object. 

- Types: Buildings, computers, files, databases, printers, servers, memory blocks, etc.
- Role: Passive responders to subject-initiated service requests.
- Logic: Lack their own access control logic, relying on integrated systems.
- Ownership: Access is often recorded in rule bases or access control lists.
- Classification: May be classified based on access rules.

### Rules 

Access rules guide whether a subject can access an object based on their validated identity. For instance:

- Firewalls use access control lists for object access.
- Rules specify access levels, e.g., inside network to outside.
- When a user accesses a file, a rule validates and defines their access.
- Rules may compare attributes, define access levels, deny access, or apply time-based restrictions.

## Controls Assessment 

Risk reduction relies on the control's efficacy, adapting to changing situations. In securing a repurposed office space for confidential file storage, consider the following:

* Evaluate the necessity of biometric scanners on all doors.
* Conduct a site assessment to determine optimal scanner placement.
* Consider permanently securing or replacing non-critical doors.
* Ensure control implementation aligns with the value of the protected assets.

## Privileged Acces Management 

To ensure confidentiality, integrity, and availability of information, the Principle of Least Privilege is employed through **Privileged Acces ,Management**. Users receive access only to essential items, limiting exposure.

- **Access Control Examples**
  - Billing personnel access consumer financial data.
  - Limited authority for data modification to a select few.

- **Temporary or Limited Access**
  - Allowed for specific time periods or business hours.
  - Access rules restricting fields based on roles.

- **Regulatory Compliance**
  - Healthcare environment compliance (e.g., HIPAA).
  - Legal and privacy laws govern access.

- **Monitoring and Alarms**
  - Systems monitor access to private information.
  - Unauthorized attempts trigger alarms.

- **Security Measures**
  - Multi-factor authentication for critical access.


## Physical Access Controls

### What it is

Physical access controls are tangible security measures designed to prevent, monitor, or detect direct contact with systems or specific areas within a facility.

**Examples of Physical Access Controls**
- Security Guards
- Fences
- Motion Detectors
- Locked Doors/Gates
- Sealed Windows
- Lights
- Cable Protection
- Laptop Locks
- Badges
- Swipe Cards
- Guard Dogs
- Cameras
- Mantraps/Turnstiles
- Alarms

**Priority in Deployment**
When implementing physical access controls, the paramount concern is the safety and security of personnel, followed by the protection of other physical assets belonging to the company.


### Types of Physical Access Controls

Various physical access control mechanisms can be deployed to manage and monitor access to a facility, ranging from deterrents to detection systems. Each area requires distinct physical access controls, monitoring, and preventive measures.

1. **Badge Systems and Gate Entry**
   - Examples are Turnstiles, mantraps, remotely/system-controlled door locks.
   - Access Control Device: Badges with employee identifiers.
   - Access control devices are assigned and activated 
   - Include biometric characteristics in high-security environments.
   - System compares individual's badge against a verified database.
   - For card types: Bar code, magnetic stripe, proximity, smart, hybrid.

2. **Environmental Design**
   - Crime Prevention through Environmental Design (CPTED) focuses on passive design elements.
   - Directing flow, signaling authorized spaces, providing visibility to reduce the likelihood of criminal activities.

3. **Biometrics**
   - **Authentication Process**
     - User's registered biometric code stored in the system or on a smart card.
     - User presents biometric data for comparison with the stored code.
   - **Types**
     - **Physiological:** Fingerprint, iris scan, retinal scan, palm scan, venous scan.
     - **Behavioral:** Voiceprints, signature dynamics, keystroke dynamics.
   - **Considerations:** High accuracy, potential expense, user discomfort, privacy concerns, device sanitization challenges.


### Monitoring 

Implementing physical access controls, monitoring personnel and equipment movements, and maintaining detailed audit logs for all physical events are essential components in upholding comprehensive organizational security.

#### Cameras 

Effective security involves the integration of cameras and diverse sensors for comprehensive monitoring and detection.

1. **Cameras:**
    - Deter criminal activity.
    - Serve as forensic tools.
    - Centrally monitored for swift response.

2. **Motion Sensors:**
    - Infrared, microwave, and laser technologies.
    - Augment external perimeter monitoring.

3. **Integrated Sensors:**
    - Deployed in doors, gates, and turnstiles.
    - Strain-sensitive cables and vibration sensors.
    - Detect and respond to potential breaches.


#### Logs 

This includes physical logs, such as sign-in sheets or electronic access system logs. It emphasizes the importance of logs in supporting business needs, compliance, and forensic investigations.

- Record of events, vital for business requirements.
- Captured by security guards or electronic access systems.

**Log Protection:**
- Essential for legal and business reasons.
- Safeguarded against manipulation and unauthorized disclosure.

**Review and Retention:**
- Regular log review integral to the security program.
- Established guidelines for log retention aligned with policy.

**Log Anomalies:**
- Identification of unusual occurrences crucial.
- Key step in security issue detection during audits or routine monitoring.

**Business and Legal Variances:**
- Varying requirements for log retention.
- Compliance influenced by legal guidelines and industry standards.


#### Alarm Systems

Alarm systems aim to promptly notify relevant authorities in case of unexpected events.

**Basic Functionality**
- Commonly on doors/windows, designed to signal unexpected openings.
- Simplest form alerts appropriate personnel when unauthorized access occurs.

**Access Control**
- Authorized access (e.g., code/badge) does not trigger an alarm.
- Unauthorized access (e.g., forced entry) activates the alarm.

**Fire Alarm Systems**
- Activated by heat or smoke sensors.
- Audible warnings safeguard lives and notify local response teams.

**Emergency Response**
- Panic buttons serve as a quick alert mechanism.
- When activated, alerts police or security personnel for immediate response.

#### Security Guards

Security guards act as an effective deterrent to unauthorized access and ensuring the prevention of theft and misuse of assets.

**Deterrence**
- Security guards discourage individuals from attempting unauthorized access.
- Acts as a visible deterrent against impersonation or tailgating.

**Complement to Access Control**
- Regardless of access control methods, guards reinforce security measures.
- Monitoring systems and guards work synergistically to enhance overall security.

**Preventing Theft and Abuse**
- Guards contribute to preventing theft and abuse of equipment or sensitive information.
- Their presence adds an extra layer of protection to physical assets.


## Logical Access Controls

### What it is 

Physical access controls utilize tangible methods to limit entry to specific areas or assets, whereas logical access controls employ electronic methods to restrict access to systems, and occasionally tangible assets or areas. 

- Passwords
- Biometrics (implemented on systems like smartphones or laptops)
- Badge/token readers linked to a system

These electronic tools play a crucial role in restricting logical access to an asset, independent of an individual's physical access.

### Discretionary Access Control (DAC)

Discretionary Access Control (DAC) is an access control policy governing subjects and objects in an information system. In DAC, a subject with granted access can:

1. Share information with other subjects or objects
2. Grant its privileges to other subjects
3. Modify security attributes on various entities
4. Define security attributes for newly created or revised objects
5. Adjust rules governing access control (with restrictions in mandatory access controls)

**DAC in the Workplace**
In a DAC system, users can share or pass files at their discretion. Asset owners decide access permissions, from digital file-sharing to low-tech measures like visitor's badges issued at the security desk.


### Mandatory Access Control (MAC)

Mandatory Access Control (MAC) ensures a uniform policy across an information system, restricting specific actions to trusted security administrators. Unlike Discretionary Access Control (DAC), MAC mandates access rights rather than relying on owner discretion.

- Only trusted admins modify security rules.
- Subjects have restricted privileges.
- Prevents unauthorized information sharing.
- Restricts granting of privileges.
- Controls changes to security attributes.
- Governs security attributes of new objects.
- Manages rules for access control.

**MAC in the Workplace**
Determines access uniformly based on policies, often associated with government agencies.

- Security clearance dictates access.
- Access determined by government policy.
- Limited individual decision-making.
- Separation of duties is common.
- Role-based access control often utilized.


### Role-Based Access Control (RBAC) 

Assigns user permissions based on predefined roles, streamlining access management.

- Permissions assigned according to roles.
- Roles group users with similar permissions.
- Efficient management of user access.
- Simplifies administration tasks.
- Enhances security and reduces complexity.

**RBAC in the Workplace**
Role-based access control tailors user privileges based on their organizational roles, ensuring appropriate access.

- HR staff access personnel files.
- Finance accesses bank accounts.
- Managers have access to direct reports and departments.
- System administrators may have comprehensive access.
- New employees receive minimal required access.
- Continuous monitoring prevents privilege creep.
- Careful management of evolving roles and permissions.
- Standard roles for new user creation to avoid issues.
- Ensures employees have necessary access for their roles.




----------------------------------------------

[Back to main page](../../README.md#security)    