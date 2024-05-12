
# Digital Forensics


- [Digital Forensics](#digital-forensics)
- [Phases of Digital Forensics](#phases-of-digital-forensics)
    - [Identification](#identification)
    - [Collection](#collection)
    - [Analysis](#analysis)
    - [Reporting](#reporting)
- [Data Acquisition](#data-acquisition)
- [Chain of Custody](#chain-of-custody)
- [Order of Volatility](#order-of-volatility)
    - [CPU Registers and Cache](#cpu-registers-and-cache)
    - [RAM Memory](#ram-memory)
    - [Swap Space/Temporary File Systems](#swap-spacetemporary-file-systems)
    - [Persistent Mass Storage](#persistent-mass-storage)
    - [Remote Logging and Monitoring Data](#remote-logging-and-monitoring-data)
    - [Physical Configuration and network topology](#physical-configuration-and-network-topology)
    - [Archival Media](#archival-media)
- [Data Collection Procedures](#data-collection-procedures)
    - [Disk Imaging](#disk-imaging)
    - [File Carving](#file-carving)
- [Preserving the Evidence](#preserving-the-evidence)
    - [Legal Hold](#legal-hold)
    - [Preservation](#preservation)
    - [E-Discovery](#electronic-discovery)
    - [Mobile Devices ](#mobile-devices)
- [Code of Ethics](#code-of-ethics)
    - [Avoid Bias](#avoid-bias)
    - [Repeatable Actions](#repeatable-actions)
    - [Preservation of Evidence](#preservation-of-evidence)


## Digital Forensics

Digital forensics is the process of investigating and analyzing digital devices and data to uncover evidence 

- Collect and preserve evidence for legal purposes.
- Always adhere to the organization's written procedures.
- This ensures that the investigation is performed correctly.

## Phases of Digital Forensics

- Identification 
- Collection
- Analysis 
- Reporting

### Identification 

Recognizing and determining relevant data or digital evidence.

- Identify the devices and data sources.
- Determine what is considered potential evidence.
- Define the scope and boundaries of the investigation.

### Collection

Gathering and acquiring digital evidence while preserving its integrity.

- Proper handling and documentation to maintain a chain of custody.
- Use forensically sound methods to collect data.
- Maintain a clear **chain of custody**.
- Document each step in the collection process.
- Follow proper acquisition procedure.

### Analysis 

Examining collected data to uncover relevant information, patterns, or evidence.

- Examine the data for hidden, deleted, or altered information.
- Use specialized tools to analyze different types of digital evidence.
- Draw connections and correlations among different data points.

### Reporting

The final phase where findings from the analysis are documented and presented.

- Prepare a detailed and coherent report of findings.
- Ensure the report is accessible to non-technical audiences.
- Include necessary information for legal proceedings, such as evidence handling and conclusions.

## Data Acquisition 

The method and tools used to create a forensically sound copy of the data from a source device, such as system memory or a hard disk.

- BYOD Policies - legally complicated, as it may not be possible to search and seize the device.
- How to collect data, e.g. shutdown, collect while device is powered on.
- There could be evidence loss if device is shut down.

## Chain of Custody

The Chain of Custody is the documented process that tracks the handling, transfer, and storage of evidence from its collection to its final presentation in court or other legal settings. 

- **Documentation** - Records each step of evidence collection, transfer, and storage.
- **Evidence Handling** - Ensures evidence is handled consistently to prevent tampering or contamination.
- **Transfer of Evidence** - Logs when evidence changes hands, including who, when, and why.
- **Storage Security** - Maintains secure storage of evidence to prevent unauthorized access or loss.
- **Legal Validity** - A clear chain of custody helps ensure evidence is admissible in court by demonstrating its integrity.

## Order of Volatility

The order of volatility indicates the priority for collecting digital evidence, focusing on **preserving the most transient data first**.

### CPU Registers and Cache

- The most volatile, quickly lost upon system shutdown.

### RAM (Memory)

- Contains active programs and system state, disappears when the system is turned off.
- This may include network-related information and system processes:
    - Routing Tables
    - ARP Cache
    - Process Tables   

### Swap Space/Temporary File Systems

- Includes operating system swap files, temporary directories, and other virtual memory spaces. 
- Data in these areas is less volatile than RAM but still susceptible to being overwritten.
   
### Persistent Mass Storage

- Hard drives and SSDs.
- More stable but can be altered or deleted.
- Information is retained even after shutting down the device.

### Remote Logging and Monitoring Data

- Not on the system being analyzed, stored on SIEM and monitoring data.
- Important, because the data is still being continuously read and being written to.

### Physical Configuration and network topology

- Useful for mapping out and collecting the information.

### Archival Media
    
- External drives, cloud storage; less volatile, more durable.
- Backup Media, could be stored onsite or remotely.
- Typically the least volatile but may require additional access.


## Data Collection Procedures 

These collection techniques allow investigators to recover and analyze data while preserving the integrity of the original evidence.

### Disk Imaging 

Disk imaging is the process of creating an exact, sector-by-sector copy of a storage device, such as a hard drive or SSD. This copy, or "image," preserves the original data, allowing for forensic analysis without altering the original evidence.

- **Forensic Integrity** - Ensures the original disk remains unaltered during analysis.
- **Complete Copy** - Captures all data, including deleted files and system information.
- **Forensic Tools** - Uses specialized software to create a bit-for-bit image.
- **Chain of Custody** - Maintains documentation to ensure evidence integrity.

Tools used:

- Capture and hash the system image: 

    - FTK Imager 
    - Forensic Toolkit (FTK)
    - Encase

- Capture screenshots of the machine:

    - network traffic logs 
    - videos (for CCTV)

- Analyze disk images, recover data:
    - Autopsy 
    - WinHex

- RAM Memory dumps:
    - Memdump
    - HELIX

### File Carving 

File carving is a technique used to extract files from a disk image without relying on file system structures. It is often used to recover deleted or fragmented files.

- **Data Recovery** - Recovers files that may have been deleted or corrupted.
- **File Type Identification** - Uses known patterns or "magic numbers" to identify file types.
- **File Fragmentation** - Can reassemble files that are broken into multiple fragments.
- **Forensic Tools** - Requires specialized software designed for file carving.
- **Application** - Useful when the file system is damaged or unavailable. 


## Preserving the Evidence 

### Legal Hold

Also known as a **litigation hold**, legal hold is a formal notice requiring an organization to preserve all relevant information and data for potential or ongoing litigation, investigations, or legal proceedings. 

- **Prevent evidence loss or tampering.**
- Initiated when litigation is anticipated or pending, or when an investigation is underway.
- Notify relevant individuals to ensure preservation compliance.
- Document all communications and actions related to the legal hold.
- Ensures continued preservation throughout the legal process.

**Lifting the Hold**
- Ends the hold when the litigation or investigation is concluded.

### Preservation 

The goal of preservation is to maintain the integrity of the electronic information, which is essential for building a strong case or responding to legal requests.

Preservation could include: 

- Making backup copies 
- Isolating critical systems 
- Implementing access controls

### Electronic Discovery 

Commonly known as **eDiscovery**, Electronic Discovery is the process of identifying, collecting, reviewing, and producing electronically stored information (ESI) for legal or investigative purposes. 

- Emails, documents, databases, social media, text messages, multimedia files, and other digital content.
- Utilizes specialized eDiscovery tools to manage and analyze large volumes of data.
- **Legal Requirement**: Laws and regulations define how evidence must be managed and disclosed during litigation.
- **Collaboration with Legal Teams**: Coordination between IT, legal, and compliance teams.
- **Chain of Custody**: Maintains a clear record of evidence handling to ensure integrity and admissibility in court.

### Mobile Devices 

Mobile device forensics involves the investigation and analysis of digital evidence stored on mobile devices, such as smartphones, tablets, and other portable electronics.

- Prevent wirelesss communications 
- Enable airplane mode 
- Faraday bag/cage 
- Keep devices charged to preserve battery

Analysis:

- GPS Tagging - when/where pictures and videos taken
- Social media posts

## Code of Ethics 

Forensic analysts must adhere to a code of ethics.

1. Avoid Bias 
2. Repeatable Actions 
3. Preservation of Evidence

### Avoid Bias

  - Maintain objectivity and impartiality in all analyses.
  - Base conclusions on evidence, not personal beliefs or external pressures.

### Repeatable Actions

  - Ensure forensic processes are consistent and reproducible.
  - Document methods to allow others to verify or replicate findings.
  - When doing forensic analysis, take note of:
    - Time 
    - Action
    - Results

### Preservation of Evidence

  - Handle evidence in a way that maintains its integrity.
  - Follow procedures to avoid contamination, tampering, or loss of evidence.


----------------------------------------------

[Back to main page](../../README.md#security)    