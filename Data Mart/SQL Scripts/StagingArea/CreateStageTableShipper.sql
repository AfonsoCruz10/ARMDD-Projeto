IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Shipper')
	CREATE TABLE [dbo].[Shipper]
	(
		[ShipperId] [int],
		[CompanytName] [varchar](255),
		[Phone] [varchar](255)
	)
ELSE
	TRUNCATE TABLE Shipper