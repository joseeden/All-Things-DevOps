
# Security Policies

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

For more details, please see [Asset and Change Management](./051-Asset-and-Change-Management.md#change-management). 


----------------------------------------------

[Back to main page](../../README.md#security)    