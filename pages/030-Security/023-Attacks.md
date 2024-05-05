
# Attacks 

- [Attacks](#attacks)
- [Password Attacks](#password-attacks)
    - [Brute Force Attack](#brute-force-attack)
    - [Dictionary Attack](#dictionary-attack)
    - [Password Spraying](#password-spraying)
    - [Hybrid Attack](#hybrid-attack)
- [Cryptographic Attacks](#cryptographic-attacks)
    - [Downgrade Attacks](#downgrade-attacks)
    - [Collision Attacks](#collision-attacks)
    - [Quantum Computing](#quantum-computing)
- [Other Attacks](#other-attacks)
    - [Denial of Service DoS and DDoS](#denial-of-service-dos-and-ddos)
    - [Man-in-the-Middle MitM](#man-in-the-middle-mitm)
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
    - [Pass the Hash Attack](#pass-the-hash-attack)
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
  - Use a secure hashing algorithm with a unique salt for each password.
  - Keep systems and software up-to-date to address vulnerabilities.
  - Add an additional authentication layer - MFA

### Password Spraying 

A form of brute force attack that involves trying a small number of commonly used passwords against a large number of username and accounts. 

- Effective, can avoid triggering account lockouts from too many failed login attempts. 
- In a large group of user, there's a good chance some of them uses very common and weak passwords.

**Mitigation:**

- Rate limiting on login attempts to slow down brute force attacks.
- Regular password changes to minimize risks from compromised accounts.
- Ensure users create complex passwords to avoid common and weak ones.
- Monitor for unusual login attempts or patterns.

### Hybrid Attack 

Blends brute force and dictionary techniques by using common passwords with variations, such as adding numbers and special characters.

**Mitigation:**

- Encourage complex passwords - less susceptible to variations.
- Recommend long, randomly generated passwords.
- Lock accounts after repeated failed attempts.
- Implement rate limiting to slow down hybrid attacks.
- Educate users about secure password practices.

## Cryptographic Attacks 

In simplests terms, we can perform cryptographic attacks by:

1. Attacking the algorithm
2. Attacking the implementation
3. Attacking the key

### Downgrade Attacks

Also known as **version rollback attack**, downgrade attacks force a system to use a less secure version of a protocol, making it vulnerable to known exploits. 

**How it works**

- Attacker manipulates communication exchanges.
- This makes the parties believe they should use a less secure version of a protocol or a weaker encryption algorithm.
- Achieved by any of the following:
  - Intercepting and altering communication
  - Exploiting fallback mechanisms
  - Exploiting vulnerabilities in protocol negotiation.

**Examples**
  - In HTTPS, an attacker could force a secure connection to revert to an older SSL version with known vulnerabilities.
  - In wireless networks, an attacker might trick a device into connecting to a less secure network.
  - **POODLE Attack** - Padding Oracle on Downgraded Legacty Encryption, which targeted SSL 3.0.

**Mitigations**

- **Protocol Hardening**: 
  - Ensure protocols do not support older, insecure versions. 
  - For example, disable SSL and only use modern TLS versions.

- **Strict Negotiation**: 
  - Implement strict rules for protocol negotiation.
  - This prevents fallback to less secure versions.

- **Secure Communication**: 
  - Use certificates and mutual authentication to validate communication channels and avoid man-in-the-middle attacks.

- **Regular Updates**: 
  - Keep software and systems updated to the latest secure versions, removing outdated protocol support.



### Collision Attacks

Collision attacks find two different inputs that produce the same hash, potentially compromising cryptographic integrity. 

- To breach the integrity of a cryptographic system.
- Exploit vulnerabilities in hash-based security.

**How It Works**

- The attacker tries to find two different inputs that yield the same hash.
- This can be used to forge digital signatures, tamper with data, or bypass security checks.

**Examples**

- MD5 and SHA-1 hash functions have known vulnerabilities allowing collision attacks.
- Birthday Attacks
- Certificate forgery, where an attacker can create a fraudulent certificate with the same hash as a legitimate one.

**Mitigations**

- **Use Secure Hash Functions**:
  - Choose hash functions with no known vulnerabilities. 
  - Avoid MD5 and SHA-1; opt for SHA-256 or stronger.

- **Implement Collision-Resistant Algorithms**: 
  - Employ algorithms designed to resist collisions, especially in digital signatures and certificate generation.

- **Detect Anomalies**: 
  - Implement mechanisms to detect unusual patterns that might indicate a collision attack.

- **Regularly Update Security Practices**: 
  - Stay updated with the latest cryptographic standards and replace vulnerable hash functions as necessary.




### Quantum Computing

Quantum computing poses a threat to traditional cryptography by potentially breaking key cryptographic algorithms. 
  
**How It Works**

- Quantum computers use qubits, which can represent multiple states simultaneously.
- This enables parallel processing at a massive scale.
- This allows quantum computers to run algorithms that can break traditional cryptographic methods.
- Example: Shor's algorithm for integer factorization.
  
**Implications for Cryptography**

- Quantum computing threatens public-key encryption algorithms like RSA and ECC.
- RSA and ECC rely on computational hardness (e.g., factoring large numbers).
- Symmetric key algorithms are more resistant but require longer key lengths to remain secure.
- **Post-quantum cryptography**, which aims to create algorithms resistant to quantum attacks.
  
  - CRYSTALS-Dilithium 
  - FALCON 
  - SPHINCS+


**Mitigations**

- **Transition to Post-Quantum Cryptography**: 

  - Adopt cryptographic algorithms designed to withstand quantum attacks.
  - Examples are lattice-based or hash-based algorithms.

- **Use Larger Key Sizes**: 

  - Increase key sizes in symmetric encryption.
  - This provides a greater buffer against quantum computing threats.

- **Hybrid Cryptographic Systems**: 

  - Implement systems that use a mix of traditional and post-quantum cryptographic techniques.

- **Monitor Quantum Advancements**: 

  - Keep informed about developments in quantum computing and adapt security strategies accordingly.




## Other Attacks 

### Denial of Service (DoS) and DDoS  

Overloading a network or website with traffic to make it unavailable.

**Mitigation** 

- **Load Balancers**: Distribute traffic across multiple servers.
- **Rate Limiting**: Limit requests per user or IP address.
- **CDNs**: Disperse network traffic.
- **DDoS Protection**: Use specialized services for DDoS mitigation.
- **Firewalls and IPS**: Detect and block DoS patterns.

### Man-in-the-Middle (MitM) 

Intercepting and possibly altering communication between two parties.

**Mitigation** 

- **Encryption**: Use HTTPS, SSL/TLS, and VPNs.
- **Public Key Infrastructure (PKI)**: Verify certificate authenticity.
- **Secure Authentication**: Implement multifactor authentication.
- **Network Segmentation**: Limit access to sensitive systems.
- **IDS/IPS**: Monitor for suspicious network activity.


### Packet Sniffing

Illegally intercepting and examining unencrypted data packets.

**Mitigation** 

- **Encryption**: Secure data in transit with HTTPS or VPNs.
- **Secure Wi-Fi**: Use WPA3 for wireless networks.
- **Network Segmentation**: Restrict access to sensitive data.
- **Network Monitoring**: Detect unauthorized packet sniffing.

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

**Mitigation** 

- **Email Security**: Use SPF, DKIM, and DMARC.
- **User Training**: Educate on recognizing suspicious communications.
- **Secure Authentication**: Use multifactor authentication.
- **Access Controls**: Limit sensitive system access.
- **Secure Routing**: Implement SBGP or similar protocols.
- **Network Access Control (NAC)**: Restrict unauthorized devices.
- **IDS/IPS**: Detect spoofing patterns.

<small>Reference: https://www.crowdstrike.com/cybersecurity-101/spoofing-attacks/</small>


### DNS Spoofing

Redirecting DNS queries to malicious sites.

**Mitigation** 

- **DNSSEC**: Ensure DNS integrity and authenticity.
- **Secure DNS Servers**: Use trusted DNS providers.
- **Regular Updates**: Keep DNS software current.
- **Network Monitoring**: Detect unusual DNS query patterns.


### IP Address Spoofing

Impersonating a trusted IP address to gain unauthorized access. 

**Mitigation** 

- **Packet Filtering**: Block spoofed IP addresses.
- **Secure Routing**: Use SBGP to validate routing.
- **NAC**: Restrict unauthorized devices from network access.
- **IDS/IPS**: Monitor for spoofing patterns.


### Oversized Packet Attack 

Oversized packet attacks involve sending data packets that exceed the maximum allowable size, exploiting vulnerabilities in network protocols.   

**Mitigation** 

- **Packet Size Limits**: Enforce maximum packet sizes.
- **Network Monitoring**: Detect oversized packet patterns.
- **Rate Limiting**: Limit large packets.
- **Firewall Rules**: Block unusually large packets.


### Fragmented Packet Attack 

Fragmented packet attacks involve breaking down data into smaller fragments to bypass network security measures, exploiting vulnerabilities in reassembly processes.

**Mitigation** 

- **Reassembly Timeouts**: Set timeouts for reassembly.
- **Fragmentation Limits**: Limit fragment size and count.
- **IDS/IPS**: Detect unusual fragmentation.
- **Secure Protocols**: Use protocols that handle fragmentation securely.

### Side Channel Attacks 

Side channel attacks exploit unintended information leakage from a system's physical implementation, such as power consumption, electromagnetic emissions, or timing variations.

Examples: Timing attacks, power analysis attacks, and electromagnetic analysis attacks.

**Mitigation** 

- Constant-time algorithms, noise injection, and secure hardware design.
- This countermeasures reduce the risk of information leakage from side channels. - Regularly update and patch systems to address potential vulnerabilities.

### Replay Attack 

A replay attack is when an attacker captures and resends (i.e. "replays") authenticated messages (see ISC2 Study Guide, chapter 4, module 2). 

**Mitigation** 

- IPSec VPN tracks packet sequencing and includes the sender's signature on all packets; therefore preventing forged packages. 

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

- Takes advantage of programming errors in applications or systems.
- Allow attackers to send malicious data that exceeds the size of the allocated memory buffer.
- Causes the application or system to crash or become unresponsive.

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

  - High odds of at least two will share a birthday in a random group of people. 
  - Easier to find two colliding results of different inputs than generating all possible outputs.

**Birthday Attack in Cybersecurity**

  - Attackers aim to find hash collisions to break security. 
  - Used to crack weak hash functions or forge digital signatures.

**Finding the Collision**

  1. A program repeatedly runs the hash function on randomly selected inputs.
  2. Every input-output pair is stored in a database.
  3. Each output is checked to find collisions (different inputs produce the same output).
  4. Attackers then exploit hash collisions to trick the system into treating different messages as identical.

**Mitigation**
  
  - Use hash functions with large bit sizes; avoid outdated algorithms.


<small>Reference: https://atlasvpn.com/blog/birthday-attack</small>


### Pass the Hash Attack

A "pass the hash" attack involves using a hashed password to gain unauthorized access to a system, bypassing the need for the plaintext password. Attackers obtain the hash and use it to authenticate without knowing the actual password.

- Attackers steal password hashes from compromised systems.
- They use these hashes to authenticate, avoiding password-based checks.
- Common in Windows environments with NTLM authentication.


**Mimikatz**

  - An open-source tool for security testing and penetration testing.
  - Extracts plaintext passwords, hashes, and Kerberos tickets from memory.
  - Enables "pass the hash" and "pass the ticket" attacks.
  - Manipulates Windows authentication tokens.

**Common Use Cases of Mimikatz**

  - Used by penetration testers to assess security on Windows systems.
  - Often exploited by hackers for unauthorized access.

**Mitigation Measures**

  - Apply multi-factor authentication.
  - Keep Windows systems updated with security patches.
  - Limit administrative access and use secure password management.
  - Ensure only trusted OS are allowed to connect to your servers.
  - Implement least privilege for all user accounts.

### On-Path Attack 

An on-path Attack is an attack that attempts to position between two devices (e.g., web browser and server) to intercept or modify information.

- Passive attack with no direct interaction with the target system.
- Differs from DDoS attacks involving numerous unsuspecting secondary victims.
- Primary goal is to gain system access by impersonating a legitimate user or device.

**Mitigation** 

- **Encryption**: Use HTTPS, SSL/TLS to protect data.
- **Network Segmentation**: Limit access to critical systems.
- **IDS/IPS**: Detect suspicious traffic patterns.
- **Secure Routing**: Ensure routing data is accurate and secure.


### Logic Bomb 

A logic bomb is a piece of malicious code intentionally inserted into a software system that triggers a negative function when certain conditions are met. 

An infection does not typically install logic bombs, they are planted by someone with inside access to the system, such as a disgruntled employee.

**Mitigation** 

- **Access Controls**: Restrict system access to authorized personnel.
- **Code Reviews**: Regularly review code for malicious inserts.
- **IDS/IPS**: Monitor for unusual system behavior.
- **Employee Training**: Educate on cybersecurity best practices.

## Tools 

- **John the Ripper**

  - Famous Open Source password security auditing and password recovery tool. 

- **Burp Suite** 

  - Well-known set of tools for vulnerability scanning, penetration testing, and web app security (not for cracking passwords). 

- **Wireshark** 

  - Most used network protocol analyzer in the world. 



----------------------------------------------

[Back to main page](../../README.md#security)    