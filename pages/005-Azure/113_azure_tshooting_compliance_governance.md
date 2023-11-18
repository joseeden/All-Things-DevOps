# Azure Troubleshooting, Governance, and Compliance

Azure provides various tools and services for troubleshooting, governance, and ensuring compliance. Here's an overview of key concepts:

- [Platform Logs](#platform-logs)
- [Resource Locks](#resource-locks)
- [Azure Policy Service](#azure-policy-service)
- [Trust Center and Service Trust Portal](#trust-center-and-service-trust-portal)
- [Azure Government and Azure China](#azure-government-and-azure-china)


## Platform Logs
- **Resource Logs:** (formerly diagnostic logs) Record information about activities within an Azure resource (e.g., database access).
- **Activity Logs:** Provide subscription-level details about external activities on resources (e.g., shutting down a database).
- **Azure Active Directory Logs:** Capture activities related to Azure Active Directory, such as logins and user additions.

## Resource Locks

- **Types:** 
    - Delete lock (prevents deletion) 
    - Read-only lock (prevents modification and deletion).
- **Hierarchy:** Locks can be applied at the resource, resource group, or subscription level.
- **Inheritance:** Most restrictive lock takes precedence; administrators must remove locks to delete resources.

## Azure Policy Service

- **Governance Policies:** Enforce governance policies using Azure Policy.
- **Example:** Create policies ensuring data storage services like SQL Database instances are only created in specified regions.
- **Initiatives:** Group related policies into initiatives for easier management and assignment.
- **Management Groups:** Organize subscriptions into management groups to inherit policies.

## Trust Center and Service Trust Portal

- **Trust Center:** Collection of resources on how Microsoft handles security, privacy, compliance, and transparency.
- **Service Trust Portal:** Focused on compliance, provides audit reports for standards like SOC, FedRAMP, and ISO27001.
- **Compliance Manager:** Tool to assess and track compliance efforts, helpful for achieving and maintaining compliance.

## Azure Government and Azure China

- **Azure Government:** Physically isolated data centers and networks for US government agencies at federal, state, and local levels.
- **Azure China:** Physically separated Azure instance operated by 21Vianet for customers in China.

These tools and services play a crucial role in ensuring security, compliance, and effective management of Azure resources. Utilizing them allows organizations to troubleshoot issues, enforce governance policies, and maintain a compliant and secure environment. 

Additional resources for trust, compliance, and eligibility for specialized instances are available through:

- [Microsoft Trust Center](https://microsoft.com/trust-center)
- [Service Trust Portal](https://servicetrust.microsoft.com/)



## Resources 

- [Learning About Azure](https://cloudacademy.com/learning-paths/learning-about-azure-5663/)
