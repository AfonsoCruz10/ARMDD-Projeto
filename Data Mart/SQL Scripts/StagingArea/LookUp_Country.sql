-- Certifique-se de que a tabela CustomerCountry existe antes do INSERT
IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Country_LookUp')
BEGIN
    CREATE TABLE [dbo].[Country_LookUp] (
        [CountryName] NVARCHAR(255) NOT NULL,
        [CountryCode] NCHAR(2) NOT NULL
		CONSTRAINT [PK_Country_Lookup] PRIMARY KEY CLUSTERED 
	(
		[CountryCode] ASC
        ) WITH (
            PAD_INDEX = OFF, 
            STATISTICS_NORECOMPUTE = OFF, 
            IGNORE_DUP_KEY = OFF, 
            ALLOW_ROW_LOCKS = ON, 
            ALLOW_PAGE_LOCKS = ON
        ) ON [PRIMARY]
    ) ON [PRIMARY]

	-- Inserindo os valores
	INSERT INTO [dbo].[Country_LookUp] ([CountryCode], [CountryName])
	VALUES 
		(N'MX', N'Mexico'),
		(N'UK', N'United Kingdom'),
		(N'ES', N'Spain'),
		(N'CA', N'Canada'),
		(N'AR', N'Argentina'),
		(N'BR', N'Brazil'),
		(N'CH', N'Switzerland'),
		(N'PT', N'Portugal'),
		(N'US', N'United States of America'),
		(N'VE', N'Venezuela'),
		(N'FR', N'France'),
		(N'BE', N'Belgium'),
		(N'PL', N'Poland'),
		(N'SE', N'Sweden'),
		(N'NO', N'Norway'),
		(N'DK', N'Denmark'),
		(N'FI', N'Finland'),
		(N'AT', N'Austria'),
		(N'IT', N'Italy'),
		(N'IE', N'Ireland'),
		(N'PK', N'Pakistan'),
		(N'PA', N'Panama'),
		(N'PH', N'Philippines'),
		(N'SI', N'Slovenia'),
		(N'SZ', N'Swaziland'),
		(N'VU', N'Vanuatu'),
		(N'KH', N'Cambodia'),
		(N'CR', N'Costa Rica'),
		(N'GM', N'Gambia'),
		(N'GT', N'Guatemala'),
		(N'KP', N'North Korea'),
		(N'KW', N'Kuwait'),
		(N'MN', N'Mongolia'),
		(N'RE', N'Reunion'),
		(N'SA', N'Saudi Arabia'),
		(N'SG', N'Singapore'),
		(N'SK', N'Slovakia'),
		(N'SR', N'Suriname'),
		(N'TJ', N'Tajikistan'),
		(N'UZ', N'Uzbekistan'),
		(N'ET', N'Ethiopia'),
		(N'GW', N'Guinea-Bissau'),
		(N'HT', N'Haiti'),
		(N'HN', N'Honduras'),
		(N'MU', N'Mauritius'),
		(N'SC', N'Seychelles'),
		(N'BB', N'Barbados'),
		(N'CZ', N'Czech Republic'),
		(N'GB', N'United Kingdom'),
		(N'JP', N'Japan'),
		(N'AU', N'Australia'),
		(N'NL', N'Netherlands'),
		(N'DE', N'Germany');
END;


