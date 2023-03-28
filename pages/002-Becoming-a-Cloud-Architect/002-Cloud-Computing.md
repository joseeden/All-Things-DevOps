
# Cloud Computing



- [What it is](#what-it-is)
- [Under the Hood](#under-the-hood)
    - [Virtualization](#virtualization)
    - [Hypervisor](#hypervisor)
- [Cloud Resources](#cloud-resources)
    - [Instances](#instances)
    - [Storage](#storage)
    - [Database](#database)
- [Key Cloud Concepts](#key-cloud-concepts)
    - [On-demand resourcing](#on-demand-resourcing)
    - [Scalability](#scalability)
    - [Economy of scale](#economy-of-scale)
    - [Flexibility and elasticity](#flexibility-and-elasticity)
    - [Growth](#growth)
    - [Utility-based metering - "Pay for what you use"](#utility-based-metering---pay-for-what-you-use)
    - [Highly available](#highly-available)
    - [Security](#security)


## What it is 

**Cloud computing** is a rapidly growing technology, and the adoption of this is a key strategy for many organizations, and there is a very good reason behind this. 

It's changing the landscape of how many companies operate on a huge scale, with significant business and technical advantages and benefits that can't be ignored. 

**Simplifying it**
Cloud computing is a remote virtual pool of on-demand shared resources offering to compute, storage, database and network services that can be rapidly deployed at scale. 

## Under the Hood
Before fully understanding cloud computing, we must also be aware of some existing technology that it's based upon, that being, *virtualization*, and this is being used in on-premise data centers for a long time. 

### Virtualization
In essence, it allows the possibility of having multiple virtual machines, VM's, each running essentially a separate operating system and applications, all installed on one physical server. 

These VM's all run at the same time without being aware of each other's existence while sharing the underlying hardware resources. This sharing of hardware resources is a key element of understanding of virtualization and is achieved through a hypervisor. 

### Hypervisor
A hypervisor is a piece of software you use to create the virtualized environment, allowing for multiple VM's to be installed on the same host. When installed, the hypervisor sits logically between the physical server hardware and the virtual machines and creates a shared pool of virtual hardware resources for each of them to access. All VM's installed on the host see the hardware as they normally would. 

However, any request to the hardware goes via the hypervisor, which then handles that access ensuring the hardware resources are shared between all other VM's as needed and as configured. 

Benefits of virtualization:

- reduced capital expenditure
- ability to provision multiple VM's on a single host
- less hardware is required, reduced operating cost
- less space, power, cooling required within your data center
- footprint also reduces within your data center as less space is required to house your server hardware. 

This optimization of resources when in a cloud environment means everyone can benefit from virtualization, from the cloud vendor to the consumer. 

## Cloud Resources 

### Instances
A VM within the public cloud is sometimes referred to as an instance, this term is very vendor specific but it refers to the same object as a virtual machine. 

When discussing resources within cloud computing, it won't be long before you come across the terms such as compute, storage, database and network resources. 

**Instances as Compute objects**

Compute objects provide the brains to process your workload. Including what's required to process a run request from applications and services. 

As a comparison, if you think of hardware devices with CPU's and RAM, typically servers and how they work in a classic, on-premises environment, compute resources in a cloud, are comparable to these. 

### Storage
Storage resources simply allow you to save and store your data. Any resource that allows you to save your data in the cloud, is classed as a storage resource. 

Again as a comparison, in the typical environment these will be seen a:

- server hard disks
- network-attached storage, which provides file-level shed storage over the network, 
- high-speed storage area network (SAN) which is block-level storage accessed over a high-speed network. 


### Database
Database resources allow you to store structured sets of data used by your applications. Again as a comparison, databases are widely used in Data Centers with some common database engine types being:

- SQL Server
- Oracle
- MySQL

Within the Cloud, there are a wide variety of database engines available for different use cases. Network resources provide the connectivity allowing all other resources, compute, storage, and database, to communicate with each other. 

In a typical environment, you would find hardware, such as routers to route traffic between network switches, which provide the backbone of network connectivity allowing the host to talk to one another and firewalls to allow or deny traffic into the environment. 

## Key Cloud Concepts

Cloud computing has a number of key characteristics that allow it to be the powerful service that is it today, and it's a good idea to have an understanding and awareness of these and what they offer

### On-demand resourcing

This essentially means that when you want to provision a resource within the cloud, it's almost immediately available to you to allocate where and when you need it. No more waiting around for hardware to be ordered, installed, cabled, and configured before using it. 

### Scalability

Cloud computing offers you the ability to rapidly scale your environment's resources both up and down and in and out, depending on your requirements and demands of your application and services. 

- When scaling up and down, you effectively alter the power and performance of an instance, perhaps using one with a greater CPU or memory power. 

- When scaling in and out, you are simply adding or removing the number of instances you're using to your fleet of compute resources. 

This offers a significant advantage compared to on-premise solutions, from a cost-perspective alone. 

### Economy of scale

Due to the huge scale of resources public cloud offerings provide, which are optimized and shared between different organizations, thanks to virtualization technology, you as the end user benefit from exceptionally low resource costs compared to traditional hosting. 

### Flexibility and elasticity

Cloud computing offers huge flexibility and elasticity to your design approach. You can choose to have as many or as few resources as you require. You decide how much and how long you want it for, and at what scale. 

The amount of choice you have allows you to fully customize exactly how you want and need your environment, using only the resources required. 

### Growth

Cloud computing offers your organization the ability to grow using a wide range of resources and services. Couple with the on-demand element, and your growth constraints are significantly reduced compared to a classic on-premises environment. 

This growth also includes the ability to reach global customers with ease, by provisioning resources across the cloud vendor's global network. 

### Utility-based metering - "Pay for what you use"

With many cloud services, you only pay for what you use. What do I mean by this? If you only have an instance running for two hours, and then shut it down, then you only pay for two hours worth of compute resources, and that's it. 

Think of it like this. In your house, you only pay for your electricity when you use it, and to help keep costs down, you turn off the lights when you're not using them. 

So it's the same billing process for many resources and services. You only pay for resources when you are using them. Shared infrastructure. 

As a recap, hosts within the cloud are virtualized. As a result, multiple tenants can be running instances on the same piece of hardware. This significantly reduces the amount of physical hardware required, which in turn reduces the amount of power, cooling, and space required in the data center. And in turn, helps with the economy of scale, all resulting in cheaper costs to you as the customer. 

### Highly available

By design, many of the core services within the public cloud and its underlying infrastructure are replicated across different geographic zones and regions. Having data copied to multiple different places automatically, helps you to ensure the durability and availability of your data and services, without even having to configure and architect for this resilience. It's provided by the vendor as a part of their service. 

### Security

This is one of the most discussed topics within cloud computing, and many enterprises still have concerns over how secure it is. However, public cloud vendors such as AWS and Microsoft Azure are considered to be more secure than your own data center. 

This is down to the fact that they have to adhere to global compliance programs across multiple industries and by applying the shared responsibility model. 

The vendor will operate to an exceptionally high standard of security for the underlying infrastructure of the cloud, and it's down to you, the end user, to then architect security in the cloud, using the tools, services and applications available. 



