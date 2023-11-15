
# Azure Database

> <small>This is not an exhaustive documentation of all the existing Azure Services. These are summarized notes for the Azure Certifications.<br>To see the complete documentation, please go to: [Azure documentation](https://learn.microsoft.com/en-us/azure/?product=popular)</small>


- [Evolution of Databases](#evolution-of-databases)
- [Azure Synapse Analytics](#azure-synapse-analytics)
    - [Azure Synapse Pipelines](#azure-synapse-pipelines)
    - [Building Pipelines: Code or No-Code](#building-pipelines-code-or-no-code)
        - [Code Method](#code-method)
        - [No-Code Method](#no-code-method)
    - [Cost Management for Spark and SQL Pools](#cost-management-for-spark-and-sql-pools)
- [Resources](#resources)



## Evolution of Databases 

Traditionally, databases focused on transaction processing. However, the need for efficient data analysis led to the creation of data warehouses, specifically designed for reporting, utilizing SQL for querying.

**Enter Data Lakes and Big Data**
As unstructured data gained prominence, data lakes became pivotal for comprehensive data storage. Big data analytics, often powered by Apache Spark, provided insights into diverse data types like documents and images.

<small>[Back to the top](#azure-database)</small>

## Azure Synapse Analytics

Microsoft Azure Synapse Analytics bridges the gap between structured and unstructured data analytics. This single service offers:

- **Dedicated SQL Pools**
  - Ideal for structured and relational tables
  - Enables SQL queries for data warehousing.

- **Spark Pools**
  - Tailored for querying both structured and unstructured data using Apache Spark.
  - Ideal for data lake use-cases

###  Azure Synapse Pipelines 

Azure Synapse Analytics extends its capabilities with **Azure Synapse Pipelines**, a robust tool for data extraction and transformation. 
- Stripped-down version of Azure Data Factory
- Streamlines the process of obtaining and manipulating data from various Azure services.

For example, a pipeline could:
- Copy data from Azure Cosmos DB to a Spark pool.
- Run a Spark job that creates statistics about the data. 
- Store the results in a SQL pool.  


### Building Pipelines: Code or No-Code

There are a couple of different approaches you could take to building a pipeline: one using code and the other without using code.

#### Code Method

1. Create a Synapse Workspace which will be used for secure analytics.

2. Create a Linked Service inside the Synapse workspace.

3. This would then be used to connect to data sources like Cosmos DB.

3. Set up Spark and SQL pools.

4. Create a Notebook containing code that copies data from Cosmos DB to the Spark cluster. 

5. Add analytics code to the notebook to create statistics about the data. 

6. Add code to store the results in the SQL pool. 

5. Schedule notebook execution for recurring tasks.

#### No-Code Method

1. Create a Synapse Workspace which will be used for secure analytics.

2. Create a Linked Service inside the Synapse workspace.

3. Use the Link service to establish connections for Cosmos DB and SQL pool.

4. Create a graphical pipeline with a data flow for activities like data loading, transformation, and storage.

5. Configure activities without writing code.

6. Set up pipelines for automatic execution at specified intervals.

<small>[Back to the top](#azure-database)</small>


### Cost Management for Spark and SQL Pools

Both Spark and SQL pools operate as clusters of virtual machines, impacting costs. Azure provides mechanisms for cost control:

- **Spark Pools**
  - Enable Autoscale for automatic scaling based on workload requirements.
  - Activate Auto-pause to halt inactive clusters after 15 minutes.

- **SQL Pools**
  - Choose between Dedicated and Serverless SQL Pools.

    - **Dedicated SQL Pool**
      - Manually adjust Data Warehousing Units (DWUs) for compute resources.
      - Pause when not in use to save on compute costs while retaining storage costs.

    - **Serverless SQL Pool**
      - Query data in various formats without paying for dedicated compute resources.
      - Automatically created with Azure Synapse Workspace, charging only for processed data.

Azure Synapse Analytics emerges as a unified solution, eliminating the silos between structured and unstructured data analytics, and offering flexibility in data orchestration through pipelines. 

For more information: [Azure Synapse Analytics documentation](https://docs.microsoft.com/en-us/azure/synapse-analytics/).

## Resources 

- [Learning About Azure](https://cloudacademy.com/learning-paths/learning-about-azure-5663/)