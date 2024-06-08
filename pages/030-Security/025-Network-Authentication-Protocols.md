
# Network Authentication Protocols 

- [Network Authentication Protocols](#network-authentication-protocols)
    - [PAP](#pap)
    - [MS-CHAPv2](#ms-chapv2)
    - [NTLM](#ntlm)
    - [Kerberos](#kerberos)
    - [EAP](#eap)
    - [EAP Variants](#eap-variants)
    - [LDAP](#ldap)
    - [IEEE 802.1X](#ieee-8021x)
    - [RADIUS](#radius)
    - [TACACS+](#tacacs)
- [Identity Federation](#identity-federation)
    - [Key Concepts](#key-concepts)
    - [Benefits of Identity Federation](#benefits-of-identity-federation)
    - [How it works](#how-it-works)
    - [Use Cases](#use-cases)
- [Identity Federation Methods](#identity-federation-methods)
    - [SSO](#sso)
    - [OAuth](#oauth)
    - [SAML](#saml)
    - [OIDC](#oidc)


## Network Authentication Protocols  

Network authentication protocols are mechanisms or sets of rules that ensure that users or devices can securely prove their identity to access network resources or services.

They ensure that only authorized users or devices can access a network, reducing the risk of unauthorized access and enhancing security.


### PAP 

PAP (Password Authentication Protocol) is a basic authentication protocol that has been largely replaced by more secure methods. Here’s an overview of its characteristics:

- Transmits passwords in plaintext, making it vulnerable to interception.
- Lacks encryption, thus passwords are exposed during transmission.
- Legacy use, common in older systems where security measures were less advanced.
- Offers minimal protection against attacks such as eavesdropping.

### MS-CHAPv2 

MS-CHAPv2 is a more secure version of the Challenge-Handshake Authentication Protocol, designed to provide enhanced security in network environments. 

- Utilizes a challenge-response mechanism with stronger encryption
- Widely used in VPNs and Windows-based environments
  
  ![](../../Images/sec+-mschapv222.png)

### NTLM

NTLM is a Microsoft proprietary authentication protocol that has evolved over time to enhance security in network environments, though it is now largely replaced by more secure protocols like Kerberos.

- "NT" - New technology
- Microsoft’s proprietary authentication protocol
- Supersedes the older LANMAN protocol
- Designed for workgroup computers, not joined to any AD domain
- Known for vulnerabilities to various attacks
- Password hashes with NTLM are not salted, making them easier to crack
- NTLM v2 includes salted passwords for improved security

### Kerberos

Kerberos is a network authentication protocol that uses a ticket-based system to secure communications, widely used in enterprise environments.

- Primarily used for single sign-on (SSO) in enterprise environments.
- Commonly used in Microsoft Active Directory authentication.
- Users are provided with a "ticket" for accessing resources securely.

Components include:

  - Kerberos Key Distribution Center (KDC)
  - Authentication Service (AS)
  - Ticket-Granting Service (TGS)
  - Ticket-Granting Ticket (TGT)

### EAP

EAP (Extensible Authentication Protocol) is a flexible authentication framework used in network access protocols. It supports multiple authentication methods and is commonly used in wireless networks and point-to-point connections.

- Not a specific authentication mechanism but a framework supporting various methods.
- Authentication: Simple passwords, Digital Certificates, and PKI
- Operates at the data link layer, allowing for secure exchanges before IP assignment.
- Ensures compatibility between different authentication methods and devices.
- Commonly used in 802.1X networks for secure authentication.

Examples:

- PKI certificate authentication
- Smart card authentication

### EAP Variants 

All variants are considered cross-platform, except for LEAP. 

- **EAP-MD5**
  - Simple challenge-response method.
  - Provides weak security; no encryption of data.
  - Vulnerable to password-based attacks.
  - Suitable for **basic authentication** needs.
  - If used, ensure to have a long and strong password.
  - One-way authentication process, no mutual authentication.

- **EAP-TLS**
  - Uses PKI with digital certificates for authentication.
  - Digital certificates are installed on both client and server.
  - Provides strong security through **mutual authentication**.
  - Widely regarded as one of the most secure EAP methods.

- **EAP-TTLS**
  - Extends EAP-TLS with additional tunneling.
  - **Only the server needs a certificate,** not on the client.
  - Client uses a password for the authentication, making it less secure.
  - Supports older authentication methods within a secure tunnel.
  - Easier to deploy compared to EAP-TLS.

- **EAP-FAST**
  - FAST (Flexible Authentication via Secure Tunneling)
  - **Uses Protected Access Credentials (PACs), instead of a certificate.**
  - PACs is used to establish mutual authentication between two devices.
  - Designed as an alternative to EAP-TTLS and EAP-PEAP.
  - Suitable for environments where issuing certificates is challenging.

- **PEAP**
  - "Protected EAP", encapsulates **EAP within a secure TLS tunnel.**
  - Only the server requires a certificate.
  - Supports multiple authentication methods within the tunnel.
  - Uses server certs and Microsoft AD Databases for the password.
  - Commonly used due to its balance of security and ease of deployment.

- **EAP-LEAP**
  - Lightweight EAP.
  - Cisco-proprietary protocol.
  - Uses mutual authentication, but could still be vulnerable to dictionary attacks.
  - Mostly deprecated in favor of more secure methods.


### LDAP 

LDAP (Lightweight Directory Access Protocol) is a protocol designed for accessing and managing directory information in a network.

- Facilitates sharing of information infrastructure across networks
- Can be used to create a directory of employees and organizational units
- Acts as a central repository for user information
- Stores group memberships and roles, essential for authorization processes

Supports:

  - LDAP over SSL
  - StartTLS 

### IEEE 802.1X

IEEE 802.1X is a standard for port-based network access control, ensuring that only authenticated devices can access the network.

- Requires devices to authenticate before accessing the network.
- Authentication is managed through a central RADIUS server.
- Widely used in both wired and wireless networks to enhance security.

### RADIUS

RADIUS (Remote Authentication Dial-In User Service) is a networking protocol that provides centralized Authentication, Authorization, and Accounting for users who connect and use a network service.

- Centralizes authentication for easier management of user credentials.
- Used to control access to network services in enterprise environments.
- Supports various authentication methods, such as username/password and certificates.

Components:

- **RADIUS Supplicants** - devices trying to authenticate to RADIUS
- **RADIUS Clients** - edgepoint devices, not devices authenticating to RADIUS
    - Ethernet switches 
    - WIFI routers 
    - VPN appliances

Variations:

  - TACACS
  - TACACS+
  - XTACACS

How it works:

  - If edge point device (like a router) is IEEE 802.1x compliant, it will handover the authentication to RADIUS server.
  - Note that the router has limited memory, so it's useful to handoff the authentication.
  - The router will not be storing the credentials as well.

    ![](../../Images/sec+-radius-diagram-how-it-works.png)

### TACACS+

TACACS+ (Terminal Access Controller Access-Control System Plus) is a protocol used for centralizing authentication, authorization, and accounting management for users who access network services.

- Provides separate access control, accounting, and authentication services.
- Typically used for managing remote access to network devices like routers and switches.
- Enhances security by centralizing management of user credentials and access controls.
- Similar to RADIUS, but allows for more detailed control over AAA functions.


## Identity Federation 

A system where multiple organizations share authentication data, allowing users to access resources across organizational boundaries without re-authenticating.

### Key Concepts

- **Single Sign-On (SSO)**
  - Authenticate once, access multiple applications.
  
- **Trust Relationships**
  - Organizations agree to trust each other's authentication assertions.
  
- **Identity Provider (IdP)**
  - Authenticates users and issues security tokens.
  
- **Service Provider (SP)**
  - Provides resources, relying on IdP for user authentication.
  
- **Federation Standards**
  - Examples include SAML, OAuth, OpenID Connect, and WS-Federation.

### Benefits of Identity Federation

- **User Convenience**
  - One login grants access to multiple services.
  
- **Centralized Authentication**
  - Authentication managed at the IdP, enhancing security.
  
- **Cross-Domain Collaboration**
  - Enables seamless collaboration across different organizations.

### How it works 

1. Login initiation - User logs in
2. User is redirected to an identity provider 
3. IdP will authenticate the user
4. IdP generated an assertions (like a token)
5. User is returned to a service provider with the assertion
6. Verification and access


### Use Cases

- **Enterprise Collaboration**
  - Allows employees to work across different business units or partners.
  
- **Cloud Services**
  - Enables seamless access to cloud-based applications.
  
- **Education**
  - Connects students and faculty across affiliated institutions.
  
- **Public Services**
  - Provides secure, unified authentication for government services.


## Identity Federation Methods

### SSO

SSO (Single Sign-On) allows users to authenticate once and gain access to multiple applications without needing to re-enter credentials, streamlining the user experience.

- Authenticates a user once for access to multiple applications.
- Reduces the need for multiple logins and passwords.

Protocols used: 

- LDAP
- SAML (Security Assertion Markup Language)
- OpenID Connect


### OAuth

OAuth (Open Authorization) is a standard for token-based authentication and authorization, enabling secure interactions between services without exposing user credentials.

- Allows third-party applications to access user data securely without exposing user credentials
- Allows secure information exchange between different sites via JWT (JSON Web Tokens)

How it works: 

- Client app or server needs to register with authorization server
- Authorization server provides a redirect URL +  ID + Secret
- Token is received by the user 
- User can use the token to access the requested resource


### SAML 

SAML (Security Assertion Markup Language) is an open standard used for exchanging authentication and authorization information between Identity Providers (IdPs) and Service Providers (SPs).

- Supports Single Sign-On (SSO), enabling users to access multiple services with a single login.
- Service providers receive confirmation from IdPs to authenticate users.
- Provides a secure mechanism for transmitting authentication data between entities.

### OIDC

OpenID Connect (OIDC)

- An authentication layer built on top of OAuth 2.0.
- Provides additional user identity information along with authorization.


----------------------------------------------

[Back to main page](../../README.md#security)    