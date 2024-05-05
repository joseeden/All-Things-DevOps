
# Cryptography Basics

- [Cryptography](#cryptography)
- [Obfuscation](#obfuscation)
    - [Data Masking or Obfuscation](#data-masking-or-obfuscation)
    - [Steganography](#steganography)
    - [Tokenization](#tokenization)
    - [Diffusion](#diffusion)
    - [Confusion](#confusion)
- [Types of Encryption](#types-of-encryption)
    - [Symmetric Encryption](#symmetric-encryption)
    - [Asymmetric Encryption](#asymmetric-encryption)
    - [Hybrid Implementation](#hybrid-implementation)
- [Storing Keys](#storing-keys)
- [Ciphers](#ciphers)
    - [Stream Ciphers](#stream-ciphers)
    - [Block Ciphers](#block-ciphers)
- [Common Ciphers](#common-ciphers)
    - [Cease Cipher](#cease-cipher)
    - [Vigenere Cipher](#vigenere-cipher)
    - [Exlusive OR XOR](#exlusive-or-xor)


## Cryptography

The science and practice of securing communication and information through encoding, ensuring only authorized parties can access it. Its purpose is to protect data integrity, confidentiality, and authenticity.

- **Encryption**
    - Transforming plaintext into ciphertext using an algorithm and a key.

- **Decryption**
    - Converting ciphertext back to plaintext with the appropriate key.

## Obfuscation 

### Data Masking or Obfuscation 

Obfuscation is a technique to make code, data, or communications harder to understand or analyze. 

- Protect intellectual property, sensitive information.
- Protect sensitive data from being easily understood or extracted.
- Prevent unauthorized reverse engineering or tampering with software.

**How It Works**
  - Code or data is transformed into a form that is functionally equivalent but difficult for humans to read or interpret.
  - Common methods include:
    - renaming variables and functions with meaningless names
    - removing comments
    - reordering code structures.
    
**Considerations**
  - Obfuscation is not foolproof.
  - Skilled attackers can often reverse-engineer obfuscated code.
  - Over-obfuscation can complicate legitimate debugging and maintenance.
  - Not a replacement for proper encryption and other security practices.

### Steganography

Steganography and obfuscation are techniques used to conceal information, but they differ in their methods and objectives.

- Steganography hides a message within another medium to keep its existence secret.
- Obfuscation makes code or information difficult to understand

Derived from Greek word, meaning "covered writing", Steganography hides secret data within ordinary, non-secret files or messages. Its purpose is not to prevent unauthorized access, but to avoid suspicions.

We can try this at [Steganography Online.](https://stylesuxx.github.io/steganography/). We'll use the sample photo below:

<p align=center>
<img width=500 src='../../Images/penguins.png'>
</p>

The message that we want to hide in the image:

```bash
All right men, commence Operation: Special Delivery! 
```

Upload the photo and enter the message in the field. Click Encode.

<p align=center>
<img width=650 src='../../Images/sec+-steganography-penguins.png'>
</p>

It will generate the encoded image. 

<p align=center>
<img width=500 src='../../Images/sec+-steganography-encoded-imagess.png'>
</p>


Right-click on the third image > Save as.
Then check the properties of the original photo and the encoded photo. We can see that the size changed.

<p align=center>
<img width=700 src='../../Images/sec+-encoded-image-changed-size.png'>
</p>


### Tokenization

Tokenization replaces sensitive information with non-sensitive tokens, enhancing data security by removing direct exposure to confidential data.

  **How It Works**

- Sensitive data is swapped for unique tokens stored in a secure token vault.
- The original data is stored somewehere.
- The original data can only be retrieved through secure processes with proper access.
- If data breach occurs, attackers will only find the useless tokens.

**Applications**

  - Used in payment systems for credit card security.
  - Applied in healthcare to protect patient information.
  - Employed in databases to secure sensitive data.
  - Supports compliance with data protection regulations.
  
**Considerations**
  - The token vault must be securely protected.
  - Tokenization should be part of a comprehensive security strategy.


### Diffusion

Diffusion spreads the effect of a single input across many output elements, thus obscuring patterns.

- Makes the information less visible, less obvious.
- In block ciphers, diffusion is achieved through operations like permutations and mixing.
- Example is blurring an image.

### Confusion

Confusion creates complex relationships between the key and ciphertext, making it difficult to infer the key.

- Changing a property of the data and make it more difficult to interpret, more unintelligible.
- Confusion works alongside diffusion to create robust encryption schemes.
- Example is scrambling or changing the pixels of an image.



## Types of Encryption 

These types of encryption play critical roles in modern cybersecurity, often used together to achieve a balance of speed and security.

### Symmetric Encryption 

Symmetric cryptography uses the same key for both encryption and decryption. The sender and receiver must share this key, keeping it secret from others.

- **Session key** - single key is used to encrypt and decrypt data. 
- Both parties must have this key.

Symmetric encryption is generally faster and less computationally intensive compared to asymmetric cryptography. It is also effective for encrypting large volumes of data.

<p align=center>
<img width=650 src='../../Images/sec+-symmetric-encryption-example-photo.png'>
</p>

Sending the key:

- **In-band** 
    - Sending the key along with the encrypted data
    - Risky, vulnerable to sniffing 

- **Out-of-band** 
    - Providing the key separately from the encrypted data
    - Can be provided beforehand or via phone/SMS

Disadvantages:

- Key distribution and management can be challenging
- If the key is compromised, the entire system is at risk.

Use Cases:

- Secure communication within closed networks
- Encrypting files or databases
- Securing backups.

### Asymmetric Encryption

Asymmetric cryptography uses a pair of keys: 

- a public key for encryption 
- a private key for decryption. 

The public key can be shared openly, but the private key must remain confidential.

- <mark>**Public key encrypts data**</mark>, and only the corresponding private key can decrypt it. 
- <mark>**Private key decrypts the data**</mark>, can be used to sign data, which the public key can verify.

<p align=center>
<img width=500 src='../../Images/sec+-asymmetric-encryption-example-diagran.png'>
</p>


Example Algorithms:

- **RSA** (Rivest-Shamir-Adleman)
- **ECC** (Elliptic Curve Cryptography)
- **DSA** (Digital Signature Algorithm).


Advantages: 

- No need to share the private key, reducing the risk of key compromise.
- Allows for digital signatures and public key infrastructure (PKI).

Disadvantages: 

- Slower and more resource-intensive than symmetric cryptography. 
- Less efficient for large amounts of data.

Use Cases: 

- Secure communication over public networks, digital signatures, certificate authorities, and secure key exchange. 

### Hybrid Implementation 

Utilizes asymmetric encryption to securely transfer a private key, which can then be used with symmetric encryption.

## Storing Keys 

Best practices:

- Store keys in secure hardwared modules 
- Encrypt keys when at rest 
- Transmit keys securely when used
- Limit key access to regular audits and monitoring

## Ciphers

A cipher is an algorithm used to encrypt and decrypt information, transforming plain text into coded (cipher) text and vice versa. 

- Ciphers ensure data confidentiality 
- Central to encryption protocols.

Types of Ciphers:

- Stream Cipher
- Block Cipher


### Stream Ciphers

Stream Ciphers encrypt data bit by bit or byte by byte in a continuous stream.

- Performs encryption on <mark>**single byte at a time.**</mark>
- Uses a key stream generator to create a pseudo-random sequence of bits (the key stream).
- The key stream is then XORed with the plaintext to produce ciphertext.

**Common Features**:

- <mark>**Uses same key for encryption and decryption.**</mark>
- Implemented mostly on <mark>**hardware-based solutions**
- Often used in <mark>**real-time applications**</mark> where data is continuously transmitted (e.g., streaming services).
- Vulnerable to certain types of attacks if key stream is reused or not sufficiently random.

**Examples**: 

- RC4
- Salsa20
- ChaCha20

### Block Ciphers

Block Ciphers break the input into fixed-size blocks (e.g., 64-bit or 128-bit) and performs the encryption on each block.

- Performs encryption on <mark>**per block basis.**</mark>
- A block of plaintext is processed with a key to produce a block of ciphertext.
- Multiple rounds of transformation can also be used (e.g., substitution and permutation).

**Common Features**:
- <mark>**Easier to implement, less susceptible to security problems.**
- Implemented mostly on <mark>**software solutions**
- Often used in protocols and file encryption, where data is processed in chunks.
- Require padding when the plaintext doesn't evenly divide into block sizes.
- Can be operated in various modes to enhance security or support specific applications.

**Examples**: 
- AES
- DES
- 3DES


## Common Ciphers

### Cease Cipher 

Named after Julius Caesar, it is a simple substitution cipher where each letter in the plaintext is shifted a certain number of positions down or up the alphabet.
- Shifts each letter in the plaintext a certain number of positions along the alphabet.
- The number of positions to shift, typically between 1 and 25.
- Example: With a shift of 3, 'A' becomes 'D', 'B' becomes 'E', and so on.
- **ROT2** - two shifts in positions
- **ROT3** - three shifts in positions, and so on.

Although it's historically significant, the Caesar Cipher is not used for serious encryption today due to its simplicity and vulnerability to straightforward cryptanalysis


<p align=center>
<img width=350 src='../../Images/sec+-ceasar-cipher-wheel.png'>
</p>

### Vigenere Cipher

The Vigenère Cipher is a type of polyalphabetic substitution cipher that uses a repeating key phrase to determine shifting patterns for each letter in the plaintext, offering greater security than simple substitution ciphers.

- A key phrase, repeated to match the plaintext length, determines the shift for each letter.
- To decrypt, use the same key to reverse the shifts and recover the plaintext.


**Strengths**: 
- Provides increased complexity, making frequency analysis and brute-force attacks more difficult.

**Weaknesses**: 
- Susceptible to Kasiski examination and Friedman tests, which can reveal key patterns and lengths, leading to cryptanalysis.

**Example**: 
- With the key "LEMON," the plaintext "HELLO" is encrypted by shifting each letter according to the corresponding letter in the key, resulting in "OIWWC."

<p align=center>
<img width=500 src='../../Images/sec+-vigenere-cipher-diagram.png'>
</p>

### Exlusive OR (XOR) 

Exclusive OR (XOR) is a binary operation used extensively in cybersecurity and cryptography. It operates on bits, returning 1 if the bits are different and 0 if they are the same. Here's a concise description with key bullet points:

- XOR compares two bits; if they're different, it outputs 1; if they're the same, it outputs 0.
- XOR is reversible, allowing data encrypted with a key to be decrypted by XORing again with the same key.


<p align=center>
<img width=300 src='../../Images/sec+xor-keyss.png'>
</p>


**Applications**:

  - **Encryption**: 
    - Commonly used in stream ciphers and some block ciphers to combine plaintext with a key stream, creating ciphertext.

  - **One-Time Pad (OTP)**: 
    - A theoretically unbreakable encryption method that uses XOR with a key as long as the plaintext, provided the key is truly random and never reused.

  - **Data Manipulation**: 
    - XOR can be used to toggle bits or swap values without additional storage.

  - **Error Detection/Correction**: 
    - In parity checks and error-correcting codes, XOR helps identify errors in transmitted or stored data.


**Security Considerations**:
  - **Key Management**: 
    - Security in XOR-based encryption relies heavily on key secrecy and randomness.

  - **Vulnerabilities**: 
    - If the key is reused or predictable, XOR-based encryption is susceptible to various attacks, including known-plaintext attacks.




----------------------------------------------

[Back to main page](../../README.md#security)    