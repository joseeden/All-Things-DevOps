
# Threat Actors

- [Threat Actors](#threat-actors)
- [Motivations](#motivations)
- [Threat Actor Attributes](#threat-actor-attributes)
    - [Internal vs. External](#internal-vs-external)
    - [Resources and Funding](#resources-and-funding)
    - [Levels of Sophistication and Capability](#levels-of-sophistication-and-capability)
- [Types of Threat Actors](#types-of-threat-actors)
    - [Unskilled Attackers](#unskilled-attackers)
    - [Hacktivists](#hacktivists)
    - [Organized Crime](#organized-crime)
    - [Advanced Persistent Threats](#advanced-persistent-threats)
    - [Insider Threats](#insider-threats)
- [Outsmarting Threat Actors](#outsmarting-threat-actors)
    - [Honeypots](#honeypots)
    - [Honeynets](#honeynets)
    - [Honeyfiles](#honeyfiles)
    - [Honey Tokens](#honey-tokens)
- [Other Disruption Technologies](#other-disruption-technologies)
    - [Using Bogus DNS Entries](#using-bogus-dns-entries)
    - [Creating Decoy Directories](#creating-decoy-directories)
    - [Generating Dynamic Pages to Slow Down Web Crawlers](#generating-dynamic-pages-to-slow-down-web-crawlers)
    - [Using Port Triggering to Hide Services](#using-port-triggering-to-hide-services)
    - [Spoofing Fake Telemetry Data During a Detected Network Scan](#spoofing-fake-telemetry-data-during-a-detected-network-scan)


## Threat Actors 

Threat actors are individuals or groups that carry out malicious activities to compromise security, disrupt operations, or gain unauthorized access to data and resources. 

## Motivations 

The motivations behind the threat actors' actions can vary significantly. Note that there is a difference between the intent behind the attack and the motivation that fuels the attack.

- **Intent** - specific objective
- **Motivation** - underlying reason, or driving forces 

Some common motivations are:

- **Data Exfiltration**

  - Refers to unauthorized transfer of data from a computer.
  - Attackers will want to gain access to information such as PII or trade secrets.
  - Stolen data can then be sold on the dark web or used for identity theft.

- **Financial Gain**

  - Motivated by the prospect of making money through illegal activities. 
  - This can involve ransomware, stealing credit card information, fraud, or selling stolen data on the dark web.

- **Blackmail**

  - Attacker obtains sensitive or compromising information about the individual.
  - The attacker can threaten to release the information to the public unless certain conditions are met.
  - Demands often involve financial transactions, typically in the form of cryptocurrencies. 

- **Service Disruptions**

  - Overwhelming the organization's network through DDoS attack.
  - Often done to cause chaos or make a statement.

- **Chaos or Curiosity**

  - Motivated by the thrill of hacking, seeing it as a challenge, a way to prove their technical skills or simply to cause harm.
  - Common among certain hacking groups or individuals exploring the limits of technology.

- **Philosopical or Political Beliefs**

  - Hacktivists are motivated by ideological, political, or social causes. 
  - They might launch attacks to promote their beliefs, protest against organizations or governments, or raise awareness about particular issues.

- **Personal Vendetta**

  - Sometimes threat actors have personal grievances against an individual, company, or group. 
  - Their attacks are driven by revenge or a desire to cause harm to those they believe have wronged them.

- **Revenge**

  - Similar to personal vendettas, this motivation involves retaliating against someone or something that the threat actor feels has harmed them or their interests.

- **Espionage**

  - Driven by the need to gather sensitive information for political, economic, or military reasons. 
  - This could involve state-sponsored espionage to steal trade secrets or gather intelligence from rival nations.

- **Competition**

  - In a business context, threat actors might attempt to gain a competitive edge by stealing trade secrets, intellectual property, or other confidential information from rivals.

- **Cyber Warfare**

  - State-sponsored threat actors may target other nations to disrupt infrastructure, spread misinformation, or create chaos. 
  - This can be part of broader geopolitical strategies or conflicts.

- **Terrorism**

  - Cyberterrorists use cyber attacks to create fear, cause disruption, or damage critical infrastructure. 
  - Their motivations often align with broader terrorist ideologies.

- **Ethical Reason**

  - Authorized hackers are motivated by the desire to improve security. 
  - Intention is patching and mitigating risks
  - Pentesters and ethical hackers


## Threat Actor Attributes 

Specific characteristics or properties that define and differentiate various threat actors from one another.


### Internal vs. External

- **Internal (Insiders)**

  - Current/former employees or contractors with access to internal systems. 
  - Motives include revenge, financial gain, or accidental negligence.

- **External**

  - Actors outside the organization, like hackers, criminal groups, or nation-states
  
  - Target systems for various motives, such as financial gain, espionage, or ideological reasons.

### Resources and Funding

- **Low Resources/Funding**

  - Minimal financial or technological backing. 
  - Uses basic tools, scripts, or publicly available resources.

- **Moderate Resources/Funding**

  - Greater resources for advanced tools and teams. 
  - Includes organized criminal groups or hacktivists.

- **High Resources/Funding**

  - Significant backing, typically from nation-states or large crime syndicates, allowing for sophisticated operations and custom tools.

### Levels of Sophistication and Capability

- **Low Sophistication/Capability**

  - Basic tools, limited technical skills.
  - Often relying on known vulnerabilities or social engineering.

- **Moderate Sophistication/Capability**

  - Advanced techniques like zero-day exploitation and refined social engineering. 
  - Capable of crafting targeted attacks.

- **High Sophistication/Capability**

  - Advanced technical skills with custom-built tools and multi-stage attacks. 
  - Can maintain a presence for extended period of time without detection.
  - Often include nation-states, APTs, or high-end criminal networks.



## Types of Threat Actors 

### Unskilled Attackers

Commonly called "Script Kiddies", this threat actors have little to no skill who only use the tools and exploits written by others.

- Can still pose as significant threat.
- Most experienced hackers start as script kiddies.
- Most are motivated by the desire for recognition, curiosity, or thrill.
- Opportunistic, as they tend to focus on easier targets.

### Hacktivists

Attackers who are driven by a cause like social change, political agendas, or terrorism, often to promote or protest against specific issues or actions.

- Hacking + Activism 
- Use wide range of techniques such as website defacement, DDoS attacks, etc.
- Defacing sites are just another form of graffiti.
- Most well-known is the **Anonymous** and **LulzSec**.
  
### Organized Crime

Attackers who are part of a crime group that is well-funded and highly sophisticated.

- Leverage resources and technical skills for illicit gain.
- Syndicates that banded together to conduct criminal activities in the digital world.
- Members could be across countries and borders.
- Well-plan operations and coordinated based on the approach.
- Employs sophisticated techniques:
  - custom malware 
  - ransomware
  - phishing campaigns

### Advanced Persistent Threats

Highly trained and funded groups of hackers (often by nation states) with covert and open-source intelligence at their disposal.

  - Orchestrated by well-funded entities.
  - Targets specific organizations.
  - Aims to steal sensitive information or disrupt operations.
  - Attack could span months or even years. 
  - *Reference:* ISC2 Study Guide, Chapter 4, Module 2.

Nation-state actors sometimes conduct **False Flag Attack**, which is orchestrated to make it appear that the attack originated from a different source or group with the intent to mislead investigators.

Motivations of Nation-state actors: 

- Gathering Intelligence 
- Disrupting critical infrastructure 
- Influencing political processes 
- Cyber espionage, to steal nation secrets
- Most are not focused on financial gains

### Insider Threats 

Often overlooked, insider threats are security threats that originate from within the organization. 

- Motivated by financial incentives, dissatisfaction with their employer, etc.
- Their inside access and pre-existing knowledge makes them especially dangerous.
- Can be in many forms:
  - Data theft 
  - Sabotage
  - Misuse of access privileges 
  - Help in facilitating external attacks 

## Outsmarting Threat Actors 

These methods can work individually or in combination to help security teams monitor, detect, and analyze threat actor activities.

### Honeypots

- Decoy systems designed to lure attackers.
- Mimics real systems with vulnerabilities that are attractive to attackers.
- Detect unauthorized access and divert attackers from real assets.
- Doesn't block attacks, but rather study the attacker's methods and behavior.
- Can be used for insider threats to detect:
  - internal fraud
  - snooping
  - malpractice

### Honeynets

- A network of interconnected honeypots simulating a real network.
- Understand complex attack patterns and coordination.
- Observe malware propagation and multi-stage attacks.
- Used to study attacker's behavior in a more controlled environment.
- Attacker's activities are logged, including both successful and unsuccessful attacks.
- **Double-edged sword** - attackers can also use honeypots and honeynets to learn how the actual system is configured. 

### Honeyfiles

- Decoy files placed in strategic locations within an organization's file system.
- Identify unauthorized file access and detect lateral movement.
- Monitor internal file system exploration and compromised user accounts.
- Appears to contain sensitive information to entice threat actor.
- Serves to trap the network, forcing the attacker to enumerate its own network.
- Can be any files 
  - Word-processing docs, spreadsheets, presentation files 
  - Images
  - Executables 
  - Database files

### Honey Tokens

- Unique data elements like API keys or credentials used as bait.
- Can be in any forms: fake user account, dummy database record, etc
- Has no legitimate value but is monitored for access and use. 
- Since it has no use, any interaction with them is suspicious.
- Useful for detecting insider threats.
- Track unauthorized data use in APIs, databases, or applications.

## Other Disruption Technologies 

In addition to the methods mentioned above, there are other disruption technologies we can use to help secure our systems. They provide a layer of deception and misdirection that can delay, confuse, or deter attackers, thereby enhancing overall security.

### Using Bogus DNS Entries

- Create false domain name to IP address mappings.
- Mislead and waster attacker's time; obscure resource locations.
- Insert bogus DNS records to confuse attackers, diverting them to non-existent addresses or invalid resources.

### Creating Decoy Directories

- Establish fake directories in a file system.
- Attract attackers to detect unauthorized access.
- Fill decoy directories with honeyfiles; security systems can monitor them for suspicious activity and trigger alerts when accessed.

### Generating Dynamic Pages to Slow Down Web Crawlers

- Generate dynamic, ever-changing web pages.
- Slow down automated web crawlers or scraping bots.
- Effective for automated scraping tools or bots trying to index or steal content.
- Use randomized content or varying structures to make it difficult for bots to extract useful information, reducing their effectiveness.

### Using Port Triggering to Hide Services

- Open/close network ports dynamically based on specific triggers.
- Conceal services from port scanners to reduce the attack surface.
- Ports remain hidden until specific conditions are met, complicating attackers' efforts to identify open ports and target services.

### Spoofing Fake Telemetry Data During a Detected Network Scan

- Generate misleading network traffic or system information.
- Confuse attackers during a network scan.
- Upon detection of a network scan, create fake telemetry like false server responses or 
misleading network topology, disrupting attackers' mapping efforts.




----------------------------------------------

[Back to main page](../../README.md#security)    