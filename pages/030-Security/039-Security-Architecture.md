
# Security Architecture

- [Security Architecture](#security-architecture)
- [Cloud Computing](#cloud-computing)
    - [Cloud Concepts](#cloud-concepts)
    - [Key Considerations](#key-considerations)
    - [Cloud Security](#cloud-security)
- [Virtualization](#virtualization)
    - [Hypervisors](#hypervisors)
    - [VM Vulnerabilities](#vm-vulnerabilities)
    - [Securing VMs](#securing-vms)
- [Containerization](#containerization)
    - [Advantages](#advantages)
- [Serverless](#serverless)
    - [Vendor Lock-in](#vendor-lock-in)
- [Microservices](#microservices)
    - [Monolithic vs Microservices](#monolithic-vs-microservices)
    - [Benefits](#benefits)
    - [Challenges](#challenges)
- [Embedded Systems](#embedded-systems)
    - [Types of Embedded Systems](#types-of-embedded-systems)
    - [Real Time Operating Systems](#real-time-operating-systems)
    - [Risks](#risks)
    - [Securing Embedded Systems](#securing-embedded-systems)
- [Internet of Things](#internet-of-things)
    - [Components](#components)
    - [Risks](#risks)
- [ICS and SCADA Systems](#ics-and-scada-systems)
    - [ICS](#ics)
    - [SCADA](#scada)
    - [Risks](#risks)
    - [Securing ICS and SCADA Systems](#securing-ics-and-scada-systems)
- [Mobile Systems](#mobile-systems)
    - [GPS](#gps)
    - [Cellular 4G](#cellular-4g)
    - [Cellular 5G](#cellular-5g)
    - [WiFi Direct](#wifi-direct)
    - [Mobile Device Tethering](#mobile-device-tethering)
    - [Mobile Device Constraints](#mobile-device-constraints)
    - [SIM Cards](#sim-cards)
    - [Securing Mobile Devices](#securing-mobile-devices)
    - [Hardening mobile devices](#hardening-mobile-devices)






## Security Architecture

Design, structure and behavior of an organization's information security environment.


- **On-Premise**
    - Local infrastructure.
    - Data processed and stored on-site.
    - Direct control over hardware and software.

- **Cloud**
    - Internet-based services.
    - Hosted and managed by third-party providers.
    - Pay-per-use model.

- **Hybrid**
    - Combination of on-premise and cloud.
    - Integrates local infrastructure with cloud services.
    - Offers flexibility and scalability.


## Cloud Computing

Cloud computing involves accessing and utilizing computing resources and services over the internet, provided by third-party vendors. It offers scalability, flexibility, and reduced dependency on on-premise hardware.

- Servers 
- Storage 
- Databases 
- Networking
- Software Analytics 
- Intelligence

### Cloud Concepts 

- **Responsibility Matrix**

    - A tool outlining roles and responsibilities within a project or organization.
    - Clarifies who is accountable for specific tasks or areas of work.
    - Helps ensure clear communication and accountability.

- **Third-party Vendors**

    - External entities providing goods or services to a company.
    - Often contracted for specialized expertise or resources.
    - Can include suppliers, service providers, consultants, or software vendors.
    - Require clear communication, contracts, and management to ensure successful collaboration.

- **Hybrid Solutions**

    - In the context of IT, often refers to a mix of on-premise and cloud solutions.
    - Offers flexibility by leveraging both local infrastructure and cloud services.
    - Integration and management to ensure smooth operation and maximum benefit.

### Key Considerations 

- **Availability**

    - Redundancy measures to prevent single points of failure.
    - Monitoring systems for early detection of issues.
    - Disaster recovery plans for quick restoration of services.
  
- **Cost**

    - Total cost of ownership analysis including initial setup, maintenance, and operational expenses.
    - Cost optimization strategies such as resource consolidation or automation.
    - Budget forecasting to anticipate future expenses.
  
- **Resilience**

    - Fault-tolerant architecture design.
    - Regular testing of backup and recovery procedures.
    - Geographic redundancy for data centers or cloud regions.
  
- **Responsiveness**

    - Service level agreements (SLAs) defining response times and resolution targets.
    - Proactive monitoring and alerting systems.
    - Efficient incident management processes.
  
- **Scalability**

    - Horizontal and vertical scaling capabilities.
    - Auto-scaling mechanisms based on demand fluctuations.
    - Performance testing to ensure scalability thresholds are met.
  
- **Ease of Deployment**

    - Streamlined deployment pipelines or automation tools.
    - Compatibility testing with existing infrastructure.
    - User-friendly interfaces and documentation.
  
- **Risk Transference**

    - Clearly defined contractual agreements and service level guarantees.
    - Insurance policies to mitigate financial risks.
    - Compliance with regulatory requirements and standards.
  
- **Patch Availability**

    - Patch management processes to ensure timely application of updates.
    - Vulnerability scanning and assessment tools.
  
- **Inability to Patch**

    - Risk assessment and prioritization of unpatched vulnerabilities.
    - Compensating controls or mitigation strategies.
    - Regular security audits and assessments.
  
- **Power**

    - Redundant power sources such as uninterruptible power supplies (UPS) or backup generators.
    - Monitoring and maintenance of power infrastructure.
    - Energy-efficient hardware and cooling systems.
  
- **Compute**

    - Performance benchmarks and optimization techniques.
    - Load balancing for efficient resource utilization.
    - Capacity planning based on workload requirements and growth projections.

### Cloud Security 

- **Shared Physical Server Vulnerabilities**
    - Multiple users often share the same underlying physical servers in a cloud environment.
    - Isolation mechanims prevent unauthorized access between virtual machines.
    - Regular security assessments and audits of underlying hardware.
    - Implementation of hypervisor security measures to mitigate risks.

- **Inadequate Virtual Environment Security**
    - Segmentation of virtual networks and resources.
    - Intrusion detection and prevention systems within virtual environments.
    - Regular security updates and patches for virtualization software.

- **User Access Management**
    - Role-based access controls (RBAC) to limit privileges based on job roles.
    - Multi-factor authentication (MFA) for enhanced user verification.
    - Regular reviews and audits of user permissions to prevent unauthorized access.

- **Lack of Up-to-date Security Measures**
    - Continuous monitoring for security vulnerabilities and emerging threats.
    - Automated patch management systems to ensure timely updates.
    - Integration with threat intelligence feeds for proactive threat detection.

- **Single Point of Failure**
    - Redundancy and failover mechanisms across multiple data centers or availability zones.
    - Load balancing to distribute traffic and mitigate the impact of failures.
    - Disaster recovery plans to maintain operations in the event of a failure.

- **Weak Authentication and Encryption**
    - Strong encryption protocols for data transmission and storage.
    - Secure key management practices to protect encryption keys.
    - Regular password policy enforcement and password rotation.

- **Unclear Policies and Data Remnants**
    - Clear data retention policies outlining data lifecycle management.
    - Secure data deletion procedures to ensure data remnants are properly erased.
    - Compliance with regulatory requirements regarding data privacy and disposal.

## Virtualization 

Virtualization involves creating virtual instances of computing resources, such as servers, storage devices, or networks, to maximize resource utilization and flexibility.


### Hypervisors

Hypervisors are software or firmware that create and manage virtual machines (VMs).

- **Type-1 (Bare Metal)**

    - Installed directly on the physical hardware.
    - Provides direct access to hardware resources.
    - Typically used in enterprise data centers and cloud environments.
    - Examples: VMware vSphere, Microsoft Hyper-V, Xen, KVM.

- **Type-2 (Hosted)**

    - Installed on top of an operating system.
    - Relies on the host OS for hardware access.
    - Often used for development, testing, and desktop virtualization.
    - Examples: Oracle VirtualBox, VMware Workstation, Parallels Desktop.

### VM Vulnerabilities 


- **VM Escape**

    - Exploiting vulnerabilities to break out of a virtual machine's isolation.
    - Allows unauthorized access to the host system or other VMs.
    - *Example:* 
        - CVE-2018-3646: A vulnerability in Intel CPUs allowed malicious code running in a virtual machine to access memory outside its allocated space, potentially compromising the host system.
    - *Mitigation:* 
        - Regularly update hypervisor software to patch known vulnerabilities. 
        - Implement strict access controls and isolation techniques.

- **Privilege Escalation**

    - Elevating user privileges within a virtualized environment.
    - Grants unauthorized access to sensitive resources or capabilities.
    - *Example:* 
        - CVE-2019-14849: A vulnerability in the Linux Kernel allowed users with lower privileges to escalate their privileges and gain root access within a virtual machine.
    - *Mitigation:* 
        - Apply operating system patches and security updates promptly. 
        - Implement least privilege principles.
        - Regularly audit user permissions to prevent unauthorized privilege escalation.

- **Live VM Migration**

    - Intercepting data during the migration process.
    - Potentially exposing sensitive information to unauthorized entities.
    - *Example:* 
        - Insecure VM migration protocols or misconfigured network settings may expose sensitive data during live VM migrations.
    - *Mitigation:* 
        - Encrypt data during VM migration to prevent interception. 
        - Implement secure network configurations.
        - Restrict access to migration interfaces.

- **Resource Reuse**

    - Exploiting leftover resources from previously used virtual machines.
    - Can lead to unauthorized access or data leakage.
    - *Example:* 
        - Residual data left in memory or storage after a VM is terminated may be exploited to access sensitive information.
    - *Mitigation:* 
        - Use secure deletion techniques to ensure that data remnants are properly erased. 
        - Implement memory and disk scrubbing mechanisms to prevent residual data exploitation. 
        - Regularly monitor and audit resource allocation to detect and mitigate resource reuse vulnerabilities.    

### Securing VMs 

Securing VMs are almost similar with how we secure physical servers.

- Hypervisors needs to be regularlly updated, patched, and secured.
- Limit the connections between VMs and the physical machines.
- Minimize and remove unneeded features to reduce potential vulnerabilities.
- Consider VM distribution across different servers.
- Beware of **Virtualization Sprawl** - Provisioning VMs without proper oversight.
- Enable encryption of the file that hosts the VM.



## Containerization 

Containerization is a lightweight form of virtualization that encapsulates an application and its dependencies into a standardized unit known as a container. Containers can be easily deployed and run consistently across different computing environments.

- Docker 
- Kubernetes 
- Red Hat OpenShift 

### Advantages 

- **Efficiency**
    - Optimizes resource usage.
    - Fast startup times.

- **Speed**
    - Rapid deployment.
    - Quick application scaling.

- **Portability**
    - Consistent across environments.
    - Easily deployable anywhere.

- **Scalability**
    - Dynamic resource allocation.
    - Horizontal scaling capabilities.

- **Isolation**
    - Ensures application separation.
    - Minimizes impact of failures.

- **Consistency**
    - Standardized deployment process.
    - Reproducible builds and deployments.

## Serverless 

Serverless is an approach where cloud providers manage the infrastructure, allowing developers to focus solely on writing and deploying code.

- Resources are provisioned dynamically and automatically scale based on demand.
- Billed based on actual usage rather than pre-provisioned capacity.
- Eliminates the need for managing servers, operating systems, or infrastructure components.
- Enable faster development and deployment cycles.

### Vendor Lock-in

It is a situation where a customer becomes dependent on a particular vendor's products or services to an extent that switching to another vendor becomes impractical or costly..

- Developers heavily utilize proprietary services or features provided by a specific cloud provider.
- This makes it challenging to migrate to another provider in the future.

Mitigation:

- Using open standards
- Implementing abstraction layers
- Designing applications for portability to reduce dependency on specific vendor offerings.


## Microservices 

Microservices is an architectural approach where applications are composed of small, independently deployable services. Each service is focused on a specific business function and communicates with others through APIs. This allows for modularity, flexibility, and scalability, enabling teams to develop, deploy, and maintain services independently.

### Monolithic vs Microservices 

- **Monolithic**
    - Single, unified codebase and application.
    - Components tightly integrated and deployed together.
    - Scaling involves replicating the entire application.
    - Development, testing, and deployment are typically done as a single unit.
    - Changes and updates require redeploying the entire application.
    - Simple to develop and initially deploy.
    - Can become complex and difficult to maintain as the application grows.

- **Microservices**
    - Application divided into small, independently deployable services.
    - Each service focuses on a specific business function.
    - Services communicate through APIs or message queues.
    - Scaling is done at the service level, allowing for more efficient resource utilization.
    - Development, testing, and deployment can be done independently for each service.
    - Enables continuous deployment and faster iteration.
    - Additional overhead for managing service communication and orchestration.

### Benefits

- **Scalability**
    - Enables scaling individual components independently based on demand.
    - Optimizes resource usage by allocating resources where needed most.
    - Allows for horizontal scaling of specific services without affecting others.

- **Flexibility**
    - Provides freedom to choose different technologies and programming languages for each service.
    - Allows teams to use the most appropriate tools and frameworks for specific tasks.
    - Facilitates experimentation and innovation by enabling the adoption of new technologies as needed.

- **Resilience**
    - Isolates failures to individual services, preventing them from affecting the entire system.
    - Enhances fault tolerance by ensuring that failures in one service do not propagate to others.
    - Supports **graceful degradation**, where the system continues to function despite partial failures.

- **Faster Deployment and Updates**
    - Enables continuous deployment by allowing changes to be deployed independently for each service.
    - Reduces time-to-market by facilitating rapid iteration and experimentation.
    - Enhances agility and responsiveness to customer feedback by enabling quick updates and feature releases.

### Challenges 

- **Complexity**
  - Increased complexity in development, deployment, and maintenance.
  - Requires effective coordination between teams.

- **Data Management**
  - Handling data consistency and synchronization challenges.
  - Requires careful management of data storage and retrieval.

- **Network Latency**
  - Service-to-service communication introduces latency.
  - Requires optimization of network communication.

- **Security**
  - Distributed nature raises security concerns.
  - Requires robust authentication and encryption mechanisms.

## Embedded Systems

Embedded systems are **specialized** computing systems designed to perform specific functions within larger systems or devices. They are typically built with microcontrollers or microprocessors and are embedded into products to control and monitor various operations. 

Examples:

- Consumer electronics (smartphones, smart TVs)
- Automotive systems (engine control units, infotainment systems)
- Industrial machinery (robotics, factory automation)
- Medical devices (pacemakers, infusion pumps)
- Home appliances (washing machines, thermostats)

Embedded systems often operate in **real-time** and have resource constraints such as limited memory, processing power, and energy. 

### Types of Embedded Systems 

Types: 

- IoT 
- ICS and SCADA systems
- Medical systems 
- In-vehicle computing systems 
- Unmanned Aerial Vehicles (UAV) - "drones"
- Smart Meter 
- Surveillance systems 
- Voce over IP (VoIP)
- Mobile systems (laptops, handheld devices)

### Real Time Operating Systems 

An RTOS is an operating system designed to manage real-time tasks with strict timing requirements. It provides services such as task scheduling, memory management, and inter-task communication, optimized for deterministic and predictable behavior. RTOSes are commonly used in embedded systems and applications where timing and responsiveness are critical. 

Key characteristics:

- **Task Scheduling**

  - Prioritizes tasks based on urgency and deadlines.
  - Utilizes scheduling algorithms such as preemptive or cooperative scheduling.
  - Supports task preemption to ensure critical tasks are executed on time.
  
- **Interrupt Handling**

  - Efficiently manages hardware interrupts.
  - Provides fast and deterministic response to external events.
  - Utilizes interrupt service routines (ISRs) to handle interrupts with minimal latency.
  
- **Resource Management**

  - Allocates system resources such as CPU time, memory, and peripherals.
  - Ensures fair and efficient utilization of available resources.
  - Implements mechanisms for resource protection and access control.
  
- **Inter-Task Communication**

  - Facilitates communication between tasks in real-time.
  - Uses message queues for asynchronous communication.
  - Employs semaphores and event flags for synchronization and mutual exclusion.

### Risks

- **Hardware Failure**

  - Component failure leading to system malfunction or downtime.
  - Degradation over time due to wear and tear.
  - Environmental factors such as temperature fluctuations or electrical disturbances.

- **Software Bugs**

  - Coding errors or logic flaws in the software.
  - Incompatibility issues with other system components.
  - Lack of thorough testing and quality assurance.

- **Security Vulnerabilities**

  - Weak authentication mechanisms allowing unauthorized access.
  - Exploitable software vulnerabilities like buffer overflows or injection attacks.
  - Insufficient encryption or data protection measures.

- **Outdated Systems**

  - Unsupported hardware or software lacking vendor support.
  - Inability to receive security patches or updates.
  - Increased exposure to known vulnerabilities and exploits.


### Securing Embedded Systems 


- **Network Segmentation**

  - Isolating embedded systems within segmented networks.
  - Limit exposure to external threats.
  - Restricting access to critical systems through firewalls and access controls.

- **Wrappers**

  - Using protective wrappers or sandboxes to encapsulate embedded systems.
  - This shields the systems from potential security threats.
  - Detect and mitigate attacks in real-time using runtime protection mechanisms.

- **Firmware Code Control**

  - Strict control over firmware code development, deployment, and updates
  - Prevent unauthorized modifications.
  - Code signing and integrity verification - ensure authenticity and integrity of updates.

- **Inability to Patch**

  - Challenges such as limited resources, compatibility issues, and potential disruptions.
  - **Over-the Air (OTA) Updates** - patches are delivered and installed remotely.



## Internet of Things 

A network of interconnected devices, sensors, and actuators that communicate and exchange data over the internet, enabling remote monitoring, control, and automation of physical objects and environments

### Components 

- **Hub or Control System**

    - Centralized device that manages communication and control of IoT devices within a network.
    - Orchestrates data flow and interactions between devices.
    - Often provides a user interface for device management and monitoring.

- **Smart Devices**

    - Connected devices with embedded sensors and actuators.
    - Utilizes internet connectivity for data exchange and remote control.
    - Examples include smart thermostats, smart locks, and connected appliances.

- **Wearables**

    - IoT devices worn on the body, such as smartwatches or fitness trackers.
    - Collects biometric data such as heart rate, activity levels, and sleep patterns.
    - Enables users to track health and fitness metrics in real-time.

- **Sensors**

    - Devices that detect and measure physical or environmental conditions.
    - Measures temperature, humidity, light intensity, motion, and more.
    - Used in various applications including home automation, industrial monitoring, and environmental sensing.

### Risks 

- **Weak Default Settings** 

    - IoT devices often come with default settings that may lack adequate security measures.
    - This makes them vulnerable to exploitation.
    - Mitigation: Change default settings and credentials.

- **Poorly Configured Network Services** 

    - Inadequate configuration of network services, such as insecure protocols or open ports.
    - This can expose IoT devices to unauthorized access and cyberattacks.
    - Mitigation: Network isolation


## ICS and SCADA Systems

### ICS

Industrial Control Systems  or ICS is a type of control systems used to monitor and control industrial processes ranging from simple systems to complex systems. 

- **DCS (Distributed Control System)**:
    - Utilizes networked computers to coordinate and control industrial processes or manufacturing operations.
    - Centralized control, monitoring, and data acquisition capabilities across distributed field devices.
    - Typically used in large-scale industrial settings such as power plants, chemical plants, and oil refineries.

- **PLCs (Programmable Logic Controllers)**:
    - Specialized industrial computers used to automate electromechanical processes, e.g. assembly lines, robotic systems.
    - Designed for real-time operation in harsh industrial environments.
    - Programmable using ladder logic or other programming languages to control machinery and processes.
    - High reliability, flexibility, and modularity, allowing for easy reconfiguration and expansion of control systems.


### SCADA 

SCADA (Supervisory Control and Data Acquisition) is a system used to remotely monitor, control, and manage industrial processes and infrastructure.

- **Collection of ICS devices dispersed over a wide area network.**
- Integrates data acquisition, visualization, and control functions for supervisory management.
- Collects data from sensors, meters, and other devices, and displays it to operators in real-time.
- Remotely control equipment, adjust setpoints, and respond to alarms or abnormal conditions.
- Typically used in industries such as manufacturing, utilities, transportation, and oil and gas.


### Risks 

- **Unauthorized access**

  - Threat of unauthorized individuals gaining access to critical control systems.
  - Potential for manipulation or disruption of industrial processes.

- **Malware attacks**

  - Vulnerability to malware infections targeting industrial control systems.
  - Risks of data theft, operational disruption, or physical damage.

- **Lack of updates**

  - Risk posed by outdated or unpatched software in ICS and SCADA systems.
  - Increases susceptibility to known vulnerabilities and exploits.

- **Physical threats**

  - Exposure to physical threats such as sabotage, vandalism, or tampering.
  - Potential for operational downtime, safety hazards, or environmental damage.

### Securing ICS and SCADA Systems
 
- **Strong access controls**

  - Implement role-based access controls.
  - Enforce multi-factor authentication.

- **Regular updates and patches**

  - Keep software and firmware up-to-date.
  - Maintain a robust patch management process.

- **Firewall and IDS**

  - Deploy firewalls to control network traffic.
  - Utilize intrusion detection systems.

- **Regular security audits**

  - Conduct frequent vulnerability assessments.
  - Ensure compliance with industry standards.

- **Employee training**

  - Provide security awareness training.
  - Foster a culture of security within the organization.


## Mobile Systems 

Mobile Device Wireless Communications:

- GPS (Global Positioning Systems) - Uses satellites to track where an object is
- Infrared - Legacy, line-of-sight wireless communications
- Cellular - Phone calls or SMS/text messages
- WIFI 
- Bluetooth 
- Near Field Communication (NFC)    

### GPS 

GPS (Global Positioning System) is a satellite-based navigation system that provides precise location and time information to users worldwide. It consists of a network of satellites orbiting the Earth and user receivers that calculate their position using signals from these satellites. 

- Widely used for navigation, mapping, location-based services, and precise timing applications.
- Devices receive signals from multiple satellites to calculate their position using trilateration.
- **Trilateration:** Measures distance to at least four satellites to determine latitude, longitude, altitude, and time.

Security Implications:

  - **Spoofing:** Signals can be spoofed, leading to false location information.
  - **Jamming:** Deliberate interference can disrupt GPS signals, affecting navigation and timing.
  - **Privacy Concerns:** Location data from GPS can be exploited for surveillance or tracking purposes.
  - **Cyberattacks:** Vulnerabilities in GPS infrastructure could be exploited for cyberattacks on critical systems or infrastructure.
  - **Dependency:** Reliance on GPS for critical functions can pose risks if the system becomes unavailable or inaccurate.


### Cellular 4G

4G, or fourth-generation, cellular technology is a wireless communication standard that offers faster data speeds, improved reliability, and enhanced capabilities compared to previous generations. 

- Wide range of mobile applications on smartphones, tablets, and other connected devices. 

- Uses advanced technologies such as LTE (Long-Term Evolution) to deliver data rates.

- Increased bandwidth, lower latency, and support for VoIP and video conferencing. 
- Uses radio frequencies:

    - **Narrow-band**   
        - short-range
    
    - **Broadband** 
        - Wide-range 
        - Multiple transmissions at the same time

Security Implications:

- Firmware Over-the-air (OTA) updates


### Cellular 5G

5G, or fifth-generation, cellular technology is the latest standard in wireless communication, succeeding 4G. 5G networks leverage advanced technologies such as millimeter-wave frequencies, massive MIMO (Multiple Input Multiple Output), and network slicing to deliver high-bandwidth, low-latency connectivity for a wide range of applications.

- High data speeds, up to 10 Gbps.
- Cells are smaller than 4G, meaning transmission range is up to 2km.
- Base stations use fiber connections.
- Requires 5G capable devices.

Security Implications of 5G:

- Larger attack surface for cybercriminals to exploit.
- User privacy and data protection concerns on massive data transmitted over 5G networks
- Over-reliance on equipment from potentially untrusted vendors.

### WiFi Direct 

WiFi Direct is a peer-to-peer wireless technology that allows devices to connect and communicate with each other directly, without the need for a traditional WiFi network or internet connection. 

- Useful for sharing files, streaming media, or playing multiplayer games
- Does not use a wireless router, no internet connectivity.

### Mobile Device Tethering 

Mobile device tethering, also known as mobile hotspot or internet sharing, allows a smartphone or tablet to share its cellular data connection with other devices such as laptops, tablets, or gaming consoles.

- Additional data usage charges from the mobile carrier may be incurred.
- Battery life can also be easily drained.
- Setting mobile device as a wireless hotspot
- For wired connection, use **USB Tethering** or **USB On-the-go (OTG)**

### Mobile Device Constraints 

- Limited CPU and Battery
    - Limited power 
    - Use lightweight cryptography like ECC
    - ECC uses a smaller key size
    - The more computations you do, the more you drain the battery

- Limited transmission range
    - Affects wireless devices 

- Limited device access 

    - **Rooting** - Breaking into android devices, to have full access or root access 
    - **Jailbreaking** - Similar with rooting, but for Apple devices

### SIM Cards 

Subscribe Identity Modules (SIM) cards authenticates device to carrier network. It contains the following data:

- Carrier subscription data
- SIM Card serial number
- Phone contacts (if not in the cloud)

**Carrier Unlock**

- Reuse device on a different carrier network
- Switching between mobile providers

### Securing Mobile Devices 

- **Bring your own device (BYOD)**
    - Employee uses personal device for work
    - IT department applies centralized policy 

- **Choose your own device (CYOD)**
    - Company offers a selection of devices
    - Employee can choose from these devices

- **Corporate-owned personally enabled (COPE)**    
    - Phone issued by the company
    - Can be used for work purposes, and for personal use
    - Device can be partitioned (containers) for personal and corporate apps 

### Hardening mobile devices


- **Mobile Device Management**
    - For organizations, management at scale through [Mobile Device Management.](./016-Computer-Networking.md#mobile-data-management-mdm)
    - Employees' device just need to be registered.
- **Sideloading** 
    - Instead of installing app from the app store, use the actual packages.
    - Security risk, attacker can install app which allow them full access to the phone.

- **SE Android**    
    - Mobile functions are limited.
    - Security clearance is needed to use the device.
    - Used in stringent, high-security environments.

- **Unified Endpoint Management**
    - Can be used to deploy FW settings on smartphones
    - Centrally deploy virus updates, install apps, etc.

- **Others**

    - Reduce the attack surface
    - Disabling bluetooth, WIFI, or NFC 
    - Use strong authentication  
    - Enable full device encryption

----------------------------------------------

[Back to main page](../../README.md#security)    