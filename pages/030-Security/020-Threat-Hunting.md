
# Threat Hunting

- [Definition](#definition)
- [Phases of Threat Hunting](#phases-of-threat-hunting)
    - [Establishing a hypothesis](#establishing-a-hypothesis)
    - [Profiling Threat Actors and Activities](#profiling-threat-actors-and-activities)
    - [Actual Threat Hunting](#actual-threat-hunting)


## Definition 

A cyber security technique designed to detect presence of threat that have not been discovered by a normal security monitoring.

- Proactive, as oppose to reactive incidence response.
- Threat Hunting is potentially less disruptive that penetration testing

## Phases of Threat Hunting

- Establishing a hypothesis
- Profiling Threat Actors and Activities
- Actual Threat Hunting  

### Establishing a hypothesis

A hypothesis is derived from the threat modeling and is based on potential events with higher likelihood and higher impact.

- Who might want to harm us?
- Who might want to break our networks?
- How might they be able to do that?

### Profiling Threat Actors and Activities

Involves the creation of scenario that show how a prospective attacker might attempt an intrusion and what their objectives might be.

- What TTPs might they use? 
- Who wants to harm us?
- What are their objectives?
- Which threat actor categories do they belong?

###  Actual Threat Hunting 

Threat hunting relies on the usage of the tools developed for regular security monitoring and incident response.

- Analyze logs, file systems, registries, and network traffic
- Information is generally consolidated in SIEM
- Analyze other infected host
- Identify how the malicious process was executed

Threat hunting consumes a lot of resources and time to conduct, but can yield a lot of benefits.

- Improve detection capabilities
- Integrate intelligence
- Reduces attack surface
- Block attack vectors
- Identify critical assets

**Threat Hunting vs. Normal SOC Monitoring**

- Assume that all existing rules have failed.
- Seek undetected issues, or those that have bypassed the rules.
- Assume smart adversaries have good TTPs to avoid detection.
- Explore cases where queries do not return expected data.



----------------------------------------------

[Back to main page](../../README.md#security)    