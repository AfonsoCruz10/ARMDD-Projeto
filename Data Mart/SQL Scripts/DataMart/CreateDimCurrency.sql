IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimCurrency')
BEGIN
    CREATE TABLE [dbo].[DimCurrency] (
        CurrencyKey INT IDENTITY(1,1) NOT NULL,
        CurrencyCode NVARCHAR(3) NOT NULL,
        CurrencyName NVARCHAR(255) NULL,
        CONSTRAINT [PK_DimCurrency] PRIMARY KEY CLUSTERED 
        (
            [CurrencyKey] ASC
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