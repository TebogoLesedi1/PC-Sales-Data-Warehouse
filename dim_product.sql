-----------------dim_product--------------------
DROP TABLE [Computer_std].[dbo].[dim_product];
CREATE TABLE [Computer_std].[dbo].[dim_product](
	[Product_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL
)
INSERT INTO [Computer_std].[dbo].[dim_product](PC_Make, PC_Model, Storage_Type, RAM,Storage_Capacity)
    SELECT DISTINCT
       [PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[RAM]
      ,[Storage_Capacity]
  FROM [Computer_std].[dbo].[raw_pc_data];
--WHERE Customer_ID IS NULL; -- Only new records
select * from [Computer_std].[dbo].[dim_product];