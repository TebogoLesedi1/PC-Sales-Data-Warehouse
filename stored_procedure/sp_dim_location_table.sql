----------stored_procedure_dim_location_table
CREATE PROCEDURE sp_dim_location AS

BEGIN
DROP TABLE [Computer_std].[dbo].[dim_location];
CREATE TABLE [Computer_std].[dbo].[dim_location](
	[location_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
) 

INSERT INTO [Computer_std].[dbo].[dim_location](Continent, Country_or_State, Province_or_City)
       SELECT DISTINCT
       [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
  FROM [Computer_std].[dbo].[raw_pc_data];

END;