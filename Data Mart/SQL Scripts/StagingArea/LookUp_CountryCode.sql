IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'CountryCode_Lookup')
BEGIN
    CREATE TABLE [dbo].[CountryCode_Lookup](
		[CountryCode] [nchar](2) NOT NULL,
		[CountryName] [nvarchar](255) NOT NULL,
	 CONSTRAINT [PK_CountryCode_Lookup] PRIMARY KEY CLUSTERED 
	(
		[CountryCode] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'PK', N'Pakistan')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'PA', N'Panama')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'PH', N'Philippines')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'SI', N'Slovenia')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'SZ', N'Swaziland')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'UI', N'Unknown')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'VU', N'Vanuatu')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'KH', N'Cambodia')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'CR', N'Costa Rica')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'GM', N'Gambia')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'GT', N'Guatemala')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'KP', N'North Korea')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'KW', N'Kuwait')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'MN', N'Mongolia')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'RE', N'Reunion')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'SA', N'Saudi Arabia')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'SG', N'Singapore')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'SK', N'Slovakia')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'SR', N'Suriname')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'TJ', N'Tajikistan')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'UZ', N'Uzbekistan')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'ET', N'Ethiopia')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'GW', N'Guinea-Bissau')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'HT', N'Haiti')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'HN', N'Honduras')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'MU', N'Mauritius')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'SC', N'Seychelles')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'BB', N'Barbados')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'CZ', N'Czech Republic')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'GB', N'United Kingdom')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'US', N'United States of America')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'JP', N'Japan')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'ES', N'Spain')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'AU', N'Australia')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'SE', N'Sweden')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'BR', N'Brazil')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'DE', N'Germany')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'IT', N'Italy')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'NO', N'Norway')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'FR', N'France')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'SG', N'Singapore')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'DK', N'Denmark')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'NL', N'Netherlands')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'FI', N'Finland')
    INSERT [dbo].[CountryCode_Lookup] ([CountryCode], [CountryName]) VALUES (N'CA', N'Canada')
END