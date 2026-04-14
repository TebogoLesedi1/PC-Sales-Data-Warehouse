----------------dim_priority-------------------------
DROP TABLE [Computer_std].[dbo].[dim_priority];
CREATE TABLE [Computer_std].[dbo].[dim_priority](
	[Priority_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Priority] [nvarchar](50) NOT NULL
) 
INSERT INTO [Computer_std].[dbo].[dim_priority](priority)
       SELECT DISTINCT
      [priority]
  FROM [Computer_std].[dbo].[raw_pc_data];
--WHERE Customer_ID IS NULL; -- Only new records
select * from [Computer_std].[dbo].[dim_Priority];