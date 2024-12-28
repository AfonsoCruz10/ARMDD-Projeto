IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'Employee')
	CREATE TABLE [dbo].[Employee]
	(
		[EmployeeId] [float],
		[Name] [nvarchar](255),
		[Title] [nvarchar](255),
		[BirthDate] [date],
		[HireDate] [date],
		[Address] [nvarchar](255),
		[City] [nvarchar](255),
		[RegionId] [float],
		[PostalCode] [float],
		[HomePhone] [nvarchar](255),
		[Extension] [float],	
		[Obs] [nvarchar](MAX)
	)
ELSE
	TRUNCATE TABLE Employee