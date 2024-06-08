
# Ports and Protocols


- [Ports and Protocols](#ports-and-protocols)
    - [Types of Ports](#types-of-ports)
    - [Secure Ports](#secure-ports)
    - [Ports and Protocol Reference Sheet](#ports-and-protocol-reference-sheet)
- [Port Security](#port-security)
    - [Network Switches](#network-switches)
    - [Implementing Port Security](#implementing-port-security)
    - [The 802.1X Protocol](#the-8021x-protocol)
    - [EAP](#eap)
- [Transport Method](#transport-method)
    - [TCP](#tcp)
    - [UDP](#udp)


## Ports and Protocols 

**Ports**
- Logical communication endpoint that exists on a computer or server.

**Protocols**
- Defined set of rules and conventions that govern device communication and data exchange.

### Types of Ports 

There are physical ports that you connect wires to and logical ports that determine where the data/traffic goes. 

- **Physical Ports**
    - Refer to the connection points on networking devices like routers, switches, servers, and computers where various cables, such as fiber optic or Cat5 cables, are plugged in to establish a network.

- **Logical Ports**
    - When establishing communication between systems, logical ports, or sockets, are used as address numbers for data transfer. Ports enable a single IP address to support multiple simultaneous communications, each using a different port number. 

        | Protocol     | Port    | Security |
        |--------------|---------|----------|
        | HTTP         | 80      | Insecure |
        | HTTPS        | 443     | Secure   |
        | RADIUS auth  | 1812    | -        |
        | SQL Server   | 1433/1434| -        |
        | Docker API   | 2375/2376| -        |


### Secure Ports

Based on direction:

- **Inbound Ports**
  - Logical communication opening on a server that is listening for a connection from a client.

- **Outbound Ports**
  - Logical communication opening created on a client in order to call out to a server that is listening for a connection.

Grouping of Ports: 

- **Well-known Ports (0–1023)** 
  - Core protocols in the TCP/IP model, such as DNS and SMTP.
  - Assigned by IANA

- **Registered Ports (1024–49151)** 
  - Each vendor registers the port number (that they want to use) with IANA.
  - Associated with proprietary applications.
  - Example:
    - 1433 - Microsoft SQL Server 
    - 3389 - RDP (Microsoft proprietary)

- **Dynamic or private Ports (49152–65535)** 
  - For sessions associated with well-known or registered ports, dynamically assigned and released.
  - Can be used by any application without the need to be registered with IANA.
  - Commonly used in gaming, instant messaging, and chat for connections.

### Ports and Protocol Reference Sheet 

Certainly! Here is a comprehensive reference sheet for ports and protocols that you need to study for CompTIA Security+ SY0-701:
Certainly! Here is the modified reference sheet with an additional column indicating whether the protocol uses UDP, TCP, or both:

| Port | UDP/TCP | Service/Protocol                                | Description                                                     |
|------|---------|-------------------------------------------------|-----------------------------------------------------------------|
| 20   | TCP     | FTP (File Transfer Protocol) Data               | Transfers data in FTP                                           |
| 21   | TCP     | FTP (File Transfer Protocol) Control            | Controls communication in FTP                                   |
| 22   | TCP     | SSH (Secure Shell)                              | Secure remote login and other secure network services over an unsecured network |
| 22   | TCP     | SCP (Secure Copy Protocol)                      | Securely transfers files between hosts using SSH                |
| 22   | TCP     | SFTP (SSH File Transfer Protocol)               | Secure file transfer over SSH                                   |
| 23   | TCP     | Telnet                                          | Unencrypted text communications                                 |
| 25   | TCP     | SMTP (Simple Mail Transfer Protocol)            | Email transmission                                              |
| 49   | TCP     | TACACS+ (Terminal Access Controller Access-Control System Plus) | Remote authentication                           |
| 53   | UDP/TCP | DNS (Domain Name System)                        | Resolves domain names to IP addresses                           |
| 67   | UDP     | DHCP (Dynamic Host Configuration Protocol) Server | Assigns IP addresses to clients from a DHCP server            |
| 68   | UDP     | DHCP (Dynamic Host Configuration Protocol) Client | Client port for receiving IP configuration from DHCP server   |
| 69   | UDP     | TFTP (Trivial File Transfer Protocol)           | Simple, unsecured file transfer                                 |
| 80   | TCP     | HTTP (Hypertext Transfer Protocol)              | Web traffic; Insecure web browsing                              |
| 88   | UDP     | Kerberos                                        | Network Authentication Protocol                                 |
| 110  | TCP     | POP3 (Post Office Protocol 3)                   | Email retrieval from a server                                   |
| 119  | TCP     | NNTP (Network News Transfer Protocol)           | Used for accessing news groups                                  |
| 123  | UDP     | NTP (Network Time Protocol)                     | Network time synchronization                                    |
| 135  | UDP/TCP | RPC (Remote Procedure Call)                     | Facilitates communication between different system processes    |
| 137  | UDP/TCP | NetBIOS                                         | Networking protocol suite; Internal network names, file and printer sharing    |
| 138  | UDP/TCP | NetBIOS                                         | Networking protocol suite; Internal network names, file and printer sharing    |
| 139  | UDP/TCP | NetBIOS                                         | Networking protocol suite; Internal network names, file and printer sharing    |
| 143  | TCP     | IMAP (Internet Message Access Protocol)         | Email retrieval                                                 |
| 161  | UDP     | SNMP (Simple Network Management Protocol)       | Network management and monitoring                               |
| 162  | UDP     | SNMPTRAP (Simple Network Management Protocol Trap) | Sends alerts (trap messages) from SNMP devices               |
| 389  | UDP/TCP | LDAP (Lightweight Directory Access Protocol)    | Directory services                                              |
| 443  | TCP     | HTTPS (HTTP Secure)                             | Secure web traffic                                              |
| 445  | TCP     | SMB (Server Message Block)                      | Provides shared access to files and printers                    |
| 465  | TCP     | SMTPS (Simple Mail Transfer Protocol Secure)    | Secure email transmission                                       |
| 587  | TCP     | SMTPS (Simple Mail Transfer Protocol Secure)    | Secure email transmission                                       |
| 514  | UDP     | Syslog                                          | System logging                                                  |
| 636  | TCP     | LDAPS (LDAP Secure)                             | Secure version of LDAP (Lightweight Directory Access Protocol)  |
| 989  | TCP     | FTPS (File Transfer Protocol Secure) Data       | Secure file transfer data channel                               |
| 990  | TCP     | FTPS (File Transfer Protocol Secure) Control    | Secure file transfer control channel                            |
| 993  | TCP     | IMAPS (Internet Message Access Protocol Secure) | Secure email retrieval using IMAP                               |
| 995  | TCP     | POP3S (Post Office Protocol 3 Secure)           | Secure email retrieval using POP3                               |
| 1433 | TCP     | MS-SQL-S (Microsoft SQL Server)                 | Microsoft SQL Server database management                        |
| 1645 | TCP     | RADIUS TCP                                      | Used for remote authentication, authorization, and accounting   |
| 1646 | TCP     | RADIUS TCP                                      | Used for remote authentication, authorization, and accounting   |
| 1812 | UDP     | RADIUS Authentication                           | Authentication for network access                               |
| 1813 | UDP     | RADIUS Accounting                               | Accounting for network access                                   |
| 3260 | TCP     | iSCSI (Internet Small Computer Systems Interface) Target | iSCSI targets for storage over IP networks             |
| 3389 | TCP     | RDP (Remote Desktop Protocol)                   | Remote desktop access                                           |
| 5060 | UDP/TCP | SIP (Session Initiation Protocol)               | Voice over IP (VoIP) and multimedia communication (unencrypted) |
| 5061 | TCP     | SIP-TLS (Session Initiation Protocol over TLS)  | Secure VoIP and multimedia communication                        |
| 6514 | TCP     | Syslog over TLS                                 | Secure system logging                                           |
| 8443 | TCP     | HTTPS-alt                                       | Alternative port for secure web traffic                         |


## Port Security 

Port security is a common security feature found on network switches that allows administrators to restrict  which devices can connect to a specific port based on the network interface card's MAC address.

### Network Switches

Network switches make traffic switching decision based on the MAC address of the sending and receiving devices, through a process called **transparent bridging**.

- Switches prevent collisions by ensuring each port is its own collision domain.
- This allows switches to operate in full duplex mode.

**Full duplex** 
- This means a port can both receive and send data at the same time.

**CAM Table**
- Content Address Memory (CAM) Table
- Stores information about the MAC addresses available on any given port.

**MAC Flooding**
- Randomized MAC addresses are sent to the network switch.
- When this happens, the network switch will simply fail open.
- When it fail-open, the switch begins to rebroadcast all traffic out to every port.
- More details can be found here: [MAC Address Flooding](./023-Attacks.md#mac-address-flooding)

### Implementing Port Security

With port security, administrators can link MAC addresses of certain devices to specific network interfaces for enhanced security.

- Any other unregistered device that tries to plug to the switchport will be rejected.
- Can be a lengthy process because each MAC address needs to be determined.
- To simplify the process, we can use "sticky MAC"

**Sticky MAC**

- Also known as **Persistent MAC Learning**
- Dynamically associate the first MAC address connected to switchport as authorized.
- This prevents other MAC addresses from connecting to the specific switch port.
- Can still be bypassed through MAC spoofing or resetting MAC Addresses.

### The 802.1X Protocol

802.1x is a standardized framework that provides an authentication mechanism for devices wishing to connect to wired or wireless networks.

- Port-based access control, ensuring only authenticated devices can connect.
- Supports dynamic encryption keys for secure communication.
- Common in corporate environments to enhance security.
- Uses authentication mechanisms such as RADIUS and TACACS+.

**Components**

- **Supplicant** 
  - Client device trying to connect.

- **Authenticator** 
  - Device through which supplicant will go through
  - Network switch or access point

- **Authentication Server**  
  - Usually RADIUS, performs authentications

**Authentication Mechanisms**

- **RADIUS** 
  - Cross-platform
  - Does NOT support remote access protocol, NetBIOS, or X.25 PAD connections
  - Ideal for mixed network infrastructure.

- **TACACS+**
  - Cisco-proprietary protocol
  - Slower, relies on TCP, but adds security
  - Supports all networking protocols

### EAP

EAP (Extensible Authentication Protocol) is a versatile authentication framework that supports multiple methods for secure access to network resources.

- A flexible authentication framework supporting methods like EAP-TLS, EAP-TTLS, and PEAP.
- Commonly used in wireless networks (e.g., Wi-Fi) and secure network access setups.
- Provides strong security through certificate-based authentication.

More details can be found here: [EAP](./025-Network-Authentication-Protocols.md#eap)


## Transport Method

The transport method refers to the protocols used to move data across networks, primarily TCP and UDP, each serving different purposes based on their characteristics.

### TCP

TCP (Transmission Control Protocol) is a reliable, **connection-oriented** protocol that ensures data is transferred accurately and in order between devices on a network.

- Provides reliable, ordered, and error-checked delivery of data.
- Ensures complete data transfer between sender and receiver.
- Utilizes handshakes to establish a connection before data transfer.
- Suitable for applications where data integrity is crucial, e.g. web browsing, email, file transfers.

### UDP 

UDP (User Datagram Protocol) is a **connectionless** protocol that offers fast transmission by not guaranteeing the delivery of packets, often used in real-time communications.

- Does not guarantee delivery, order, or error checking
- Has lower overhead compared to TCP, leading to faster data transmission
- Preferred for real-time applications where speed is critical, e.g. streaming, VoIP, online gaming.

----------------------------------------------

[Back to main page](../../README.md#security)    





