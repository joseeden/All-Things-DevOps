
# Attacks 

- [Attacks](#attacks)
- [Password Attacks](#password-attacks)
    - [Brute Force Attack](#brute-force-attack)
    - [Dictionary Attack](#dictionary-attack)
    - [Password Spraying](#password-spraying)
    - [Hybrid Attack](#hybrid-attack)
- [Other Attacks](#other-attacks)
    - [Denial of Service DoS and DDoS](#denial-of-service-dos-and-ddos)
    - [Man-in-the-Middle MitM](#man-in-the-middle-mitm)
    - [Spoofing](#spoofing)
    - [Packet Sniffing](#packet-sniffing)
    - [Spoofing Attack](#spoofing-attack)
    - [DNS Spoofing](#dns-spoofing)
    - [IP Address Spoofing](#ip-address-spoofing)
    - [Oversized Packet Attack](#oversized-packet-attack)
    - [Fragmented Packet Attack](#fragmented-packet-attack)
    - [Side Channel Attacks](#side-channel-attacks)
    - [Replay Attack](#replay-attack)
    - [Rainbow Table Attack](#rainbow-table-attack)
    - [Buffer Overflow Attack](#buffer-overflow-attack)
    - [Birthday Attack](#birthday-attack)
    - [On-Path Attack](#on-path-attack)
    - [Logic Bomb](#logic-bomb)
- [Tools](#tools)



## Attacks 

An attempt to compromise the security, availability, or integrity of an IP (Internet Protocol) network.

## Password Attacks 

### Brute Force Attack 

A brute force attack uses every possible combination of letters, numbers, and symbols to guess a user's password.

**Mitigation** 

  - Enforce strong and complex password creation policies.
  - Temporarily lock accounts after a certain number of unsuccessful login attempts.
  - Restrict the number of login attempts within a specific time frame.
  - Keep systems and software up-to-date to address vulnerabilities.

### Dictionary Attack 

A dictionary attack is a type of attack that uses a list of common words to guess a user's password. 

**Mitigation** 

  - Enforce strong and complex password creation policies.
  - Temporarily lock accounts after a certain number of unsuccessful login attempts.
  - Keep systems and software up-to-date to address vulnerabilities.

### Password Spraying 

A form of brute force attack that involves trying a small number of commonly used passwords against a large number of username and accounts. 

- Effective, can avoid triggering account lockouts from too many failed login attempts. 
- In a large group of user, there's a good chance some of them uses very common and weak passwords.

### Hybrid Attack 

Blends brute force and dictionary techniques by using common passwords with variations, such as adding numbers and special characters.


## Other Attacks 

### Denial of Service (DoS) and DDoS  

Overloading a network or website with traffic to make it unavailable.

### Man-in-the-Middle (MitM) 

Intercepting and possibly altering communication between two parties.

### Spoofing

Faking the source address of network packets to deceive the recipient.

### Packet Sniffing

Illegally intercepting and examining unencrypted data packets.

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


### DNS Spoofing

Redirecting DNS queries to malicious sites.

### IP Address Spoofing

Impersonating a trusted IP address to gain unauthorized access. 

### Oversized Packet Attack 

Oversized packet attacks involve sending data packets that exceed the maximum allowable size, exploiting vulnerabilities in network protocols.   

### Fragmented Packet Attack 

Fragmented packet attacks involve breaking down data into smaller fragments to bypass network security measures, exploiting vulnerabilities in reassembly processes.

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



### On-Path Attack 

An on-path Attack is an attack that attempts to position between two devices (e.g., web browser and server) to intercept or modify information.

- Passive attack with no direct interaction with the target system.
- Differs from DDoS attacks involving numerous unsuspecting secondary victims.
- Primary goal is to gain system access by impersonating a legitimate user or device.

### Logic Bomb 

A logic bomb is a piece of malicious code intentionally inserted into a software system that triggers a negative function when certain conditions are met. 

An infection does not typically install logic bombs, they are planted by someone with inside access to the system, such as a disgruntled employee.


## Tools 

- **John the Ripper** is a famous Open Source password security auditing and password recovery tool. 

- **Burp Suite** is a well-known set of tools for vulnerability scanning, penetration testing, and web app security (not for cracking passwords). The remaining options are both network analysis tools. 

- **Wireshark** is the most used network protocol analyzer in the world. Nslookup is a network administration command-line tool for querying the Domain Name System to obtain the mapping between the domain name, IP address, or other DNS records.



----------------------------------------------

[Back to main page](../../README.md#security)    