
# Embedded Systems


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
    - [Hardening Mobile Devices](#hardening-mobile-devices)


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

- **Security Considerations for IoT Devices**

    - IoT devices, including embedded systems and network-enabled devices, need special attention.
    - Potential for malicious use, and security breaches could cause harm.
    - Multiple access routes (ethernet, wireless, Bluetooth) require careful isolation.
    
- **Weak Default Settings** 

    - IoT devices often come with default settings that may lack adequate security measures.
    - This makes them vulnerable to exploitation.
    - Mitigation: Change default settings and credentials.

- **Poorly Configured Network Services** 

    - Inadequate configuration of network services, such as insecure protocols or open ports.
    - This can expose IoT devices to unauthorized access and cyberattacks.
    - Mitigation: Network isolation

### Securing IoT 

- **Logical Network Segmentation**

  - Use switches and VLANs for logical network segmentation.
  - Traffic control via MAC addresses, IP addresses, physical ports, protocols, or application filtering.
  - Isolation of IoT environments to enhance security and protect against potential threats.


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

For more details, please see [Mobile Asset Deployments.](./051-Asset-and-Change-Management.md#mobile-asset-deployments)

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

### Hardening Mobile Devices


- **Mobile Device Management**
    - For organizations, management at scale through [Mobile Device Management.](./042-Securing-the-Network.md#mobile-device-management)
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