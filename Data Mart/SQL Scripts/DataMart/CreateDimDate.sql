IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimDate')	
	CREATE TABLE DimDate(
		DateKey INT NOT NULL,
		FullDate DATE NOT NULL,
		[Year] INT NULL,
		YearName NVARCHAR(255) NULL,
		[Quarter] INT NULL,
		QuarterName NVARCHAR(255) NULL,
		Trimester INT NULL,
		TrimesterName NVARCHAR(255) NULL,
		Semester INT NULL,
		SemesterName NVARCHAR(255) NULL,
		[Month] INT NULL, 
		[MonthName] NVARCHAR(255) NULL,
		[DayOfYear] INT NULL,
		[DayOfMonth] INT NULL,
		[DayOfWeek] INT NULL,
		[DayName] NVARCHAR(255) NULL,
		[IsWeekend] INT NULL,
		WeekOfYear INT NULL,
		WeekOfMonth INT NULL,
		IsHoliday INT NULL,
		FiscalYear INT NULL,
		FiscalQuarter INT NULL,
		Season NVARCHAR(25) NULL,
		LastDayOfMonthIndicator INT NULL,
		FirstDayOfMonthIndicator INT NULL
		CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
