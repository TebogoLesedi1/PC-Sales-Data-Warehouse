-----------------------dim_channel-----------------------
DROP TABLE [Computer_std].[dbo].[dim_channel];
CREATE TABLE [Computer_std].[dbo].[dim_channel](
	[Channel_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Channel] [nvarchar](50) NOT NULL
) 
INSERT INTO [Computer_std].[dbo].[dim_channel](channel)
       SELECT DISTINCT
      [channel]
  FROM [Computer_std].[dbo].[raw_pc_data];
--WHERE Customer_ID IS NULL; -- Only new records
select * from [Computer_std].[dbo].[dim_channel];
