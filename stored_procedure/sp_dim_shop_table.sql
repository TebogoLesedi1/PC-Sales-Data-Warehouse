----------stored_procedure_dim_shop_table
CREATE PROCEDURE sp_dim_shop AS

BEGIN
DROP TABLE [Computer_std].[dbo].[dim_shop];
CREATE TABLE [Computer_std].[dbo].[dim_shop](
	[Shop_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [tinyint] NOT NULL
) 

INSERT INTO [Computer_std].[dbo].[dim_shop](Shop_Name, Shop_Age)
       SELECT DISTINCT
      [Shop_Name]
      ,[Shop_Age]
  FROM [Computer_std].[dbo].[raw_pc_data];
END;