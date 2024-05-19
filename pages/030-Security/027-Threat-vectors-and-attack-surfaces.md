
# Threat Vectors and Attack Surfaces


- [Threat Vectors](#threat-vectors)
    - [Messages](#messages)
    - [Images](#images)
    - [Files](#files)
    - [Voice Calls](#voice-calls)
    - [Removable Devices](#removable-devices)
    - [Unsecure Networks](#unsecure-networks)
    - [Bluetooth Exploits](#bluetooth-exploits)
- [Attack Vectors](#attack-vectors)

    
## Threat Vectors

- **Threat Vectors**

    - Means or pathway by which an attacker can gain unauthorized access to a computer or a network to deliver a malicious payload or carry out an unwanted action.

    - The "**How**" of the attack

- **Attack Surface** 

    - Various points where an unauthorized user can try to enter data to or extract data from an environment.

    - The "**Where**" of the attack

### Messages 

- **Phishing** 
    - Deceptive messages tricking users into revealing sensitive information.

- **Social Engineering** 
    - Manipulative messages to gain unauthorized access or information.

- **Malware Links** 
    - Links in messages that lead to malicious software.

- **Smishing** 
    - Phishing attacks via SMS or text messaging.
    

### Images 

- **Steganography** 
    - Hiding malicious code or data within images.

- **Malware Injection** 
    - Images containing embedded malware that activates upon opening.

- **Exploits** 
    - Use of specific image file formats to exploit vulnerabilities in viewers or editors.


### Files

- **Malicious Attachments** 
    - Files containing malware or harmful scripts.

- **Trojan Horses** 
    - Files that seem benign but contain malicious payloads.

- **Ransomware** 
    - Files that, when opened, encrypt user data for ransom.

- **Exploitable Documents** 
    - Files with macros or embedded code that can be exploited.


### Voice Calls

- **Vishing** 
    - Voice phishing, where callers pose as trusted entities to extract information.

- **Caller ID Spoofing** 
    - Faking caller identity to gain trust.

- **Voice Phishing Bots** 
    - Automated voice calls designed to trick or manipulate.


### Removable Devices

- **USB-based Malware** 
    - Infectious code stored on USB drives.

- **Data Theft** 
    - Unauthorized access to sensitive data through removable storage.

- **Device Manipulation** 
    - Using removable devices to manipulate system behavior.


### Unsecure Networks

- **Eavesdropping** 
    - Intercepting data transmitted over unsecured networks.

- **Man-in-the-Middle (MITM) Attacks** 
    - Intercepting and altering communication between two parties.

- **Session Hijacking** 
    - Taking over user sessions in insecure networks.

- **Rogue Access Points** 
    - Fake network access points designed to steal information.


### Bluetooth Exploits 

- **BlueBorne** 

    - Allows attackers to gain control over Bluetooth-enabled devices remotely.
    - Results in unauthorized data access, remote code execution, or device takeover.
    - Affects a wide range of devices, including smartphones, laptops, and IoT devices.

- **BlueSmack** 

    - A Bluetooth-based denial-of-service (DoS) attack.
    - Overloads a target device with excessive or malformed Bluetooth packets, causing it to crash or become unresponsive.
    - Can disrupt Bluetooth-enabled services and other connected devices.

## Attack Vectors 

Difference between attack vectors and threat vectors:

- **Threat Vector**

    - How the attacker plans to break into the system.
    - Example: A computer missing a critical security patch -> Vulnerability -> Threat vector

- **Attack Vector**

    - How the attacker plans to break into the system.
    - How the attacker can infect the system
    - Example: Attacker scans the network for computers missing the critical security patch, then uses a known exploit to break in and gain control.


----------------------------------------------

[Back to main page](../../README.md#security)    