
# Threat Hunting

- [Establishing a hypothesis](#establishing-a-hypothesis)
- [Profiling Threat Actors and Activities](#profiling-threat-actors-and-activities)
- [Actual Threat Hunting](#actual-threat-hunting)


## Threat Hunting 

A cyber security technique designed to detect presence of threat that have not been discovered by a normal security monitoring.

- Proactive, as oppose to reactive incidence response.
- Threat Hunting is potentially less disruptive that penetration testing

There are three general phases:

- Establishing a hypothesis
- Profiling Threat Actors and Activities
- Actual Threat Hunting  

### Establishing a hypothesis

A hypothesis is derived from the threat modeling and is based on potential events with higher likelihood and higher impact.

### Profiling Threat Actors and Activities

Involves the creation of scenario that show how a prospective attacker might attempt an intrusion and what their objectives might be

### Actual Threat Hunting 

Threat hunting relies on the usage of the tools developed for regular security monitoring and incident response.

- Information is generally consolidated in SIEM
- Analyze network traffic
- Analyze the executable process list
- Analyze other infected host
- Identify how the malicious process was executed

Threat hunting consumes a lot of resources and time to conduct, but can yield a lot of benefits.

- Improve detection capabilities
- Integrate intelligence
- Reduces attack surface
- Block attack vectors
- Identify critical assets

It is important to note that we have to assume that all existing rules have failed when threat hunting. 

- Looking for things not detected, or those that have bypassed the rules.
- Query not returning expected data.
- Assume smart adversaries have good TTPs to avoid detection.



----------------------------------------------

[Back to main page](../../README.md#security)    