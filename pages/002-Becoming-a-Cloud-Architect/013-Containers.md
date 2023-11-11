
# Containers 

This is a quick summary on containers.
To see more of the actual labs, check out this Github repo that's entirely dedicated to containers: [joseeden/All-Things-Docker-and-Kubernetes](https://github.com/joseeden/All-Things-Docker-and-Kubernetes)

- [What are Containers?](#what-are-containers)
- [Why Use Containers?](#why-use-containers)
- [How to Containerize an App](#how-to-containerize-an-app)
- [Microservices](#microservices)
- [Container Orchestration](#container-orchestration)
- [Container Security](#container-security)
- [Container Logging and Monitoring](#container-logging-and-monitoring)
- [Container Systems and OSs](#container-systems-and-oss)


## What are Containers?

Containers offer an efficient means to run multiple computers on a single machine, each with different operating system software. 

- Leverage the Linux operating system's kernel, allowing multiple containers to share the core OS, thereby optimizing resource usage 
- To ensure isolation, the Linux kernel includes safety features that prevent containers from affecting each other or the host computer.
- Containers are integrated at the kernel level, allowing them to run any software independently, akin to running in their own VM.
- Docker is a notable container software, simplifying the definition, management, and utilization of Linux containers through text documents.
- Docker builds images in layers, enhancing efficiency. For instance, an Ubuntu image is layered with additional software installations, creating a new image at each step.
- Containers can be networked to communicate with each other, allowing the creation of a larger system composed of interconnected containers. Networking arrangements may vary based on the system.

**Running Containers on Different Operating Systems**

- Linux: Ideal for containers, providing native support and efficient performance.
- Mac or Windows: Docker allows running Linux containers on Mac or Windows by starting a lightweight Linux VM.
- Windows Containers: Windows integrates containers into its operating system, enabling the execution of Windows software in containers.
- Mac OS: Currently, Mac OS does not support containers, and there's no significant demand for it in server environments.
- Other Operating Systems: Some container systems exist for BSD, but they are less commonly used commercially.


## Why Use Containers?

Containers offer more than just slightly faster run times than virtual machines (VMs). While speed is a benefit, the true advantages of containers extend to streamlining development and operational tasks, enhancing testing, facilitating DevOps practices, and enabling continuous deployment. The key benefits of containers include:

Fast Testing:

- Containers can be rapidly built and spun up.
- Code inside a container runs consistently across different computers.
- Quick creation of containers for testing code changes upon each check-in.
- Eliminates the need for developers to manage dependencies on their local machines, ensuring consistency between development and production environments.
- Enables a quick feedback loop, leading to better code quality.

Enhanced Collaboration:

- Simplifies sharing and testing of code among developers.
- Open-source projects can include Dockerfiles in their repositories, allowing anyone to easily set up and test the code.

DevOps Automation:

- Supports DevOps processes with close collaboration between development and IT teams.
- Containers are immutable, making upgrades straightforward.
- Streamlines continuous deployment by building new container images with updated code and pushing them to the cluster.
- Automation-friendly design of container systems, particularly Docker, facilitates integration into continuous integration and continuous deployment (CI/CD) processes.

Scalability:

- Orchestration software automates scaling based on traffic volume.
- Efficiently manages resources by spinning up or down containers as needed.
- Particularly beneficial for microservices-based applications, providing detailed control over individual components.

Efficient Transition:

- Ensures a seamless transition during updates, as old containers are gradually phased out.
- Users experience uninterrupted service during the transition.

Ease of Management:

- Automated Docker processes ease deployment, testing, and production management.
- Simplifies scaling based on traffic demands.

Containerizing an application involves some learning and workflow adjustments, but the benefits include improved code quality, increased organizational feedback, and streamlined deployment and management.

## How to Containerize an App

Containerizing an application involves more than creating a Dockerfile to run the entire app in a container. To harness the full benefits of containers, it's recommended to adopt a microservices 
architecture. Here are key concepts and considerations:


**Microservices Architecture**

- Containerized apps work best when composed of independent microservices.
- Microservices are self-contained pieces of an app, potentially written in different languages and with different dependencies.
- Each microservice communicates through APIs, enabling flexibility and independence.

**Data Persistence and Stateless Containers**

- Containers are ephemeral and should not store persistent data.
- Data, especially user-related data, must be stored in external volumes, separate from containers.
- Containers should be stateless, ensuring that the app remains functional even if individual containers go down.

**Horizontal Scaling and Statelessness**

- Design the app to scale horizontally by spinning up more instances of heavily loaded services.
- Statelessness ensures seamless user experience, allowing containers to go up or down without affecting users.
- Users' states should be stored externally, enabling smooth transitions between containers.

**Immutability**

- Containers should be immutable, meaning updates are done by spinning up new containers with new code rather than modifying existing ones.
- Immutability aligns with the ephemeral nature of containers and encourages a seamless deployment process.

**12-Factor Application Framework**

- Follow the 12-Factor Application Framework, a set of principles guiding the development of containerized microservices.
- The framework covers various aspects, such as logging, exposing microservices, maintaining statelessness, and more.
- Aim for adherence to these factors to ensure a well-architected and scalable application.

**Process Changes and 12-Factor Apps**

- Implementing containerization involves both technical adjustments and process changes.
- The 12-Factor App framework provides guidance on building robust and scalable containerized applications.
- Embrace the suggested principles for improved containerized app development.

While this overview provides a starting point, the intricacies of containerizing an app involve technical transformations and shifts in development processes. Adopting these practices positions the team to reap the rewards of scalability, improved efficiency, and streamlined development processes. 

For more detailed guidance, explore the 12-Factor Application Framework and other resources specific to containerized app development.

## Microservices

Continuing from the previous explanation, the 12-Factor App principles provide a guideline for architecting microservices with containers Here's a detailed breakdown of each factor:

**Codebase**

- Maintain a single codebase tracked in revision control for multiple deployments.
- Leverage version control systems like Git, GitHub, or other code-hosting platforms.
- Implement frequent automated testing.

**Dependencies**

- Explicitly declare and isolate dependencies.
- Use tools like Docker Compose to define and manage dependencies in containers.

**Config**

- Store configuration in the environment.
- Keep environment-specific configurations, like logins and IPs, outside the codebase.
- Utilize Docker files or compose files to store configuration.

**Backing Services**

- Treat backing services (databases, microservices, etc.) as attached resources.
- Access services via URL and credentials, treating them uniformly regardless of location.

**Build, Release, Run**

- Strictly separate build, release, and run stages.
- Streamline starting and stopping apps by separating the build process (handled by the development team), release process, and run process.

**Processes**

- Execute the app as one or more stateless processes.
- Design containers to be stateless, storing user state externally for seamless transitions between containers.

**Port Binding**

- Export services via port binding.
- Expose services as URLs, creating APIs for interaction with other services.

**Concurrency**

- Scale out via the process model.
- Scale by adding more servers or services, avoiding adding more resources to a single server.

**Disposability**

- Maximize robustness with fast startup and graceful shutdown.
- Design services for containers to handle frequent spin-ups and spin-downs without affecting the system.

**Development/Production Parity**

- Keep development, staging, and production environments as similar as possible.
- Containers simplify achieving parity across different machines.

**Logs**

- Treat logs as event streams.
- Utilize modern container monitoring tools for efficient log capture.

**Admin Processes**

- Run admin and management tasks as one-off processes.
- Design systems to allow developers to perform admin tasks without compromising the overall system.

It's crucial to note that not everything should be containerized, particularly stateful elements. Stateful components and databases should be stored on mounted volumes, and necessary data should never be stored directly in containers. Additionally, for applications with specific security requirements, even containers might not provide sufficient security guarantees.

Following these principles and understanding the intricacies of containerization within the context of the 12-Factor App can greatly enhance the efficiency, scalability, and maintainability of microservices-based applications.

## Container Orchestration

Orchestration in the realm of containers involves managing a large set of containers, including horizontal scaling, and is crucial for reaping the benefits of containerization. 

- Automates the process of managing individual containers across virtual environments. 
- Achieved by defining the app's structure in an abstract way using YAML or JSON 

There are two main types of orchestration tools those for on-premises deployment and management, and cloud-based services. Notable on-premises orchestration tools include:

**Kubernetes**

- Developed by Google, it's one of the oldest and most popular orchestration tools.
- Originally designed for Google's internal pre-Docker container technology.
- Works with a master node paradigm, managing clusters with a master server and multiple node servers.

**Mesosphere Marathon**

- Part of Mesosphere, considered a data center operating system with Mesos as its kernel.
- Marathon specifically handles container orchestration within the Mesosphere environment.
- Used by large companies like eBay, Verizon, and Twitter.

**Docker Swarm**

- Integrated directly into Docker's engine, with Swarm mode in the Docker 1.12 release.
- Previously a standalone product, the new Swarm is lightweight and easy to use.
- Follows a decentralized orchestration system where each node manages itself and its traffic.

Cloud platforms also offer container orchestration, either using existing on-prem tools or providing their interfaces. Some examples include:

**AWS EC2 Container Service (ECS)**
 
- Manages a cluster of EC2 instances with Docker running on top.
- Uses common AWS tools like Elastic Load Balancer and IAM.
 
**Azure Container Service (ACS)**

- Provided by Microsoft Azure, offering container orchestration.
 
**Google Container Engine (GKE)**

- Part of Google Cloud, utilizes Kubernetes for container hosting and management.
 
**Docker Cloud**

- Docker's cloud container service, built from the ground-up for containers.
- Uses Docker Swarm for managing hosted applications and provides other Docker-specific functionalities.

These orchestration tools enable efficient management of containerized applications, and while the orchestration ecosystem is still evolving with new tools emerging, these examples illustrate the current landscape.

## Container Security


Using containers in production does introduce specific security considerations, and it's crucial to address these concerns to ensure a robust and secure environment. Here are some container-specific security considerations and best practices.


**Container Security vs. VM Security**

- Containers are generally considered less secure than virtual machines. VMs have a hypervisor layer that acts as a barrier between the VM and the host machine, providing an additional layer of security. Containers, however, share the host machine's kernel, making them more susceptible to potential security breaches.

**Running Containers Inside VMs**

- If security is a top priority, you can run containers inside VMs. This approach combines the operational benefits of containers with the security benefits of VMs. AWS container services, for example, often involve running containers inside EC2 instances, which are VMs on AWS's physical servers.

**Security Best Practices**

- Regardless of how containers are deployed, follow security best practices.
- Only run verified images to prevent attackers from injecting their images into the system.
- Use an image registry for your company, allowing you to build, share, track, and run images securely.
- Docker Content Trust, implemented by image registries like Docker Hub, allows you to sign images and specify which images are allowed to run on your system.
- Leverage security scanning tools (e.g., Atomic Scan, Docker Security Scanning) to identify and address vulnerabilities in images.

**Principle of Least Privilege**

- Follow the principle of least privilege when creating container images.
- Implement read-only file systems for containers, limiting an attacker's ability to write to the underlying system.
- Limit resources for each container to prevent hijacking for malicious purposes.
- Avoid running container processes as the root user to minimize potential risks.

**Runtime Threat Detection**

- Implement runtime threat detection systems such as Aqua Security and Red Hat OpenShift.
- These systems establish a baseline for normal system behavior and alert or take action if any unusual activity or traffic is detected.
- Setting up rules within these systems allows for immediate response to potential security threats.

**Continuous Integration and Testing**

- Integrate security scanning tools and best practices into your continuous integration and testing processes.
- Automate security checks to ensure that images meet security standards before deployment.

**Consideration for High-Risk Applications**

- For highly sensitive applications (e.g., healthcare data) with strict security requirements, assess whether containers are the right choice.
- Evaluate the risk level and specific security needs of the application before deciding on the containerization approach.

While containers may not be the most secure system, implementing these practices can significantly enhance the security of containerized environments for the majority of applications. 

Regularly updating and patching containers, staying informed about security best practices, and leveraging security tools contribute to a more resilient containerized infrastructure.

## Container Logging and Monitoring


Monitoring your containerized applications is a crucial aspect of ensuring their health and performance. Here are some tools and approaches for container system monitoring.

**Built-in Monitoring in Orchestration Systems**

- Orchestration systems like Kubernetes and Docker Swarm often include built-in monitoring features. For example, Kubernetes has the Heapster project, which aggregates monitoring data from various sources. These systems monitor container health, resource usage, and more.

**cAdvisor (Container Advisor)**

- cAdvisor is an open-source tool that provides visualizations of container statistics. It works with any Docker system and offers graphical representations of runtime, CPU and memory usage, and other container-related metrics. cAdvisor is particularly useful for gaining insights into the performance of individual Docker containers.

**InfluxDB**

- InfluxDB is a time-series database that can be used to store and query container-related data. It provides a graphical interface for monitoring data loads, read and write rates, and other metrics. InfluxDB can be integrated into your monitoring stack to complement other tools.

**Third-Party Cloud Monitoring Services**

- Services like Data Dog offer comprehensive cloud-based monitoring solutions. By instructing Docker to send information to Data Dog through its API, you can visualize and analyze data in real-time. Data Dog allows you to create custom dashboards and set up alerts based on specific conditions, ensuring proactive responses to potential issues.

**Prometheus**

- Prometheus is an open-source monitoring and alerting toolkit designed for reliability and scalability. It is particularly well-suited for monitoring containerized applications. Prometheus collects metrics from configured targets, stores them, and makes them available for querying and alerting.

**Sysdig**

- Sysdig provides container intelligence solutions for monitoring, security, and troubleshooting. It offers real-time visibility into containerized applications, helping to diagnose issues, secure deployments, and optimize performance.

**Logging with the ELK Stack (Elasticsearch, Logstash, Kibana)**

- For monitoring what's happening inside containers, it's essential to export logs from each service. The ELK Stack, consisting of Elasticsearch, Logstash, and Kibana, is a powerful solution for centralized logging. You can integrate logging directly into your app, and these logs can be sent to systems like New Relic, where you can create custom dashboards and gain insights into application behavior.

**New Relic**

- New Relic is a cloud-based monitoring and analytics platform that supports containerized applications. It allows you to collect and analyze logs, set up alerts, and create custom dashboards for monitoring the performance and health of your containers.

**Alerting and Notifications**

- Many monitoring tools, including Data Dog and Prometheus, provide alerting features. Set up alerts for specific conditions, such as resource constraints or abnormal container behavior, and configure notifications through channels like email, Slack, or other communication tools.

By combining container-specific monitoring tools with well-established solutions for logging and analytics, you can create a robust monitoring strategy for your containerized applications, ensuring optimal performance and quick response to potential issues.


## Container Systems and OSs

Containerization technologies have expanded beyond the well-known Docker and Linux containers. Here's a brief overview of different containerization systems and how they operate:

**Docker**

- Type: Linux Containers (LXC/LXD)
- Description: Docker popularized containerization and is built on top of Linux containers. It uses Linux kernel features like cgroups and namespaces. Docker provides a user-friendly interface for defining, building, managing, and running containers. Docker images and containers adhere to the principles of stateless, single-process applications.

**LXC (Linux Containers)**

- Type: Linux Containers (LXC/LXD)
- Description: LXC is a set of tools that use Linux kernel features to provide lightweight containerization. While not as user-friendly as Docker, LXC offers more manual control over the containerization process. It is often used for more complex scenarios and is not focused on stateless, single-process applications.

**Rocket (rkt)**

- Type: Linux Containers (LXC/LXD)
- Description: Developed by CoreOS, Rocket is an alternative to Docker. It focuses on security and cloud-based containerization. Like Docker, it utilizes the Linux container tools but provides a different approach to container management. It is part of the Open Container Initiative (OCI).

**Open Container Initiative (OCI)**

- Type: Linux Containers (LXC/LXD)
- Description: OCI is an industry-wide initiative that defines standards for container formats and runtimes. It aims to ensure compatibility and interoperability between different containerization systems. Docker and Rocket adhere to OCI standards, making their workflows similar.

**runC**

- Type: Linux Containers (LXC/LXD)
- Description: Maintained by the Open Container Initiative, runC is a lightweight and unopinionated container runtime. It can be used independently or as part of Docker and other OCI-compliant container systems. runC provides a standard for running containers based on OCI specifications.

**BSD Jails**

- Type: Hybrid (BSD)
- Description: BSD Jails are a containerization feature in BSD operating systems. They combine aspects of both virtual machines and containers. Jails run at a deep system level, similar to containers, but utilize virtualization for enhanced security. However, BSD is less commonly used in commercial environments compared to Linux.

**Windows Containers**

- Type: Windows Containers
- Description: Windows Containers come in two types: Windows Server Containers and Hyper-V Containers. They share a kernel with the host Windows Server but remain otherwise separate processes. Hyper-V Containers add an extra layer of isolation through a highly optimized virtual machine. Docker supports both types of Windows containers, allowing users to define, build, manage, and run them using the familiar Docker workflow.

**macOS**

- Type: Not Supported
- Description: macOS, built on the BSD kernel called Darwin, does not support native containerization features like jails. While containers can be run on macOS, the OS itself cannot be run inside a container. The market demand for macOS containers is limited as macOS is primarily a consumer-oriented operating system.

Containerization continues to evolve, and the choice of a containerization system often depends on specific use cases, preferences, and platform requirements. 

Docker remains a popular choice due to its user-friendly approach and widespread adoption. The emergence of standards like OCI further promotes compatibility across different containerization systems