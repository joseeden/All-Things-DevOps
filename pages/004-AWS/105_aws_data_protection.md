
# Data Protection



- [Key Management Service - KMS](#key-management-service---kms)
    - [KMS - Best practices](#kms---best-practices)
    - [KMS - Key Rotation](#kms---key-rotation)
- [Restrict S3 Buckets Access](#restrict-s3-buckets-access)
    - [Bucket Policies](#bucket-policies)
    - [S3 ACLs](#s3-acls)
    - [AWS S3 Pre-signed URLs](#aws-s3-pre-signed-urls)
- [Enable Vault Lock in AWS Glacier](#enable-vault-lock-in-aws-glacier)
- [Forcing S3 to use CloudFront](#forcing-s3-to-use-cloudfront)
    - [Securing an S3 Origin in CloudFront](#securing-an-s3-origin-in-cloudfront)
    - [TLS/SSL Certificate Options with CloudFront](#tlsssl-certificate-options-with-cloudfront)
- [AWS Certificate Manager](#aws-certificate-manager)
- [Security Features of AWS Loadbalancers](#security-features-of-aws-loadbalancers)
    - [Security Policy of HTTPS Listeners](#security-policy-of-https-listeners)
    - [TLS/SSL Termination Options](#tlsssl-termination-options)


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

### KMS - Best practices 

- Avoid re-using encryption keys
- Rotate the keys on a regular basis 
- Key rotation varies depending if AWS-managed or customer-managed 
- AWS-managed keys cannot be deleted

### KMS - Key Rotation

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

## Enable Vault Lock in AWS Glacier 

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

## Forcing S3 to use CloudFront 

CloudFront is a content-delivery network (CDN) that allows you to distribute your static content globally.

- fast, highly-secure, and programmable 
- allows spreading content around the globe, not just regions but also edge locations 

### Securing an S3 Origin in CloudFront

CloudFront can be be sued to distribute the content stored in S3 bucket:

- Create a CloudFront distribution with an S3 origin
- Use an CloudFront Origin Access Identiy when accessing the S3 bucket
- Restrict S3 bucket access and update permissions

The goal is to make sure that S3 content can only be accessed through the CloudFront and that S3 bucket cannot be accessed directly.

### TLS/SSL Certificate Options with CloudFront

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