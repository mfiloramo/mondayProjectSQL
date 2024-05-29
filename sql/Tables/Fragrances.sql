CREATE TABLE [dbo].[Fragrances](
    [id] [bigint] NOT NULL,
    [name] [nvarchar](255) NULL,
    [description] [nvarchar](max) NULL,
    [category] [nvarchar](100) NULL,
    [created_at] [datetime] NULL,
    [updated_at] [datetime] NULL,
    [image_url] [nvarchar](255) NULL
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
ALTER TABLE [dbo].[Fragrances] ADD PRIMARY KEY CLUSTERED
    (
    [id] ASC
    )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    GO
ALTER TABLE [dbo].[Fragrances] ADD  DEFAULT (getdate()) FOR [created_at]
    GO
ALTER TABLE [dbo].[Fragrances] ADD  DEFAULT (getdate()) FOR [updated_at]
    GO
