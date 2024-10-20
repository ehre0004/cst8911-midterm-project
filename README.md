# cst8911-midterm-project

Group members:

+ Michael Balcerzak
+ Catherine Daigle
+ David
+ Rae Ehret
+ Van Anh Phan
+ Hanh Tran

## Topic: Scenario 2

> In this group we decided to do scenario 2 which we will describe below:

> First, we need to find and download a database which contains a set of data such as customer data or transaction data and load it to the Azure Blob Storage service. 
> Second, we need to create a data warehouse in Azure Synapse Analytics and use PolyBase to load the data from Azure Blob Storage. 
> Third, we need to create T-SQL scripts in order to transform the data in the data warehouse such as aggregating, pivoting, and joining.
> Last, we need to create a Power BI report to use the data from Synapse to presents it as different grapths such as line and pie graphs in order to analize and describe the data to stakeholders.

Therefore, we choose our dataset to be based on video-game. Our sources will be from Steam and Kaggle.

## Required Documents

> Each group member will also complete a confidential Self and Peer Evaluation. The Peer Evaluation is submitted online see assignments section on the day the midterm is submitted.

## Preparation Steps to do:

Step 3, Step 4 Step 5

- Prepare Steam API for Fetching - prepared.
- Research Polybase and warehouse - Rae & Catherine
- prepare T-SQL Scripts - Rae & Catherine
- Research PowerBI - Micheal

## Azure Scenario #2: End-to-End Workflow Tutorial

### Group of 6 Individuals

This tutorial outlines the workflow and services used to complete Scenario #2 using **Azure Blob Storage**, **Azure Synapse Analytics**, **PolyBase**, and **Power BI**. Each step is divided among six participants.

---

## Step 1: Setting Up Azure Blob Storage
*Assigned to Catherine and Rae*

1. **Log into Azure Portal**:
   - go to the Azure portal website and log in to your Azure account.

2. **Create a Storage Account**:
   - go to `All services` and look for `Storage account` and then select `Create` to start making the storage account.
   - fill in the details bellow
      - **Subscription**: your own
      - **Resource group**: any you want
      - **Storage Account Name**: `cst8911midtermstorage`
      - **Region**: `Canada Central`
      - **Storage Account Name**: `cst8911midtermstorage`
      - **Region**: `Canada Central`
      - **Performance**: `Standard`.
      - **replication**: `Locally Redundant Storage (LRS)`
   - Leave the rest as default and click `Create`.

3. **Create a Blob Container**:
   - Ones it finishes creating, go access it.
   - Go to `Containers` in the **Data storage** section and make a new container by selecting `+ Container`.
   - Fill in the contents below:
      - **Name**: any you want
      - **Public access level**: `Private`
   - select `Create`

4. **Upload Data**:
   - go to the container you made and select `Upload` and then pick the dataset you want to upload from such as GitHub, Kaggle, or custom.
   - Last select `Upload` to save the data in Azure Blob Storage.

---

### Step 2: Creating a Data Warehouse in Azure Synapse Analytics
*Assigned to Catherine and Rae*

1. **Create an Azure Synapse Workspace**:
   - Go to `All services` and look for `Synapse Analytics` and then select `Create` to start making the Synapse service.
   - Fill in the contents below:
      - **Subscription**: your own
      - **Resource group**: the one you made in `Storage Account`
      - **Workspace name**: `cst8911synapse`
      - **Region**: `East US`
   - Fill in the other requried requirement on your own.
   - After finishing filling the details, go to `Review + create` and select `Create`

2. **Configure SQL Pool (Dedicated Pool)**:
   - After Synapes is created, go to its workspace.
   - Go to the `SQL Pools` selection and add a new SQL pool by selecting `+ New`.
   - Fill in the contents below:
      - **Name**: `cst8911pool`
      - **Performance Level**: `DW100c` (cheapest)
   - after done with the detail, select `Create`.

---

### Step 3: Loading Data from Blob Storage into Azure Synapse Using PolyBase
*Assigned to Catherine and Rae*

