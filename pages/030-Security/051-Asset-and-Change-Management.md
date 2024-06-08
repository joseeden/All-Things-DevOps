
# Asset and Change Management


- [Difference between Asset and Change Management](#difference-between-asset-and-change-management)
- [Asset Management](#asset-management)
    - [Assignment/Accounting](#assignmentaccounting)
    - [Monitoring/Asset Tracking](#monitoringasset-tracking)
    - [Mobile Device Management MDM](#mobile-device-management-mdm)
    - [Asset Disposal and Decommissioning](#asset-disposal-and-decommissioning)
- [Change Management](#change-management)
    - [Impact Management Analysis](#impact-management-analysis)
    - [Considerations](#considerations)
    - [Standard Operating Procedures SOPs](#standard-operating-procedures-sops)
    - [Technical Implications](#technical-implications)
    - [Documenting Changes](#documenting-changes)
- [Change Management Participants](#change-management-participants)
    - [Change Advisory Board CAB](#change-advisory-board-cab)
    - [Change Owner](#change-owner)
    - [Stakeholders](#stakeholders)
- [Change Management Process](#change-management-process)
    - [Preparation](#preparation)
    - [Vision for Change](#vision-for-change)
    - [Implementation](#implementation)
    - [Verification](#verification)
    - [Documentation](#documentation)
- [Change Management Components](#change-management-components)
    - [Request for Change RFC](#request-for-change-rfc)
    - [Approval](#approval)
    - [Rollback](#rollback)
- [Acquisition and Procurement](#acquisition-and-procurement)
    - [Difference between the two](#difference-between-the-two)
    - [Purchase Options](#purchase-options)
    - [Approval Process](#approval-process)
- [Mobile Asset Deployments](#mobile-asset-deployments)
    - [Bring Your Own Device BYOD](#bring-your-own-device-byod)
    - [Corporate-Owned, Personally Enabled COPE](#corporate-owned-personally-enabled-cope)
    - [Choose Your Own Device CYOD](#choose-your-own-device-cyod)
    - [Considerations](#considerations)




##  Difference between Asset and Change Management

Asset management optimizes the performance and lifecycle of assets, while change management ensures smooth transitions during organizational changes. Together, they enhance resource utilization and facilitate successful transformations.


## Asset Management

Asset management is a systematic process of developing, operating, maintaining, and selling assets in a cost-effective manner.

- Tracks and manages physical and digital assets.
- Enhances decision-making through accurate data.
- Facilitates compliance with regulatory requirements.
- Improves lifecycle management from acquisition to disposal.

Components of asset management:

1. Assignment/Accounting 
2. Monitoring/Tracking 

### Assignment/Accounting

Assignment and accounting in asset management involve the proper allocation and financial tracking of assets to ensure efficient utilization and accountability.

- Designate departments or individuals as owners of the assets.
- Ensures proper documentation and accountability.
- Plans for asset acquisition, maintenance, and disposal.
- Assets are also classified based on function, value, or other relevant parameters.

### Monitoring/Asset Tracking

**Monitoring** involves keeping a close watch on the utilization of assets to maintain operational efficiency and compliance.

- Maintaining an inventory or record of every single asset and their specifications.
- Checking the condition and performance, plus scheduling maintenance if needed.

**Asset tracking** takes asset monitoring a bit further by monitoring and managing the location, assigned users, and any other relevant details.

- Location, status, and condition of physical assets can be managed through specialized software.
- Tracking technologies like RFID and GPS can be used track asset location.

**Enumeration** involves identifying and counting assets, especially in large organizations or during times of asset procurement or retirement.

- Using software tools and scanners to find which assets are connected to a given network.
- Determines type of software or OS are being used, as well as the overall status or health of each asset.

### Mobile Device Management (MDM)

Mobile Device Management (MDM) enables organizations to manage and secure mobile devices across various platforms (smartphones, tablets).

To learn more, please see [Mobile Device Management.](./042-Securing-the-Network.md#mobile-device-management)

### Asset Disposal and Decommissioning 

Special Publication 800-88, commonly referred to as "**Guidelines for Media Sanitization.**", provides organizations with guidance on how to conduct sanitization, destruction, and certification for asset disposal and decommissioning processes.

**Sanitization**

- Ensures that sensitive information is securely erased before disposal.
- Complies with industry standards and regulations for data protection.
- Verifies that data has been properly sanitized through audit trails.
- Sanitization techniques:
    - Overwriting
    - Degaussing
    - Secure Erase
    - Cryptographic Erase 
- More details can be found in [Data Media Sanitization.](./038-Data-Security.md#data-media-sanitization)

**Destruction**

- Physically destroys media, such as hard drives and tapes, to prevent data recovery.
- Ensures complete destruction of physical devices to avoid data breaches.
- Follows secure disposal protocols to comply with legal and environmental standards.
- Destruction techniques (depending on the media type):
    - Shredding
    - Incinerating 
    - Pulverizing 
    - Melting

**Certification**

- Provides documentation to certify that assets have been properly sanitized or destroyed.
- Maintains records for compliance audits and regulatory requirements.
- Assures stakeholders that data privacy and security standards have been met.


## Change Management

Change management is a structured approach to transitioning individuals, teams, and organizations from a current state to a desired future state.

- Plans and implements changes effectively.
- Minimizes resistance and disruption during transitions.
- Aligns changes with organizational goals.
- Monitors and evaluates impact of changes.
- Provides training and support for affected personnel.

Change Management typically involves:

1. The need for change is identifies (RFC). 
2. A plan is developed. 
3. Change is implemented, often in stages. 
4. A review is conducted to assess the success of the change.

### Impact Management Analysis

Impact Management Analysis is a process used to assess the potential fallout of changes within an organization. This analysis helps to understand the change's potential impact to the organization and the broader environment.

- What could go wrong?
- What would be the immediate effects? 
- How would the long-term operations be impacted? 
- Are there unforeseen challenges that might cause an issue?

### Considerations

1. **Use of scheduled maintenance windows**
   - Schedule changes during off-peak hours to minimize impact on operations.
   - Communicate clearly with all stakeholders about the timing and expected duration.
   - Monitor systems closely during the maintenance period to address issues promptly.
   - Should not restrict change implementation, as emergencies may require immediate action.
   - Emergency change can be proposed for critical patches, which can implemented within a few hours.

2. **Creation of a backout plan**
   - Develop a detailed plan for reverting changes if they lead to unexpected problems.
   - Include steps for safely rolling back to the original state to avoid disruptions.
   - Test the backout process to ensure it can be executed smoothly and quickly.

3. **Testing of results**
   - Conduct thorough testing before full deployment to identify any potential issues.
   - Use both unit testing and integration testing to ensure all components work together.
   - Gather feedback from end-users to validate the effectiveness of the changes.

4. **Use of Standard Operating Procedures (SOPs)**
   - Establish SOPs to standardize processes and ensure consistency in change management.
   - Train staff on the SOPs to ensure they are followed correctly during the implementation.
   - Regularly review and update SOPs to incorporate lessons learned from previous changes.

### Standard Operating Procedures (SOPs)

Standard Operating Procedures (SOPs) are detailed, written instructions to achieve uniformity in the performance of a specific function. They are essential in change management to ensure that processes are executed consistently and efficiently across an organization.

- Provide clear, step-by-step instructions to ensure consistency and compliance.
- Streamline operations by providing a set of best practices for employees to follow.
- Are adaptable, allowing for updates as processes evolve.

### Technical Implications

When implementing changes in an organization, it's crucial to consider the technical impacts these changes may have on existing systems and processes. 

- **Allow and Deny Lists**
  - Used by routers and firewalls to allow or deny access to resources.  
  - Define which entities (users, devices, IP addresses) are permitted or denied access.
  - Changes on the access can inadvertently grant or restrict access to critical services.
  - Important for maintaining security by controlling access based on predefined criteria.

- **Restricted Activities**
  - Identify if there are restricted activities contained in the change before green-lighting.
  - Changes that could include accessing a protected database or shutting down a server.
  - Helps in preventing actions that could compromise system integrity or security.

- **Downtime**
  - Plan for potential downtime required for implementing changes to systems or infrastructure.
  - Communicate downtime schedules to minimize disruption to operations.

- **Service and Application Restarts**
  - Prepare for restarts of services and applications as part of the change implementation.
  - Simple restarts can be disruptive if they're applied to domain controllers.
  - Its not just about the time to restart, but also the data that may be lost in transit.
  - Ensure all stakeholders are aware and ready for potential disruptions during restarts.

- **Legacy Applications**
  - Assess the compatibility of legacy applications with new changes.
  - Still robust and reliable, but are sensitive to changes because they're less supported.
  - Plan for necessary updates or replacements to ensure continued functionality.

- **Dependencies**
  - Identify and map dependencies between different systems and components.
  - Ensure that changes do not adversely affect interdependent systems and applications.

### Documenting Changes 

Documenting changes provides a clear history of the what, when, and why for accountability and future reference.

- **Version Control**
  - Track changes over time to ensure historical accuracy.
  - Facilitate rollback to previous versions if needed.
  - Maintaining different version allows tracking of the evolution of the project.
  - Centralized place to ensure continuity and stability in the environment. 

- **Proper Documentation Updates**
  - Review and update documents to record every change.
  - Update diagrams to ensure they reflect the current state of your systems.
  - Revise policies and procedures to prevent issues from reoccuring.
  - Update change requests and associated trouble tickets.

- **Maintenance of Various Associated Records**
  - Archive related change management documents for future reference.
  - Ensure records are organized and easily accessible for audits.

## Change Management Participants

### Change Advisory Board (CAB) 

The Change Advisory Board (CAB) is a group of individuals within an organization who are responsible for overseeing the change management process. The CAB ensures that changes to the IT environment are made systematically, with appropriate evaluation and approval to minimize risks and disruptions.

- Performs due diligence on any proposed change before its approved.
- Ensures changes are tested, documented, and compliant with policies.
- Assesses risks and provides mitigation strategies.
- Every proposed change should have a change owner.

### Change Owner

The change owner is the individual or team that initiates the change request. 

- Advocate the change, and details why the change is necessary.
- Provided the benefits and challenges that the change might present.

### Stakeholders 

Stakeholders are individuals or groups who have a vested interest in the success and outcomes of a proposed change. They must be consulted and their feedback considered, as well as their concerns getting addressed before implementing any change.

- **Technical Stakeholders**
  - Provide insights on system requirements and integrations.
  - Ensure that technical solutions meet organizational needs.
  - Developers who runs the servers and write the code.

- **Business Stakeholders**
  - Include executives, managers, and business unit leaders.
  - Focus on how changes impact business objectives and performance.

- **End User Stakeholders**
  - The actual users of the products or services.
  - Provides feedback on usability and functionality.

## Change Management Process

The Change Management Process typically involves several key phases designed to guide organizations through effective transitions. Here's a concise outline of the typical phases in the Change Management Process:

1. Preparation
2. Vision for change
3. Implementation
4. Verification
5. Documentation

### Preparation

Involves the groundwork for managing change, focusing on understanding the current state and recognizing the need for transition.

- Thorough assessment of existing processes and identifying inefficiencies.
- Planning for resources, including time, personnel, and technology.
- Identifying potential impacts and risks associated with the change.

### Vision for Change

In this phase, the goals and objective of the change are clearly defined, and a shared understanding among stakeholders is established.

- Defining a clear and compelling description of the desired future state.
- Explain the reason for the change, and offer a picture of what success will actually look like.
- Communicating the vision and expected outcomes to all stakeholders.
- Gaining buy-in and aligning the organization around the change.

### Implementation

Implementation is where the planned changes are put into action, involving the rollout of new processes, systems, or behaviors.

- Executing the change plan according to the developed strategy.
- May involve training, restructuring teams, or introducing new tools and technologies.
- Ensuring that all involved parties are trained and supported during the transition.
- Continuous communication with the stakeholders should be maintained during the implementation.

### Verification

Involves assessing the effectiveness of the implemented changes to ensure they meet the desired outcomes.

- Comparing the new state to the envisioned objectives set out at the beginning of the change.
- Gathering feedback from stakeholders to assess the impact of the change.
- Done through surveys, performance metric analysis, or stakeholders interviews.

### Documentation

Documentation ensures that the change process is well-recorded, providing a reference for compliance and future improvements.

- Creating a historical record of the change process, decisions, and outcomes.
- Maintaining documentation for compliance, audits, and future reference.
- Sharing results and lessons learned with relevant stakeholders.
- Reflect on past initiatives, understand decisions made, and continously improve practices.

## Change Management Components 

### Request for Change (RFC)

Initiating the change management process with an RFC, including:

- Core activities in change management
- Formalized management and decision-making
- Documented results in accounting or log entries

### Approval 

Key steps in the approval process involve:

- Evaluating RFC completeness
- Assigning to the proper authorization process
- Stakeholder reviews and resource allocation
- Obtaining necessary approvals or rejections
- Documenting the approval or rejection status

### Rollback 

Addressing the potential need for rollback with activities such as:

- Scheduling and testing the change
- Verifying rollback procedures
- Implementing the change and evaluating its effectiveness
- Documenting changes in the production environment
- Rollback authority defined in the rollback plan

## Acquisition and Procurement

Acquisition and procurement is a structured process that involves the processes of identifying, acquiring, and managing the goods and services an organization needs to operate efficiently and effectively.

- **Vendor Selection**
  - Evaluates potential suppliers for quality, reliability, and cost-effectiveness.
  - Conducts competitive bidding and negotiations.

- **Contract Management**
  - Drafts and manages contracts with suppliers.
  - Ensures compliance with terms and conditions.

- **Purchase Orders**
  - Issues formal requests for goods and services.
  - Tracks and manages order fulfillment.

- **Inventory Management**
  - Monitors stock levels to avoid shortages or overstocking.
  - Utilizes just-in-time (JIT) inventory systems.

- **Cost Control**
  - Manages budgets and seeks cost-saving opportunities.
  - Analyzes total cost of ownership (TCO).

- **Compliance and Risk Management**
  - Ensures adherence to regulatory and legal requirements.
  - Identifies and mitigates procurement-related risks.

### Difference between the two 

**Acquisition** is the process of obtaining goods and services
**Procurement** refers to the entire process of acquiring goods and services, including all the processes that lead up to the actual acquisition. 

### Purchase Options 

- **Company Credit Card**

  - Provides flexibility for immediate purchases within set limits.
  - Generally good for **low cost items** that must be purchased very quickly.
  - Facilitates tracking and reconciliation of expenses.
  - Often includes rewards programs and benefits.

- **Individual Purchase**

  - Allows employees to purchase items independently.
  - May require **reimbursement** procedures.
  - Provides control over small, infrequent purchases.
  - Usually done when an employee is asked to travel on behalf of the company.
  - Useful for spontaneous or urgent needs.

- **Use of Purchase Orders**

  - Formalizes the request for goods or services from suppliers.
  - Helps in managing and tracking larger, planned purchases.
  - Provides a legal document to ensure terms and conditions are met.
  - Assists in budgeting and financial planning by providing documentation.
  - Company's financial department sends the PO as form of "promise to pay" to the vendor. 
  - PO also indicates the terms, e.g. 15 days, 30 days, or 60 days to pay the vendor.

### Approval Process 

Before any purchase can be made, an organization may have an internal approval process in place to ensure that the purchase aligns with the company's goals and needs.

- **Define Spending Limits**
  - Establishes thresholds for different levels of authority.
  - Ensures purchases are made within budget constraints.

- **Departmental Approval**
  - Requires approval from relevant department heads or managers.
  - Aligns purchases with departmental objectives and needs.

- **Budget Review**
  - Ensures purchases are within the allocated budget.
  - Prevents financial overrun and maintains financial discipline.

- **Documentation**
  - Involves submission of purchase requisition forms.
  - Provides documentation for audit and compliance purposes.

- **Approval Hierarchies**
  - Establishes a clear chain of command for approvals.
  - Ensures that purchases are reviewed and approved by appropriate personnel.

- **Compliance Check**
  - Verifies that the purchase complies with company policies and legal regulations.
  - Ensures ethical and lawful procurement practices.

- **Vendor Evaluation**
  - Assesses potential vendors for reliability and cost-effectiveness.
  - Ensures that the selected vendor meets company standards.

## Mobile Asset Deployments

### Bring Your Own Device (BYOD)

BYOD policies allow employees to use their personal devices for work purposes, providing flexibility and convenience while posing unique security and management challenges.

- **Employee Flexibility**
  - Increases employee satisfaction by allowing the use of preferred devices.
  - Reduces the learning curve associated with new technology.

- **Cost Savings**
  - Lowers hardware costs for the organization.
  - Shifts maintenance and upgrade responsibilities to employees.

- **Drawbacks**
  - Raises concerns about data security and privacy.
  - Employees own and control the security of their devices.
  - Requires robust security policies and mobile device management (MDM) solutions.


### Corporate-Owned, Personally Enabled (COPE)

COPE policies provide employees with company-owned devices that they can also use for personal purposes, balancing control and flexibility.

- **IT Control**
  - Ensures devices are pre-configured with necessary security measures.
  - Facilitates easier enforcement of security policies and updates.
  - Organization has better control over device configuration and data access.
  - Simplifies compliance with regulatory requirements and internal policies.

- **Drawbacks**
  - Requires higher initial investment in devices and maintenance.
  - Potentially reduces costs associated with security breaches and data loss.
  - Concerns on the employee's privacy, since the organization has full access to corporate-owned device.


### Choose Your Own Device (CYOD)

CYOD policies allow employees to select from a range of pre-approved devices, combining personal preference with organizational control and security.

- **Device Selection and Maintainance Support**
  - Offers a choice of devices within a controlled list.
  - Balances employee preference with organizational standards.
  - Simplifies IT support with a standardized range of devices.
  - Ensures devices receive timely updates and maintenance.

- **Drawbacks**
  - Higher initial costs for the organization.
  - Raises employee data privacy concerns.
  - Employees need to carry multiple mobile devices.


### Considerations

**Costs**
  - **Initial Investment**
    - Evaluate the upfront costs for purchasing devices (COPE, CYOD).
    - Consider potential savings with BYOD due to reduced hardware expenses.
  - **Maintenance and Support**
    - Factor in ongoing maintenance and support costs.
    - Assess potential savings from reduced IT support with standardized devices (CYOD, COPE).
  - **Reimbursement**
    - Determine policies for reimbursing employees for personal device use (BYOD).
    - Analyze cost-sharing arrangements for device purchase and data plans.

**Security**
  - **Data Protection**
    - Implement robust security measures to protect sensitive data.
    - Use mobile device management (MDM) solutions to enforce security policies.
  - **Access Control**
    - Ensure proper authentication and authorization mechanisms are in place.
    - Restrict access to sensitive data based on device compliance.
  - **Compliance**
    - Ensure adherence to industry regulations and standards.
    - Regularly audit and update security policies to address emerging threats.

**Employee Satisfaction**
  - **Flexibility**
    - Offer employees the flexibility to choose or use their preferred devices.
    - Improve work-life balance with the convenience of a single device for personal and professional use.
  - **Device Familiarity**
    - Reduce the learning curve by allowing employees to use familiar devices.
    - Increase productivity with devices that employees are comfortable using.
  - **Support and Resources**
    - Provide adequate support and resources for troubleshooting and device management.
    - Ensure clear communication of policies and expectations regarding device use.



----------------------------------------------

[Back to main page](../../README.md#security)    