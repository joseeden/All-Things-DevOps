
# Privileged Access Management

- [Principle of Least Privilege](#principle-of-least-privilege)
- [Privileged Acces Management (PAM)](#pam)
- [Use Case](#use-case)
- [Privileged Accounts](#privileged-accounts)
- [Segregation of Duties](#segregation-of-duties)
- [Authorized Versus Unauthorized Personnel](#authorized-versus-unauthorized-personnel)
- [How Users Are Provisioned](#how-users-are-provisioned)


## Principle of Least Privilege

The Principle of Least Privilege dictates that users or programs should be granted the minimum access essential to fulfill their functions. Access is restricted to the specific systems and programs required for their designated job or tasks.


## PAM  

To ensure confidentiality, integrity, and availability of information, the Principle of Least Privilege is employed through **Privileged Acces Management**. Users receive access only to essential items, limiting exposure.

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


## Use Case 

This example emphasizes the importance of PAM in enhancing security by transitioning from static to just-in-time access. 

**Key Points**

- **Static Privileges**
    - Continuous 24/7 access with full privileges.
    - Security relies on the login process.

- **Just-in-Time PAM**
    - Role-based subset privileges triggered on-demand.

The scenario at ABC, Inc., highlights the risks of excessive privileges leading to a ransomware attack and underscores the need for controlled access.

- **Excessive Privileges**
  - IT department's inclusion in Domain Admins group.
  - Ransomware attack due to unrestricted access.

- **Damage Limitation**
  - Administrator privileges used selectively.
  - Routine tasks performed with standard access, reducing potential harm.


## Privileged Accounts

Privileged accounts extend beyond regular user permissions, catering to diverse roles such as systems administrators, IT support, security analysts, and project-specific teams. Delegated authority must align with trustworthiness, as misuse can harm the organization.

**Classes of Privileged Users**
- Systems administrators: Oversee OS, applications, and performance.
- Help desk/IT support: Manage endpoints, servers, and applications.
- Security analysts: Quick access to IT infrastructure and data.

**Delegation Considerations**
- Authority delegated aligns with trustworthiness.
- Contingent on preventing misuse or abuse.

**Risk Mitigation Measures**
- **Detailed Logging**
  - Crucial for deterrent and administrative control.
- **Stringent Access Control**
  - Nonprivileged users require MFA.
  - Additional authentication for privileged users.
  - Explore just-in-time identity for specific access needs.

**Trust Verification**
- Background checks, nondisclosure agreements, and policies.
- Financial investigations with periodic updates for privileged accounts.

**Audit Enhancement**
- **Monitoring and Auditing**
  - Intensive monitoring for privileged accounts.
  - Increased audit frequency and depth compared to regular users.

## Segregation of Duties 

**Segregation of Duties (SoD)**

Segregation of duties (SoD) ensures that no single person has control over an entire high-risk transaction. It divides transactions into parts, necessitating different individuals for each segment to prevent fraud and errors.

- **Fraud Prevention**
  - Ensures different individuals handle distinct transaction phases.
  - Requires managerial approval before critical actions.

- **Collusion Awareness**
  - Guards against collusion where individuals collaborate to bypass controls.

- **Dual Control Implementation**
  - Utilizes two combination locks on vault doors.
  - Requires collaboration for access, enhancing security.

**Two-Person Integrity**

The two-person rule mandates at least two individuals to be present simultaneously in an area, ensuring increased security, reducing insider threats, and providing assistance during emergencies.

## Authorized Versus Unauthorized Personnel

**Authorization Process Overview:**

Authentication ensures the subject's legitimacy, and authorization determines their allowed actions. This is typically governed by a security matrix indicating pre-approved access levels.

- **Example: Physical Access Control**
  - **Scenario:** Presenting an ID badge to a data center door.
  - **Process:**
    - System checks ID number.
    - Compares against the security matrix.
    - Unlocks the door for authorized IDs; remains locked if not.

- **Example: File Deletion Authorization**
  - **Scenario:** User attempting to delete a file.
  - **Process:**
    - File system checks user permissions.
    - Authorizes deletion if permissions match.
    - Displays error message and retains file if unauthorized.

## How Users Are Provisioned

**User Account Provisioning and Changes:**

Provisioning new user accounts or altering privileges is essential in various scenarios:

- **New Employee Onboarding:**
    - Hiring manager requests new user ID creation from the security administrator.
    - Request specifies access levels, with potential need for additional authorization.
  
- **Change of Position:**
    - Employee promotion triggers adjustments in permissions and access rights.
    - New role defines added privileges, and unnecessary access is revoked.

- **Separation of Employment:**
    - Upon termination, accounts are disabled, adhering to company policy.
    - Disabled accounts may be retained for a period before deletion for audit trail integrity.
    - Removal from security roles and access profiles prevents unauthorized data access.

Note: 

- Avoid copying user profiles for new users to prevent "permission or privilege creep." 
- Standard roles are recommended for creating new users based on established standards rather than duplicating an existing user's profile.



----------------------------------------------

[Back to main page](../../README.md#security)    