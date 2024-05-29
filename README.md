<p align="center">
   <img src="assets/monday-sql-banner.png" width="100%" alt="sql-server-banner">
</p>

This repository contains T-SQL scripts for managing fragrances and orders within a SQL Server database. These scripts are designed for an application integrated with the Monday.com platform, providing the necessary database schema and stored procedures for CRUD operations. This repo is one of three for this application; the Client Application can be found <a href="https://github.com/mfiloramo/mondayProject">here</a>, and the API can be found <a href="https://github.com/mfiloramo/mondayProjectAPI">here</a>.

<hr>

## Table of Contents

- [Installation](#installation)
- [Database Schema](#database-schema)
- [Stored Procedures](#stored-procedures)
- [Usage](#usage)
- [Application Flow](#application-flow)

## Installation

To set up the database schema and stored procedures, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/mfiloramo/mondayProjectSQL.git
    cd mondayProjectSQL
    ```

2. **Connect to your SQL Server**:
   Use your preferred SQL Server management tool (e.g., SQL Server Management Studio, Azure Data Studio) to connect to your SQL Server instance.

3. **Run the scripts**:
   Execute the SQL scripts to set up the database schema and stored procedures.

## Database Schema

The database schema includes two tables:

- **Fragrances**:
    - `id` (bigint, Primary Key)
    - `name` (nvarchar(255))
    - `description` (nvarchar(max))
    - `category` (nvarchar(100))
    - `created_at` (datetime, default `GETDATE()`)
    - `updated_at` (datetime, default `GETDATE()`)
    - `image_url` (nvarchar(255))

- **Orders**:
    - `id` (int, Identity, Primary Key)
    - `first_name` (varchar(max))
    - `last_name` (varchar(max))
    - `number_of_kits` (int)
    - `status` (varchar(50), default 'Pending')
    - `fragrance1_id` (bigint)
    - `fragrance2_id` (bigint)
    - `fragrance3_id` (bigint)
    - `created_at` (datetime)
    - `updated_at` (datetime)

## Stored Procedures

The repository includes stored procedures to handle common database operations:

- **Fragrances**:
    - `AddFragrance`: Adds a new fragrance.
    - `DeleteFragrance`: Deletes a fragrance.
    - `GetAllFragrances`: Retrieves all fragrances.
    - `GetFragranceName`: Retrieves the name of a specific fragrance.
    - `UpdateFragrance`: Updates an existing fragrance.

- **Orders**:
    - `CreateOrder`: Creates a new order.
    - `DeleteOrder`: Deletes an order.
    - `GetAllOrders`: Retrieves all orders.
    - `UpdateOrderStatus`: Updates the status of an order.

## Usage

To use the stored procedures, execute them with the appropriate parameters in your SQL Server management tool. For example, to add a new fragrance, use:
```sql
EXECUTE AddFragrance @id, @name, @created_at, @updated_at;
```
