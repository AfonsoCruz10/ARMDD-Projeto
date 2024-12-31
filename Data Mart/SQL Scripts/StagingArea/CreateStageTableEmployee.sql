IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Employee')
	CREATE TABLE [dbo].[Employee]
	(
		[EmployeeId] [int],
		[Name] [nvarchar](255),
		[Title] [nvarchar](255),
		[BirthDate] [date],
		[HireDate] [date],
		[Address] [nvarchar](255),
		[City] [nvarchar](255),
		[RegionId] [int],
		[PostalCode] [nvarchar](10),
		[HomePhone] [nvarchar](24),
		[Extension] [nvarchar](4),	
		[ReportsTo] [int]
	)
ELSE
	TRUNCATE TABLE Employee