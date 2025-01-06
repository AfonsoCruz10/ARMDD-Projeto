IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimDate')
BEGIN
    CREATE TABLE [dbo].[DimDate] (
        DateKey INT NOT NULL,
        FullDate DATE NOT NULL,
        [Year] INT NOT NULL,
        YearName NVARCHAR(255) NOT NULL,
        [Quarter] INT NOT NULL,
        QuarterName NVARCHAR(255) NOT NULL,
        Trimester INT NOT NULL,
        TrimesterName NVARCHAR(255) NOT NULL,
        Semester INT NOT NULL,
        SemesterName NVARCHAR(255) NOT NULL,
        [Month] INT NOT NULL, 
        [MonthName] NVARCHAR(255) NOT NULL,
        [DayOfYear] INT NOT NULL,
        [DayOfMonth] INT NOT NULL,
        [DayOfWeek] INT NOT NULL,
        [DayName] NVARCHAR(255) NOT NULL,
        [IsWeekend] INT NOT NULL,
        WeekOfYear INT NOT NULL,
        WeekOfMonth INT NOT NULL,
        IsHoliday INT NOT NULL,
        FiscalYear INT NOT NULL,
        FiscalQuarter INT NOT NULL,
        Season NVARCHAR(25) NOT NULL,
        LastDayOfMonthIndicator INT NOT NULL,
        FirstDayOfMonthIndicator INT NOT NULL,
        CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
        (
            [DateKey] ASC
        )
        WITH (
            PAD_INDEX = OFF, 
            STATISTICS_NORECOMPUTE = OFF, 
            IGNORE_DUP_KEY = OFF, 
            ALLOW_ROW_LOCKS = ON, 
            ALLOW_PAGE_LOCKS = ON
        )
        ON [PRIMARY]
    ) ON [PRIMARY]
END;