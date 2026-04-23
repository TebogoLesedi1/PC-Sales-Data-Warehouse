----------stored_procedure_dim_customer_table
CREATE PROCEDURE Sp_dim_customer AS

BEGIN
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

END;