
# Cloud Native 

- [What is Cloud Native](#what-is-cloud-native)
- [Decoupled Applications](#decoupled-applications)
- [Serverless Computing](#serverless-computing)
- [Scalability](#scalability)
- [Microservices](#microservices)
- [Twelve-Factor App](#twelve-factor-app)
- [Standards in Cloud Native](#standards-in-cloud-native)
- [Cloud Native Computing Foundation](#cloud-native-computing-foundation)
- [Resources](#resources)


## What is Cloud Native

Cloud Native is a solution which allows organizations to run scalable applications in the Cloud. Technologies being used include:

- **Containers** - runnable packages containing all needed elements to run in any environment
- **Scalable Applications** - applications that can grow as needed
- **Microservices** - distributed applications consisting of different components
- **Service Meshes** - implements traffic between the services and applications
- **Immutable Infrastructure** - ensures change is only done through Infrastructure as Code (IaC)
- **Declarative APIs** - used to push the desired state to the system 
- **Change Management** - make high-impact changes frequently and predictably with minimal effort

## Decoupled Applications 

In cloud native environments, applications are decoupled so that each applications have no direct relations with the underlying servers. Decoupled applications are also generic and have no site-specific information.

## Serverless Computing 

"Serverless" means that the developers doesn't have to worry about the infrastructure. The cloud providers can take care of the underlying resource and all the developers need to do is to provide the code.

Cloud providers also provides serverless computing through what is known as **Functions as a Service (FaaS)**. In this deployment model, developers just needs to deliver the software package in the right format to run their application in the cloud.

An add-on that is mostly used with serverless computing is **Knative**.

## Scalability

Scalability refers to the option to increase capacity when needed. Cloud applications can be scaled manually or automatically. This ensures that the applications are resiient and highly available.

- Horizontal scaling means increasing the number of underlying instances
- Vertical scaling means increasing the hardware resources in compute instances

In order to perform automated scaling, the system has to meet a few requirements:

- Measuring of resources 
- Gather performance metrics to trigger the scaling
- Minimum and maximum requirements should be defined

## Microservices 

Cloud-native applications are microservices-oriented which means the application is offered as different components that are independently developed.

- Makes it easier to develop the application
- Components can be updated independently 
- These components are then integrated together

To ensure that applications are suited for cloud-native environments, we often refer to the 12-factor application model.

## Twelve-Factor App 

The 12-factor app is a software development methodology for building applications that:

- use declarative formats 
- offer maximum portability
- suitable for deployments on cloud platforms
- allows for easy scaling of applications

The 12 Factoes are:

1. **Codebase**
One codebase that is tracked in version code.

    - Git
    - declarative code
    - Dockerfile

2. **Dependencies**
Explicitly declare and isolate dependencies.

    - Kubernetes probes
    - Init containers

3. **Config**
Configuration needs to be stored in the environment.

    - ConfigMap
    - Secrets 

4. **Backing Services**
Treat backing services as attached resources.

    - Service resources 
    - Pluggable networking

5. **Build, release, run**
Strictly separate build and run stages.

    - CI/CD
    - S2I 
    - Git branches 
    - Helm 

6. **Processes**
Execute the app as one or more stateless processes.

    - Microservices
    - Linux Kernel namespaces 


7. **Port Binding**
Export services via port binding.

    - Kubernetes Services
    - Routes 

8. **Concurrency**
Scale out via the process model.

    - Kubernetes ReplicaSets 

9. **Disposability**
Maximize robustness with fast startup and graceful shutdown.

    - Kubernetes probes

10. **Dev/prod Parity**
Keep development, staging, and production as similar as possible.

    - Containers

11. **Logs**
Treat logs as event streams. Logs are stored in the orchestration layer.

    - SIEM for Log collection

12. **Admin Proceses**
Run management tasks as one-off processes.

    - Ansible playbooks 
    - Kubernetes jobs 


## Standards in Cloud Native 

Open standards are used in cloud native computing to ensure interoperability between the applications. Most of the standards are based **open source** which allows anyone to participate in developing the resulting software and prevents vendor lock-in.

- Containers have become the standard for packaging applications.
- Container formats are standardized by the **Open Containers Initiative (OCI)**

Some important specifications defined by OCI:

- Image spec defines how to build and package container iamges 
- Runtime spec defines how to run containers
- Distribution spec defines the distribution of content, including container images

Beside the OCI, there are also other standards:

- **Container Networking Interface (CNI)** specifies how to implement networking for containers
- **Container Runtime Interface (CRI)** defines how to implement container runtimes in orchestration systems
- **Container Storage Interface (CSI)** defines how to implement storage in container orchestration systems
- **Service Mesh Interface** describes how to implement service mesh in orchestrated systems.


## Cloud Native Computing Foundation

Cloud Native Computing Foundation (CNCF) is a Linux Foundation project which hosts different projects relevant for cloud native. The project undergoes three different phases:

- **Sandboxed**
    - Early-stage projects
    - Adopted because ti offers unrealized potential
    - Sandbox projects receive minimal funding
    - Subject for removal every twelve months

- **Incubated** 
    - Sandboxed projects can be incubated if it shows growth and maturity
    - Incubating projects are in production used by at least three companies
    - Worked on by a development team that approves regular contributions from the community

- **Graduated**
    - Voted by the Technical Oversight Committee (TOC) to have reached graduation.
    - These are incubated projects which have shown thriving adoption
    - They have committers from at least two organizations
    - Governance processes are documented and structured
    - They meet the Linux Foundation best practices

As mentioned, the CNCF has a **Technical Oversight Committee** which is a central role.

- Approves new projects 
- Defines common practices 
- Maintains the technical vision
- Practices the **Minimal Viable Governance (MVG)**

The Minimal Viable Governance means that the CNCF projects are self-governing and community owned projects. The guidelines on how to implement governance is provided by the CNCF.


## Resources 

- [Kubernetes and Cloud Native Associate (KCNA)](https://learning.oreilly.com/videos/kubernetes-and-cloud/9780137993413/)

- [The Twelve-Factor App](https://12factor.net/)

- [Cloud Native Computing Foundation](https://www.cncf.io/)
