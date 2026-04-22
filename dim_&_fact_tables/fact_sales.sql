---------------------------fact_pc_sales-------------------------------------
DROP TABLE [Computer_std].[dbo].[fact_pc_sales];
CREATE TABLE [Computer_std].[dbo].[fact_pc_sales](
	[Sales_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Cost_Price] [smallint] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Discount_Amount] [smallint] NOT NULL,
	[Finance_Amount] [int] NOT NULL,
	[Credit_Score] [smallint] NOT NULL,
	[Cost_of_Repairs] [smallint] NOT NULL,
	[Total_Sales_per_Employee] [smallint] NOT NULL,
	[PC_Market_Price] [int] NOT NULL
)
INSERT INTO [Computer_std].[dbo].[fact_pc_sales](Cost_Price,Sale_Price,Discount_Amount,Finance_Amount,
Credit_Score,Cost_of_Repairs, Total_Sales_per_Employee, PC_Market_Price)
      SELECT DISTINCT
       [Cost_Price]
      ,[Sale_Price]
      ,[Discount_Amount]
      ,[Finance_Amount]
      ,[Credit_Score]
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]
  FROM [Computer_std].[dbo].[raw_pc_data];
--WHERE Customer_ID IS NULL; -- Only new records
select * from [Computer_std].[dbo].[fact_pc_sales];