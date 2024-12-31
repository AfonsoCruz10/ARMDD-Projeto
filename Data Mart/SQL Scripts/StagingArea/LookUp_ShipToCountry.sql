IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ShipToCountry_Lookup')
BEGIN
    CREATE TABLE [dbo].[ShipToCountry_Lookup] (
		[ShipToCountryCode] [nchar](2) NOT NULL,
		[ShipToCountryName] [nvarchar](255) NOT NULL,
	 CONSTRAINT [PK_ShipToCountry_Lookup] PRIMARY KEY CLUSTERED 
	(
		[ShipToCountryCode] ASC
        ) WITH (
            PAD_INDEX = OFF, 
            STATISTICS_NORECOMPUTE = OFF, 
            IGNORE_DUP_KEY = OFF, 
            ALLOW_ROW_LOCKS = ON, 
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]

	-- Inserir todos os valores únicos na tabela
	INSERT INTO [dbo].[ShipToCountry_Lookup] ([ShipToCountryCode], [ShipToCountryName])
	VALUES 
	(N'DE', N'Germany'),
	(N'SE', N'Sweden'),
	(N'FR', N'France'),
	(N'ES', N'Spain'),
	(N'CH', N'Switzerland'),
	(N'IT', N'Italy'),
	(N'AT', N'Austria'),
	(N'NO', N'Norway'),
	(N'DK', N'Denmark'),
	(N'FI', N'Finland'),
	(N'US', N'United States of America'),
	(N'PT', N'Portugal'),
	(N'BE', N'Belgium'),
	(N'PL', N'Poland'),
	(N'VE', N'Venezuela'),
	(N'BR', N'Brazil'),
	(N'AR', N'Argentina'),
	(N'IE', N'Ireland'),
	(N'UK', N'United Kingdom'),
	(N'CA', N'Canada'),
	(N'MX', N'Mexico');

END;