1. **Configure Linked Service**:
   - go to `Manage` and then select `Linked Services` in the External connections section.
   - to link the new Azure Blob Storage, select `+ New` and choose the `Azure Blob Storage`.
   - After that, input the storage account name you made and its key in the details.
   - Then test the connection to see if it works.

2. **Create External Table Using PolyBase**:
   - Go to the `Develop` s and create 4 new SQL scripts.
   - when making the SQL scripts, make the external data sources, file formats, and tables using PolyBase, then link the Blob storage aplication to the data warehouse.
   - Here is the name of the 4 sql files:
      - sql-1-master-key.sql
      - sql-2-external-data-source.sql
      - sql-3-external-file-format.sql
      - sql-4-create-tables.sql

3. **Load Data into the Data Warehouse**:
   - Finally, use PolyBase to load the data from the Blob Storage service to the data warehouse, showing that the data structure is the same as the schema defined.

---

### Step 4: Data Transformation with T-SQL Scripts
*Assigned to Person 4*

1. **Write T-SQL Scripts**:
   - Perform data transformations such as aggregating, joining, or pivoting the data based on stakeholder requirements.

2. **Apply Advanced Queries**:
   - Use joins to combine datasets or pivot the data for better visualization.
   - Test queries in the Synapse workspace before running transformations on the data.

---

### Step 5: Creating a Power BI Report
*Assigned to Person 5*

1. **Connect Power BI to Azure Synapse Analytics**:
   - Open **Power BI Desktop** and click on `Get Data`.
   - Choose `Azure Synapse Analytics` as your data source and connect using your credentials.

2. **Query the Data**:
   - Select the necessary tables or views from your Synapse data warehouse.
   - Load the data into Power BI.

3. **Create Visualizations**:
   - Use bar charts, pie charts, and tables to visualize insights such as total sales, customer segmentation, or other relevant metrics.
   - Build a **Dashboard** for stakeholders to interact with.

---

### Step 6: Security and Optimization
*Assigned to Person 6*

1. **Secure Blob Storage**:
   - Navigate to the storage account and configure security settings such as role-based access control (RBAC), firewalls, and private endpoints.

2. **Optimize Synapse SQL Pool**:
   - Monitor performance metrics and adjust the performance level of the SQL pool based on the workload.
   - Implement partitioning, indexing, and caching to improve query efficiency.

3. **Implement Data Encryption**:
   - Ensure that all data stored in Blob Storage and Synapse Analytics is encrypted at rest.
   - Use Azure Key Vault to manage encryption keys securely.

---

### Final Deliverables

1. **GitHub Repository**:
   - All code, datasets, and configurations must be pushed to the team's GitHub repository.
   - Include documentation explaining the rationale behind the setup and configuration.

2. **Screenshots and Documentation**:
   - Capture screenshots of the process (storage setup, data loading, transformation, Power BI reports).
   - Upload the screenshots and explanations to **Brightspace** as per the course requirements.
   - Discussion Results: Microsoft Word or PDF

3. **Delete Resources**:
   - After the final demonstration, ensure all resources (Blob Storage, SQL Pools, Synapse workspace, etc.) are deleted to avoid unnecessary costs.

---

#### Evaluation Criteria:
- Configuration of Azure services (Blob Storage, Synapse, PolyBase): 20 marks
- Data transformation and optimization: 10 marks
- Power BI visualization and presentation: 10 marks
- Security and resource management: 10 marks

---

## Links

TODO

## References

+ [Video Game Sales Dataset](https://www.kaggle.com/datasets/badriabouchelaghem/video-game-sales-dataset)
+ **We chose:** [Steam Games, Reviews, and Rankings.](https://www.kaggle.com/datasets/mohamedtarek01234/steam-games-reviews-and-rankings)
+ [PlayStation Games Info](https://www.kaggle.com/datasets/evgeny1928/playstation-games-info)
+ [PolyBase & Azure Blob, external tables](https://learn.microsoft.com/en-us/sql/relational-databases/polybase/polybase-configure-azure-blob-storage?view=sql-server-ver16)

## Dataset Were Working with for SQL
TODO



![diagram](./diagram-related.png)
(from the cst8913 lecture week3)
