IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Shipper')
	CREATE TABLE [dbo].[Shipper]
	(
		[ShipperId] [int],
		[CompanytName] [nvarchar](255),
		[Phone] [nvarchar](255)
	)
ELSE
	TRUNCATE TABLE Shipper