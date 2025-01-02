IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'CustomerDQP')
	CREATE TABLE [dbo].[CustomerDQP]
	(
		[CustomerIdUSA] [nvarchar](255),
		[CustomerIdUK] [int],
		[ContactTitleID] [int],
		[CityID] [int] ,
		[RegionId] [int],
		[CountryCode] [nchar](2),
		[Country] [nvarchar](255),
		[DQP] [nvarchar](100)
	)
ELSE
	TRUNCATE TABLE CustomerDQP