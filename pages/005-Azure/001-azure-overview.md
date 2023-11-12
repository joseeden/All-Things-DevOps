
# Microsoft Azure - Overview

- [Overview](#overview)
- [Comparison of AWS and Azure Services](#comparison-of-aws-and-azure-services)
- [Billing vs. Subscription vs. Resource Group](#billing-vs-subscription-vs-resource-group)
- [Azure Architecture](#azure-architecture)
    - [Region](#region)
    - [Availability Zone](#availability-zone)
- [Resources](#resources)


## Overview 

Microsoft Azure is a collection of online services for application development and hosting. 

- Eliminates the need for personal data centers; operates in Microsoft's global data centers.
- Pay-as-you-go model based on actual usage.
- Flexible resource scaling up and down as needed.

![](../../Images/azure-complete-services.png)


**Compute Options:**
- Virtual Machines (VMs) for traditional IT infrastructure.
- Azure App Service for web and mobile applications.
- Azure Functions for serverless execution of individual functions.
- Azure Container Instances for simplified container deployment.
- Azure Kubernetes Service for managing multi-container applications.

**Storage Solutions:**
- Blob Storage for unstructured data with hot, cool, and archive access tiers.
- Azure File Storage for hierarchical file storage.
- Azure Data Lake Storage Gen2 for Hadoop-compatible storage in data analytics.

**Database Services:**
- Azure SQL Database for relational databases.
- Azure Database for MySQL, MariaDB, and PostgreSQL for open-source databases.
- Cosmos DB for globally scalable NoSQL databases.
- Azure Cache for Redis for caching frequently requested data.

**Network Services:**
- Virtual Networks (VNets) for VMs with IP addresses, subnets, and route definitions.
- VNet peering for communication between VMs in different VNets.
- VPN or Azure ExpressRoute for secure connections to on-premises networks.

**Additional Services:**
- Beyond core compute, storage, and networking, Azure offers services in areas like artificial intelligence and DevOps.

## Comparison of AWS and Azure Services

| TOPIC      | AWS                                      | AZURE                          | FUNCTIONALITY                                                                                                                                                                                                                                         |
| ---------- | ---------------------------------------- | ------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Compute    | Amazon EC2                               | Azure Virtual Machines         | Manage your own virtual machines, IaaS, this is the services you are looking at.                                                                                                                                                                      |
|            | AWS Lambda                               | Azure Function                 | Need to execute a bit of code, but you don’t need a dedicated virtual machine for that. You can go server-less and use Azure functions or Lambda.                                                                                                     |
|            | AWS Elastic Beanstalk                    | Azure App Services             | Running applications in the cloud, without having to worry too much about the servers they are running. They will have dedicated virtual machines under the hood.                                                                                     |
| Containers | AWS Fargate                              |                                | Serverless container orchestration.                                                                                                                                                                                                                   |
|            | AWS ECS Elastic container service        | Azure Container Instances      | PaaS fully managed container orchestration service. You will still have the virtual machine cluster.                                                                                                                                                  |
|            | Amazon EKS (Elastic Kubernetes Service)  | AKS (Azure Kubernetes Service) | Kubernetes as a service, with the dedicated virtual machine cluster.                                                                                                                                                                                  |
| Storage    | Amazon S3 (Simple storage service)       | Azure Blob Storage             | To store files. This service is region-less in AWS and region-specific in Azure.                                                                                                                                                                      |
|            | Amazon Elastic Filesystem (EFS)          | Azure File Storage (SMB)       | EFS is a filesystem while Azure Files is a SMB-storage-as-a-service.
| Security   | IAM Roles                                | Azure AD                       | For access-control, in Azure, you would have Service Principals registered in Azure Active Directory, in AWS you will have roles configured in IAM. Both support a similar permissions model.                                                         |
|            | AWS Cognito                              | Azure AD B2C                   | For when you want to implement Single sign-on from external providers like Twitter, Facebook or Active Directory.                                                                                                                                     |
|            | AWS KMS (Key Management System)          | Key vault                      | Add the secret and only permit the specific people. secrets managements                                                                                                                                                                               |
|            | AWS Trust Advisor                        | Azure Advisor                  | Provide recommendations for reducing costs and managing security.
| Logs       | AWS CloudTrail                           | Azure Activity log             | Stores the logs of what actions have been done against resources, for example when a new virtual machine is started.                                                                                                                                  |
| Databases  | Amazon RDS (Relational databases server) | Azure SQL Database             | PaaS relational database servers                                                                                                                                                                                                                      |
|            | Amazon Dynamo DB                         | Azure Cosmos DB                | NoSql fully managed instances by both cloud providers, both work as key-value or document stores.                                                                                                                                                     |
|            | Amazon ElastiCache                       | Azure Cache for Redis          | When your application could use a distributed caching layer with low latency. This is PaaS, so you don’t need to worry about maintaining the cache cluster.                                                                                           |
|            | Amazon Redshift                          | Azure Synapse Analytics        | Used for data warehousing
| Networking | Amazon VPC (Virtual private cloud)       | Virtual Networks (VNet)        | Azure you have the concept of VNets, the major difference is that in AWS most services can be easily added into a VNet.                                                                                                                               |
|            | AWS Site-to-Site VPN                     | Azure VPN                      | Connection between your VPC/VNet and your own on-premises network. 
|            | AWS Direct Connect                       | Azure ExpressRoute             | Supports connectivity between VPC/Vnet and an on-premises network
|            | Amazon Route 53                          | Azure Traffic manage           | Service for setting routes at DNS level.                                                                                                                                                                                                              |
|            | Amazon API Gateway                       | API Management                 | Concept of API gateways, rather than having one client having to know about many backend services, you can add an API Gateway layer                                                                                                                   |
|            | Amazon CloudFront                        | Azure CDN                      | Content delivery networks are important when performance is key for your web applications. Rather than leaving your static files in your application virtual machines, we can use a dedicated resource for handling content distribution and caching. |
| Integration| AWS SQS                                  | Azure Service Bus              | When you have a simple queue, one publisher and one consumer.                                                                                                                                                                                         |
|            | AWS SNS                                  | Azure Event Grid               | SNS works in the publisher/subscriber pattern, so you could argue that is also equivalent to Azure Service Bus, because you could have multiple subscribers with their own SQS queue.                                                                 |
|            | AWS Step Functions                       | Azure Logic Apps               | Serverless orchestration tool to build and manage cloud-based multistep application workflows using a visual interface for business-critical processes
|            | AWS Kinesis                              | Azure Event hub                | You are dealing with a high throughput queue.                                                                                                                                                                                                         |
| Devops     | AWS DevOps                               | Azure DevOps                   | Host your code with GIT or TFS. AWS has CodeCommit for this.                                                                                                                                                                                          |
|            | AWS CloudFormation                       | ARM Templates/blueprints       | Creating your resources in the cloud for test purposes is fine                                                                                                                                                                                        |
|            | AWS Cloud 9                              | Azure console                  | In Azure you have the option to have a bash/Powershell for writing commands, I found that AWS Cloud 9 provides you with a full own mini IDE environment                                                                                               |
| Monitoring | Cloud Watch                              | Azure Monitor                  | Services need to report metrics, for example, the CPU percentage of the running virtual machines                                                                                                                                                      |
|            | X-Ray                                    | App Insights                   | what is going on your application, being able to see called requests, response times, success rates and dependency calls.                                                                                                                           

## Billing vs. Subscription vs. Resource Group 

When you sign up for Azure, Microsoft creates a billing account and a subscription. These are easily confused, as both are related to billing. 

**Billing Account**
A billing account is the agreement to use Microsoft services,

**Subscription**
A subscription is a collection of Azure resources and are charged in the same monthly bill

Reasons for having both:

- Multiple subscriptions within a billing account for departmental invoicing.
- Isolation of resources in different subscriptions for security or compliance.

**Resource Group**
Similar to a subscription, a resource group serves as a container for resources. However, a subscription can contain multiple resource groups, allowing for further organization within a subscription.

Best practices for resource grouping include:

- Grouping related resources together, like a VM and its associated storage account.
- Creating and deleting resources in a group simultaneously, especially when components work together to provide a solution.

## Azure Architecture

### Region 

A region is a geographical area on the planet containing at least one, but potentially multiple datacenters that are nearby and networked together with a low-latency network. Azure intelligently assigns and controls the resources within each region to ensure workloads are appropriately balanced.

>Some services or virtual machine features are only available in certain regions, such as specific virtual machine sizes or storage types. 
> There are also some global Azure services that do not require you to select a particular region, such as Microsoft Azure Active Directory, Microsoft Azure Traffic Manager, and Azure DNS.

![Azure regions](https://docs.microsoft.com/en-us/learn/modules/explore-azure-infrastructure/media/2-regions-small.png)

Azure divides the world into geographies that are defined by geopolitical boundaries or country borders. An Azure geography is a discrete market typically containing two or more regions that preserve data residency and compliance boundaries.

**Data residency** 
Refers to the physical or geographic location of an organization's data or information. It defines the legal or regulatory requirements imposed on data based on the country or region in which it resides and is an important consideration when planning out your application data storage.

### Availability Zone

Availability Zones are physically separate datacenters within an Azure region.

Each Availability Zone is made up of one or more datacenters equipped with independent power, cooling, and networking. It is set up to be an isolation boundary. If one zone goes down, the other continues working. Availability Zones are connected through high-speed, private fiber-optic networks.

![Availability Zone](https://docs.microsoft.com/en-us/learn/modules/explore-azure-infrastructure/media/4-availability-zones.png)


### Management Groups

Management groups provide a governance scope above subscriptions. You organize subscriptions into management groups; the governance conditions you apply cascade by inheritance to all associated subscriptions.

- Gives you enterprise-grade management at scale, no matter what type of subscriptions you might have. 
- All subscriptions within a single management group must trust the same Azure Active Directory (Azure AD) tenant.
- You can apply policies to a management group that limits the regions available for virtual machine (VM) creation. 
- This policy would be applied to all nested management groups, subscriptions, and resources and allow VM creation only in authorized regions.

The following diagram shows an example of creating a hierarchy for governance using management groups.

![](../../Images/azure-fundamentals-mggroups.png)


## Resources 

- [Learning About Azure](https://cloudacademy.com/learning-paths/learning-about-azure-5663/)
- [AWS & Azure services comparision](https://gist.github.com/vikpande/6b8f891e2fb1ce1e255f636ee27caaee)
- [Networking services compared: AWS vs Azure vs Google Cloud](https://www.pluralsight.com/resources/blog/cloud/networking-services-compared-aws-vs-azure-vs-google-cloud)
- [osmanys/az900-training](https://github.com/osmanys/az900-training)