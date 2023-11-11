


# Strategy Considerations 

- [The Project Plan and Time Management](#the-project-plan-and-time-management)
- [The Importance of Security](#the-importance-of-security)
- [Selecting a Cloud Vendor](#selecting-a-cloud-vendor)
- [Selecting a Cloud Deployment Model](#selecting-a-cloud-deployment-model)
- [Are your services ready to move to the Cloud?](#are-your-services-ready-to-move-to-the-cloud)
- [Alignment of Services](#alignment-of-services)
- [New Design for an effective Cloud Computing Migration Plan](#new-design-for-an-effective-cloud-computing-migration-plan)
- [Migration and Deployment Options](#migration-and-deployment-options)
- [Optimization and Cost Management](#optimization-and-cost-management)
- [Business Continuity in Cloud Environment](#business-continuity-in-cloud-environment)


## The Project Plan and Time Management 

Ensure that the project time frame allows for testing, phased implementations, and different deployment methods.

**Realistic Time Frame**

- Set a realistic time frame for Cloud migration within your project plan.
- Verify the alignment with the project manager's plan.
- Time frame should accomodate testing, phased implementations, and various deployment methods.

**Defined Time Frame Benefits**

- Facilitates commitment from teams at different phases of implementation.
- Assists in evaluating project success from a project management perspective.
- Identifies milestones crucial for measuring success and maintaining focus.

**Key Milestones in Strategy Plan**

- Identify key milestones in your strategy plan, such as deploying initial cloud resources.
- Maintains focus, measures success, and supports a methodical phased migration.
- Communicate milestones to engage and gain buy-in from the entire organization.

**Phased Approach**

- Adopt a phased approach for effective timing management.
- Allow sufficient time between phases to assess and learn from issues.
- Communicate lessons learned to mitigate problems in subsequent phases.

**Testing at Each Phase**

- Conduct full testing after each phase to identify and address problems quickly.
- Test configurations and architecture to pinpoint potential issues.

**Security Configuration**

- Allocate time to configure the correct level of security for your architecture.
- Collaborate with security and compliance officers to determine governance and legislative controls.
- Implement appropriate security measures to protect data.

**Handling Failures**

- Acknowledge that failures will occur during migration.
- Allocate time to address problems as they arise.
- Failure to estimate timings and conduct adequate testing can lead to increased risks and mistakes.

**Avoiding Shortcuts**

- Emphasize the importance of avoiding shortcuts, especially in security implementations.
- Shortcuts can have devastating effects on the success of the implementation for both you and your customers.


## The Importance of Security

Emphasizes the critical role of security in the cloud migration strategy plan.

**Security Layers**

- Consider applying security to multiple layers (network, user, application, service, etc.).
- Enhances protection against intruders, preventing deeper penetration into the environment.
- Evaluate security configurations for each layer to prevent unauthorized access.

**Access Control**

- Identify who or what needs access to services, applications, and data.
- Allows fine-grain control, explicitly denying unauthorized access.
- Define access methods, considering additional security like multi-factor authentication for power users.

**Permission Levels**

- Define required permissions for users or resources.
- Restrict access to the minimum needed, reducing the potential for unauthorized breaches.

**Resource Interaction and Ports**

- Specify necessary ports when resources communicate.
- Avoid opening access to all TCP ports when only specific ports are required.

**Data Encryption**

- Determine if data needs encryption at rest and in transit.
- Consider security compliance reasons and apply the correct level of encryption.

**Encryption Management**

- Decide whether to manage encryption methods and keys internally or rely on the cloud vendor.
- Consider cloud vendor services for encryption management.

**Logging and Monitoring**

- Enable logging for services to monitor and analyze activity.
- Identify consistent attackers and block specific requests within security controls.

**Shared Responsibility Model**

- Security responsibility is shared between the user and the vendor.
- Vendor manages cloud and global architecture security.
Users must architect and be responsible for security within the cloud.

**Adherence to Data Laws**

- Consider data laws and governance controls.
- Ensure infrastructure adheres to governance controls related to data requirements.
- Impact on environment architecture and data storage location within the cloud.

**Internal Information Security Management System Document**

- Refer to the internal information security management system document.
- Contains controls and policies dictating security requirements within the organization.
- Identifies risks, data protection controls, encryption methods, and password requirements.

## Selecting a Cloud Vendor

When it comes to selecting a public cloud vendor, there are a wide array to choose from, and your decision will typically depend on what you are intending to migrate. 

**Determine Cloud Usage**

- Identify specific needs for cloud usage.
- Consider architecture requirements, e.g., network extension or dedicated cloud storage.
- Market leaders can suit even small migrations due to their comprehensive offerings.

**Data Center Security**

- Evaluate the security levels of vendor data centers.
- Ensure adherence to stringent security controls and governance programs.
- Recognize the global presence of major public cloud leaders, providing enhanced security.

**Service Range Evaluation**

- Assess the range of services offered by the cloud vendor.
- Consider immediate usability and future usefulness.
- Understand services to guide future business decisions post-migration success.

**Workload Management and Data Retention** 

- Ensure the cloud provider can handle workload and meet data - retention requirements.
- Evaluate if the provider supports specific operating systems needed for your applications.

**Interface and Interaction** 

- Assess the vendor's interface for interacting with services and - applications.
- Consider API functionality for deployment, especially important for development.
- Evaluate the user-friendliness of the GUI console for various skill sets supporting the cloud.

**Vendor Selection Analysis**

- Analyze cloud offerings from multiple vendors.
- Explore past experiences, recommendations, and services at different vendors.
- Consider a multi-vendor configuration for resilience and the best fit for business objectives.

**Pricing Understanding** 

- Understand the pricing for all elements related to the services of - interest.
- Consider deployment location, data transfer, and service demand.
- Gain insight into various pricing structures to determine overall cost.

**Support and Vendor Relations**

- Determine the level of support provided by the vendor.
- Investigate past system failures and vendor responses.
- Understand support availability and resolution times for potential issues.
- Assess how vendors handle mistakes, implement changes, and mitigate recurring issues.

## Selecting a Cloud Deployment Model

Understand the available cloud deployment models and asses which one fits your requirement.

**Public Cloud**

- Vendor-provided shared infrastructure (compute, storage, network) accessed over the internet.
- Provisioned on demand, backend maintenance handled by the vendor.
- Suitable for global access with internet connectivity.

**Private Cloud**

- Onsite infrastructure, managed and owned by the organization.
- Direct control over data, tighter security controls.
- Utilizes virtualization, shared resources, scalability, and on-demand provisioning.
Requires capital expenditure for hardware, data center, and additional operational costs.

**Hybrid Cloud**

- Combines both public and private clouds.
- Network link configures a logical internal network extension.
- Benefits from both models, often used for testing, development, or transitional purposes.

**Community Cloud**

- Designed for multiple organizations with common architectural needs.
- Shared tendencies of public clouds with added security and compliance.
- Hosted onsite by a community member or managed by a third-party service provider.

**Choosing Deployment Models**

- Evaluate specific needs for each service.
- Ask key questions for decision-making.

**Key Questions for Decision-Making**

- How sensitive is the data you are moving to the cloud?
- Are there any data retention requirements?
- Who will be accessing your service and data?
- How much will it cost to implement?
- How quickly will you need to scale your infrastructure?
- What sort of resilience do you require for the service?
- How do you intend to manage your infrastructure and what access do you require?
- Are you bound by specific SLAs for your service currently?
- What performance is required for your migrated services?
- How much data will you be storing?

**Data Sensitivity**

- Consider sensitivity and compliance.
- Public cloud for non-sensitive data.
- Private cloud for sensitive data with hybrid cloud capabilities.

**Data Retention Requirements**

- Compliance with legislation for data retention.
- Public cloud's unlimited storage beneficial.
- Automation for data management and backups.

**Accessing Services Globally**

- Consider customer locations for latency.
- Public cloud's global presence advantageous.
- Hybrid cloud for localized access with global reach.

**Cost Implementation**

- Analyze CAPEX and OPEX ratios.
- Public cloud requires no CAPEX but increased OPEX.
- Private and hybrid clouds involve CAPEX for hardware.

**Scaling Infrastructure Speed**

- Public cloud for rapid scaling.
- Hybrid cloud for occasional bursts.
- 
**Resilience and Management**

- Evaluate criticality of data and services.
- Public cloud's global infrastructure and built-in management.
- Private cloud for specific resilience needs.

**Physical Management Requirements**

- Determine need for physical access.
- Private cloud for direct access.
- Other models for third-party management.

**Service Level Agreements (SLAs)**

- Align cloud vendor's SLAs with current parameters.
- Consider impact on customers and mitigation strategies.
- 
**Performance Requirements**

- Assess specific performance needs.
- Ensure chosen model meets required performance levels.
- 
**Data Storage**

- Consider the volume of data.
- Private cloud's increased cost for larger data.
- Public cloud's almost limitless storage with data transfer considerations.

## Are your services ready to move to the Cloud?

Assess the cloud readiness of your applications by identifying the target services and evaluating if they are cloud-ready.


**Understanding Cloud-Readiness**

- Cloud-ready applications are de-coupled, freeing subsets (part A) from dependencies on others (part B).
- De-coupling enhances flexibility, scalability, and reliability, allowing independent scaling based on demand, throughput, and response times.
- Loose de-coupling minimizes the impact of one part's failure on others, contributing to overall application reliability.

**Advantages of De-coupled Applications**

- Flexibility for growth within the Cloud.
- Optimization and scaling capabilities.
- Better reliability, with individual parts not adversely affecting others.

**Lift and Shift vs. Architectural Flexibility**

- While a non-de-coupled application can still function with a lift-and-shift approach, architecting for flexibility, optimization, and scaling is recommended.

**Performance Considerations in the Cloud**

- Assess how the service and application perform in a Cloud-hosted environment, especially when accessed over the internet.
- Evaluate if the application can maintain desired performance levels for a positive customer experience.
- Stress testing within a Cloud test environment can reveal potential issues and allow for performance monitoring against on-premise baselines.

**Compatibility Challenges**

- Legacy applications relying on outdated operating systems or databases may face compatibility issues.
- Cloud vendors typically offer the latest software, necessitating re-architecture of legacy systems to align with modern technology.
- Re-architecting enables utilization of new features and security services, potentially enhancing application performance.

**Addressing External Dependencies**

- Be mindful of external dependencies, such as third-party services performing data formatting.
- Consider how these processes will work in the Cloud migration.
- Analyze alternative Cloud services that could potentially provide the same external dependencies.

**Mitigating Risks through Testing**

- Conduct testing within a test environment on the chosen Cloud provider.
- Stress test the application to identify and mitigate risks related to performance, compatibility, and external dependencies.
- Monitor the application's performance against existing on-premise baselines during testing.

**Proactive Re-architecture for Enhanced Performance**

- Proactively re-architect legacy systems to align with modern technology standards.
- Leverage new features and security services to improve application performance.
- Address compatibility challenges and ensure optimal functioning within the Cloud environment.

**Comprehensive Analysis for Successful Migration**

- A holistic analysis covering de-coupling, performance, compatibility, and external dependencies is crucial for a successful Cloud migration.
- Prioritize flexibility, scalability, and reliability to harness the full potential of Cloud services.


## Alignment of Services

Understanding what services to utilize to achieve that migration is key to your success. 

**Strategic Utilization of Cloud Services**

- Understanding the specific services to facilitate cloud migration is crucial for success.
- A dedicated cloud architect, especially for public cloud deployments, can play a key role in architecting the migration.

**Categorizing Services for Migration**

- Begin by categorizing services earmarked for cloud migration.
- Break down services into core infrastructure components to identify the elements that need migration.

**Example of Categorization**

- Consider a website migration, breaking down the high-level design into components like DNS, load balancers, web servers, application servers, databases, storage, caching, and monitoring.

**Mapping Infrastructure Components to Cloud Services**

- Once the basic architecture needs are identified, map them to the corresponding services offered by the chosen cloud vendor.
- For instance, using AWS for the website migration, map infrastructure components to AWS services.

**Expanded Cloud Service Offerings**

- Recognize that cloud services extend beyond basic infrastructure components.
- Cloud architects can leverage additional cloud benefits to enhance flexibility and optimize cloud computing.

**Building Flexibility and Benefits in the Cloud**

- The cloud provides opportunities beyond basic infrastructure, allowing architects to introduce flexibility and leverage various benefits.
- Examples of additional cloud benefits are showcased, offering a glimpse of the possibilities.

**Key Considerations for Successful Mapping**

- Ensure a meticulous breakdown of current solutions based on infrastructure components.
- Methodically map these components to the services offered by the selected cloud vendor.

**Introduction of Additional Cloud Benefits**

- Once core services are identified, explore and introduce supplementary cloud benefits provided by the chosen vendor.
- This strategic approach enhances the overall advantages and adaptability of the cloud migration.

**Strategic Integration for Enhanced Capabilities**

- Integrate identified cloud services strategically to enhance capabilities.
- Leverage the full spectrum of services offered by the cloud vendor for comprehensive and efficient migration.

**Continuous Alignment with Cloud Offerings**

- Maintain an ongoing alignment between your infrastructure breakdown and the evolving services offered by the selected cloud vendor.
- Continuously explore and integrate new features and services for optimal cloud utilization.

**Maximizing Cloud Potential**

- Utilize the cloud's full potential by aligning your infrastructure needs with the expansive range of services provided by the chosen cloud vendor.
- Regularly reassess and adapt your strategy to leverage emerging technologies and advancements in cloud offerings.

## New Design for an effective Cloud Computing Migration Plan

Migrating to the cloud gives you a great opportunity to fix a lot of old legacy mis-configurations and badly built environments that properly exist within your current infrastructure. 

**Avoiding a Simple Lift and Shift Approach**

- Despite the temptation for speed, refrain from a basic lift and shift from on-premise to the cloud with the intention to make changes later.
- In reality, delaying modifications may result in maintaining the status quo and missing out on the full benefits of cloud computing.

**Recommendation for Re-Architecting Solutions**

- Once core migration services are identified, it's advisable to re-architect solutions to maximize cloud benefits.
- Explore provider best practices for each deployment and enhance security measures at every stage for a more secure environment.

**Incorporating High Availability and Resilience**

- Build high availability and resilience into the design, leveraging self-healing capabilities and features like auto scaling and load balancing.
- Design architecture for flexibility, allowing rapid adjustments to workload conditions and thresholds.

**Scalability and Elasticity in Design**

- Design for scalability to provide elasticity, enabling flexible growth and contraction based on solution demands.
- Consider scaling both in/out and up/down for different components, ensuring a cost-effective environment that meets customer demands.

**Designing with Failure in Mind**

- Design applications and services with failure in mind, eliminating shortcuts made in on-premise environments.
- Invest time in creating a stable, efficient, scalable, and flexible solution during the migration process.

**Microservices for Large Applications**

- For large applications, consider breaking down functionality into microservices for enhanced decoupling.
- Microservices facilitate independent scaling, allowing the selection of the right technology for each service and optimizing performance.

**Utilizing Cloud Resiliency Benefits**

- Leverage cloud resiliency benefits by running services in multiple locations to mitigate disasters.
- Take advantage of built-in resiliency options offered by cloud vendors and supplement with additional manual resilience as needed.

**Harnessing Monitoring Services**

- Utilize monitoring services provided by cloud vendors to maintain and manage the environment effectively.
- Establish monitoring thresholds to detect potential issues in their early stages and ensure a stable and operational service.

**Embracing Change and Learning from Mistakes**

- View cloud migration as an opportunity for change and improvement.
- Learn from past mistakes in on-premise solutions and avoid replicating them in the cloud, recognizing the need for a different design perspective.

**Efficiency and Dynamic Implementations**

- Understand that the cloud operates differently from on-premise solutions and should be approached with a focus on efficiency and dynamic implementations.
- Grasp these changes to deploy successful cloud solutions tailored to the unique characteristics of cloud environments.

## Migration and Deployment Options 

When migrating and deploying services to the cloud, or even creating new workloads from within the cloud itself, there are a few deployment options to choose from.


**Blue/Green Deployments**

- Involves two environments:
    - "blue" (current on-premise infrastructure) and 
    - "green" (replicating on-premise service in the cloud).
- After satisfactory testing, the green configuration replaces the existing blue service through a DNS change or load balancer adjustment.
- Immediate switch to the new solution, and easy rollback to the blue environment in case of issues.

**Weighted Deployment**

- Utilizes DNS services like Route 53 in AWS for gradual traffic redirection.
- Assigns weightings to environments (e.g., 8 for on-premise, 2 for cloud) to redirect a portion of traffic for analysis.
- Allows analysis of the new environment with a low impact on users, adjusting the weighting as needed.

**Canary Deployment**

- Similar to weighted deployment but involves issuing a new release to a small percentage of the fleet.
- Tests real workloads and demands on a small scale before gradually rolling out the release to the entire fleet.
- Minimizes impact in case of issues by initially affecting only a small portion of infrastructure.

**Migration of Virtualized Servers**

- Some providers offer tools to migrate existing virtualized servers from on-premise to the cloud.
- Saves time compared to recreating instances from scratch, particularly for virtualized servers with existing configurations.

**Application Deployment Services**

- Cloud vendors offer various services for application deployments.
- Developers and deployment teams should be aware of automation, continuous integration, and delivery methods provided by these services.

**Data and Application Migration Considerations**

- Define the approach for moving data and applications into the cloud.
- Consider methods such as blue/green deployments, weighted deployments, canary deployments, and migration of virtualized servers.

**Data Transfer into the Cloud**

- Consider the security of data transfer, especially for confidential or large datasets.
- Cloud vendors provide options like self-management through portals, APIs, or internet connections, or using high-bandwidth direct connections for quicker transfers.

**Disk Shipping Services for Large Data Sets**

- For terabytes or petabytes of data, disk shipping services are efficient.
- Data is loaded onto physical disks from on-premise and shipped to the vendor's data center for import into the cloud.
- Offers enhanced security features, including encryption protocols.

**Encryption for Data Transfer**

- Apply appropriate encryption levels for sensitive data during transfer over the internet, VPN, or direct cloud connections.
- Consider encryption for data at rest as well.

**Synchronization and Replication**

- Assess bandwidth requirements for synchronization and replication between cloud and on-premise services.
- Choose between asynchronous and synchronous replication based on bandwidth capacity; synchronous requires higher bandwidth.


## Optimization and Cost Management

If you do not fully understand how to manage and operate your Cloud infrastructure, you could soon see your costs spiraling above and beyond what you intitally thought.


**Utilize Online Cost Calculators**

- AWS and Azure offer cost calculators to estimate Cloud service costs.
- Helps in planning and presenting financial information to senior management.
- Enables better understanding and realistic planning of Cloud spend budget.

**Define Budgets for Fine-Grained Control**

- Split budgets between resources or services for more control.
- Some areas may fluctuate based on demand, while others maintain a constant spend.

**Set Up Billing Alerts**

- Use billing alerts provided by Cloud platforms to receive notifications when monthly spend reaches certain thresholds.
- Acts as an early warning system for potential unexpected costs and allows adjustment of resources to manage monthly expenditure.

**Analyze Billing Reports**

- Review billing reports to identify areas of significant spend.
- Optimize existing infrastructure based on spending patterns.
- Consider payment plans like reserved instances to reduce costs for compute resources.

**Right Size Your Infrastructure**

- Continuously review fleet instances for performance and adjust sizes accordingly.
- Downsize infrastructure based on performance metrics and consider reserved instances to reduce costs.

**Understand Storage Services**

- Gain a sound understanding of different storage services for optimization.
- Choose storage based on speed, read/write performance, durability, and retention requirements.
- Be aware of the correct storage service for specific data needs, such as high-speed access or archival storage.

**Explore 3rd Party Vendors and Tools**

- Partner with 3rd party vendors specializing in identifying low-utilized and redundant resources.
- Cloud vendors offer tools like AWS Trusted Advisor for optimizing infrastructure.
- Implement and use these services from the beginning to save costs in the long run.

**Optimize Data Storage**

- Understand different storage mediums and services offered by Cloud vendors.
- Optimize data storage based on price, durability, and retention perspective.
- Some storage services are designed for speed, while others are suitable for archiving backups.

**Implement Cost Management Toolsets**

- Leverage tools provided by Cloud vendors and third parties for cost management.
- Services like AWS Trusted Advisor can monitor and suggest cost improvements based on various metrics.
- Implementation of these services from the start can lead to significant cost savings over time.

## Business Continuity in Cloud Environment

Consider the changes to any business continuity or disaster recovery plans your organization has. 

**Cloud Resilience and Disaster Recovery**

- Cloud provides a robust platform for building resiliency into business operations.
- Essential to have policies and procedures for recovering from disasters, whether natural or system-related.
- Cloud adoption enhances recovery plans and minimizes data loss.

**Traditional Disaster Recovery (Pre-Cloud)**

- Prior to cloud adoption, off-site premises and backups were used to recover key production systems.
- Cloud adoption changes the recovery landscape, making services hosted in the cloud unaffected by disasters on-premise.

**High Availability and Resilience in Cloud**

- Cloud allows deployment of highly available and resilient applications.
- Architect critical systems with failure in mind.
- Geographic redundancy ensures continuous operation even in the case of a data center outage.

**AWS Disaster Recovery Whitepaper Models**

- AWS offers models for disaster recovery, including backup and restore, pilot light, warm standby, and multi-site.
- Each model has different Recovery Time Objective (RTO) and Recovery Point Objective (RPO).

**RTO and RPO Definitions**

- RTO (Recovery Time Objective) - Maximum time a service can remain unavailable without causing damage to the business.**
- RPO (Recovery Point Objective) - Maximum time for which data could be lost for a service.**

**Backup and Restore Model**

- Cloud stores backups of on-premise architecture in highly durable and cost-effective storage.
- Enables rapid access to backups in case of a disaster.
- Restoration dependent on internet connection speed.

**Pilot Light Model**

- Requires minimum computing and database instances to operate core services separately.
- Core services replicate data from the production environment.
- Quick resumption of core services in case of a disaster, followed by scaling out to support the entire environment.

**Warm Standby Model**

- Extension of the pilot light method with a fully functional system and increased fleet size.
- Reduces RTO compared to the pilot light.
- Can be used as a testing environment and quickly scales up to full production demand.

**Multi-Site Model**

- Replicates on-premise services within the cloud or replicates existing cloud architecture to another cloud region.
- Full replication of infrastructure for quick recovery.
- Offers the quickest RTO and RPO among the discussed methods.



















