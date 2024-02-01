
# System Hardening


- [Hardening](#hardening)
- [Configuration management](#configuration-management)
- [Rollback Plan](#rollback-plan)


## Hardening 

Hardening is the process of applying secure configurations (to reduce the attack surface) and locking down various hardware, communications systems and software, including the operating system, web server, application server and applications, etc.

## Configuration management 

Configuration management ensures that authorized and validated changes are the only ones made to a system. It involves decision-making and control procedures, focusing on aspects like identification, establishing baselines, and applying updates and patches.

- **Identification**
    - Baseline identification of a system and all its components, interfaces and documentation.

- **Baseline**
    - A security baseline is a reference point that sets the minimum accepted level of security requirements. It ensures updates adhere to essential security standards.

- **Change Control**    
    - Process for requesting changes to a baseline, with a review and approval process for updates and patches.

- **Verification and Audit**    
    - Ensure system integrity after changes and an audit to validate the current baseline against its initial baseline plus approved changes.

## Rollback Plan 

Ensuring a robust change management process involves testing changes in model environments before implementing them in production. 

- Unintended consequences may require a **rollback plan** to restore the system to its pre-change state.
- Critical for organizations lacking separate testing environments.
- Relying on vendor third-party testing can be an alternative solution.

----------------------------------------------

[Back to main page](../../README.md#security)        