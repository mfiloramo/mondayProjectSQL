CREATE TABLE [dbo].[Orders](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [first_name] [varchar](max) NOT NULL,
    [last_name] [varchar](max) NOT NULL,
    [number_of_kits] [int] NOT NULL,
    [status] [varchar](50) NULL,
    [fragrance1_id] [bigint] NOT NULL,
    [fragrance2_id] [bigint] NOT NULL,
    [fragrance3_id] [bigint] NOT NULL,
    [created_at] [datetime] NULL,
    [updated_at] [datetime] NULL
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    GO
ALTER TABLE [dbo].[Orders] ADD PRIMARY KEY CLUSTERED
    (
    [id] ASC
    )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DEFAULT_Orders_status]  DEFAULT ('Pending') FOR [status]
    GO
