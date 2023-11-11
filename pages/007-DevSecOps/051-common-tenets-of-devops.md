# Common Tenets of DevOps 


- [Culture](#culture)
- [Automation](#automation)
- [Metrics](#metrics)


The community around DevOps have coalesced around a set of generally agreed upon tenets that support the philosophy. Three of the most commonly accepted tenets are culture, automation, and measurement. 

<p align=center>
<img src="../../Images/012-common-tenets.png">
</p>  

The essence of DevOps lies in its philosophy of efficiently developing, deploying, and operating top-quality software. The term "DevOps" itself is derived from the fusion of "development" and "operations." Originally, it emerged to dismantle silos, fostering collaboration among engineers to achieve a balance between speed and stability.

<p align=center>
<img src="../../Images/012deopsbreakdownsilos2023.png">
</p>  

DevOps aims to eliminate inefficiencies within the development, deployment, and operations pipeline while emphasizing enhanced quality. Traditional approaches to developing, deploying, and operating software often struggle to adapt to the continual changes inherent in modern software systems. 

The complexity of these systems, with numerous interacting components, increases the likelihood of issues arising when introducing changes, whether in code, configuration, or infrastructure.

<p align=center>
<img src="../../Images/modedevopscomplexhaya.png">
</p>  


The goals of developers and operations are naturally at odds to some degree. 

- It's the developer's job to implement change, and whenever a developer writes changes or removes a line of code, they introduce the potential for any number of problems, including bugs, security holes, and system outages.

- The operations team is responsible for ensuring stability, so every time they're given new code to deploy into a production environment, they risk disrupting that stability. In the past, there was a perception that your development and deployment pipeline could either remain stable or move fast, and these two choices are not mutually exclusive. 

<p align=center>
<img src="../../Images/012-remainsableormovefast.png">
</p>  

For example, companies like Etsy are able to deploy new code into production dozens of times every day, while keeping their site's availability high.

<p align=center>
<img src="../../Images/012-devopscultureonegoal.png">
</p>  

DevOps offers an improved perspective on the development, deployment, and operations pipeline. This is achieved by fostering a collaborative culture and advocating for the automation of tasks where it proves beneficial.

<p align=center>
<img src="../../Images/012-devopsautomationpromoting.png">
</p>  

It also promotes the measurement of as much useful data as possible.

<p align=center>
<img src="../../Images/012-measureallthings.png">
</p>  

User expectations for software are high, demanding uninterrupted availability. Consider a sudden surge in users—could your system handle 10 million new users without immediate intervention or server provisioning chaos?

Quality standards are equally crucial. If customers report data loss due to newly released features, how swiftly can your engineers deploy a fix? How did a noticeable bug make it into production, and what's the timeframe for developing and deploying new features—days, weeks, or months?

The DevOps philosophy addresses these challenges holistically, offering principles to assess and improve the development, deployment, and operations pipeline. This approach identifies constraints impacting efficiency and highlights areas for enhancing quality.

<p align=center>
<img src="../../Images/012-whatdevopsisreallynot.png">
</p>  

DevOps represents an ever-evolving philosophy, offering principles and real-world examples to efficiently develop, deploy, and run high-quality, modern software systems. 

It's essential to remember that DevOps aims to address the challenge of efficiently managing modern software systems. Reiterating this point is crucial because it reinforces the core problem that DevOps seeks to solve

## Culture

In essence, culture refers to the beliefs, values, and behaviors shared by a group or company, encompassing its vision, values, beliefs, and habits. Company culture is deeply ingrained and resistant to change. To align with the DevOps philosophy, cultural shifts are necessary, focusing on essential tenets like automation and measurement.

**DevOps Cultural Values**

- DevOps culture emphasizes automation and measurement as critical values.
- Neglecting automation introduces constraints in the development pipeline, causing unnecessary workload for engineers.
- Inadequate measurement deprives the company of essential data for making informed decisions.

**Silos in Traditional Software Companies**

- Traditional software companies often operate with distinct teams, including development, QA, security, and operations, known as silos.
- These siloed teams pursue individual goals, sometimes conflicting with others, leading to inefficiencies.

**Challenges with Silos**

- Silos create conflicting objectives, hindering the collaboration needed for efficient development and deployment.
- An example illustrates the clash between a development team's goal to deploy new features and a QA team's goal to block critical bugs.

**Cultural Shift Towards Collaboration**

- A DevOps culture advocates breaking down silos in favor of high collaboration.
- Cultural change may discomfort engineers as roles become less rigid, requiring adaptation to collaboration beyond silos.
- Breaking down silos aims to establish a culture of shared responsibility, fostering continuous collaboration among teams.

**Cross-Functional Teams**

- Cross-functional teams, responsible for the entire product life cycle, comprise developers, QA, security, and operations engineers.
- These teams working autonomously on a project aim to enhance product stability, security, and quality.

**Caution with DevOps Teams**

- Some companies attempt to adopt DevOps by introducing a DevOps team, often resulting in another silo.
- Such a siloed structure, even within a DevOps team, can frustrate engineers, limiting their effectiveness due to cultural constraints.

<p align=center>
<img src="../../Images/012-silomodel.png">
</p>  

In the silo model, a blame culture often emerges, leading to finger-pointing when bugs occur in production. This creates friction among teams that should ideally share common goals. DevOps promotes a blameless culture, acknowledging that failures are inevitable, particularly in human-involved processes. Ownership of mistakes is crucial for learning and improving. Blame cultures reduce empathy and create negative work environments.

Instead of blaming, focus on learning from mistakes to prevent future failures. DevOps culture emphasizes collaboration, transparency, and breaking down silos that hinder teamwork. Cultural change may be challenging, but a supportive company culture is essential for DevOps success.

Remember, without cultural support, DevOps is just a buzzword, leaving engineers frustrated.


## Automation 

The definition of automation involves operating or controlling a process with minimal human intervention. 

- Illustrated through the example of manually preparing a complex recipe, highlighting the significance of human error.
- Ensures consistent and error-free execution, particularly in repetitive tasks.
- Addresses challenges related to human distractions and errors.
- Provides scalability, predictability, and improved quality.

**Automation in the Pipeline**

- Continuous Integration (CI):
    - Automates code building and testing after each commit.
    - Ensures the production-quality of code.

- Continuous Delivery (CD):
    - Facilitates push-button deployments.
    - Enables quick and reliable software releases.

- Infrastructure as Code (IaC):
    - Allows engineers to specify and configure infrastructure using code.
    - Promotes consistency and scalability.
    - Utilizes tools like Chef, Ansible, Puppet, and SaltStack.

**Role of Automation in DevOps**

- Offers a solution to constraints in the pipeline.
- Enhances efficiency and maintains quality standards.
- Fundamental aspect of the DevOps philosophy.
- Enables companies to implement tailored practices.
- Supports faster and more reliable software development and deployment.

<p align=center>
<img src="../../Images/012automationisdevopsperiods.png">
</p>  

Operations also will want to automate things like log aggregation and log management. 

- Centralized log storage facilitates parsing by preferred tools.
- Automation in monitoring enhances decision-making by collecting stats from various domains.

**Automation's Impact on Efficiency**

- Not an exhaustive list, but a starting point for automating software pipelines.
- Improves efficiency by creating a consistent and predictable process.
- Ensures quality and stability throughout the pipeline.

**Getting Started with Automation**

- For those overwhelmed, start with simple steps.
- Consider using a continuous integration server like Jenkins for code compilation.
- Identify areas for improvement in your current pipeline.

**Addressing Automation Concerns**

- Simplify by focusing on tasks like code compilation or dependency installation.
- Emphasizes starting somewhere manageable rather than finding a perfect solution.

**Key Questions Answered**

- Automation reduces human intervention, a core concept.
- Automation's significance in DevOps lies in speeding up pipelines, enhancing scalability, and producing - high-quality software.

## Metrics 

Metrics provide insights into the impact of DevOps practices on the pipeline's efficiency and the overall quality of the software produced.

**DevOps Philosophy and Metrics**

- DevOps focuses on efficient development, deployment, and operation of high-quality software.
- To gauge efficiency and quality, specific metrics are crucial for evaluation.

To learn more about Metrics, please see the [Metrics page](../007-DevSecOps/052-measure-metrics.md).