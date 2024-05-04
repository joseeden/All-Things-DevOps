
# Asymmetric Encryption


- [Asymmetric Cryptosystems](#asymmetric-cryptosystems)
- [Common Asymmetric Encryption Methods](#common-asymmetric-encryption-methods)
- [Diffie-Hellman](#diffie-hellman)
- [Diffie-Hellman Groups](#diffie-hellman-groups)



## Asymmetric Cryptosystems 

Asymmetric encryption uses a pair of keys: a public key for encryption and a private key for decryption. 

- The public key can be widely distributed, 
- The private key must be kept secret

This dual-key system allows for secure communication, digital signatures, and secure key exchange without requiring shared secrets.

## Common Asymmetric Encryption Methods

| Algorithm                             | Key Structure             | Use Cases                                         | Strengths                                                         | Weaknesses                                                                        |
|---------------------------------------|---------------------------|---------------------------------------------------|-------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| RSA                                   | Public-private key pair   | Secure communication, digital signatures          | Established, widely used; supports large key sizes                | Slower than symmetric methods; susceptible to certain attacks with smaller keys   |
| ECC (Elliptic Curve Cryptography)     | Public-private key pair   | Secure communication, digital signatures          | Smaller key sizes with similar security to RSA; efficient         | More complex mathematical basis; not as widely adopted as RSA                     |
| DSA (Digital Signature Algorithm)     | Public-private key pair   | Digital signatures, authentication                | Fast for signature generation; widely accepted                    | Slower for verification; requires secure parameter selection                      |
| Diffie-Hellman                        | Key exchange              | Secure key exchange, establishing shared keys     | Enables secure key exchange over insecure channels                | Does not provide encryption or authentication by itself                           |

A Few Notes: 

- RSA is the **most widely used**, offering compatibility with a range of systems.
- ECC provides similar security with **smaller key sizes**, leading to efficiency gains. 
- DSA is optimized for **digital signatures**, and Diffie-Hellman is a foundational key exchange protocol. 

Asymmetric encryption methods are generally used alongside symmetric encryption in a hybrid approach, where asymmetric encryption secures key exchanges, and symmetric encryption is used for bulk data encryption.

## Diffie-Hellman

Diffie-Hellman is a cryptographic protocol for secure key exchange, enabling two parties to establish a shared secret over an insecure communication channel.

- Establishes a shared secret key without directly sharing it.
- Based on discrete logarithms and modular arithmetic.
- Shared secret can't derived easily by attackers due to complex math.
- An **asymmetric algorithm**, but **doesn't provide the actual encryption.**
- It is **key exchange protocol**,

**Use Cases**:
- Often used to set up shared encryption keys.
- Applied in SSL/TLS, IPsec, and VPNs.

**How It Works**:
- Both parties agree on a base (generator) and a prime modulus.
- Each party chooses a private key. 
- Public key is derived by raising the base to the power of the private key, modulo the prime.
- The public keys are then exchanged.
- Each party calculates the shared secret using the other's public key and their own private key.

**Example**:
- Parties agree on a common base \( g \) and a prime modulus \( p \).
- Alice chooses a private key \( a \) and sends \( g^a \mod p \) to Bob.
- Bob chooses a private key \( b \) and sends \( g^b \mod p \) to Alice.
- Alice calculates \( (g^b \mod p)^a \) to get the shared secret.
- Bob calculates \( (g^a \mod p)^b \) to get the same shared secret.
<br>

    ![](../../Images/diffie-hellman.png)


**Strengths**: 

- Secure key exchange without revealing the key
- Resistant to eavesdropping and man-in-the-middle attacks when implemented correctly.

**Weaknesses**: 

- Vulnerable to attacks like the man-in-the-middle if proper authentication is not implemented

- Depends on the difficulty of solving the discrete logarithm problem.

- To be truly secure, it should be combined with additional mechanisms


## Diffie-Hellman Groups 

Diffie-Hellman groups are pre-defined sets of parameters used in the Diffie-Hellman key exchange protocol. These groups consist of a **generator (a base number)** and a **prime modulus**, which are critical for the mathematical operations that allow two parties to create a shared secret. 

| Group Name      | Prime Modulus Size (bits) | Typical Use Cases               | Notes                                 |
|----------------|--------------------------|---------------------------------|---------------------------------------|
| Group 1         | 768                      | Legacy applications             | Considered insecure, rarely used today |
| Group 2         | 1024                     | Legacy applications             | Also considered insecure               |
| Group 14        | 2048                     | Secure communication            | Standard for many modern protocols     |
| Group 15        | 3072                     | Enhanced security               | Suitable for more secure applications  |
| Group 16        | 4096                     | High-security environments      | Used when stronger security is needed  |
| Group 17        | 6144                     | High-security environments      | Rarely used due to computational cost  |
| Group 18        | 8192                     | Very high-security environments | Used for extremely secure applications |


Each group is characterized by the following:

- **Prime Modulus**: 
    - A large prime number that determines the "space" within which the key exchange operates. 
    - The size of this prime (measured in bits) correlates with the security level of the key exchange.

- **Generator**: 
    - A base number that is used to derive the public and private keys.

- **Security Level**: 
    - The estimated strength against known cryptographic attacks.

The specific characteristics of the group influence the security and performance of the key exchange. 

- Larger prime numbers generally provide more security 
- But it also require more computational resources, affecting speed and efficiency.

