# Data Dictionary

## Overview
The **Gold Layer** is the business-level data representation, structured to support analytical and reporting use cases. It consists of **dimension tables** and **fact tables** representing specific business metrics.

---

## Table: `gold.dim_customers`

**Purpose:** Stores customer information, including demographic and geographic data.

| Column Name     | Data Type     | Description                                                                 |
|------------------|----------------|------------------------------------------------------------------------------|
| `customer_key`   | INT            | Surrogate key uniquely identifying each customer record in the dimension table. |
| `customer_id`    | INT            | Unique numerical identifier assigned to each customer.                     |
| `first_name`     | NVARCHAR(50)   | The customer's first name.                                                 |
| `last_name`      | NVARCHAR(50)   | The customer's last name.                                                  |
| `country`        | NVARCHAR(50)   | The country of residence of the customer.                                  |
| `marital_status` | NVARCHAR(50)   | Marital status (e.g., 'Married', 'Single').                                |
| `gender`         | NVARCHAR(50)   | Gender (e.g., 'Male', 'Female', 'n/a').                                    |
| `birthday`       | DATE           | Date of birth (format: YYYY-MM-DD, e.g., 1971-10-06).                       |
| `create_date`    | DATE           | Date when the customer record was added.                                   |

---

## Table: `gold.dim_product`

**Purpose:** Contains information about products and their attributes.

| Column Name         | Data Type     | Description                                                                 |
|----------------------|----------------|------------------------------------------------------------------------------|
| `product_key`        | INT            | Surrogate key uniquely identifying each product record.                     |
| `product_id`         | INT            | Unique numerical identifier assigned to each product.                       |
| `product_number`     | NVARCHAR(50)   | Alphanumeric product code used for categorization and inventory.            |
| `product_name`       | NVARCHAR(50)   | Descriptive product name (type, color, size, etc.).                         |
| `category_id`        | NVARCHAR(50)   | Identifier for the product's category.                                      |
| `category`           | NVARCHAR(50)   | Broad product classification (e.g., Bikes, Components).                     |
| `sub_category`       | NVARCHAR(50)   | Detailed product classification within the category.                        |
| `maintenance`        | NVARCHAR(50)   | Indicates if the product requires maintenance (`Yes`, `No`).                |
| `product_cost`       | INT            | Base cost of the product (in monetary units).                               |
| `product_line`       | NVARCHAR(50)   | Product line or series (e.g., Road, Mountain).                              |
| `product_start_date` | DATE           | Date the product became available for sale or use.                          |

---

## Table: `gold.face_sales`

**Purpose:** Stores transactional sales data for analytical purposes.

| Column Name     | Data Type     | Description                                                                 |
|------------------|----------------|------------------------------------------------------------------------------|
| `order_number`   | NVARCHAR(50)   | Unique alphanumeric sales order identifier (e.g., 'SO544965').             |
| `product_key`    | INT            | Surrogate key linking to the product dimension.                            |
| `customer_key`   | INT            | Surrogate key linking to the customer dimension.                           |
| `order_date`     | DATE           | Date the order was placed.                                                 |
| `shipping_date`  | DATE           | Date the order was shipped.                                                |
| `due_date`       | DATE           | Date when payment is due.                                                  |
| `sales`          | INT            | Total value of the sale (whole currency units).                            |
| `quantity`       | INT            | Number of product units ordered.                                           |
| `price`          | INT            | Price per unit of the product.                                             |

---

