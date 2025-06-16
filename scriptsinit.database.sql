/*
==============================================================
Create Database and Schemas
==============================================================
Script Purpose:
  This scripts creats a new database called 'DataWarehouse'. If the database 
  already exists in your system then it will drop your current DataWarehouse batabase and create a new one.
  After creating a new database, the script will create three new schemas called, 'bronze', 'silver', and 'gold'.

Warning:
  Please understand that if you run this script your current database, if you already have one 
  with the name, 'DataWarehouse', will drop and you can loose all data.
*/

USE master;
GO

-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create Database "DataWarehouse
CREATE DATABASE DataWarehouse;
Go

USE DataWarehouse;
GO 

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
 
