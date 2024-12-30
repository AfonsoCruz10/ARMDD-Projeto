IF NOT EXISTS (SELECT name 
               FROM sys.tables 
               WHERE name = 'DimCompanyLocal')
BEGIN
    CREATE TABLE [dbo].[DimCompanyLocal] (
        CompanyLocalKey INT IDENTITY(1,1) NOT NULL,
        LocalCode NVARCHAR(25) NOT NULL,
        CONSTRAINT [PK_DimCompanyLocal] PRIMARY KEY CLUSTERED 
        (
            [CompanyLocalKey] ASC
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

	-- Inserir valores
	INSERT INTO [dbo].[DimCompanyLocal] (LocalCode)
	VALUES 
		(N'USA'), 
		(N'UK');  
	
END;