
# Computer Networking

- [Network](#network)
- [Network Devices](#network-devices)
- [Ethernet](#ethernet)
- [Device Address](#device-address)
- [Networking Models](#networking-models)
    - [Open Systems Interconnection OSI Model](#open-systems-interconnection-osi-model)
    - [Transmission Control Protocol/Internet Protocol TCP/IP](#transmission-control-protocolinternet-protocol-tcpip)
- [Internet Protocol IPv4 and IPv6](#internet-protocol-ipv4-and-ipv6)
- [Wifi](#wifi)
- [Security of the Network](#security-of-the-network)
- [Ports and Protocols](#ports-and-protocols)
- [Secure Ports](#secure-ports)
- [SYN, SYN-ACK, ACK Handshake](#syn-syn-ack-ack-handshake)

## Network 

A network refers to the connection of two or more computers for the purpose of sharing data, information, or resources.

**Types of Networks**

- **Local Area Network (LAN)**
   - Typically spans a single floor or building.
   - Limited geographical area.

- **Wide Area Network (WAN)**
   - Encompasses long-distance connections between geographically remote networks.


## Network Devices

- **Hubs**
  - Connect multiple devices in a network, commonly found in home networks.
  - Less intelligent compared to switches or routers.

- **Switches**
  - Also known as intelligent hubs.
  - Know the addresses of connected devices and route traffic efficiently.
  - Wired devices.

- **Routers**
  - Control traffic flow on networks.
  - Connect similar networks and manage traffic between them.
  - Wired or wireless and can connect multiple switches.
  - Determine the most efficient route for network traffic.

- **Firewalls**
  - Essential for managing and controlling network traffic.
  - Filter traffic based on predefined rules.
  - Deployed between private networks and the internet or within segmented networks in an organization.

- **Server**
  - Provides information to other computers on a network.
  - Common types include web servers, email servers, print servers, database servers, and file servers.
  - Secured differently than workstations.

- **Endpoints**
  - Ends of a network communication link.
  - One end often at a server with a resource, the other end a client making a request.
  - Can be servers, desktops, laptops, tablets, mobile phones, or other end-user devices.

## Ethernet

Ethernet (IEEE 802.3) is a standard that defines wired connections of networked devices. This standard defines the way data is formatted over the wire to ensure disparate devices can communicate over the same cables.

## Device Address

**Media Access Control (MAC) Address:**
- Assigned to every network device.
- Example: 00-13-02-1F-58-F5.
- First 3 bytes (24 bits) denote the vendor or manufacturer of the physical network interface.
- No two devices can have the same MAC address in the same local network.

**Internet Protocol (IP) Address:**
- Logical address associated with a unique network interface.
- MAC addresses are assigned in the firmware, while IP addresses are logical.
- Helps maintain communications when physical devices are swapped.
- Examples: 192.168.1.1 and 2001:db8::ffff:0:1.

## Networking Models

Various models, architectures, and standards facilitate the interconnection of hardware and software systems for sharing information and coordinating activities. The integration includes communication devices, storage, processing, security, input/output devices, operating systems, software, services, data, and people.

1. **Provide Reliable Communications:**
   - Ensure dependable communication between hosts and users.

2. **Isolate Functions in Layers:**
   - Segment functions into distinct layers for better organization and management.

3. **Packets as Communication Basis:**
   - Use packets as the fundamental unit of communication.

4. **Standardize Routing, Addressing, and Control:**
   - Implement standardized protocols for routing, addressing, and control.

5. **Allow Additional Layer Functionality:**
   - Enable flexibility for layers beyond internetworking to add functionality.

6. **Vendor-Agnostic, Scalable, and Resilient:**
   - Ensure compatibility across vendors, scalability, and resilience in network design.

In the most basic form, a network model has at least two layers:

<p align=center>
<img width=700 src='../../Images/security-tcp-ip-osi-model.png'>
</p>


- **Upper Layer**
    - Also known as the host or application layer
    - Manages connection integrity
    - Controls sessions
    - Handles communication session establishment, maintenance, and termination
    - Transforms data into a universally understandable format
    - Facilitates communication between applications
    - Checks availability and accessibility of remote communication partners

- **Lower Layer**
    - Often referred to as the media or transport layer
    - Receives bits from the physical connection medium
    - Converts bits into standardized frames
    - Frames function like buckets holding water (bits)
    - Ensures controlled transportation of data within standardized frames
    - Adds route data to frames to create packets
    - Preparation for further management and processing by the upper layer

### Open Systems Interconnection (OSI) Model

The OSI Model is a conceptual framework for describing the communication structure of interconnected computer systems, comprising seven layers. 

- **Application, Presentation, and Session Layers (5-7):** Commonly referred to as data; potential for encapsulation.
  
- **Transport Layer (4):** Manages protocols like TCP/UDP.

- **Network Layer (3):** Handles routing and packet transmission.

- **Data Link Layer (2):** Manages frames and devices like switches.

- **Physical Layer (1):** Converts data into binary for transmission.

**Encapsulation and De-encapsulation**
Encapsulation occurs as data descends, and de-encapsulation happens as it ascends. The OSI Model aids in understanding networking terminology and processes.

The encapsulation/de-encapsulation process is best depicted visually below: 

![](../../Images/security-encap-deencap-diagram.png)


### Transmission Control Protocol/Internet Protocol (TCP/IP)

TCP/IP is platform-independent but resource-intensive and designed for ease of use rather than security. It predates the OSI model.

- **TCP/IP Protocol Architecture Layers**
  - **Application Layer:** Defines transport layer protocols.
  - **Transport Layer:** Facilitates data movement.
  - **Internet Layer:** Handles packet creation and insertion.
  - **Network Interface Layer:** Manages data flow in the network.

#### Application Layer

- **Telnet:** Allows terminal emulation over the Internet.
- **File Transfer Protocol (FTP):** Facilitates file transfers between devices.
- **Simple Mail Transport Protocol (SMTP):** Manages email transmission.
- **Domain Name Service (DNS):** Resolves domain names to IP addresses.

#### Transport Layer 

- **TCP (Transmission Control Protocol):** Full-duplex, connection-oriented protocol.
- **UDP (User Datagram Protocol):** Simplex, connectionless protocol.

#### Internet Layer

- **Internet Control Message Protocol (ICMP):** Determines network or link health. Used by tools like ping and traceroute.

- The **ping** utility employs ICMP echo packets to assess:

    - Online status of a remote system.
    - Prompt responsiveness of the remote system.
    - Support for communications by intermediary systems.
    - Level of performance efficiency in communication among intermediary systems.

![](../../Images/security-tcp-ip-protocol.png)


## Internet Protocol (IPv4 and IPv6)

IP is currently deployed and used worldwide in two major versions. IPv4 provides a 32-bit address space, which by the late 1980s was projected to be exhausted. IPv6 was introduced in December 1995 and provides a 128-bit address space along with several other important features. 

To learn more, check out [IP address](https://en.wikipedia.org/wiki/IP_address)


## Wifi 

Widely adopted for its easy deployment and cost-effectiveness, wireless networking provides versatility, enabling devices to roam freely within signal range. 

- **Wi-Fi Evolution**
    - Evolving over time with faster updated versions, Wi-Fi continues to improve its performance.

- **Security Considerations**
    - Despite its benefits, wireless networks introduce additional vulnerabilities. Unlike wired networks, intrusions can occur remotely, without physical access to the network.


![](../../Images/security-wifi.png)


## Security of the Network 

TCP/IP’s vulnerabilities are numerous. Improperly implemented TCP/IP stacks in various operating systems are vulnerable to various attacks:

- DoS/DDoS attacks
- fragment attacks
- oversized packet attacks
- spoofing attacks
- man-in-the-middle attacks

TCP/IP (as well as most protocols) is also subject to passive attacks via monitoring or sniffing. Network monitoring, or sniffing, is the act of monitoring traffic patterns to obtain information about a network. 

## Ports and Protocols 

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


## Secure Ports


- **Well-known ports (0–1023):** Core protocols in the TCP/IP model, such as DNS and SMTP.
- **Registered ports (1024–49151):** Associated with proprietary applications, officially approved by IANA.
- **Dynamic or private ports (49152–65535):** Used for sessions associated with well-known or registered ports, dynamically assigned and released.


Below are some examples: 

| Port | Service/Protocol       | Description                          |
|------|------------------------|--------------------------------------|
| 443  | HTTPS (HTTP Secure)     | Secure web traffic                   |
| 636  | LDAPS (LDAP Secure)     | Secure version of LDAP (Lightweight Directory Access Protocol) |
| 993  | IMAPS (Internet Message Access Protocol Secure) | Secure email retrieval using IMAP  |
| 995  | POP3S (Post Office Protocol 3 Secure) | Secure email retrieval using POP3  |
| 8443 | HTTPS-alt               | Alternative port for secure web traffic |


## SYN, SYN-ACK, ACK Handshake

The SYN, SYN-ACK, and ACK handshake is a process used in the TCP (Transmission Control Protocol) to establish a connection between two devices on a network. 

- **SYN (Synchronize):**
  - Initiates the connection request.
  - The sender indicates its intention to establish a connection.
  - The sender picks an initial sequence number.

- **SYN-ACK (Synchronize-Acknowledge):**
  - Acknowledges the receipt of the SYN packet.
  - Indicates acceptance of the connection request.
  - The receiver also selects an initial sequence number.

- **ACK (Acknowledge):**
  - Confirms the acknowledgment of the SYN packet.
  - Establishes the connection.
  - Data transfer can begin after the ACK is received.

This three-step handshake ensures that both the sender and receiver are ready to exchange data and have agreed upon initial sequence numbers for reliable communication.

<p align=center>
<img src='../../Images/security-syn-ack-syn.png'>
</p>



----------------------------------------------

[Back to main page](../../README.md#security)    