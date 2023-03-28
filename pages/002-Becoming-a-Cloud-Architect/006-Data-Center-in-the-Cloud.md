
# Data Center Architecture in the Cloud


- [Datacenters](#datacenters)
- [Location](#location)
- [Physical Security](#physical-security)
- [Mechanical and Electrical](#mechanical-and-electrical)
- [Network Infrastructure](#network-infrastructure)
- [Servers](#servers)
- [Storage](#storage)


## Datacenters

The datacenter as a whole and its architecture can be logically broken down as follows:

- **Location**. where it's geographically located. 

- **Physical Security**, both External and Internal. 

- **Mechanical and Electrical Infrastructure** such as generators, UPS and fire suppression. 

- **Network Infrastructure**, including Switches, Routers and Firewalls. 

- **Servers**, such as Application Director and Database servers. Storage. 

## Location

Depending on the size of your enterprise, you may only have one office and as a result, you house all of your infrastructure on site. However, many organizations probably have multiple datacenters to help with resilience and availability. 

Public cloud providers do the same. They will have regions all over the globe. And with each of these regions, they will have at least two datacenters. These datacenters will be in a different geographic location within that region. 

But close enough to provide high speed interconnectivity between them for data transfer in addition to assisting with high availability and resilience. 

## Physical Security

The Public cloud is operated, managed and maintained by the vendor. As a result, the end user has no access to the physical datacenter where the resources are located. It is the vendors responsibility to ensure it is implementing and achieving the correct certification and governance regarding security. 

Public cloud vendors adhere to the most stringent of security controls, and for audit purposes, you can access our accreditation and compliance certifications online if required to do so. 

For more on security and compliance of leading public cloud vendors, check out the following links:

- https://aws.amazon.com/compliance/

- https://www.microsoft.com/en-us/trust-center/compliance/compliance-overview

## Mechanical and Electrical

Mechanical and Electrical Infrastructure include:

- Generators
- UPS systems
- Computer Room
- Air conditioning units for cooling
- Fire suppression

All of thiese is situated at the datacenter itself. As a result, the same rule applies. It is the vendors responsibility to ensure they are implementing the correct capacity, resiliency and testing to ensure availability and uptime of their infrastructure. 

So again, this burden is removed from the end user. Where roles and responsibilities begin to change between vendor and the customer is from this point onwards. 

## Network Infrastructure

Network Infrastructure can be quite an extensive list of equipment. Networking operates at software level, there are no options to install a switch or router.  

But what is important is this, to a degree, you can do the following:

- implement controls, services and configurations 
- simulate the same effects as what networking devices provide
- create a virtual network, which can be segmented into different IP address ranges 
- create subnets which allows todeploy compute storage and other network resources as required

These virtual networks are usually simple to set up requiring just a few small details before it's created. 

- AWS refers to this as Virtual Private Clouds or VPCs 
- Microsoft Azure refers to these as Azure Virtual Network or VNet. 

From here you can create different network segments both public facing and private. Routing and Access Control List for security can also be configured dynamically for enhanced control and once you have created your logical virtual network, and of course different geographic regions.

You can also provision your instances within these different subnets. So networking components such as switches, routers and even firewalls have been replaced with virtual networks and their configurable components. 

The backend element of how these services work is again maintained and managed by the vendor. But architecting how your virtual network is created is your responsibility and your responsibility to ensure it secure and not let vulnerable to attacks. 

## Servers

Depending on your vendor, servers are typically referred to as **instances** or **virtual machines** VMs. But as there are different servers within the typical datacenter, vendors provide different services to affect them in the cloud. 

For example, providers offer servers that are specific to hosting databases, and others focused on heavy processing power that is needed to process big data. 

This is part of the benefit of the cloud. The vendors are capable of replicating the functions that you use with your in house datacenter but with a lot more advantages. 

## Storage

Storage is often regarded as unlimited, hugely scalable and highly durable. As with compute power, there are different storage services depending on what sort of data you're using and where you intend to use it. Within your datacenter environment, you may have access to a Storage Area Network or SAN. 

Public cloud providers can also provide block level storage too by their services. AWS offers the Elastic Block Store EBS service. Which offers persistent block level storage, and can we detach from one instance and re-attached to another instance again all configured and deployed within a few clicks. 

There are other great storage services within the public cloud that cater for file level storage and object storage too. And between the leading public cloud vendors, AWS and Azure, they host a myriad of storage services to cater to different solutions. 

For more information on these storage services, please see the following links.

- https://aws.amazon.com/products/storage/

- https://azure.microsoft.com/en-us/services/storage/

