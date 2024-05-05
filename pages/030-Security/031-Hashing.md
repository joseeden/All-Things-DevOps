
# Hashing


- [Hashing](#hashing)
    - [Digital Signature](#digital-signature)
    - [Digital Signature Standard DSS](#digital-signature-standard-dss)
    - [Code Signing](#code-signing)
- [Hash Functions](#hash-functions)
    - [MD5](#md5)
    - [SHA Family](#sha-family)
    - [RIPEMD](#ripemd)
    - [HMAC](#hmac)
- [Common Attacks](#common-attacks)
    - [Pass the Hash Attack](#pass-the-hash-attack)
    - [Birthday Attack](#birthday-attack)
    - [Rainbow Table Attack](#rainbow-table-attack)
    - [Dictionary Attack](#dictionary-attack)
    - [Brute Force Attack](#brute-force-attack)
- [Increasing Hash Security](#increasing-hash-security)
    - [Key Stretching](#key-stretching)
    - [Salting](#salting)
    - [Nonce](#nonce)
    - [Limiting Failed Login Attempts](#limiting-failed-login-attempts)


## Hashing

Hashing is a process of converting data (like a file or a message) into a fixed-size value or string, typically using a hash function.

- Used for data integrity checks, digital signatures, password storage, and more.
- The same input always produces the same hash output.
- **Fixed Size**: Hash outputs are of fixed length, regardless of input size.
- **Fast Computation**: Hash functions are designed to be quick to compute.
- **Irreversible**: Not feasible to reverse-engineer the original input from the hash.
- **Collision Resistance**: Unlikely for two different inputs to produce the same hash (a "collision").
  
**Common Uses**
- Verify data hasn't been altered (e.g., checksums).
- Securely store passwords, often with added salt.
- Create digital signatures by compressing data before signing.
- Used in various cryptographic operations, including blockchains.


### Digital Signature

The digital signature is the encrypted hash which is sent along with the message to prove the integrity of the message.

- Uses a private key to create the signature and a public key to verify it.
- The digital signature confirms the sender's identity.
- This ensures the message hasn't been altered.
- **Non-repudiation** - signer can't deny signing because there's proof.

To learn more, please see [Digital Signatures in Asymmetric Encryptions.](./030-Asymmetric-Encryption.md)



### Digital Signature Standard (DSS)

DSS, or the Digital Signature Standard, is a cryptographic standard used for generating and verifying digital signatures. 

- Established by the **National Institute of Standards and Technology (NIST)** in the United States.
- Ensures authenticity, integrity, and non-repudiation for digital data through digital signatures.
- Relies upon a 160-bit message digest created by the Digital Signature Algorithm (DSA)


**How it works:**

  - Public-private key pairs is created for signing and verifying.
  - Private key is used to generate a digital signature from a message hash.
  - The public key verifies the digital signature and check the message's integrity.


### Code Signing

Code signing is the process of digitally signing software code or executables to verify their origin and ensure their integrity.

- Verifies that the code is from a trusted developer or publisher.
- Ensures the code hasn't been modified since it was signed.
- Protects users from malicious software and unauthorized code changes.

**How It Works**:

  - A software developer uses a private key to create a digital signature for their code.
  - The digital signature is attached to the code, forming a certificate.
  - A user or system uses the public key to verify the signature.
  - The public key confirms the software's source and that it hasn't been tampered with.

**Use Cases**:
  - Software distribution, ensuring safe installation of programs and updates.
  - Application stores, confirming that apps meet security standards.
  - Operating systems, allowing signed drivers and system software.

**Common Tools**:

  - **Certificate Authorities (CAs)**: Organizations that issue digital certificates to verify the identity of the signer.
  - **Code Signing Certificates**: Certificates issued to developers for signing their code.

**Challenges**:

  - **Certificate Management**: Properly handling and securing code signing certificates.
  - **Revocation**: Handling compromised or invalid certificates.
  - **Cost**: Obtaining code signing certificates from reputable CAs can be expensive.
  


## Hash Functions 

Hash functions convert input data into a fixed-size hash value. Below are some of the common algorithms used for hashing.

### MD5

An older hash function, MD5 is now considered insecure due to known collisions.

- Creates a 128-bit hash value unique to the input file.
- 128-bits long means it can only create limited values, which can lead to collisions.
- **Collisions** - when two distinct inputs produce the same hash.
- Despite its insecurities, it's still used for checksums and non-security-sensitive applications.


### SHA Family  

A family of cryptographic hash functions designed by the National Security Agency (NSA).

- **SHA-1**: 
    
    - Creates a 160-bit hash digest, reducing chance of collisions.
    - More secure than MD5, but also deprecated due to vulnerabilities.
    - Formerly used for digital signatures; now discouraged.

- **SHA-2**: 

    - Hash family containing longer hash digests.
    - Includes:
        - SHA-224
        - SHA-256
        - SHA-384
        - SHA-512

- **SHA-256**: 

   - Part of the SHA-2 family, SHA-256 offers a 256-bit output.
   - Stronger security, highly collision-resistant, and a commonly used standard.
   - Secure communication, SSL/TLS, and blockchain.

- **SHA-3**: 

   - A newer family of hash functions
   - Hash digest can go between **224 to 512 bits.**
   - Uses **120 rounds of computations** to create the message digest.
   - SHA-3 uses a different underlying algorithm (Keccak).
   - Designed to provide high security and flexibility.
   - Used in applications requiring a strong hash function with versatility.


### RIPEMD


RIPEMD stands for **Race Integrity Primitives Evaluation Message Digest.** It is a family of cryptographic hash functions designed to ensure data integrity and secure hashing.

- A family of cryptographic hash functions developed in Europe.
- Comes in **160/256/320-bit versions**
- **RIPEMD-160** is the most known, with a 160-bit output.
- Offers strong security and is used as an alternative to SHA-1.

### HMAC

Stands for "Hash-based Message Authentication Code", HMAC uses a hash function combined with a secret key to generate a message authentication code (MAC).

- Uses a hash function and secret key for message authentication.
- HMAC provides message integrity and authentication.
- Ensures that a message has not been tampered with and verifies identity of the sender.

Commonly paired with other algorithms for additional security:


- **HMAC-MD5**: 

    - Historically used for message authentication and checksum verification.
    - Now considered insecure due to the vulnerabilities in MD5

- **HMAC-SHA1**: 

    - Offers more security than HMAC-MD5.
    - SHA-1 is now deprecated due to known vulnerabilities and potential collision attacks.

- **HMAC-SHA256**: 

    - Offers stronger security and used widely in modern cryptographic applications.
  
    - Most recommended for secure applications.


## Common Attacks 

### Pass the Hash Attack

A "pass the hash" attack involves using a hashed password to gain unauthorized access to a system, bypassing the need for the plaintext password. Attackers obtain the hash and use it to authenticate without knowing the actual password.

- Attackers steal password hashes from compromised systems.
- They use these hashes to authenticate, avoiding password-based checks.
- Common in Windows environments with NTLM authentication.

To learn more, please see [Pass the Hash Attack](./023-Attacks.md#pass-the-hash-attack).

### Birthday Attack

A "birthday attack" exploits the probability of hash function collisions, where two different inputs generate the same hash. It targets cryptographic systems to compromise security or create fake signatures.

To learn more, please see [Birthday Attack](./023-Attacks.md#birthday-attack).

### Rainbow Table Attack 

A rainbow table attack uses precomputed hashes to find a matching hash value for a user's password (see ISC2 Study Guide, Module 2, under Types of Threats). 

To learn more, please see [Rainbow Table Attack](./023-Attacks.md#rainbow-table-attack).

### Dictionary Attack 

A dictionary attack is a type of attack that uses a list of common words to guess a user's password. 

To learn more, please see [Dictionary Attack](./023-Attacks.md#dictionary-attack).

### Brute Force Attack 

A brute force attack uses every possible combination of letters, numbers, and symbols to guess a user's password.

To learn more, please see [Brute Force  Attack](./023-Attacks.md#brute-force-attack).

## Increasing Hash Security 

### Key Stretching 

Key stretching enhances password or key security by making brute-force attacks more difficult. It involves repeatedly applying a computationally expensive operation to strengthen a simple input like a password.

- Slows down brute-force attacks by increasing computational effort.
- Secure stored passwords and to derive encryption keys from user inputs.
  
**How it works**

  - The input (e.g., a password) is hashed multiple times, often with a unique "salt."
  - Repeated hashing creates a more secure output, making it harder for attackers to crack.
  
**Common Algorithms**

  - PBKDF2
  - bcrypt
  - scrypt
  
**Considerations**

  - Balancing security with performance is key, as additional computation can impact system efficiency.

### Salting 

Salting improves password security by adding random data, called a "salt," to the input before hashing. This makes the hashed result more resistant to brute-force and dictionary attacks.

- Salt prevents the use of precomputed tables to crack passwords.
- Each salt creates a unique hash, even for identical passwords.
- Unique salted hash deter attackers.
  
  
**How It Works**

- A unique random salt is generated for each password.
- The salt is added to the password before hashing.
- This results to a unique hash for each combination of salt and password.

**Considerations**

- Salts should be unique for each password and stored securely.
- Proper management of salts is crucial.
- Losing the salts can make it impossible to verify or recover passwords.

### Nonce 

A **nonce** or  "**number used once**" is a unique or random value used in cryptography to ensure security and prevent attacks. 

  - Serves as a one-time-use number to ensure randomness and uniqueness.
  - This number is added to the authentication sequence.
  - Prevents replay attacks by ensuring data or requests are unique.
  - Increases security by preventing unauthorized reuse or duplication.
  
**Common Uses**

  - In authentication to ensure a one-time operation.
  - In cryptographic protocols like TLS/SSL for secure communications.
  - In blockchain, where it helps validate blocks in Proof of Work systems.
  
- **Key Considerations**
  - Nonces must be unique and unpredictable;.
  - Reusing them can create vulnerabilities.
  - Proper management is crucial for maintaining security.

### Limiting Failed Login Attempts 

Limiting failed login attempts is a security measure to prevent brute-force attacks by restricting the number of password tries a user can make.
  
- **How It Works**

  - Temporarily lock accounts after a limit is reached.
  - Introduce delays to slow down brute-force attempts.
  - Require CAPTCHA or multi-factor authentication for repeated failures.
  
- **Considerations**

  - Avoid overly strict limits to prevent locking out legitimate users.
  - Have a process for users to regain access if locked out.
  - Monitor for signs of malicious activity.




----------------------------------------------

[Back to main page](../../README.md#security)    