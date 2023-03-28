
# Notes from the DevOps Handbook 

- [Common Myths about DevOps](#common-myths-about-devops)
- [Technical Debts](#technical-debts)
- [Breaking Down Technical Debts with DevOps](#breaking-down-technical-debts-with-devops)
- [DevOps as the Collaboration of Different Ideas](#devops-as-the-collaboration-of-different-ideas)
    - [The Lean Movement](#the-lean-movement)
    - [The Agile Manifesto](#the-agile-manifesto)
    - [The Agile Infrastructure and Velocity Movement](#the-agile-infrastructure-and-velocity-movement)
    - [The Continuous Delivery Movement](#the-continuous-delivery-movement)
    - [Toyota Kata](#toyota-kata)
- [Resources](#resources)



## Common Myths about DevOps 

- **DevOps is only for startups**    
Various organizations, regardless of whether they are a new-comer or an already established titan in the tech industry, have been able to transform their architecture, technical practices, and culture that create amazing outcomes that  we associate with DevOps.

- **DevOps replaces Agile**   
DevOps principles and practices are compatible with Agile, with many observing that DevOps as a logical continuation of the Agile journey. The goal is to have our code in an "always deployable state" at the end of each iteration. 

- **DevOps is incompatible with ITIL**   
Many areas of the ITIL processes becomes fully automated to solve problems associated with configuration and release management processes. Because DevOps require fast detection and recovery when incidents occur, the ITIL disciplines of service design, incident, and problem management remain as relevant as ever.

- **DevOps is incompatible with Information and Security Compliance**   
Instead of security and compliance activities being performed at the end of the project, controls need to be integrated into every stage of daily work in the software development cycle, resulting ina better quality, security, and compliance outcomes.

- **DevOps means eliminating Operations, or "NoOps"**   
IT Operations collaborate far earlier in the software lifecycle with Development, who continues to work with IT Operations long after the code has been deployed into production. IT Operations become more engage in product development, where the product is the platform that developers use to safely, quickly, and securely test, deploy, and run their IT services in production.

- **DevOps is just "Infrastructure-as-Code" or Automation**   
Beside Automation, DevOps requires cultural norms and an architecturethat allows for shared goals to be achieved throughout the IT value stream. 

- **DevOps is only for Open-source Software**   
Achieving DevOps outcomes is independent of the technology being used. Successes have been achieved with applications built using LAMP stack, and applications written in proprietary ones.


## Technical Debts

Technical debt describes how decisions we make lead to problems that get increasingly more difficult to fix overtime, continually reducing our available options in the future - even when talen on judiciously, we still incur interest.

- **"Fixing the mess when time permits"**    
Many of the problems that teams faced are due to applications, and infrastructure that are complex, poorly documented, and incredibly fragile. This is the first technical debt and daily workarounds that we live with constantly, always promising that we'll fix the mess when we have a little more time. But that time never comes. 

- **"Committing to deliver upon a new promise"**   
Development is always tasked with another urgent project that inevitably requires solving new technical challenges and coming up with workarounds to meet the promised release date, further adding to existing technical debt - made, of course, with the promise that we'll fix any resulting problems when we have a little more time.

- **Everybody gets busier, work queues get a little longer**  
Our work becomes more tightly-coupled, smaller actions cause bigger failures, and we become more fearful and less tolerant of making changes. Deployments become more unstable resulting to increasing the pile of things that require more heroics and firefighting, which in turn takes up more time which could have been used for paying down technical debt.

## Breaking Down Technical Debts with DevOps

Incorporating DevOps into traditional development lifecycle entails a few changes which at first glance, sounds simple enough, but when applied, will require quite an adjustment to the practice that the developers have been accustomed to:

- Deploying code in the middle of the workday ensures we have fast feedback loops, which then allows everyone to see the effects of the code changes.

- Fast automated tests needs to be run in production-like environment whenever changes are committed to version control.

- By having automated testing, mistakes are discovered faster, which in turn trigger a faster response time for learning the root cause, and providing a fix.

- Similar to automated tests, pervasive telemetery in all environments also ensure problems are detected and corrected quickly 

- Instead of firefighting for days or weeks to make a new functionaluity work, we can merely change a feature toggle or configuration setting

- When something does go wrong, we can conduct *blameless postmortem*, not to unish anyone, but to better understand what caused the accident and how to prevent it.

Instead of accruing technical debt, problems are found and fixed early, when they are smaller, cheaper, and easier to correct. With every fix, we also generate organizational learnings which enables us to prevent the problem from recurring and at the same time, enables us to detect and correct similar problems faster in the future.

In this world, everyone has ownership in their work, regardless of their role in the technology organization.

## DevOps as the Collaboration of Different Ideas 

Devps is the outcome of applying the most trusted principles from the domain of physical manufacturing and leadership to the IT value stream. DevOps relies on bodies of knowledge gathered from different organizations and draws inspiration from a few relevant movements.

- [The Lean Movement](https://hbr.org/2013/05/why-the-lean-start-up-changes-everything) 
- [The Agile Manifesto](https://agilemanifesto.org/history.html)
- [The Agile Infrastructure and Velocity Movement](https://www.mckinsey.com/capabilities/mckinsey-digital/our-insights/transforming-it-infrastructure-organizations-using-agile) 
- [The Continuous Delivery Movement](https://continuousdelivery.com/) 
- [Toyota Kata](https://www.methodsandtools.com/archive/toyotakata.php)


### The Lean Movement

The Lean Movement is a management approach that originated in manufacturing and is based on the principles developed by Toyota in the 1940s and 1950s, with the goal of improving efficiency, reducing waste, and enhancing value for customers.

- **Elimination of waste**   
Lean emphasizes identifying and eliminating waste in all forms, including:
    - excess inventory
    - overproduction
    - waiting
    - defects
    - over-processing
    - unnecessary motion
    - unused talent.
    
- **Continuous improvement**   
Lean promotes continuous improvement through the ongoing identification and elimination of inefficiencies, with a focus on small, incremental changes.

- **Respect for people**  
Lean values the contributions of every employee and encourages a culture of mutual respect, teamwork, and collaboration.

- **Value creation**   
Lean emphasizes creating value for customers through the delivery of high-quality products and services that meet their needs and exceed their expectations.

- **Pull-based production** 
Lean adopts a pull-based approach to production, where production is initiated only when a customer order is received, rather than producing based on forecasts or assumptions.

### The Agile Manifesto

The Agile Manifesto is a set of guiding values and principles for software development that was created in 2001. It emphasizes a customer-focused, iterative approach to software development, with a focus on delivering working software quickly and responding to change in a flexible and adaptive manner.

- **Individuals and interactions**   
Agile prioritizes individuals and interactions over processes and tools, emphasizing the importance of collaboration, communication, and teamwork.

- **Working software**   
Agile values working software over comprehensive documentation, recognizing that delivering a functional product that meets the customer's needs is more important than exhaustive documentation.

- **Customer collaboration**   
Agile promotes customer collaboration throughout the development process, emphasizing the importance of frequent feedback, iteration, and continuous improvement.

- **Responding to change**    
Agile values the ability to respond to change over following a plan, recognizing that changing requirements and evolving circumstances are a natural part of software development.

- **Embracing uncertainty**   
Agile embraces uncertainty and complexity, acknowledging that software development is an inherently unpredictable and complex process that requires adaptive, flexible approaches.

### The Agile Infrastructure and Velocity Movement

The Agile Infrastructure and Velocity Movement is an extension of the Agile Manifesto that focuses on applying Agile principles to IT infrastructure and operations. The movement emphasizes the use of automation and collaboration to deliver infrastructure services and support at a faster pace, with greater reliability and efficiency.

- **Infrastructure as code**  
Agile infrastructure emphasizes the use of code and automation to manage and provision infrastructure, enabling greater speed, efficiency, and consistency.

- **Collaboration and communication**   
Agile infrastructure values collaboration and communication across teams and departments, with a focus on breaking down silos and promoting cross-functional collaboration.

- **Continuous delivery**   
Agile infrastructure promotes continuous delivery, enabling teams to deliver value to customers faster and more frequently by automating the delivery pipeline.

- **Velocity measurement**  
Agile infrastructure emphasizes the measurement and optimization of velocity, with a focus on identifying and eliminating bottlenecks and inefficiencies to accelerate delivery and improve quality.

- **Resilience and scalability**  
Agile infrastructure emphasizes the importance of resilience and scalability, with a focus on designing systems that can adapt to changing demands and withstand unexpected failures.


### The Continuous Delivery Movement

Continuous delivery refers to the ability to get all changes - such as new features, code changes, bug fixes, experiments - into production, safely and quickly in a sustainable way 

- **Continuous integration**   
Continuous Delivery emphasizes the importance of continuous integration of code changes, ensuring that code is tested and integrated into the main codebase as quickly as possible.

- **Automated testing**   
Continuous Delivery promotes automated testing at every stage of the development and deployment pipeline, enabling rapid feedback and catching errors early.

- **Deployment automation**  
Continuous Delivery emphasizes the use of deployment automation tools to streamline the deployment process and reduce the risk of errors.

- **Continuous feedback**  
Continuous Delivery values continuous feedback from customers and stakeholders, enabling teams to iterate and improve products and services quickly.

- **Collaborative culture**   
Continuous Delivery emphasizes collaboration and communication across teams and departments, enabling a culture of continuous improvement and innovation.

### Toyota Kata 

Toyota Kata is a management methodology designed to help organizations develop a culture of continuous improvement. The term "**kata**" refers to a Japanese martial arts concept of training movements until they become automatic, reflexive responses. The Toyota Kata methodology emphasizes a scientific approach to problem-solving and improvement, with a focus on continuous experimentation and learning.

- **Continuous improvement**  
The methodology emphasizes the importance of continuous improvement as a core principle of the organization.

- **Scientific thinking**    
The approach is grounded in scientific thinking and emphasizes the use of experimentation and data-driven decision-making.

- **Coaching and mentoring**  
The methodology promotes the use of coaching and mentoring to develop problem-solving skills and improve performance.

- **Rapid learning cycles**   
The approach emphasizes the use of rapid learning cycles to test and iterate solutions quickly.

- **Continuous improvement culture**   
The methodology aims to create a culture of continuous improvement throughout the organization, where everyone is empowered to identify and solve problems.

The Toyota Kata process can best be summarized in four steps:

- Understand our desired direction 
- Grasp our current condition 
- Set the next challenge on the desired path 
- Run small experiments towards the unknown




















## Resources 

- [The DevOps Handbook: How to Create World-Class Agility, Reliability, and Security in Technology Organizations](https://www.amazon.com/DevOps-Handbook-World-Class-Reliability-Organizations/dp/1942788002)

- [The DevOps Handbook Companion Guide](https://resources.stackoverflow.co/topic/thought-leadership/devops-handbook-companion-guide/)