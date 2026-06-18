/* 
=====================================================
VReate Database and Schemas
=====================================================

Script Purpose:
This script create a new databse called 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally the scripts sets up three schemas within the database: 'Bronze', 'Silver'and 'Gold'.
 WARNING:
Running this script will drop the entire 'DataWarehouse' database if it exists.
All data in the database will be permanently deleted. Proceed with caution
and ensure you have proper bachups before running this script.
*/

USE master;
GO
-- Drop and recreate the 'DataWarehouse' database
IF exists (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
END;
GO
-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO





