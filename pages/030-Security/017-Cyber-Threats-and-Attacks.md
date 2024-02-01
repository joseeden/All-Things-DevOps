
# Cyber Threats and Attacks

- [Types of Threats](#types-of-threats)
- [Identify Threats](#identify-threats)
- [Intrusion Detection System IDS](#intrusion-detection-system-ids)
    - [Host-based IDS (HIDS)](#host-based-ids-hids)
    - [Network-based IDS (NIDS)](#network-based-ids-nids)
- [Preventing Threats](#preventing-threats)


## Types of Threats 

There are many types of cyber threats to organizations. Below are several of the most common types: 

| **Threat/Attack**        | **Description**                                                                                | **Example**                                 |
|--------------------------|-----------------------------------------------------------------------------------------------|---------------------------------------------|
| **Malware**              | Malicious software designed to harm or exploit systems.                                         | Viruses, worms, trojans                     |
| **Phishing**            | Deceptive attempts to obtain sensitive information.                                             | Fake emails, websites, or messages          |
| **Ransomware**          | Malware that encrypts files, demanding payment for their release.                               | WannaCry, CryptoLocker                      |
| **Denial of Service (DoS)** | Overwhelming a system to make it unavailable.                                                  | Flood attacks, DDoS                         |
| **Man-in-the-Middle (MitM)** | Intercepting and potentially altering communication between two parties.                       | Eavesdropping, session hijacking            |
| **SQL Injection**       | Exploiting vulnerabilities in SQL databases to manipulate or retrieve data.                    | Injecting malicious SQL queries            |
| **Zero-Day Exploit**     | Targeting vulnerabilities unknown to software developers.                                     | Exploiting a flaw before a patch is released|
| **Social Engineering**   | Manipulating individuals to divulge confidential information.                                  | Impersonation, pretexting                   |
| **Cross-Site Scripting (XSS)** | Injecting malicious scripts into webpages viewed by others.                                   | Script injection in online forms            |
| **Password Attacks**     | Attempts to gain unauthorized access by cracking or stealing passwords.                         | Brute-force attacks, password guessing      |

This table provides a concise overview of various cyber threats and attacks along with brief descriptions and examples for each.

## Identify Threats

Protecting against all attacks requires multiple steps, and implementing fundamental measures can guard against various threats. Here are examples of actions to safeguard networks:

1. **Service and Protocol Management**
   - If a service or protocol is unnecessary, it should be deactivated. Attackers cannot exploit vulnerabilities in inactive services or protocols.

2. **Firewall Implementation**
   - Firewalls, whether network-based or host-based, are effective defenses against various attacks. Network-based firewalls secure entire networks, while host-based firewalls protect individual systems.

## Intrusion Detection System (IDS)

An intrusion occurs when security mechanisms are bypassed, enabling unauthorized access to an organization’s resources. Intrusion detection is a monitoring method that examines recorded information and real-time events to identify abnormal activities indicative of potential incidents or intrusions. 

The Intrusion Detection System (IDS) automates log inspection and real-time event analysis to detect intrusion attempts and system failures, complementing other security measures like firewalls.

- **Detection Capabilities:**
  - Identifies external and internal attacks.
  - Recognizes anomalies and responds with alerts or alarms.

- **Integration with Security Plan:**
  - Part of a defense-in-depth strategy.
  - Works alongside, but doesn't replace, other security mechanisms.

### Host-based IDS (HIDS)

- Monitors a single computer.
- Examines detailed events, including process calls and logs.
- Detects specific file compromises and tracks attacker processes.
- Can identify anomalies on the host system that network-based IDSs cannot.
- More management-intensive, requiring attention on each system.

### Network-based IDS (NIDS)

- Monitors network traffic patterns.
- Supports centralized administration.
- Detects network attacks on other systems.
- Generally more cost-effective to manage compared to HIDS.

## Preventing Threats

While there is no single step to protect against all threats, several basic measures can significantly reduce the risk of various types of threats.

- **Keep Systems Updated**
  - Regularly apply patches released by vendors.
  - Implement patch management for timely updates.

- **Disable Unneeded Services**
  - Remove or disable unnecessary services and protocols.
  - Reduces vulnerability to potential attacks.

- **Intrusion Detection and Prevention**
  - Implement systems that observe and detect threats.
  - Provide alerts and can block or stop attacks.

- **Anti-Malware Software**
  - Utilize up-to-date anti-malware software.
  - Countermeasure against various types of malicious code.

- **Firewalls**
  - Deploy network-based firewalls for entire networks.
  - Utilize host-based firewalls for individual systems.
  - Effective in preventing different types of threats.




----------------------------------------------

[Back to main page](../../README.md#security)    