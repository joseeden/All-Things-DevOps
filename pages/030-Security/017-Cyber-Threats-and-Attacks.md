
# Cyber Threats and Attacks


- [Types of Threats](#types-of-threats)
- [Worms versus Virus](#worms-versus-virus)
- [Attacker](#attacker)
- [Tools](#tools)
- [IP Network Attack](#ip-network-attack)
- [Other Attacks](#other-attacks)
    - [Side Channel Attacks](#side-channel-attacks)
    - [Replay Attack](#replay-attack)
    - [Rainbow Table Attack](#rainbow-table-attack)
    - [Dictionary Attack](#dictionary-attack)
    - [Brute Force Attack](#brute-force-attack)
    - [Buffer Overflow Attack](#buffer-overflow-attack)
    - [Birthday Attack](#birthday-attack)
    - [Spoofing Attack](#spoofing-attack)
    - [On-Path Attack](#on-path-attack)   
- [Logic Bomb](#logic-bomb)
- [Advanced Persistent Threat](#advanced-persistent-threat)
- [Identify Threats](#identify-threats)
- [Intrusion Detection System IDS](#intrusion-detection-system-ids)
    - [Host-based IDS HIDS](#host-based-ids-hids)
    - [Network-based IDS NIDS](#network-based-ids-nids)
- [Preventing Threats](#preventing-threats)


## Types of Threats 

There are many types of cyber threats to organizations. Below are several of the most common types: 

| **Threat/Attack**        | **Description**                                                                                | **Example**                                 |
|--------------------------|-----------------------------------------------------------------------------------------------|---------------------------------------------|
| **Malware**              | Malicious software designed to harm or exploit systems.                                         | Viruses, worms, trojans                     |
| **Trojan**              | Trojans can also create backdoors but are only active while a specific application is running, and thus are not as effective as a rootkit.                                          |                      |
| **Worm**              | Designed to self-replicate and spread autonomously across a network, infecting other systems as they propagate.
| **Phishing**            | Deceptive attempts to obtain sensitive information.                                             | Fake emails, websites, or messages          |
| **Spear phishing**     | A highly targeted phishing attack (and not just random spam) which aims to get specific individuals to reveal confidential information. The particularity of spear phishing is that these attacks are sent with prior knowledge about the target (person or company), so as to increase its chance of success.                      |      |
| **Whaling**     | Whaling attacks are phishing attacks that target high-ranking members of organizations. After gaining root-level access to a host, rootkits are used by an attacker to conceal malicious activities while keeping root-level access.                        |      |
| **Ransomware**          | Malware that encrypts files, demanding payment for their release.                               | WannaCry, CryptoLocker                      |
| **Denial of Service (DoS)** | Overwhelming a system to make it unavailable.                                                  | Flood attacks, DDoS                         |
| **Man-in-the-Middle (MitM)** | Intercepting and potentially altering communication between two parties.                       | Eavesdropping, session hijacking            |
| **SQL Injection**       | Exploiting vulnerabilities in SQL databases to manipulate or retrieve data.                    | Injecting malicious SQL queries            |
| **Zero-Day Exploit**     | Targeting vulnerabilities unknown to software developers.                                     | Exploiting a flaw before a patch is released|
| **Social Engineering**   | Manipulating individuals to divulge confidential information.                                  | Impersonation, pretexting                   |
| **Cross-Site Scripting (XSS)** | Injecting malicious scripts into webpages viewed by others.                                   | Script injection in online forms            |
| **Password Attacks**     | Attempts to gain unauthorized access by cracking or stealing passwords.                         | Brute-force attacks, password guessing      |
| **Rootkits**     | A rootkit tries to maintain root-level access while concealing malicious activity. It typically creates a backdoor and attempts to remain undetected by anti-malware software. A rootkit is active while the system is running.                         |      |

This table provides a concise overview of various cyber threats and attacks along with brief descriptions and examples for each.

## Worms versus Virus 

A virus requires user interaction, such as opening an infected file or running a malicious program, to spread, whereas a worm can replicate and spread automatically without user intervention.

## Attacker 

An Attacker is always an individual, but a Threat Actor can be either a group or an entity.

The three most common goals of cybersecurity attackers are DAD:

- Disclosure
- Alteration
- Denial

## Tools 

- **John the Ripper** is a famous Open Source password security auditing and password recovery tool. 

- **Burp Suite** is a well-known set of tools for vulnerability scanning, penetration testing, and web app security (not for cracking passwords). The remaining options are both network analysis tools. 

- **Wireshark** is the most used network protocol analyzer in the world. Nslookup is a network administration command-line tool for querying the Domain Name System to obtain the mapping between the domain name, IP address, or other DNS records.

It seems like there might be a typo in your question ("ip-network attacj"). If you're referring to "IP network attack," I'll provide a brief explanation:

## IP Network Attack

An attempt to compromise the security, availability, or integrity of an IP (Internet Protocol) network.

Sure, here's the information presented in a table format:

| Attack Type                               | Description                                                      |
|-------------------------------------------|------------------------------------------------------------------|
| Denial of Service (DoS) and DDoS           | Overloading a network or website with traffic to make it unavailable. |
| Man-in-the-Middle (MitM)                   | Intercepting and possibly altering communication between two parties. |
| Spoofing                                   | Faking the source address of network packets to deceive the recipient. |
| Packet Sniffing                           | Illegally intercepting and examining unencrypted data packets.     |
| DNS Spoofing                               | Redirecting DNS queries to malicious sites.                       |
| IP Address Spoofing                        | Impersonating a trusted IP address to gain unauthorized access.    |
| Oversized Packet Attacks                   | Oversized packet attacks involve sending data packets that exceed the maximum allowable size, exploiting vulnerabilities in network protocols.            |
| Fragmented Packet Attacks                  | Fragmented packet attacks involve breaking down data into smaller fragments to bypass network security measures, exploiting vulnerabilities in reassembly processes.            |
|           |             |


## Other Attacks 

### Side Channel Attacks 

Side channel attacks exploit unintended information leakage from a system's physical implementation, such as power consumption, electromagnetic emissions, or timing variations.

Examples: Timing attacks, power analysis attacks, and electromagnetic analysis attacks.

**Mitigation** 

- Implement countermeasures like constant-time algorithms, noise injection, and secure hardware design to reduce the risk of information leakage from side channels. Regularly update and patch systems to address potential vulnerabilities.

### Replay Attack 

A replay attack is when an attacker captures and resends (i.e. "replays") authenticated messages (see ISC2 Study Guide, chapter 4, module 2). 

**Mitigation** 

- An IPSec VPN can prevent a replay attack because it tracks packet sequencing and includes the sender's signature on all packets; therefore preventing forged packages. 

### Rainbow Table Attack 

A rainbow table attack uses precomputed hashes to find a matching hash value for a user's password (see ISC2 Study Guide, Module 2, under Types of Threats). 

**Mitigation** 

  - Add a unique random value (salt) to each password before hashing.
  - Choose robust cryptographic hash functions resistant to rainbow tables.
  - Enforce strong and complex password creation policies.
  - Stay current with advancements, adopting newer, more secure hash functions.
  - Implement Two-Factor Authentication (2FA)

### Dictionary Attack 

A dictionary attack is a type of attack that uses a list of common words to guess a user's password. 

**Mitigation** 

  - Enforce strong and complex password creation policies.
  - Temporarily lock accounts after a certain number of unsuccessful login attempts.
  - Keep systems and software up-to-date to address vulnerabilities.


### Brute Force Attack 

A brute force attack uses a combination of letters, numbers, and symbols to guess a user's password.

**Mitigation** 

  - Enforce strong and complex password creation policies.
  - Temporarily lock accounts after a certain number of unsuccessful login attempts.
  - Restrict the number of login attempts within a specific time frame.
  - Keep systems and software up-to-date to address vulnerabilities.

### Buffer Overflow Attack 

A Buffer Overflow attack is a type of attack that involves sending malicious data to an application or system, causing it to crash or become unresponsive. 

This type of attack takes advantage of programming errors in applications or systems that allow attackers to send malicious data that exceeds the size of the allocated memory buffer, causing the application or system to crash or become unresponsive.

**Mitigation** 

- Implement strict checks for input length.
- Regularly audit code for vulnerabilities.
- Replace standard functions with bounds-checking alternatives.
- Apply ASLR to randomize memory addresses.
- Deploy canaries for early detection of buffer overflows.
- Restrict code execution in specific memory areas.
- Keep software current to address vulnerabilities.

### Birthday Attack 

Cybercriminals use birthday attacks to trick systems by cracking digital authentication methods.

**The Birthday Paradox**
The probability that at least two will share a birthday in a random group of people. 

**Birthday Attack in Cybersecurity**
A birthday attack is a brute force attack that exploits the exponentially growing probability of collision. In cybersecurity, collision attacks aim to find a clash of the hash function outcomes. The goal of the birthday attack is often to gain system access by forging security certificates or cracking passwords.

**Finding the collision**
Hackers have learned from the birthday problem that finding two colliding results of different inputs is much easier than generating all possible outputs.

1. A program repeatedly runs the hash function on randomly chosen inputs 
2. Every input-output pair is stored in some databases. 
3. Every output is checked until a collision of the same outputs with different inputs is found. 
4. The hacker can use the hash collision to trick the system into treating two different messages as the same.

<small>Reference: https://atlasvpn.com/blog/birthday-attack</small>

### Spoofing Attack 

Cybercriminals impersonate a familiar or trusted source to interact with targets, aiming to steal information, extort money, or install malicious software on their devices.

Example of spoofing attacks:

- Email Spoofing
- Caller ID Spoofing
- Website/Domain Spoofing
- IP Spoofing
- ARP Spoofing
- GPS Spoofing
- Facial Spoofing
- Man-in-the-middle attack 


<small>Reference: https://www.crowdstrike.com/cybersecurity-101/spoofing-attacks/</small>


### On-Path Attack 

An on-path Attack is an attack that attempts to position between two devices (e.g., web browser and server) to intercept or modify information.

- Passive attack with no direct interaction with the target system.
- Differs from DDoS attacks involving numerous unsuspecting secondary victims.
- Primary goal is to gain system access by impersonating a legitimate user or device.

## Logic Bomb 

A logic bomb is a piece of malicious code intentionally inserted into a software system that triggers a negative function when certain conditions are met. 

An infection does not typically install logic bombs, they are planted by someone with inside access to the system, such as a disgruntled employee.

## Advanced Persistent Threat

A Highly sophisticated and hard to detect. typically orchestrated by well-funded entities like nation-states or organized criminal groups.

- Orchestrated by well-funded entities.
- Targets specific organizations.
- Aims to steal sensitive information or disrupt operations.
- Attack could span months or even years. 
- *Reference:* ISC2 Study Guide, Chapter 4, Module 2.

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