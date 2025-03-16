
# Tokyo Olympics Data Analysis - Azure Project

## Project Overview
This project focuses on analyzing the Tokyo Olympics data using Azure cloud services. The dataset is sourced from Kaggle and is processed through various Azure services, including Azure Data Lake Storage (ADLS), Azure Data Factory (ADF), Databricks, and Synapse Analytics. The entire workflow follows a medallion architecture to efficiently store, transform, and analyze data.

## Project Architecture
![Project Architecture](project_architecture.png)

## 1. On-Premise Data
The project begins with raw data stored in an on-premise system, which is then migrated to Azure.

### 1.1 List of On-Premise Data
- Tokyo Olympics dataset (CSV files)
- Athlete performance records
- Event-wise medal distribution
- Country-wise participation data

## 2. Resource Group Creation
All necessary resources are created under the **Resource Group: harsha-tokyo_olympics-DAta_project**, which includes:
- **Azure Data Factory (ADF)**
- **Azure Databricks**
- **Azure Data Lake Storage (ADLS)**
- **Azure Key Vault**
- **Azure Synapse Analytics**

### 2.1 ADLS Storage Account and Medallion Layers
![ADLS Storage Account](adls_storage.png)
- **raw-data:** Stores source data in CSV format.
- **transformed-data:** Stores processed data in Parquet format for optimized analytics.

### 2.2 Key Vault Creation
![Key Vault Creation](keyvault_creation.png)
All sensitive credentials, including authentication keys, usernames, and passwords, are securely stored in **Azure Key Vault**.

## 3. ADF Pipeline for Data Import
An **ADF pipeline** is created to import Tokyo Olympics data into the **ADLS raw-data container**. This is achieved through a **Self-Hosted Integration Runtime (SHIR)** for seamless data transfer.

## 4. Data Imported to ADLS
### 4.1 Data Imported to ADLS
![Data Imported to ADLS](data_imported_adls.png)
Once the pipeline execution is successful, the raw data is available in the **raw-data** container in CSV format.

## 5. Data Transformation using Databricks
Data transformation is handled using **Azure Databricks notebooks**. The raw data is cleaned, formatted, and stored in the **transformed-data** container in Parquet format.

### 5.1 Data Transformed and Written to Transformed Folder
![Data Transformed](data_transformed_1.png)

### 5.2 Data Transformed and Written to Transformed Folder
![Data Transformed](data_transformed_2.png)

## 6. Synapse Analytics Data Import
An **ADF pipeline** is created to load the transformed data from ADLS into **Azure Synapse Analytics** for further querying and analysis.

### 6.1 Synapse Analytics Query 1
![Synapse Query 1](synapse_query1.png)

### 6.2 Synapse Analytics Query 2
![Synapse Query 2](synapse_query2.png)

## Project Actions Summary
1. **Resource Group Creation**
   - Created a dedicated resource group: **harsha-tokyo_olympics-DAta_project**.
   - Deployed necessary Azure services: **ADF, Databricks, ADLS, Key Vault, Synapse Analytics**.

2. **ADLS Medallion Architecture**
   - **Raw-data:** Stores unprocessed data in CSV format.
   - **Transformed-data:** Stores cleaned and transformed data in Parquet format.

3. **Data Ingestion**
   - Imported Tokyo Olympics data into **ADLS raw-data container** using **ADF and SHIR**.

4. **Data Processing**
   - Transformed data using **Databricks Notebooks**.
   - Processed data is stored in **transformed-data container** as **Parquet files**.

5. **Data Analysis using Synapse Analytics**
   - Created **Synapse Analytics Pipeline** to analyze transformed data.
   - Performed SQL queries to derive meaningful insights.

6. **Security & Credential Management**
   - All authentication keys, usernames, and passwords are securely stored in **Azure Key Vault**.

## Conclusion
This Azure-based data processing pipeline enables efficient ingestion, transformation, and analysis of Tokyo Olympics data using a scalable and secure cloud infrastructure. The project leverages Azure’s powerful data services to ensure seamless data flow and insightful analytics.
