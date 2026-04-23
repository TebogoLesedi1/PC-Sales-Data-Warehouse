----------stored_procedure_dim_payment_table
CREATE PROCEDURE sp_dim_payment AS

BEGIN
DROP TABLE [Computer_std].[dbo].[dim_payment_method];
CREATE TABLE [Computer_std].[dbo].[dim_payment_method](
	[Payment_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL
) 
INSERT INTO [Computer_std].[dbo].[dim_payment_method](Payment_Method)
       SELECT DISTINCT
      [Payment_Method]
  FROM [Computer_std].[dbo].[raw_pc_data];

END;