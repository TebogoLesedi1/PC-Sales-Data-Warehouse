-----------------------dim_sales_person-----------------------
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
--WHERE Customer_ID IS NULL; -- Only new records
select * from [Computer_std].[dbo].[dim_sales_person];
