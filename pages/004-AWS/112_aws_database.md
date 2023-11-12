
# AWS Databases

> <small>This is not an exhaustive documentation of all the existing AWS Services. These are summarized notes for the AWS Certifications.</small>
> <small>To see the complete documentation, please go to: [AWS documentation](https://docs.aws.amazon.com/)</small>

- [Choosing the Right Database](#choosing-the-right-database)
- [Database Types on AWS](#database-types-on-aws)
- [Amazon Relational Databases RDS](#amazon-relational-databases-rds)
    - [DB Engines supported](#db-engines-supported)
    - [Advantages and Disadvantages](#advantages-and-disadvantages)
    - [Use cases](#use-cases)
    - [RDS Backups](#rds-backups)
    - [RDS Read Replicas](#rds-read-replicas)
    - [RDS Multi AZ Disaster Recovery](#rds-multi-az-disaster-recovery)
    - [RDS Security](#rds-security)
        - [Encryption](#encryption)
        - [Network Security and IAM](#network-security-and-iam)
        - [Security Summary](#security-summary)
- [Aurora](#aurora)
- [ElastiCache](#elasticache)
- [DynamoDB](#dynamodb)
- [Redshift](#redshift)
- [Neptune](#neptune)
- [OpenSearch](#opensearch)





## Choosing the Right Database

The following are some of the guideline questions to ask when choosing the database to use:

- Is the workload read-heavy, write-heavy or balanced? 
- What are the throughput needs? 
- Will the throughput change, fluctuate or will we have to scale the DB over time?
- How much data do we store and for how long? 
- Will the size of the data grow? 
- What is the average size of an object in the DB? How frequently are these objects accessed?
- Should the data be stored for a week or forever? 
- Is the database going to be a source of truth?
- What are the latency concerns?
- What is the data model? 
- How will the data be queried? 
- Will the data be structured, semi-structured or unstructured?
- Do we need strong schema or flexible schema? 
- Do we need reporting? Do we need advanced search?
- What are the license costs? 
- Can we switch to a cloud native database such as Aurora, DynamoDB, etc?

## Database Types on AWS

Database Types | AWS Service | Description |
---------|----------|----------|
| RDBMS (SQL/OLTP) | RDS <br> Aurora | Great for joins and normalized data |
| NoSQL | DynamoDB <br> ElastiCache (key/value pairs) <br> Neptune (graphs) <br> DocumentDB (json) | No joins, no SQL
| Object Store | S3 (for big objects) <br> Glacier (for backups, archive) | For object storage and archival
| Data Warehouse | Redshift (OLAP) <br> Athena | SQL Analytics / BI Use cases
| Search | ElasticSearch (JSON) | Free text, unstructured searches |
| Graphs | Neptune | Displays relationships between data |

## Amazon Relational Databases (RDS)

Amazon RDS is a managed database service for relational databases

- Provides cost-efficient, resizable capacity
- AWS manages common database administration tasks.
- AWS provisions an EC2 instance behind the scenes and EBS Volume


### DB Engines supported

A DB engine is the specific relational database software that runs on your DB instance. Amazon RDS currently supports the following engines:

- MySQL
- PostreSQL
- Oracle
- Microsoft SQL Server
- Aurora
- MariaDB

### Advantages and Disadvantages

**Advantages**

- Security through IAM, security groups, KMS, SSL
- Backup/Snapshot/Point in time restore functionality
- Support for multi AZ deployment 
- Read replicas
- Monitoring happens through CloudWatch
- Managed and scheduled maintenance
- Pay per hour based on provisioned EC2 and EBS
- Scaling capability (vertical and horizontal)
- Storage backed by EBS (GP2 or IO)

**Disadvantages**

- No SSH into the instance which hosts the database


### Use cases

- Store relational datasets
- Perform SQL queries
- Transactional inserts, deletes, updates

### RDS Backups

- Backups are automatically enabled in RDS
- AWS RDS provides automated backups:
    - Daily fill backup of the database (during the maintenance window)
    - Transaction logs are backed-up by RDS every 5 minutes which provides the ability to do point in time restores
    - There is a 7 day retention for the backups which can be increased to 35 days
- DB Snapshots:
    - There are manually triggered backups by the users
    - Retention can be as long as the user wants
    - Helpful for retaining the state of the database for longer period of time

### RDS Read Replicas

- Read replicas helps to scale the read operations
- We can create up to 5 read replicas
- These replicas can be within AZ, cross AZ or in different regions
- The data between the main database and the read replicas is replicated **asynchronously** => reads are eventually consistent
- Read replicas can be promoted into their own database
- Use case for read replicas:
    - Production database is up and running taking on normal load
    - There is a new feature for running some reporting for analytics which may cause slow downs and may overload the database
    - To fix this we can create read replicas for reporting
- Read replicas are used for SELECT operations (not INSERT, UPDATE, DELETE)
- Network cost for read replicas:
    - In AWS there is network cost if data goes from one AZ to another
    - In case of cross AZ replication, additional costs may incur because of network traffic
    - To reduce costs, we could have the read replicas in the same AZ

### RDS Multi AZ (Disaster Recovery)

- RDS Multi AZ replication is done using **synchronous** replication
- In case of multi AZ configuration we get one DNS name
- In case of the main database goes down, the traffic is automatically re-routed to the failover database
- Multi AZ is not used for scaling
- The read replicas can be set up as Multi AZ for Disaster Recovery


### RDS Security

#### Encryption at rest

- Possibility to encrypt the master and read replicas with AWS KMS - AES-256 encryption
- Encryption has to be defined at the launch time
- **If the master is not encrypted, the read replicas cannot be encrypted**
- Transparent Data Encryption (TDE) is available for Oracle and SQL Server

#### Encryption in flight

- Uses SSL certificates to encrypt data from client to RDS in flight
- It is required SSL a trust certificate when connecting to database
- To enforce SSL:
    - PostgeSQL: 
    
        ```bash
        rds.force_ssl=1 in the AWS RDS Console (Parameter Groups)
        ```

    - MySQL: 
    
        ```bash
        GRANT USAGE ON *.* To 'user'@'%' REQUIRE SSL; 
        ```

#### Encrypting RDS backups

- Snapshots of un-encrypted RDS databases are un-encrypted
- Snapshots of encrypted RDS databases are encrypted
- We can copy an un-encrypted snapshot into an encrypted one

#### Encrypt an un-encrypted RDS database

- Create a snapshot
- Copy the snapshot and enable encryption for the snapshot
- Restore the database from the encrypted snapshot
- Migrate application from the old database to the new one and delete the old database

#### Network Security and IAM

**Network security**
- RDS databases are usually deployed within a private subnet
- RDS security works by leveraging security groups (similar to EC2), they control who can communicate with the database instance

**Access management**
- There are IAM policies which help control who can manage an AWS RDS database (through the RDS API)
- Traditional username/password can be used to login into the database
- IAM-based authentication can be used to login into MySQL and PostgreSQL 

**IAM authentication**
- IAM database authentication works with MySQL and PostgreSQL
- We don't need a password to authenticate, just an authentication token obtained through IAM and RDS API calls
- The token has a lifetime of 15 minutes
- Benefits:
    - Network in/out must be encrypted using SSL
    - IAM is used to centrally manage users instead of DB credentials
    - We can manage IAM roles and EC2 instance profiles for easy integration


## Aurora

Amazon Aurora (Aurora) is a fully managed relational database engine that's compatible with MySQL and PostgreSQL.

- Data is held in 6 replicas across 3 AZs
- Up to 15 read replicas (only 5 for RDS)
- It has some auto healing capabilities
- Auto scaling read replicas which can be global
- Can be global, for disaster recovery purposes or latency purposes
- Auto scaling of storage form 10GB to 64TB
- We define an EC2 instance for Aurora instances
- Same security, monitoring and maintenance features as RDS
- Aurora has a serverless option

**Use cases**

- Similar to RDS, but with less maintenance, more flexibly, more performant at a higher cost


## ElastiCache

Managed Redis or Memcached which provides a high performance, resizable, and cost-effective in-memory cache, while removing complexity associated with deploying and managing a distributed cache environment.

- In-memory data store, sub-millisecond latency
- Must provision and EC2 instance type
- Offers support for clustering (Redis)
- Multi AZ
- Read replicas (sharding)
- Security through IAM, SG, KMS, Redis Auth
- Backups, snapshots and point in time restore (for Redis)
- It has managed and scheduled maintenance
- Monitoring happens through CloudWatch

**Uses cases**

- Key/value store
- Frequent reads, less writes
- Cache results for DB queries
- Store session data for websites


## DynamoDB

Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance. 

- Managed NoSQL database, proprietary to AWS
- Serverless, provisioned capacity
- Supports auto scaling, provides on demand capacity as well
- Can replace ElastiCache as a key/value store
- Highly available, Multi AZ by default\
- Reads and writes are decoupled, DAX for read cache
- Reads can be eventually consistent or strongly consistent
- Security, authentication and authorization is done through IAM
- Enable DynamoDB Streams to stream all the changes in DynamoDB and integrate with AWS Lambda
- Provides backup/restore features, Global Table feature
- Monitoring is done through CloudWatch
- The tables can only be queried on primary key, sort key or indexes

**Use cases**

- Serverless application development
- Distributed serverless cache


## Redshift

Amazon Redshift is a fast, fully managed, petabyte-scale data warehouse service that is optimized for datasets ranging from a few hundred gigabytes to a petabyte or more and costs less than $1,000 per terabyte per year, a tenth the cost of most traditional data warehousing solutions.

- Redshift is based on PostgreSQL, but it's not used for OLTP
- It's **OLAP - only analytical processing (analytics and data warehousing)**
- 10x better performance than other data warehouses, scales to PBs of data
- Columnar database - data is stored in columns
- Massively parallel query execution (MPP), highly available
- Pay as you go based on the instances provisioned
- Has a SQL interface for performing the queries
- Great to use with BI tools such as AWS Quicksight or Tableau
- Data is loaded form S3, DynamoDB, Database Migration Service (DMS), other DBs
- Can scale from 1 node up to 128 nodes, up to 160 GB of space per node
- Node types: compute nodes for performing queries, result is sent to leader nodes
- Redshift Spectrum: perform queries directly against S3 (no need to load the data)
- Provides backup and restore
- Security is accomplished with VPC/IAM/KMS
- Redshift Enhanced VPC Routing: COPY/UNLOAD goes through VPC

### Redshift Snapshots and Disaster Recovery

- Snapshots are point-in-time backups of a cluster, stored internally in S3
- Snapshots are incremental (only what has changed is saved)
- Snapshots can be restored into new Redshift clusters
- Snapshots can be automated: every 8 hours, every 5 GB, or on schedule
- Manual snapshots: snapshots are retained until we delete them
- We can configure Redshift to automatically copy snapshots to another regions

### Redshift Spectrum

- Data can be queried from S3 without the need to load it into Redshift
- We must have a Redshift cluster available to start the query
- The query is then submitted to thousands of Redshift Spectrum nodes


## Neptune

Amazon Neptune is a fast, reliable, fully managed graph database service that makes it easy to build and run applications that work with highly connected datasets.

- Highly available across 3 AZ, up to 15 read replicas
- Provides point-in-time recovery, continuous back-up to S3
- Support for KMS encryption at rest + HTTPS

**Use cases**

- Highly relational data
- Social networking
- Knowledge graphs

## OpenSearch

OpenSearch is a fully open-source search and analytics engine for use cases such as log analytics, real-time application monitoring, and clickstream analysis.

- Can search any field, as well as partial matches 
- Complement to another database
- We can provision a cluster of instances
- Built-in integration with:
    - Amazon Kinesis Data Firehose
    - AWS IoT 
    - Amazon CloudWatch Logs for data ingestion
- Security through Cognito and IAM, KMS encryption, SSL and VPC
- Comes with Kibana and Logstahs - ELK stack
