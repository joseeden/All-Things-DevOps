
# Attack Frameworks 

Each of the models below have their own benefits and drawbacks. They can be used individually or combined. 

- [Kill Chain](#kill-chain)
- [MITRE ATT&CK Framework](#mitre-attck-framework)
- [Diamond Model of Intrusion Analysis](#diamond-model-of-intrusion-analysis)


### Kill Chain

A model developed by Lockheed Martin that describes the stages by which a threat actor progresses a network intrusion. The Kill Chain has a seven-step method:

- **Reconnaissance**
  The attacker determines what methods to use to complete the phases of the attack.

  - Can use passive or active scanning techniques
  - Generally start with passive, then proceed with active scanning.

- **Weaponization**
  The attacker couples payload code that will enable access with exploit code that will use a vulnerability to execute on the target system.

  - Creating the malware, but only inside a lab.
  - Malware is not yet sent to the target system.

- **Delivery**
  The attacker identifies a vector by which to transmit the weaponized code to the target environment.

  - Via email or USB drive.

- **Exploitation**
  The weaponized code is executed on the target system by this mechanism.

  - Happens when malicious email is clicked, and code is ran.
  - When autorun is performed on a plugged-in USB drive.

- **Installation**
  This mechanism enables the weaponized code to run a remote access tool and achieve persistence on the target system.

  - Provides us control to the system movign forward.

- **Command & Control (C2)**
  The weaponized code establishes an outbound channel to a remote server that can then be used to control the remote access tool and possibly download additional tools to progress the attack.

  - Attacker now owns the system. 

- **Actions on Objectives**
  The attacker typically uses the access he has achieved to covertly collect information from target systems and transfer it to a remote system (data exfiltration) or achieve other goals and motives.

Kill chain analysis can be used to identify a defensive course-of-action matrix to counter the progress of an attack at each stage.

### MITRE ATT&CK Framework

A knowledge base maintained by the MITRE Corporation for listing and explaining specific **adversary tactics, techniques, and common knowledge** (ATT&CK) or procedures (attack.mitre.org).

- The pre-ATT&CK tactics matrix aligns to the reconnaissance and weaponization phases of the kill chain.

### Diamond Model of Intrusion Analysis

A framework for analyzing cybersecurity incidents and intrusions by exploring the relationships between four core features: 

- adversary
- capability
- infrastructure
- victim




----------------------------------------------

[Back to main page](../../README.md#security)    




