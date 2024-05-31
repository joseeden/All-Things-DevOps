
# Security Policies

- [Common Security Policies](#common-security-policies)
    - [Employee/Contractor Hiring](#employeecontractor-hiring)
    - [Accounts/Credential Policy](#accountscredential-policy)
    - [Data Handling Policy](#data-handling-policy)
    - [Password Policy](#password-policy)
    - [Bring Your Own Device](#bring-your-own-device)
    - [Privacy Policy](#privacy-policy)
    - [Acceptable Use Policy](#acceptable-use-policy)
    - [Information Security Policy](#information-security-policy)
    - [Business Continuity Policy](#business-continuity-policy)
    - [Disaster Recovery](#disaster-recovery)
    - [Incident Response](#incident-response)
    - [SDLC Policy](#sdlc-policy)
    - [Change Management Policy](#change-management-policy)
- [Change Management Components](#change-management-components)
    - [Request for Change RFC](#request-for-change-rfc)
    - [Approval](#approval)
    - [Rollback](#rollback)
- [Continuous Change Management Cycle](#continuous-change-management-cycle)




## Common Security Policies

Every policy should align with the organization's regulatory and contractual obligations. Balancing comprehensiveness with user-friendly simplicity can be challenging.

### Employee/Contractor Hiring 

**Hiring phase:**

- Social media analysis
- Web search 
- Background check 
    - Criminal record
    - Unpaid fines
    - Credit check
    - Interview with references 

**User Onboarding:**

- Signing NDAs 
- Security POlicy Awareness 
- User account and resource access 
- Issuance of security badge and smart cards

**User Habits:**

- Clean desk policies 
- Shredding of sensitive documents
- Secure personally-owned devices 
- MDM (Mobile Device Management)
- BYOD (Bring your own device)

**User Training:**

- Ongoing, role-based
- Computer-based training 
- Gamification like CTF contests 
- Phishing campaigns/simulations

**User Offboarding:**

- Termination Letter 
- Exit Interview 
- Return of equipment
- Knowledge Transfer
- Disable and delete accounts

### Accounts/Credential Policy 

Defines who get access to what. 

- Employees
- Contractors
- Devices 
- Service Accounts 
- Administrators/Root accounts
- PAM

**Geolocation:**

- Allowing access based on user's location 
- **Geofencing** - user geolocation determines resource access 
- **Geotagging** - adding location metadata to files 
- **Impossible travel time** - if user is in one location, he can't be signed in on another location, but can be bypassed by VPN or Tor.

### Data Handling Policy

A critical policy ensuring proper data use, including:

- Internal or external data use
- Restrictions based on roles
- Legal usage definitions
- Compliance with laws and regulations
- Example: PCI DSS compliance for credit card data
- Encryption requirements for classified data

### Password Policy

Every organization requires a comprehensive password policy for secure data access, including:

- Leadership commitment
- Password formulation standards
- Designated policy enforcers

Password Security:

- **Length** 
    - Recommended 12-16 characters 
- **Complexity** 
    - Alphanumeric + symbols
- **Reuse** 
    - If one account is compromised, another account is also compromised
- **Expiration** 
    - Change password every 90 days
- **Password age** 
    - Minimum number of days before user needs to change password again
- **Risky logins**
    - Locking accounts after a number of incorrect attempts 

### Bring Your Own Device

BYOD allows employee use of personally owned devices for business, requiring:

- Clear policies and business rules
- Employee agreement before system access

### Privacy Policy

Crucial for personnel with PII access, outlining:

- PII definition
- Handling procedures
- Expectations and enforcement
- References to applicable regulations
- Creation of a public document

### Acceptable Use Policy

It is a document that outlines the do's and don'ts for users when interacting with an organization's IT systems and resources.

- Data access
- System access
- Data disclosure
- Passwords
- Data retention
- Internet usage
- Company device usage

### Information Security Policy

Outlines how an organization protects its information assets from threats, both internal and external. These policies cover a range of areas, including

- Data Classification
- Access Control 
- Encryption 
- Physical Security

### Business Continuity Policy 

Focuses on how an organization will continue its critical operations during and after a disruption. 

- Outline the steps to ensure minimal interruption to services.
- Focuses on recovering as quickly as possible.
- Dealing with strategies like hardware failure and natural disasters. 

To learn more, please see [Business Continuity.](./007-Business-Continuity.md)

### Disaster Recovery

Closely related to business continuity, disaster recovery focuses on how an organization will recover its IT systems and data after disaster. 

- Outlines steps for data backup and restoration.
- Hardware/software recovery, as well as alternative processing locations.

To learn more, please see [Disaster Recovery.](./008-Disaster-recovery.md)


### Incident Response  

A plan for handling security incidents. 

- Involves steps on detecting, assessing, and responding to incidents.
- Can include person to contact in case of data breach. 

To learn more, please see [Incident Response.](./006-Incident-Responses.md)

### SDLC Policy 

A software development lifecycle (SDLC) policy guides how software is developed within an organization. It covers all stages of software development:

- Initial requirements gathering 
- Design 
- Coding 
- Testing 
- Maintenance

It may also include standards:

- Secure coding practices 
- Code reviews
- Software testing

### Change Management Policy

Essential for transitioning from current to future states, covering:

- Decision-making process
- Implementation of changes
- Confirmation of correct implementation
- Mitigating vulnerabilities introduced by changes

## Change Management Components

Change Management Procedure typically involves:

1. The need for change is identifies (RFC). 
2. A plan is developed. 
3. Change is implemented, often in stages. 
4. A review is conducted to assess the success of the change.

### Request for Change (RFC)

Initiating the change management process with an RFC, including:

- Core activities in change management
- Formalized management and decision-making
- Documented results in accounting or log entries

### Approval 

Key steps in the approval process involve:

- Evaluating RFC completeness
- Assigning to the proper authorization process
- Stakeholder reviews and resource allocation
- Obtaining necessary approvals or rejections
- Documenting the approval or rejection status

### Rollback 

Addressing the potential need for rollback with activities such as:

- Scheduling and testing the change
- Verifying rollback procedures
- Implementing the change and evaluating its effectiveness
- Documenting changes in the production environment
- Rollback authority defined in the rollback plan

## Continuous Change Management Cycle

- **Ongoing Process**: Change management is a continuous cycle that requires constant monitoring and approvals.
- **Rollback Preparedness**: Organizations must be prepared for rollbacks in case a change proves ineffective.
- **Coordination Responsibility**: Information Security professionals often coordinate and oversee change management.
- **Departmental Involvement**: It can fall under IT, development, quality, or risk management departments.
- **Comprehensive Oversight**: Involves input from end users, various IT areas, and management to ensure proper testing, approval, and communication before implementation.


----------------------------------------------

[Back to main page](../../README.md#security)    