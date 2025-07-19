# Data Dictionary

## Overview
The gold layer is the buiness-level data representation, structured to support analytical and reporting use cases. It consists of **dimensions
tables** and **fact tables** for specific business metrics.

--------------------------------------------------------------------------------------------------------------------------------------------

#### 1. gold.dim_customers
- **purpose:** Stores customers information with demographic and geographic data.
- Colums:

| **Column Name**  | **Data Type** | **Description** |
| ------------- | ------------- | ------------- |
| customer_key  | INT  | Surrogate Key uniquely identifying each customer record in the dimension table.  |
| customer_id   | INT  | Unique numerical indentifier assigned to each customer.  |
| first_name   | NVARCHAR(50)  | Alphanumeric identifier for the customer, used for tracking and referencing.  |
| last_name   | NVARCHAR(50)  | The customer's first name, as recorded in the system.  |
| country   | NVARCHAR(50)  | The customer's last name, as recorded in the system.  |
| marital_status | NVARCHAR(50)  | The marital status of the customer (e.g., 'Married', 'Single').  |
| gender | NVARCHAR(50)  | The gender of the customer (e.g., 'Male', 'Female', 'n/a'). |
| birthday | DATE  | The date of birth of customer, formatted as YYYY-MM-DD (e.g., 1971-10-06).  |
| create_date | DATE  | The date and time when the customer record was added to the system.  |

