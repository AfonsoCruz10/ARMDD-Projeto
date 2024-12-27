IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Employee')
	CREATE TABLE [dbo].[Employee]
	(
		[EmployeeId] [int],
		[Name] [varchar](255),
		[Title] [varchar](255),
		[BirthDate] [date],
		[HireDate] [date],
		[Address] [varchar](255),
		[City] [varchar](255),
		[RegionId] [int],
		[PostalCode] [int],
		[HomePhone] [varchar](255),
		[Extension] [int],	
		[Obs] [varchar](255)
	)
ELSE
	TRUNCATE TABLE Employee