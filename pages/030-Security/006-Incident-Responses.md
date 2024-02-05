
# Incident Responses


- [Incident Terminology](#incident-terminology)
  - [Breach](#breach)
  - [Event](#event)
  - [Exploit](#exploit)
  - [Incident](#incident)
  - [Intrusion](#intrusion)
  - [Threat](#threat)
  - [Vulnerability](#vulnerability)
  - [Zero Day](#zero-day)
  - [Impact](#impact)
- [Goal of Incident Response](#goal-of-incident-response)
- [Conducting regular incident response drills and exercises](#conducting-regular-incident-response-drills-and-exercises)
- [Components of the Incident Response Plan](#components-of-the-incident-response-plan)
  - [Preparation](#preparation)
  - [Detection and Analysis](#detection-and-analysis)
  - [Containment](#containment)
  - [Recovery](#recovery)
- [Incident Response Team](#incident-response-team)
  - [Key Points](#key-points)
  - [Incident Response Models](#incident-response-models)
      - [Leveraged Incident Response Model](#leveraged-incident-response-model)
      - [Dedicated Incident Response Model](#dedicated-incident-response-model)
      - [Hybrid Incident Response Model](#hybrid-incident-response-model)
  - [Responsibilities](#responsibilities)



## Incident Terminology

Security professionals work to prevent malicious attacks and human errors, but incidents still happen. They also act as first responders. Understanding incident response begins with knowing the terms for various cyberattacks.

### Breach

The loss of control, compromise, unauthorized disclosure, unauthorized acquisition, or any similar occurrence where: a person other than an authorized user accesses or potentially accesses personally identifiable information; or an authorized user accesses personally identifiable information for other than an authorized purpose. (NIST SP 800-53 Rev. 5)

### Event

Any observable occurrence in a network or system. (NIST SP 800-61 Rev 2)

### Exploit

A particular attack. It is named this way because these attacks exploit system vulnerabilities.

### Incident

An incident is an unplanned event that could impact the confidentiality, integrity, or availability of information or information systems, and requires a response to mitigate or resolve the incident.

### Intrusion

A security event, or combination of events, that constitutes a deliberate security incident in which an intruder gains, or attempts to gain, access to a system or system resource without authorization. (IETF RFC 4949 Ver 2)

### Threat

Any circumstance or event with the potential to adversely impact organizational operations (including mission, functions, image or reputation), organizational assets, individuals, other organizations or the nation through an information system via unauthorized access, destruction, disclosure, modification of information and/or denial of service. (NIST SP 800-30 Rev 1)

### Vulnerability

Weakness in an information system, system security procedures, internal controls or implementation that could be exploited by a threat source. (NIST SP 800-30 Rev 1)

### Zero Day

A previously unknown system vulnerability with the potential of exploitation without risk of detection or prevention because it does not, in general, fit recognized patterns, signatures or methods.

### Impact 

The magnitude of the harm expected as a result of the consequences of an unauthorized disclosure, modification, destruction, or loss of information.

## Goal of Incident Response

- Organizations must prepare for incidents despite preventive measures.
- Incident response prioritizes safety and aims to minimize impact.
- **Crisis management** is sometimes used interchangeably with incident management.
- Events disrupting the business mission are termed **incidents**.
- An incident response plan ensures business viability.
- The incident response process aims to minimize impact and resume operations swiftly.
- It's a subset of the broader business continuity management (BCM).

## Conducting regular incident response drills and exercises

Incident response drills and exercises are conducted to simulate real-world scenarios and test the organization's incident response capabilities. By doing so, vulnerabilities and weaknesses in the security posture can be identified and addressed, enabling the organization to improve its overall resilience against potential cyber threats.

## Components of the Incident Response Plan

The incident response policy aligns with the plan, outlining procedures and standards. Shaped by the organization's vision, the process defines technical processes and tools used in incident response. 

Common components in the plan include:

- [Preparation](#preparation)
- [Detection and Analysis](#detection-and-analysis)
- [Containment](#containment)
- [Recovery](#recovery)

### Preparation

1. Develop a management-approved policy.
2. Identify critical data, systems, and single points of failure.
3. Train staff on incident response.
4. Implement an incident response team (covered later).
5. Practice incident identification (first response).
6. Identify roles and responsibilities.
7. Plan communication coordination between stakeholders.

### Detection and Analysis

1. Monitor all potential attack vectors.
2. Analyze incidents using known data and threat intelligence.
3. Prioritize incident response efforts.
4. Standardize incident documentation.

#### Analysis - Forensic Investigation

The primary purpose of a forensic investigation during the analysis phase of an incident response is to collect and preserve evidence.

- Involves meticulous data collection and handling.
- Ensure the admissibility of evidence in court.
- Reference: (ISC2 Study Guide, Module 1, under Incident Response Team).

### Containment

1. Involves taking immediate actions to isolate and contain the incident.
2. Gather evidence.
3. Choose an appropriate containment strategy.
4. Identify the attacker.

### Recovery 

1. Involves restoring affected systems to their normal state after the incident
2. Identify evidence that may need to be retained.
2. Document lessons learned, analyzing response actions, and identifying areas for improvement.

## Incident Response Team

Establishing a Security Operations Center (SOC) necessitates the creation of an efficient incident response team. This team, whether dedicated, leveraged, or a blend of both, is crucial for addressing security incidents promptly and effectively.

### Key Points

- **First Responder Role:** IT professionals often serve as the first responders, distinguishing security incidents from routine IT problems.
- **Training Requirement:** Specific training for IT professionals is essential to identify and appropriately report security incidents.
- **Team Composition:** An incident response team typically comprises cross-functional members representing various areas impacted by security incidents.
  - Senior Management Representatives
  - Information Security Professionals
  - Legal Experts
  - Public Affairs/Communications Representatives
  - Engineering Representatives (System and Network)

### Incident Response Models 

#### Leveraged Incident Response Model

   - Outsourcing incident response capabilities to external experts.
   - Leverages third-party services or partnerships for specialized support.
   - Allows organizations to benefit from external expertise and resources.

#### Dedicated Incident Response Model

   - Establishes an in-house incident response team.
   - Team members are dedicated solely to handling and mitigating incidents.
   - Enables a rapid and focused response to security events.

#### Hybrid Incident Response Model

   - Combines internal and external resources for incident response.
   - Utilizes both in-house teams and external support as needed.
   - Offers flexibility and scalability in managing incidents effectively.

### Responsibilities

- **Training Requirement:** 
  - Team members should undergo training on both incident response and the organization's specific incident response plan.
- **Investigation and Assessment:**
  - Assist in investigating the incident.
  - Assess the extent of the damage.
- **Evidence Collection and Reporting:**
  - Collect evidence related to the incident.
  - Report the incident to relevant stakeholders.
- **Recovery Procedures:**
  - Initiate and participate in recovery procedures.
- **Remediation and Analysis:**
  - Participate in remediation efforts.
  - Contribute to the lessons learned stage.
  - Assist with root cause analysis.

**Dedicated Incident Response Teams (CIRTs/CSIRTs):**
- **Primary Responsibilities:**
  - Determine the extent and scope of damage.
  - Assess the compromise of confidential information.
  - Implement recovery procedures.
  - Supervise additional security measures for prevention.




----------------------------------------------

[Back to main page](../../README.md#security)    