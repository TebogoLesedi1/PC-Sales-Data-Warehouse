----------------dim_date tables------------------------
DROP TABLE [Computer_std].[dbo].[dim_date];
CREATE TABLE [Computer_std].[dbo].[dim_date](
	[Date_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Purchase_Date] [date] NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
) 

INSERT INTO [Computer_std].[dbo].[dim_date](Purchase_Date, Ship_Date)
SELECT DISTINCT
       [Purchase_Date]
      ,[Ship_Date]
  FROM [Computer_std].[dbo].[raw_pc_data];
--WHERE Customer_ID IS NULL; -- Only new records
select * from [Computer_std].[dbo].[dim_date];