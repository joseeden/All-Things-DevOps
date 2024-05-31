
# System Hardening

- [Hardening](#hardening)
- [Configuration management](#configuration-management)
- [Noncompliant to Security Baselines](#noncompliant-to-security-baselines)
- [Reducing system elements](#reducing-system-elements)
- [Patch Management](#patch-management)
- [Filtering](#filtering)
    - [Whitelisting](#whitelisting)
    - [Blacklisting](#blacklisting)
    - [Graylisting](#graylisting)
- [Other Terms](#other-terms)
    - [Service Pack](#service-pack)
    - [Hotfix](#hotfix)
    - [Software Patch](#software-patch)


## Hardening 

Hardening is the process of applying secure configurations (to reduce the attack surface) and locking down various hardware, communications systems and software, including the operating system, web server, application server and applications, etc.

- Applying security patches
- Configure access controls
- Disable unnecessary services 
- Adopt best practices


## Configuration management 

Configuration management ensures that authorized and validated changes are the only ones made to a system. 

It involves decision-making and control procedures, focusing on aspects like identification, establishing baselines, and applying updates and patches.

- **Identification**
    - Baseline identification of a system and all its components, interfaces and documentation.

- **Baseline**
    - A security baseline is a reference point that sets the minimum accepted level of security requirements. 
    
    - It ensures updates adhere to essential security standards.

    - Security baselines are used to guarantee that network devices, software, hardware and endpoints are configured consistently. 

- **Change Control**    
    - Process for requesting changes to a baseline, with a review and approval process for updates and patches.

- **Verification and Audit**    
    - Ensure system integrity after changes and an audit to validate the current baseline against its initial baseline plus approved changes.

## Noncompliant to Security Baselines 

Whenever a device is found not compliant with the security baseline, it may be disabled or isolated into a quarantine area until it can be checked and updated

## Reducing system elements 

Reducing the number of system elements is a system hardening technique that removes unnecessary software and services to reduce the attack surface. 


## Patch Management 

Patch Management involves updating software to address vulnerabilities and improve security.
  - Ensures systems are protected against known threats.
  - Key for maintaining a secure and resilient IT infrastructure.

**Challenges and Best Practices**
- Patches may disrupt system stability.
- Balancing rapid deployment with stability is crucial.
- Test patches in a qualification environment before production.
- Relying solely on vendor reputation for patch qualification is insufficient.
- Applying patches on fixed days doesn't ensure post-patch stability.

## Filtering  

### Whitelisting

- Allows only authorized applications; blocks all others.
- Requires creating a list of approved applications.
- Greater control, prevents malware, and unauthorized applications.

### Blacklisting

- Blocks known malicious software.
- Doesn't prevent unknown threats.

### Graylisting

- Temporarily blocks emails from unknown senders.
- Requires the sender to resend the email.

## Other Terms 

### Service Pack
  
- Collection of updates, fixes, or enhancements bundled into a single installable package.
- Provides comprehensive improvements to a software program.

### Hotfix

- Also known as "Quick-Fix"
- Cumulative package addressing specific issues in a software product.
- Contains information to fix problems efficiently.

### Software Patch
  
- Quick-repair solution for programming issues.
- Designed to address functionality problems, enhance security, or introduce new features.


----------------------------------------------

[Back to main page](../../README.md#security)        