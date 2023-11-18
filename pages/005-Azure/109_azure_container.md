
# Container Services 

> <small>This is not an exhaustive documentation of all the existing Azure Services. These are summarized notes for the Azure Certifications.<br>To see the complete documentation, please go to: [Azure documentation](https://learn.microsoft.com/en-us/azure/?product=popular)</small>


- [Overview](#overview)
    - [Containers](#containers)
    - [Kubernetes](#kubernetes)
- [Azure Kubernetes Service AKS](#azure-kubernetes-service-aks)
- [Resources](#resources)




## Overview 

### Containers 

Containers provide a lightweight and efficient way to package and deploy applications.

- Containers are a preferred method for building, testing, and deploying applications.
- They encapsulate an application and its dependencies, excluding the operating system.

**Challenges in Containerized Deployments**

- **Single Container Limitation:** Running a single instance of a container is usually insufficient for production applications.

- **Microservices Architecture:** Modern applications adopt a microservices architecture, dividing applications into separate containers.

**Container Orchestrator**
- Manage multiple containers, ensuring scalability, high availability, and efficient deployment.

### Kubernetes

Kubernetes is a container orchestrator that addresses the challenges of managing multiple containers in production. 
- Open-source container orchestrator.
- Manages clusters of virtual machines running containers.
- Key components: Nodes, Pods, Control Plane.

**Kubernetes Features**

- **Scalability:**
  - Easily scale the number of containers to meet demand.

- **High Availability:**
  - Ensures applications are available and responsive, even in the face of failures.

- **Microservices Support:**
  - Supports the deployment of applications as microservices in separate containers.

**Kubernetes Components**

- **Nodes:**
  - Virtual machines in the cluster, each capable of running one or more pods.

- **Pods:**
  - Basic deployment unit, containing one or more containers.

- **Control Plane:**
  - Manages nodes and pods, ensuring desired state and handling orchestration.

<small>[Back to the top](#container-services)</small>

## Azure Kubernetes Service (AKS)

Azure Kubernetes Service or AKS is Microsoft's managed Kubernetes service in Azure.

- Simplifies Kubernetes cluster creation, configuration, and management.
- Easier installation and configuration compared to manual Kubernetes setup.
- Integration with Azure services for enhanced capabilities.
- Simplifies the deployment and management of containerized applications.

You can create an AKS cluster using:

- Azure CLI
- Azure PowerShell
- Azure portal
- Template-driven deployment options, like Azure Resource Manager templates, Bicep, and Terraform.

**Important links**

- AKS Roadmap: http://aka.ms/aks/roadmap
- AKS hybrid deployment options: https://aka.ms/aks-hybrid
- AKS Release Notes: https://aka.ms/aks/releasenotes
- AKS Preview Features: https://aka.ms/aks/preview-features
- AKS Public Community Channel: https://twitter.com/theakscommunity
- Updates about the service, including new features and new Azure regions: AKS feed in Azure Updates

<small>[Back to the top](#container-services)</small>




## Resources 

- [Learning About Azure](https://cloudacademy.com/learning-paths/learning-about-azure-5663/)