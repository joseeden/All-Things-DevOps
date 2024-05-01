
# Cyber Threats and Attacks

- [Types of Threats](#types-of-threats)
- [Worms versus Virus](#worms-versus-virus)
- [Threat Actors](#threat-actors)
    - [Script Kiddies](#script-kiddies)
    - [Hacktivists](#hacktivists)
    - [Organized Crime](#organized-crime)
    - [Advanced Persistent Threats](#advanced-persistent-threats)
- [Attacker](#attacker)
- [Hackers](#hackers)
    - [White Hats](#white-hats)
    - [Black Hats](#black-hats)
    - [Gray Hats](#gray-hats)
    - [Blue Hats](#blue-hats)
    - [Elite](#elite)
    - [Script kiddies](#script-kiddies)

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


## Worms versus Virus 

A virus requires user interaction, such as opening an infected file or running a malicious program, to spread, whereas a worm can replicate and spread automatically without user intervention.

## Threat Actors 

A Threat Actor is defined as an individual or a group posing a threat (according to NIST SP 800-150 under Threat Actor).

### Script Kiddies
  Hackers with little to no skill who only use the tools and exploits written by others

### Hacktivists
  Hackers who are driven by a cause like social change, political agendas, or terrorism
  
### Organized Crime
  Hackers who are part of a crime group that is well-funded and highly sophisticated

### Advanced Persistent Threats
  Highly trained and funded groups of hackers (often by nation states) with covert and open-source intelligence at their disposal.

  - Orchestrated by well-funded entities.
  - Targets specific organizations.
  - Aims to steal sensitive information or disrupt operations.
  - Attack could span months or even years. 
  - *Reference:* ISC2 Study Guide, Chapter 4, Module 2.

## Attacker 

An Attacker is always an individual, but a Threat Actor can be either a group or an entity.
The three most common goals of cybersecurity attackers are DAD:

- Disclosure
- Alteration
- Denial

To learn more about common attacks, please see [Attacks](./023-Attacks.md). 

## Hackers

There are five types of hackers:

- White Hats
- Black Hats
- Gray Hats
- Blue Hats
- Elite

### White Hats

Non-malicious hackers who attempt to break into a company’s
systems at their request.

- Normally contracted and paid by the company.
- Ethical hackers and penetration testers

### Black Hats

Malicious hackers who break into computer systems and
networks without authorization or permission.

### Gray Hats

Hackers without any affiliation to a company who attempt to
break into a company’s network but risk the law by doing so.

Difference with Black Hat: Gray hats doesn't have any malicious intent.

### Blue Hats

Hackers who attempt to hack into a network **with permission** of
the company **but are not employed by the company**.

- Freelance ethical hacker/penetration tester
- Bug bounty programs

### Elite

Hackers who find and exploit vulnerabilities before anyone else
does. 1 in 10,000 are elite.

- Create their own tools, which everyone ends up using.

### Script kiddies

Script kiddies have limited skill and only run other people’s exploits and tools.

- Other end of spectrum, normally babies of the bunch.
- Little to no skill 
- Most people start as script kiddies





----------------------------------------------

[Back to main page](../../README.md#security)    