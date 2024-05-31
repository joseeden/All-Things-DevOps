
# Automation and Orchestration


- [Automation and Orchestration](#automation-and-orchestration)
    - [SOAR](#soar)
    - [Playbooks and Runbooks](#playbooks-and-runbooks)
- [When to Automate and Orchestrate](#when-to-automate-and-orchestrate)
    - [Complexity](#complexity)
    - [Cost](#cost)
    - [Single Points of Failure](#single-points-of-failure)
    - [Technical Debt](#technical-debt)
    - [Ongoing Supportability](#ongoing-supportability)
- [Automating Tasks](#automating-tasks)
    - [Support Tickets](#support-tickets)
    - [Onboarding](#onboarding)
    - [Security](#security)
    - [Application Development](#application-development)
- [Integrations and APIs](#integrations-and-apis)
    - [REST](#rest)
    - [SOAP](#soap)
    - [Key Differences](#key-differences)
    - [Use Cases](#use-cases)


## Automation and Orchestration

**Automation** refers  to automatic execution of tasks without manual involvement, typically achieved using specialized software or scripts.

- Allow repetitive tasks to be performed consistently and efficiently.
- Reducing the chances of human error, freeing up time for more complex tasks.

**Orchestration** refers to coordination of automated tasks for a specific outcome or workflow. 

- Ensuring various processes work together smoothly and in correct order.
- Dependencies between processes are managed appropriately. 
- Multiple automated tasks.

### SOAR

**Security Orchestration, Automation, and Response (SOAR)** is a category of security solutions that combine three primary functions: orchestration, automation, and response to streamline security operations and improve incident response capabilities.

- **Orchestration**
  - Integration of various security tools and systems.
  - Coordinating actions across different platforms to streamline workflows.

- **Automation**
  - Automating repetitive and manual security tasks.
  - Reducing response times and freeing up human resources for more complex tasks.

- **Response**
  - Executing predefined actions in response to security incidents.
  - Ensuring swift and effective mitigation of threats.

### Playbooks and Runbooks 

**Playbook** are checklists of actions for specific incident responses.

**Runbooks** are automated versions of playbooks with human interaction points.

## When to Automate and Orchestrate

### Complexity

- Assess complexity and resource commitment needed for the process.
- Automate tasks that are complex and prone to human error.
- Streamline and simplify complex workflows involving multiple systems.

### Cost

- Evaluate the cost of automation against the savings from reduced manual labor.
- Large upfront initial investment to hire developers for implementation.
- Long-term savings and efficiency gains outweigh the initial investment.

### Single Points of Failure

- Reduce reliance on individual systems, minimizing single points of failure.
- Create redundant workflows and ensure continuity in case of system failures.
- Inadequately designed automation can disrupt critical business processes.
- Backup systems or manual processe, to ensure continuity in case of failures.

### Technical Debt

- Reduce the burden of maintaining and operating legacy systems.
- Integrate and enhance the capabilities of older systems without extensive rework.
- Orchestration systems can also accumulate technical debt if not maintained.
- Technical debt is simply cost of poorly implemented software.
- Conduct regular reviews and updates to reduce technical debt.

### Ongoing Supportability

- Choose automation tools that are easy to maintain and update.
- Choose solutions that can scale with the organization’s growth and evolving needs.
- Ensure ongoing support are available for maintaining orchestrated systems.
- Training and skill development is a crucial component.

## Automating Tasks 

### Support Tickets

Automating support tickets streamlines the process of managing and resolving customer inquiries and issues. By leveraging automation, organizations can improve response times, enhance customer satisfaction, and reduce the manual workload on support teams. This approach ensures that tickets are efficiently created, prioritized, and escalated to the appropriate personnel.

**Ticket Creation**

- Automatically create tickets from various input sources, e.g. emails, chatg bots.
- Categorize and tag tickets based on keywords and predefined criteria.
- Assign tickets to the appropriate team or agent based on predefined rules.
- Automated acknowledgment emails, confirming receipt of cusotmer tickets.
- Ensuring all tickets are captured, categorized, and assigned.

**Ticket Escalation**

- Escalation criteria is defined based on issue nature, urgency, and SLA.
- Auto-escalate high-priority tickets based on predefined criteria.
- Send automated notifications to relevant teams when a ticket is escalated.
- Monitor the escalation process to ensure timely resolution.
- Integrate with other systemsto ensure escalated tickets are handled efficiently.

### Onboarding 

Automating the onboarding process of new employees can help:

- Eliminate tedious manual tasks. 
- Reduce likelihood errors. 
- Consistent structured experience for every new employee.

Areas that can be automated:

- **User Provisioning**
  - Ensure new employees have necessary access to systems and applications. 
  - Sample automation process:
    1. Create the user's account.
    2. Assign the account with correct roles and access.
    3. Send out proper notifications and confirmations.
    4. Conduct continuous synchronization and updates.

- **Provisioning Equipment**
  - Automatically generate requests for necessary equipment (e.g., laptops, phones).
  - Track the status of equipment orders and delivery.
  - Sample automation process:
    1. Requirements Analysis 
    2. Resource Allocation 
    3. Configuration and Customization 
    4. Verification and Auditing
    5. Gathering Feedback

Other areas which can be automated:

- **Scheduling Training**
  - Automate the scheduling of training sessions and orientations.
  - Send automated reminders and updates to new employees and trainers.

- **Managing Access Rights**
  - Automate the setup of user accounts and access rights.
  - Ensure new employees have the correct permissions for their role.

- **Distributing Various Checklists**
  - Automatically send onboarding checklists to new employees.
  - Track the completion of onboarding tasks and activities.

- **Collecting Feedback**
  - Automated surveys, to collect feedback on the onboarding process.
  - Analyze feedback to improve future onboarding experiences.

### Security 

Security automation involves the use of technology to handle repetitive security tasks and maintain consistent defenses.

**Guardrails** are automated safety controls to protect against insecure infrastructure configurations.

- Enforce security policies, monitor infrastructure, and act on security violations.
- Alert can be generated and predefined actions can be taken.

**Security Groups** act as cloud-based server firewalls that control incoming and outgoing network traffic.

- Auto-assign instances to security groups with predefined rules.
- Automated traffic analysis ensures compliance with security settings.

**Service Access Management** is a crucial area to prioritize in security automation for risk reduction and operational efficiency.

- Automatic access review 
- Near-instant reaction times through automations. 
- Auto-restrict and disable access until a human analyst can investigate.
- Automatic enabling/disabling of services for security.

**Managing permissions** involves ensuring that individuals  have the correct access level corresponding to the designated role.

- Often done through Role-Based Access Controls (RBAC). 
- Auto-updates user access for onboarding, transfers, and departures.
- Automated compliance checks and adjustments.

### Application Development

Automating application development enhances overall quality of software products being released and deployed. 

**Continuous Integration (CI)** and **Continuous Development (CD)** are practices in software development that emphasize automation and collaboration to improve the speed, quality, and reliability of software delivery. Together, they form a pipeline that integrates code changes and deploys them into production seamlessly and frequently.

- **Continuous Integration (CI)**

    - Automatically run tests on new code changes to catch bugs early.
    - Integrate code changes finto a shared repository several times a day.
    - Auto-compile and build the application every time new code is committed.
    - Provide immediate feedback to developers on the status of their code changes.

- **Continuous Deployment (CD)**

    - Continuous Delivery is a part of the release stage. 
    - In Continuous Delivery, deployment process is automated up to a certain stage.
    - Auto-deploy code changes to production environments after passing all tests.
    - Enable frequent and reliable releases of software to production.
    - Automated rollback mechanisms, revert to previous versions in case of issues.
    - Continuously monitor deployed applications and provide alerts for any issues.
    - Terms to understand:
        - **Release** - Enabling software installation and usage. 
        - **Deployment** - Installing software to a new environment.

## Integrations and APIs 

**Integrations** is the process of combining different subsystems or components into one comprehensive system to ensure that they function properly together.

**Application Programming Interface (APIs)** are are interfaces that allow software applications to communicate with each other.

- Allows your product or service to talk to another product or service. 
- Utilities that developers can use to access functions programmaticaly.
- Communication is done in a controlled environment, using a specific data format. 
- Automate administration, management, and monitoring of various services. 

### REST

REST is an architectural style that uses standard HTTP methods and is designed for stateless communication.

- Uses standard HTTP methods
- Typically employs JSON for data interchange, but can use XML
- Supports operations like GET, POST, PUT, DELETE
- Each request is independent and contains all necessary information
- Easy to scale due to its stateless nature
- Supports caching to enhance performance
- Utilizes intuitive, resource-based URL structure

### SOAP

SOAP is a protocol with strict standards and is designed for exchanging structured information in web services.

- Follows a strict set of rules and structure
- Uses XML for message format and transmission
- Operations are described by WSDL (Web Services Description Language) files
- Can be stateful or stateless
- Offers **more robust security** features like WS-Security
- More complex to implement compared to REST
- Can use various transport protocols including HTTP and SMTP

### Key Differences

REST and SOAP differ in terms of flexibility, complexity, and performance.

- REST is more flexible and simpler; SOAP is more rigid and complex
- REST typically uses JSON; SOAP uses XML
- REST is faster and more efficient; SOAP provides more built-in security
- REST is easier to use and more intuitive for developers

### Use Cases

Different applications are better suited to either REST or SOAP based on their requirements.

- REST is ideal for web services, mobile apps, and cloud services due to its simplicity and performance
- SOAP is suitable for high-security, enterprise-level applications requiring robust security measures


----------------------------------------------

[Back to main page](../../README.md#security)        