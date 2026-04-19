--------------------------dim_customer table--------------------------------------
DROP TABLE [Computer_std].[dbo].[dim_customer];
CREATE TABLE [Computer_std].[dbo].[dim_customer](
	[Customer_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](250) NOT NULL,
	[Customer_Surname] [nvarchar](250) NOT NULL,
	[Customer_Contact_Number] [nvarchar](250) NOT NULL,
	[Customer_Email_Address] [nvarchar](250) NOT NULL
)

INSERT INTO [Computer_std].[dbo].[dim_customer](Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address)
SELECT  DISTINCT
      [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address] 
FROM [Computer_std].[dbo].[raw_pc_data];
select * from [Computer_std].[dbo].[dim_customer];
