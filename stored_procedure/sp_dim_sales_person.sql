----------stored_procedure_dim_sales_person_table
CREATE PROCEDURE sp_dim_sales_person AS

BEGIN
DROP TABLE [Computer_std].[dbo].[dim_sales_person];
CREATE TABLE [Computer_std].[dbo].[dim_sales_person](
	[sales_person_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL
)
INSERT INTO [Computer_std].[dbo].[dim_sales_person](Sales_Person_Name, Sales_Person_Department)
       SELECT DISTINCT
      [Sales_Person_Name]
      ,[Sales_Person_Department]
  FROM [Computer_std].[dbo].[raw_pc_data];
END;