----------stored_procedure_dim_channel_table
CREATE PROCEDURE Sp_dim_channel AS

BEGIN
DROP TABLE [Computer_std].[dbo].[dim_channel];
CREATE TABLE [Computer_std].[dbo].[dim_channel](
	[Channel_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Channel] [nvarchar](50) NOT NULL
) 
INSERT INTO [Computer_std].[dbo].[dim_channel](channel)
       SELECT DISTINCT
      [channel]
  FROM [Computer_std].[dbo].[raw_pc_data];
END;