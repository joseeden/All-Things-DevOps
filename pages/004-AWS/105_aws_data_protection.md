
# Data Protection


- [Overview of Encryption](#overview-of-encryption)
    - [Symmetric Encryption](#symmetric-encryption)
    - [Asymmetric Encryption](#asymmetric-encryption)
    - [How Public and Private keys work](#how-public-and-private-keys-work)
- [Key Management Service - KMS](#key-management-service---kms)
    - [Encryption-at-rest Only](#encryption-at-rest-only)
    - [Compliance and Regulations](#compliance-and-regulations)
    - [Region-specific and Multi-region Keys](#region-specific-and-multi-region-keys)
    - [Customer Master Key CMK](#customer-master-key-cmk)
        - [Access](#access)
        - [Key Policies](#key-policies)
        - [Creating CMKs](#creating-cmks)
        - [Sharing CMKs across accouts](#sharing-cmks-across-accouts)
    - [Best practices](#best-practices)
    - [Key Rotation](#key-rotation)
- [AWS Secrets Manager](#aws-secrets-manager)
    - [What is considered a secret](#what-is-considered-a-secret)
    - [Secrets Rotation](#secrets-rotation)
    - [Integration](#integration)
    - [Access](#access)
    - [AWS Secrets Manager vs. AWS Systems Manager Parameter Store](#aws-secrets-manager-vs-aws-systems-manager-parameter-store)
- [AWS Macie](#aws-macie)
    - [How does Macie works](#how-does-macie-works)
    - [Metadata](#metadata)
    - [Bucket Policy Findings](#bucket-policy-findings)
    - [Reviewing the findings](#reviewing-the-findings)
    - [Discover sensitive data within your buckets](#discover-sensitive-data-within-your-buckets)
    - [Severity Level](#severity-level)
    - [Analyzing encrypted object](#analyzing-encrypted-object)
    - [Supported file formats for sensitive data discovery](#supported-file-formats-for-sensitive-data-discovery)
    - [Integrations with AWS organizations](#integrations-with-aws-organizations)
    - [Cost](#cost)
- [Restrict S3 Buckets Access](#restrict-s3-buckets-access)
    - [Bucket Policies](#bucket-policies)
    - [S3 ACLs](#s3-acls)
    - [AWS S3 Pre-signed URLs](#aws-s3-pre-signed-urls)
    - [Enable Vault Lock in AWS Glacier](#enable-vault-lock-in-aws-glacier)
    - [Forcing S3 to use CloudFront](#forcing-s3-to-use-cloudfront)
        - [Securing an S3 Origin in CloudFront](#securing-an-s3-origin-in-cloudfront)
        - [TLS/SSL Certificate Options with CloudFront](#tlsssl-certificate-options-with-cloudfront)
- [S3 Encryption Mechanisms](#s3-encryption-mechanisms)
- [AWS Certificate Manager](#aws-certificate-manager)
- [Security Features of AWS Loadbalancers](#security-features-of-aws-loadbalancers)
    - [Security Policy of HTTPS Listeners](#security-policy-of-https-listeners)
    - [TLS/SSL Termination Options](#tlsssl-termination-options)



----------------------------------------------


## Overview of Encryption 

Unencrypted data can be read and seen by anyone who has access to it and data stored at rest or sent between two locations in transit is known as plain text or clear text data. The data is plain to see and could be seen and understood by any recipient. 

There is no problem with this as long as the data is not sensitive in any way and doesn't need to be restricted. However if you have data that is sensitive, you need to ensure that the contents of that data is only viewable by a particular recipient or recipients. This can be done by adding a level of encryption to that data.

**Data encryption** is the mechanism in which information is altered, rendering the plain text data unreadable through the use of mathematical algorithms and encryption keys. 

When encrypted, the original plain text is now known as **cipher text** which is unreadable. To decrypt the data, an encryption key is required to revert the cipher text back into a readable format of plain text. 

An **encryption key** is simply a string of characters used in conjunction with the encryption algorithm and the longer the key the more robust the encryption. This encryption involving keys can be categorized by either being:

- symmetric cryptography
- asymmetric cryptography. 

### Symmetric Encryption 

With symmetric encryption, a single key is used to both encrypt and also decrypt the data. 

- This key must be sent securely between the two parties, WHICH exposes a weakness
- If the key is intercepted during transmission, then that third party could easily decrypt any data associated with that key. 

AWS KMS resolves this issue by acting as a central repository, governing and storing the keys required and only issues the decryption keys to those who have sufficient permissions to do so. Some common symmetric cryptography algorithms that are used are:

- AES (Advanced Encryption Standard)
- DES (Digital Encryption Standard)
- Triple DES
- Blowfish

Pros: Symmetric is a lot faster from a performance perspective

Cons: Additional risk as highlighted above 

### Asymmetric Encryption 

Asymmetric encryption which involves two separate keys that are created both at the same time and are linked through a mathematical algorithm. :

- One is used to encrypt the data and considered the private key and should be kept by a single party and should never be shared with anyone else.

- Second key is used to decrypt the data and is considered the public key that can be given and shared with anyone. The public key does not have to be sent over secure transmission and it doesn't matter who has access to this public key as without the private key, any data encrypted with it cannot be accessed. 

Some common examples of asymmetric cryptography algorithms are:

- RSA
- Diffie-Hellman
- Digital Signature Algorithm. 
    
### How Public and Private keys work 

If another party wanted to send you an encrypted message or data, they would encrypt the message using your own public key which can be made freely available to them or anyone. It's public for a reason. The message is then sent to you where you will use your own private key which has that mathematical relationship with your public key to decrypt the data. This allows you to send encrypted data to anyone without the risk of exposing your private key, resolving the issue highlighted with symmetric encryption. 

## Key Management Service - KMS 

This is an AWS Managed service that makes it easy to create and manage keys, and control the use of encryption.

- secure and resilient service that uses hardware security modules

- integrated with AWS CloudTrail to provide logs for all key usage

- audit logging and trailing is important to meet regulatory and compliance needs

- easy to create, manage, and control the use of encryption

- Customer-managed key (CMK) can neve be exported

**How it works:**

- Create a new customer-managed key (CMK) with the following details:
    - Alias and description
    - Key material (customer-provided or AWS-provided)
    - creation date 
    - key state
- Define the key adminitrative permissions:
    - Which IAM users/roles can manage the key?
- Define the key usage permissions: 
    - Which IAM users/roles can use the key to encrypt/decrypt data?

**Why use customer provided key material?**

With customer-provided key, you can perform the following:

- you can import a symmetric 256-bt key from your existing key management infrastructure
- for compliance requirements
- to introduce non-AWS randomness 
- can also be used to extend existing processes to AWS
- if you delete the key by accident, it stays for 7-30 days so it can still be retrieved

**NOTE:**
When a key is deleted completely, you will no longer be able to decrypt any content encrypted with that key.

**What are the cons of usind customer provided key material?**

If we decided to go with customer-provided material, there are some points that we need to remember:

- availability and durability are different from AWS-provided key material 
- automatic rotation is not available
- security of key generation is on the customer side


### Encryption-at-rest Only 

It is important to understand that the KMS service is for encryption at rest only which can include for example S3 Object Storage, RDS, EMR and EBS Encryption to name a few. 

KMS does not perform encryption for data in transit or in motion. If you want to encrypt data while in transit, then you would need to use a different method such as SSL. However, if your data was encrypted at rest using KMS, then when it was sent from one source to another, that data would be a cipher text which could only be converted to plain text with the corresponding key. 

Another important aspect of encryption at rest is whether it is done:

- server-side by the server or 
- client-side by the end user

Examples of server-side encryption are back end servers that encrypt the data as it arrives transparent to the end user. The overhead of performing the encryption and managing the keys is handled by the server, in this case S3, not by the client-side application or the end user. 

On the other hand, client-side encryption requires the user to interact with the data to make the data encrypted and the overhead of encryption process is on the client rather than the server. 

### Compliance and Regulations 

When working with encrypted data, compliance and regulations are often tightly integrated. As a result, KMS works seamlessly with AWS CloudTrail to audit and track how your encryption keys are being used and by whom in addition to other metadata captured by the APIs used such as the source IP address.

The CloudTrail logs that are stored in S3 record KMS API calls such as:

- Decrypt
- Encrypt
- GenerateDataKey
- GetKeyPolicy

### Region-specific and Multi-region Keys 

KMS keys are initially region specific, which means you need to establish a Key Management Service in each region that you want to encrypt data. 

However, AWS has announced that multi-region keys are now supported for client-side encryption in the: 

- AWS Encryption SDK 
- AWS S3 Encryption Client 
- AWS DynamoDB Encryption Client 

### Customer Master Key (CMK)

The CMK is the main key type within KMS and can generate, encrypt and decrypt **data encryption keys** or **DEKs**, which are used outside of the KMS service by other AWS services to perform encryption against your data. 

CMKs can either be managed by AWS or by customers of AWS. 

- **AWS-Managed CMK**
CMKs managed by AWS are used by other AWS services that have the ability to interact with KMS directly to perform encryption against data:
    - Amazon S3
    - SSE-KMS
    
- **Customer-managed CMK**    
These are CMKs that are created and generated by customers rather than AWS. They provide the ability to implement greater flexibility,

    - rotation
    - governing access
    - key policy configuration
    - enabling/disabling the key when it is no longer required.

With many services that you use within AWS, you can control access using identity-based access IAM policies. However, KMS also uses resource-based policies when it comes to CMK access. If you want to allow other IAM users or roles in a different AWS account in which a CMK was created, then you must understand how KMS permissions work. 

#### Access 

To manage access to your CMKs, you must use a **key policy**. Without a key policy associated to your CMK, users will not be able to use it. Permissions to allow you to access and use a CMK from a different AWS account can't be given and generated using IAM alone. 

As a result, you have to use and edit a resource-based key policy in the AWS account where the CMK resides, in addition to an IAM identity-based policy in the AWS account that wants to access the CMK. 

Note that you can only edit key policies for keys that you have created.

#### Key Policies 

Key policies are resource-based policies that are tied to your CMK. And the key policy document itself is JSON-based, much like IAM policies. Below is an example:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
        "Sid": "statement identifier",
        "Effect": "effect",
        "Principal": "principal",
        "Action": "action",
        "Resource": "resource",
        "Condition": {
            "condition operator": { 
                "condition context key": "context key value"
                }
            }
    }
    ]
} 
``` 

During the creation of a CMK, whether you create it programmatically or if you've created it through the AWS Management Console, KMS will create a default key policy for you to allow principles to use the CMK in question. 

By default, KMS will configure the root user of the AWS account in which the key was created full access to the CMK within the key policy. 

#### Creating CMKs 

When you create a CMK through the Management Console, then you can configure different permissions sets. These include key administrators and users. Key administrators can only administer the CMK, but not use it to perform any encryption functions. Whereas users have the ability to access the CMK to perform encryption of data. The permissions that can be given to use the key for any user selected, are as follows. 

- kms:Encrypt
- kms:Decrypt
- kms:ReEncrypt*
- kms:GenerateDataKey* 
- kms:DescribeKey

#### Sharing CMKs across accouts 

The first step in allowing the sharing of your CMK across AWS accounts is to add the principals from the external account into the key policy of the CMK. To do so, you will need to add a statement as shown where the text embed should be replaced with the external AWS account number.

```json
{
    "Sid": "Allow another AWS Account to use this CMK",
    "Effect": "Allow",
    "Principal": {
        "AWS": [
            "arn:aws:iam::123456789012:root"
        ]
    },
    "Action": [
        "kms:Encrypt",
        "kms:Decrypt",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*",
        "kms:DescribeKey"
    ],
    "Resource": "*"
}
```

This key policy statement can be created with even more granularity by limiting the specific actions required, or by specifying individual users or roles. For example, instead of using the root of the external account and the principal parameter, you could add an IAM user named Bob. 

```json
 "Principal": {
        "AWS": [
            "arn:aws:iam::123456789012:user/Bob"
        ]
    }
```

Once this statement is added to the key policy, the users within the account would still not be able to use the CMK until IAM permissions in the external account have been added to specific users or roles. And once the key policy has been edited to allow either the external account or specific users or roles from the external account access to a CMK, identity-based policies need to be associated with those users or roles who intend to use the CMK.

Let's assume that in the key policy, we set the principal component of the root of the external account. This would mean we can set the IAM permissions on any user or role in the external account to allow access to the CMK. The permissions required would need to include a statement as shown for the user or role.

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Allow the use of a CMK In Account 1234567889012",
      "Effect": "Allow",
      "Action": [
        "kms:Encrypt",
        "kms:Decrypt",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*",
        "kms:DescribeKey"
      ],
      "Resource": [
        "arn:aws:kms:us-east-2:123456789012:key/5e698272-88c6-4f6b-970e-1d1dbd0c6412"
        ]
    }
  ]
}
```

In this policy, you'll notice that we have an additional parameter of resource, which details which CMK the action should take effect on. And in this instance, is the Amazon resource name of the CMK in which we updated the key policy for. 

ne other point that's important is that if for example, your key policy only allowed the **kms:Decrypt** action, but your IAM policy allowed both the kms:Decrypt and kms:encrypt actions, then only the kms:Decrypt action would be allowed, as that is all that is allowed in the key policy, which takes precedence.

Once the policy is associated with the user or role, you will now be able to use the CMK to perform encryption functions. However, please do be aware that even though you have access to the CMK from a different account, the CMK will not be shown in the AWS Management Console for integrated services. Instead, you must use the ARN of the CMK.

### Best practices 

- Avoid re-using encryption keys
- Rotate the keys on a regular basis 
- Key rotation varies depending if AWS-managed or customer-managed 
- AWS-managed keys cannot be deleted

### Key Rotation

AWS-Managed key:

- Automatic rotation every three years
- Everything is handled by AWS 
- A new backing key is creataed and marked as active 
- Old key is available for decryption

Customer-managed key:

- Automatically rotate every year if enabled:

    - AWS KMS generated new cryptographical material for CMK
    - Old backing key is saved and can be used to decrypt data 
    - only available for AWS-imported key material

- On-demand manually:

    - Rotation frequency can be controlled
    - Keys can be deleted


## AWS Secrets Manager

AWS Secrets Manager allows you to store, encrypt, and rotate credentials and other types of secrets.

- automatic secret rotation
- built-in integration with AWS RDS
- secret rotation for non-AWS services using Lambda functions

AWS Secrets Manager is a great service to enhance your security posture by allowing you to remove any hard-coded secrets within your application and replacing them with a simple API call to the aid of your secrets manager which then services the request with the relevant secret. As a result, AWS Secrets Manager acts as a single source of truth for all your secrets across all of your applications.

Usage:

- Your application can fetch secrets from AWS Secrets Manager via API call 
- Secrets are encrypted in-transit and at-rest using KMS
- if automatic rotation is enabled, secret rotates immediately
- if secret is deleted, it will remain for 7 days before it is fully removed 

### What is considered a secret

A secret can be any of the following:

- passwords
- third party API keys
- database credentials on Amazon RDS or redshift clusters, or simply plain text. 

Essentially, it's typically something that you want to remain hidden from the open world.

### Secrets Rotation

AWS Secrets Manager enables the ease of rotating secrets and therefore enhancing the security of that secret. An example of this could be your database credentials. Other secret types can also have automatic rotation enabled through the use of lambda functions, for example, API keys. 

### Integration 

Being an enhanced security service, it also offers integration with other key AWS services such as **KMS**, the Key Management Service which is used to encrypt your secrets within AWS Secrets Manager. 

AWS CloudTrail and Amazon CloudWatch can be used to monitor the activity of your secrets, for example, when an API call is triggered to rotate a secret, CloudTrail will log this detail and cloud watch can be configured to report on this deletion through the use of CloudTrail logs and then notify your team. This provides full visibility and auditing capabilities as well as notification of any unexpected behavior, for example, a deletion of one of your secrets.

### Access 

Access to your secrets within AWS Secret Manager is governed by fine-grained IAM identity-based policies in addition to resource-based policies. 

- **Identity-based policies** are attached to identities that have been created within the IAM service and associated specific permissions to their identity. 

- **Resource-based policies** are attached to an individual resource instead of an identity.

### AWS Secrets Manager vs. AWS Systems Manager Parameter Store

AWS Secrets Manager:

- Database credentials, API keys, and passwords
- Encryption is enforced on all secrets
- Integration with AWS RDS 
- Automatic secret rotation for RDS
- Automatoc secret rotation for non-AWS services via Lambda 

AWS SSM Parameter Store

- Any parameter can be stored 
- Encryption is not mandatory 
- Integrated with AWS Systems Manager 

## AWS Macie 

When working with large quantities of data, it becomes very difficult to effectively scrub all that information for any secure vulnerabilities. This is where Amazon Macie is able to step in and help you manage the security of your Amazon S3 buckets and all the text data that lives within them.

Amazon Macie is a fully managed machine learning and pattern matching service that helps with data security and data privacy. 

- Automatically provide a detailed list of any sensitive data found in your S3 buckets

- Find personally identifiable information, PII, as well as any protected financial information

- Take actions on your behalf by using services such as Lambda and Step Functions.

- Allow you to have constant and detailed visibility into your Amazon S3 data. 


### How does Macie works 

When you enable the service you are allowing Macie to automate the discovery of any sensitive data that exists within your S3 buckets. In order to do this, Amazon Macie will create a service Link role that will give a service the permissions it requires to operate on your behalf.

This Service-Linked role gives Macie the permissions to:

- Create an inventory of all of your S3 buckets
- Provide statistical data about the buckets and the objects held within
- Monitor your buckets and evaluate them for security access control
- Analyze the objects within the buckets to detect sensitive data.

With these permissions, Macie will begin to create metadata about your buckets so that it can see if anything changes in the future. This data includes general bucket information such as:

- name
- ARN
- creation date
- account level permission settings
- shared access and replication settings object counts

Using this information, Macie's able to calculate statistics and provide assessments about your security and the privacy of your bucket inventory.

Macie will also monitor this data and these buckets to watch out for:

- unencrypted buckets
- publicly accessible buckets
- buckets that are shared with accounts not explicitly allowed within your Amazon Macie's settings. 

### Metadata 

The metadata is refreshed every day, directly through Amazon S3, as part of Macie's daily refresh cycle. The metadata can be directly refreshed whenever you choose by clicking the refresh button within the Amazon Macie console. This can be done at most once every five minutes.

Additionally, specific metadata will be updated whenever Macie detects a relevant AWS CloudTrail/EventBridge event.

### Bucket Policy Findings 

Anytime Macie finds an issue or detects an event that lowers your security posture, Macie will create a policy finding for you review at your earliest convenience. For example, if someone was to disable default encryption for a bucket after Macie's been enabled, Macie will create a S3 bucket encryption disabled finding for that bucket.

It is important to note that if the encryption for a bucket was disabled before Macie was enabled, Macie will not generate a policy finding for that possible security vulnerability. In total, there are five different types of bucket findings that Macie can watch out for. 

- Policy:IAMUser/S3BlockPublicAccessDisabled 
- Policy:IAMUser/S3BucketEncryptionDisabled 
- Policy:IAMUser/S3BucketPublic
- Policy:IAMUser/S3BucketReplicatedExternally
- Policy:IAMUser/S3BucketSharedExternally


Each finding will be available for up to 90 days and includes the following information:

- a severity rating 
- general information about the affected resource
- when and how Macie found the issue

### Reviewing the findings 

You have a few options for reviewing and analyzing your findings:

- Directly in the Amazon Macie console
- Use the API to review them, programmatically.
- In Amazon EventBridge (formally CloudWatch events)
- In the AWS Security Hub 

Since these findings can be viewed programmatically, as well as through EventBridge, this is how you would be able to create automatic workflows that could lock down buckets or archive sensitive data for you.

### Discover sensitive data within your buckets

When you're ready to begin scrubbing the data that resides within your S3 buckets, you'll need to create a run sensitive data discovery jobs. A **sensitive data discovery job**, as the name alludes to, allows you to analyze objects that are stored within your Amazon S3 buckets for sensitive content.

Sensitive content might include any of the following: 

- financial information, i.e. credit cards and bank accounts
- personal information such as names, address and contacting data
- national information like passports, IDs, driver's license and social security numbers
- medical information like healthcare, data, pharmacy information and drug agencies, 
- credentials and secrets, like AWS secret keys and private keys. 

These jobs will have a detailed report of any sensitive data that they find, as well as an overall analysis. A job can be scheduled to run either one time or on a daily, weekly or monthly basis. A sensitive data discovery job is able to analyze objects by using identifiers.

**Managed data identifiers**

The managed data identifier are a built-in set of parameters and techniques that detect specific varieties of data. These are created and curated by AWS. With this option, Macie is in charge of these data types. As a list of new and important data identifiers grows, Amazon Macie will automatically include them. The current list is defined by data protection regulations like GDPR, PCI, DSS, CCPA and HIPAA. 

**Custom data identifiers**

The custom identifiers are ones that you create and manage. They are written in the form of regular expressions which defines specific patterns to match to and could include things like employee IDs, customer account numbers or other case specific sensitive data types. 

### Severity Level 

You can also set a severity level for your custom data types. Each is set to medium by default, but having the ability to set multiple levels can be quite useful. 

- The custom data identifiers supplement the built-in managed data identifiers 
- You'll be reported in the same way and location
- You'll be notified by Macie if it detects text that match either identifier type.

Findings will be categorized by:

- what bucket they are in
- what type they are
- what job found them

These types and categories make it easy to filter on what you wish to search for. This allows you to help automate workflows or to even suppress specific types of findings that you know are clear based on your policy needs

### Analyzing encrypted object

Amazon Macie supports reading and analyzing multiple encryption options for your S3 objects. Macie will decrypt the objects by using the Service Link role we spoke of earlier. However, it will depend on what type of encryptions the objects have used. 

- If an object was encrypted using server-side encryption with Amazon S3 managed keys, SSE-S3, Macie is able to decrypt and analyze this type of object without much trouble. 

- If the object uses server-side encryption with AWS KMS keys, SSE-KMS, these are also able to be decrypted fairly easily. 

- If this was encrypted with a customer managed KMS key, Macie can only decrypt the object, if you specifically allow Macie to use that key. 

- For server-side encryption with customer provided keys, SEE-C, Macie will be unable to decrypt to analyze the objects of this type. The service will only store and report metadata for that object.

- For client-side encryption, Macie will not be to decrypt or analyze the object. Again, the service will just store and report metadata for that object. 

Within the Macie console, you can sort and filter your buckets to see which types of encryption they may have. This might be useful if you wish to further investigate objects that Macie did not analyze.

### Supported file formats for sensitive data discovery 

Macie is able to scrub through birth file formats and look for the managed data and custom data identifiers you've defined. 

Big data formats:

- Avro 
- Parquet

Compressed and archive data:

- .gz
- .gzip 
- .tar
- .zip files. 

Generic document types:

- .doc
- .docx
- .pdf
- .xls
- .xlsx

Pure text files:

- .cvs
- .htm
- .html
- .json
- .jsonal
- .tsl
- .txt
- .xml

Here's a note from Amazon about how deep Macie will look through your files:

> "When Macie analyzes a compressed or archived file, it inspects both the full file and the contents of the file. To inspect the file's contents, it decompresses the file, and then inspects each extracted file that uses a support format. Macie can do this for as many as a million files and up to a nested depth of 10 levels."

It's important to know that anything Macie does not support, it will not inspect. This means any video files or images, for example, will have to be checked on their own. You might try to create something using AWS recognition if that was important to you or your organization. 

### Integrations with AWS organizations

Amazon Macie has some impressive integrations with AWS organizations that make security of multiple accounts and their S3 buckets a lot easier.

When working with multiple accounts, Macie provides **Macie administrator account** which can access and monitor your entire organization's S3 security. 

- Allows you to run sensitive data discovery jobs which are able to detect S3 data vulnerabilities across all member accounts

- Has access to all policy findings, inventory data and other Macie settings and resources for each member account

- Can have up to 5,000 members, when they use AWS organizations.

To start using Macie's new organization, you'll need to designate an account to be the Macie administrator. However, it is not recommended to not set this account to be the same as the organizational root account to keep power separated and follow the principles of least privilege whenever possible. 

It is important to note that an organization can only have a single administrator account at one time. And an account cannot be both a Macie admin and a member account.

To change the Macie administrator account, all member accounts will be removed. However, Macie will not be disabled from those member accounts. A member account can only be associated with one administrator at one time and it is unable to disassociate itself from that admin once under its stewardship. 


### Cost

Amazon Macie is a very impressive service that offers a lot of good protection. However, all that does come at some cost. There are two ways that Macie charges you:

- Throught static protection of your buckets

    - charged on a per bucket basis of 10 cents per S3 bucket per month
    - depending on how you've set up your S3 data, it has a potential to be a non-zero cost

- Through sensitive data discovery jobs. 

    - like most AWS services and does get cheaper the more you use
    - starts off at $1 per gigabyte of data you scan for the first 50,000 gigs per month
    - depending on the size of your organization, that could be quite a sum of money

## Restrict S3 Buckets Access

### Bucket Policies 

AWS S3 Bucket policies are policies attached only to S3 buckets and specifies what is allowed or denied to that bucket.

- can be used to define granualr permissions at a user-level 
- can be used to grant cross-account access to S3 bucket without using IAM roles 
- S3 bucket policies work at a bucket level 

### S3 ACLs

- S3 ACL can be applied at an object-level 
- recommended way to protect objects 
- do not use unless required

**Conflicts between S3 Bucket Policies vs. IAM Policies**

- The authorization decision will depend on the combination of:
    - IAM policies 
    - S3 Bucket policies
    - S3 ACLs 

- By default, everything is DENIED 
- If you allow something, it only takes one EXPLICIT DENY for the result to be denied.
- An explicit deny will always override an allow 

### AWS S3 Pre-signed URLs

- This enables you to generate a temporary URL to access S3 objects
- Typically short-lived (seconds or minutes) but the TTL can be customized (up to 1 hour)
- Created via AWS SDK or AWS CLI.

    ```bash
    aws s3 pregin s3://bucket-name/object-name --expires-in 120
    ```

### Enable Vault Lock in AWS Glacier 

AWS Glacier is a very low cost option fort long-ter data archiving. This started as an S3 storage class but it now a dedicated AWS service.

- data stored in AWS Glacier are called **archives**
- data is in .zip or .tar
- commonly used for backups 
- allows use of vault-lock policies

**Vault Lock Policies**

A vault is a container that stores one or more archives, where an archive can contain zip files. When the vault is closed, we can apply vault lock policies.

- vault lock policies can be configured to enforce compliance controls 
- syntax is ismilar to IAM policies 
- allows to establich retention policies
- ensures that archives are not tampered with, and can only be written once and read many times.

**How does it work:**

- Initiate lock process by attaching the policy to your vault 
- Validate the policy within 24 hours
- Once validated, the lock policy is immutable
- There's no way to change policy after its validated
- The only way to change the policy is to break the vault

### Forcing S3 to use CloudFront 

CloudFront is a content-delivery network (CDN) that allows you to distribute your static content globally.

- fast, highly-secure, and programmable 
- allows spreading content around the globe, not just regions but also edge locations 

#### Securing an S3 Origin in CloudFront

CloudFront can be be sued to distribute the content stored in S3 bucket:

- Create a CloudFront distribution with an S3 origin
- Use an CloudFront Origin Access Identiy when accessing the S3 bucket
- Restrict S3 bucket access and update permissions

The goal is to make sure that S3 content can only be accessed through the CloudFront and that S3 bucket cannot be accessed directly.

#### TLS/SSL Certificate Options with CloudFront

When you create a CloudFront distribution, you hav the following options for TLS/SSL certificates:

- default CloudFront certificate with the domain name:

    ```bash
    *.cloudfront.net  
    ```

- custom SSL certificate with a domain that you own

If you use the custom SSL option, you should:

- use certificates in AWS Certificate Manager
- the certificates should be in us-east-1 region 
- make sure that the certificate is valid and has proper certificate chain

## S3 Encryption Mechanisms 

Depending on your requirements, one method of encryption may be more appropriate than another. Here are the available encryption mechanisms for your Amazon S3 Buckets:

- **Server-side encryption with S3 managed keys, SSE-S3**

    - Requires minimal configuration 
    - Management of encryption keys used are managed by AWS
    - Just upload your data and S3 will handle all other aspects. 

- **Server-side encryption with KMS managed keys, SSE-KMS**

    - Allows S3 to use the key management service to generate your data encryption keys
    - KMS gives you a far greater flexibility of how your keys are managed
    - You are able to disable, rotate, and apply access controls to the CMK
    - You can also audit keys against their usage using AWS CloudTrail. 

- **Server-side encryption with customer provided keys, SSE-C**

    - Provide your own master key that you may already be using outside of AWS
    - Customer-provided key would then be sent with your data to S3
    - S3 would then perform the encryption for you

- **Client-side encryption with KMS, CSE-KMS**

    - Like SSE-KMS, CSE-KMS uses KMS to generate your data encryption keys
    - But KMS is called upon via the client, not S3
    - Encryption takes place client-side and encrypted data is sent to S3 to be stored

- **Client-side encryption with customer provided keys, CSE-C**

    - Able to utilize your own provided keys and use an AWS-SDK client to encrypt your data before sending it to S3 for storage. - 

## AWS Certificate Manager

It is a service that lets you easily provision, manage, and deploy plublic and private SSL/TLS certificates.

- These certficates can be used to secure network communications
- Can be used to establish identiy of websites over the internet 
- Quicker way to purchase, upload, and renew SSL/TLS certificates
- Can be used with AWS Loadbalancers and AWS CloudFront
- Can be automatically renewed as long as:
    - domain is purchased in AWS Route 53
    - and it is a public hosted zone
- ACM TLS/SSL certificates cannot be exported

**How it works:**

1. Add a domain name which can be:

    - purchased through AWS Route53
    - existing domain name added to AWS Route53

2. Validate the domain through:

    - **DNS Validation**, where you need to modify the domain name to contain a DNS record generated by ACM
    - **Email validation**, if you don't have permission to modify the DNS configuration

3. Review 
4. Validate

## Security Features of AWS Loadbalancers 

AWS Loadbalacers cab automatically distribute incoming application traffic across multiple targets.

- handles the varying load of application traffic
- offers different types of Loadbalancers 
    - Network Loadbalancers 
    - Application Loadbalancers 
    - Classic Loadbalancers
    - Gateway Loadbalancers
- provides some security features such as security policies 

### Security Policy of HTTPS Listeners

When you create a TLS Listener, you must select a security policy which can be updated as needed. To learn more, check out the following links:

- [User Guide for Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/index.html)
- [User Guide for Network Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/index.html)
- [User Guide for Gateway Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/index.html)
- [User Guide for Classic Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/index.html)
- [TLS listeners for your Network Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html)

### TLS/SSL Termination Options

TLS/SSL can be terminated in either:

- ELB 
- EC2/ECS/EKS/Fargate (behind the loadbalancer)

To terminate the TLS/SSL behind the loadbalancer, you can only use:

- Network Loadbalancer 
- Classic Loadbalancer with TCP protocol support for termination

Security implications of terminating TLS/SSL in the ELB:

- ELB will decrypt TLS/SSL so traffic between ELB and EC2/ECS/EKS will be unencryptesd
- you will not have end-to-end encryption in place 

Benefits of termination TLS/SSL in the ELB:

- Offloads processing to the ELB 
- Faster and less resources needed in the EC2/ECS/EKS/Fargate

**NOTE:**
Do not terminate the TLS/SSL in the ELB unless you really need to.

To learn more, check out:

- [New – TLS Termination for Network Load Balancers](https://aws.amazon.com/blogs/aws/new-tls-termination-for-network-load-balancers/)

- [Network Load Balancer Now Supports TLS Termination](https://aws.amazon.com/about-aws/whats-new/2019/01/network-load-balancer-now-supports-tls-termination/)

- [Verify that ELB load balancers require TLS termination](https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/verify-that-elb-load-balancers-require-tls-termination.html)