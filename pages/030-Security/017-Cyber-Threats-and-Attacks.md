
# Threats 


- [Threat Actors](#threat-actors)
    - [Attacker](#attacker)
    - [Hackers](#hackers)
- [Types of Hackers](#types-of-hackers)
    - [White Hats](#white-hats)
    - [Black Hats](#black-hats)
    - [Gray Hats](#gray-hats)
    - [Blue Hats](#blue-hats)
    - [Elite](#elite)
    - [Script kiddies](#script-kiddies)
- [Types of Threats](#types-of-threats)
    - [Malware](#malware)
    - [Virus](#virus)
    - [Worm](#worm)
    - [Trojan](#trojan)
    - [Ransomware](#ransomware)
    - [Zombies and Botnets](#zombies-and-botnets)
    - [Rootkits](#rootkits)
    - [Backdoors and Logic Bombs](#backdoors-and-logic-bombs)
    - [Key Logger](#key-logger)
    - [Spyware and Bloatware](#spyware-and-bloatware)




## Threat Actors 

A Threat Actor is defined as an individual or a group posing a threat (according to NIST SP 800-150 under Threat Actor).

To learn more, please see [Threat Actors](./026-Threat-Actors.md).

### Attacker 

An Attacker is always an individual, but a Threat Actor can be either a group or an entity.
The three most common goals of cybersecurity attackers are DAD:

- Disclosure
- Alteration
- Denial

To learn more about common attacks, please see [Attacks](./023-Attacks.md). 

### Hackers

There are five types of hackers:

- White Hats
- Black Hats
- Gray Hats
- Blue Hats
- Elite

## Types of Hackers 

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


## Types of Threats 

There are many types of cyber threats to organizations. Below are several of the most common types: 

### Malware

Malicious software designed to harm or exploit systems.                          

- Examples are viruses, worms, trojans.
- More details about malwares can be found here: [Malware](./043-Malware.md)

### Virus 

A virus **requires user interaction**, such as opening an infected file or running a malicious program, to spread.

Types of viruses:

- **Boot Sector**
    - Stored in the first sector of a hard drive and is then loaded into memory during boot up.
    - Infects the master boot record; spreads when the system boots from an infected disk.
    - Difficult to detect because they're installed before OS boots up.
    - Mitigation:
        - Use an antivirus that specifically looks for boot sector viruses.
        - These AVs are usually ran from a network AV scanning engine.

- **Macro**
    - A form of code that allows virus to be embedded inside documents.
    - Infects macros within documents or spreadsheet applications.
    - They spread when these files are opened.
    - By default, they aren't maliciousl; they're used to add functions to documents

- **Program**
    - Attaches itself to executable files and spreads when the infected program is run.
    - Target program/apps because they can infect the system anytime the user opens the compromised application.

- **Multipartite**
    - Combines boot sector and file viruses, spreading in multiple ways.
    - Gets loaded up every time the computer boots up.
    - It can then install itself within a program, when run, will infect every time.
    - This ensures that the virus persists in your machine.

- **Encrypted**
    - Encrypted, to evade detection by antivirus software, decrypting itself when executed.
    - Malicious code is scrambled into cipher text, unreadable to user and AV software.

- **Polymorphic**
    - Advance version of encrypted virus, but it also alter the decryption module.
    - This changes its code each time it infects a new system to avoid detection.
    - Ensures it can evade detection.

- **Metamorphic**
    - Advance version of a polymorphic virus. 
    - Rewrites its own code to appear different each time it infects.
    - Changes entirely before it attempts to infect a given file.
    - This maakes it hard to detect.

- **Stealth**
    - More of a technique used to prevent the virus from being detected.
    - Hides its presence by intercepting and modifying system calls and antivirus queries.

- **Armor**
    - Have a layer of protection to confuse a program or a person trying to analyse it.  
    - Uses complex code to shield itself from detection and removal by security tools.

- **Hoax**
    - Not a virus, but a form of social engineering technique.
    - Often used to trick users into spreading misinformation or buying unnecessary software.

### Worm

A worm can replicate and spread automatically **without user intervention**.

- Takes advantage of vulnerabilities in systems and applications.
- Dangerous, can infect computers and computing assets. 
- Cause disruptions because they constantly try to replicate and spread.
- Consumes network, compute resources, power when it spread, slowing down the system.

### Trojan

Trojans can also create backdoors but are only active while a specific application is running.

- Malware disguised as a piece of harmless or desirable software. 
- Not as effective as a rootkit, which maintain root-level access while concealing malicious activity.

**RAT (Remote Access Trojan)**

- Widely used because it provides the attacker with remote control of the machine.
- Earliest version is a testris game which infected with the trojan.
- The game is installed into floppy disks and share between friends.

Mitigation:

- Use an AV or Anti-malware prior to opening or installing any program.
- Ensure your system is patched against any vulnerabilities.

### Ransomware

Malware that encrypts files, demanding payment for their release.                               

- Blocks access to computer or its data until the ransom is paid.
- Example: WannaCry, CryptoLocker 

Mitigation:

- Conduct regular backups.
- Install regular software updates. 
- Provide security awareness training.
- Implementing MFA for the systems.

### Zombies and Botnets 

A **botnet** is a network of compromised computers, known as **zombies** or **bots** , which are remotely controlled by malicious actors.

- Created using other types of malwares to gain access to a system and victimize it. 
- Zombies are used to perform tasks using remote commands.

**Command and Control Node (C2 Node)**

- Used for managing and coordinating the activities of the zombies. 
- Can use zombies as pivot points to gain access to new victims.
- Can use a zombie to make it look like the infected computer is performing the attach.
- It can also store illegal media on the infected machines inside of the botnet.
- Commonly used to perform a DDoS attack.

### Rootkits

A rootkit tries to maintain root-level access while concealing malicious activity. 

- Typically creates a backdoor and attempts to remain undetected by anti-malware software. 
- A rootkit remains active while the system is running.
- Digs into the OS deeply, making it difficult for AV systems to detect it.

**DLL Injection**

- Run arbitrary code within the address space of another process.
- This forces it to load a dynamic-link library
- DLLs are often provided by default inside of the Windows OS.
- DLLs are designed to load everytime the Windows machine is loaded, using a shim.

**Shim**

- Software code that is placed between two components
- Intercepts call between the two components and redirect those calls 

Mitigation:

- Conduct an external system scan.
- Continuous vigilance and security measures.

### Backdoors and Logic Bombs 

**Backdoors**

- Covert method to bypass normal security and authentication functions of the systems.
- Backdoors are originally created to do maintenance and repairs.
- An example is the Remote Access Trojan (RAT) 

**Easter Eggs**

- Insecure coding practice used to provide a joke or gag gift to users.
- Closely related to logic bombs. 
- Example: Type "barrel roll" in the Google search bar.

**Logic Bombs**

- Malicious code intentionally inserted into a software system.
- Triggers a negative function when certain conditions are met. 
- Typically not installed by logic bombs, instead planted by people with inside access.
- Mitigation:
    - Restrict system access to authorized personnel.
    - Regularly review code for malicious inserts.
    - Monitor for unusual system behavior.
    - Educate on cybersecurity best practices.

### Key Logger 

A piece of a software or hardware that records every single keystroke made on the device. 

- Originally created by system administrators to help in troubleshooting.
- Recorded key strokes are sent back to the threat actor without the user's consent.
- Can lead to identity theft, financial fraud, and corporate espionage

Mitigation:

- Perform regular updates and patches.
- Use quality AV and Anti-malware solutions.
- Conduct Phishing awareness training for end users.
- Implement MFA.
- Encrypt keystrokes being sent to the systems.
- Perform physical checks on desktops, laptops, and servers.

### Spyware and Bloatware

**Spyware**
- Gather and send information about a user or organization
- Can be installed as a bundle with other software, or through a malicious website.
- Invades privacy; can also slow down the system
- Mitigation:
    - Use reputable AV and anti-spyware that are regularly updated. 
    - Only use software from trusted sources.
    - Always read the End-User License Agreement (EULA).
    - Ensure your OS is up-to-date and patched.

**Bloatware**

- Any software that comes pre-installed on a new computer or smartphone.
- Users did not request or need this software, but are bundled with the main software.
- Not dangerous, but takes up resources such as RAM.
- Mitigation:
    - Manually remove them.
    - Use bloatware removal tools.
    - Perform a clean OS installation.


----------------------------------------------

[Back to main page](../../README.md#security)    