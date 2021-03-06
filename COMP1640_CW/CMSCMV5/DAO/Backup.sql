USE [ann77429_DB]
GO
/****** Object:  Table [ann77429_admin].[BookTour]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[BookTour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TourId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[TypePay] [int] NOT NULL,
	[TypeBill] [int] NOT NULL,
	[BookDate] [datetime] NOT NULL,
	[ModDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[Token] [nvarchar](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[vpc_Amount] [money] NOT NULL,
	[vpc_TransactionNo] [nvarchar](12) NULL,
	[ExchangeRates] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[CategoriOther]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[CategoriOther](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[KeyWord] [nvarchar](256) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Oder] [int] NOT NULL,
	[ModTime] [datetime] NOT NULL,
	[Sumary] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[Comment]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Avata] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Comment] [nvarchar](2000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[ForMe]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[ForMe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SumaryInfo] [nvarchar](2000) NULL,
	[ContentInfo] [nvarchar](max) NULL,
	[SumaryService] [nvarchar](2000) NULL,
	[ContentService] [nvarchar](max) NULL,
	[SumaryAdmissions] [nvarchar](2000) NULL,
	[ContentAdmissions] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[GioiThieuChung]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[GioiThieuChung](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SumaryLocation] [nvarchar](2000) NULL,
	[ContentLocation] [nvarchar](max) NULL,
	[SumaryInfo] [nvarchar](2000) NULL,
	[ContentInfo] [nvarchar](max) NULL,
	[SumaryExp] [nvarchar](2000) NULL,
	[ContentExp] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[Help]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ann77429_admin].[Help](
	[Id] [varchar](128) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[KeyWord] [nvarchar](256) NOT NULL,
	[Sumary] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ann77429_admin].[InformationBook]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[InformationBook](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookTourId] [int] NOT NULL,
	[FirstName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](256) NOT NULL,
	[Phone] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[Gender] [nvarchar](20) NOT NULL,
	[BirthDay] [date] NOT NULL,
	[Country] [nvarchar](128) NOT NULL,
	[Passport] [nvarchar](128) NOT NULL,
	[Nationality] [nvarchar](128) NOT NULL,
	[Note] [nvarchar](2014) NULL,
	[Paid] [bit] NOT NULL,
	[Price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[New]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[New](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[KeyWord] [nvarchar](256) NOT NULL,
	[img] [nvarchar](256) NULL,
	[Sumary] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[link] [nvarchar](256) NULL,
	[by] [nvarchar](256) NULL,
	[ModTime] [datetime] NOT NULL,
	[isHome] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[OderTour]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[OderTour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TourId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[Phonto]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[Phonto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[img] [nvarchar](256) NULL,
	[ModTime] [datetime] NOT NULL,
	[isHome] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[PhotoForTour]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[PhotoForTour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TourId] [int] NOT NULL,
	[Txt1] [nvarchar](256) NULL,
	[Txt2] [nvarchar](256) NULL,
	[Img] [nvarchar](256) NULL,
	[Link] [nvarchar](256) NULL,
	[Oder] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[SceduTour]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[SceduTour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TourId] [int] NOT NULL,
	[DateName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[Setting]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[Setting](
	[Key] [nvarchar](256) NOT NULL,
	[Value] [nvarchar](512) NULL,
PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[SettingBaner]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[SettingBaner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](256) NOT NULL,
	[Image] [nvarchar](256) NULL,
	[Link] [nvarchar](512) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[SlideBaner]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[SlideBaner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Txt1] [nvarchar](256) NULL,
	[Txt2] [nvarchar](256) NULL,
	[Img] [nvarchar](256) NULL,
	[Link] [nvarchar](256) NULL,
	[Oder] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[Tour]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[Tour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Desctiption] [nvarchar](max) NULL,
	[Note] [nvarchar](512) NULL,
	[img] [nvarchar](256) NULL,
	[Rate] [int] NOT NULL,
	[Pice] [money] NOT NULL,
	[Has] [nvarchar](max) NULL,
	[Need] [nvarchar](max) NULL,
	[ModTime] [datetime] NOT NULL,
	[KeyWord] [nvarchar](256) NOT NULL,
	[Pice2] [money] NOT NULL,
	[Pice3] [money] NOT NULL,
	[isHome] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [smallint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Job]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[List]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Server]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](100) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Set]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[State]    Script Date: 11/20/2015 10:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT ((1)) FOR [TypePay]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT ((1)) FOR [TypeBill]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT (getdate()) FOR [BookDate]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT (getdate()) FOR [ModDate]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT ('') FOR [Token]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT ((0)) FOR [vpc_Amount]
GO
ALTER TABLE [ann77429_admin].[BookTour] ADD  DEFAULT ((0)) FOR [ExchangeRates]
GO
ALTER TABLE [ann77429_admin].[CategoriOther] ADD  DEFAULT ((0)) FOR [Oder]
GO
ALTER TABLE [ann77429_admin].[CategoriOther] ADD  DEFAULT (getdate()) FOR [ModTime]
GO
ALTER TABLE [ann77429_admin].[InformationBook] ADD  DEFAULT (getdate()) FOR [BirthDay]
GO
ALTER TABLE [ann77429_admin].[InformationBook] ADD  DEFAULT ((0)) FOR [Paid]
GO
ALTER TABLE [ann77429_admin].[InformationBook] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [ann77429_admin].[New] ADD  DEFAULT (getdate()) FOR [ModTime]
GO
ALTER TABLE [ann77429_admin].[New] ADD  DEFAULT ((0)) FOR [isHome]
GO
ALTER TABLE [ann77429_admin].[OderTour] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [ann77429_admin].[OderTour] ADD  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [ann77429_admin].[OderTour] ADD  DEFAULT (getdate()) FOR [EndDate]
GO
ALTER TABLE [ann77429_admin].[Phonto] ADD  DEFAULT (getdate()) FOR [ModTime]
GO
ALTER TABLE [ann77429_admin].[Phonto] ADD  DEFAULT ((0)) FOR [isHome]
GO
ALTER TABLE [ann77429_admin].[PhotoForTour] ADD  DEFAULT ((0)) FOR [Oder]
GO
ALTER TABLE [ann77429_admin].[SlideBaner] ADD  DEFAULT ((0)) FOR [Oder]
GO
ALTER TABLE [ann77429_admin].[Tour] ADD  DEFAULT ((1)) FOR [Rate]
GO
ALTER TABLE [ann77429_admin].[Tour] ADD  DEFAULT ((0)) FOR [Pice]
GO
ALTER TABLE [ann77429_admin].[Tour] ADD  DEFAULT (getdate()) FOR [ModTime]
GO
ALTER TABLE [ann77429_admin].[Tour] ADD  DEFAULT ('') FOR [KeyWord]
GO
ALTER TABLE [ann77429_admin].[Tour] ADD  DEFAULT ((0)) FOR [Pice2]
GO
ALTER TABLE [ann77429_admin].[Tour] ADD  DEFAULT ((0)) FOR [Pice3]
GO
ALTER TABLE [ann77429_admin].[Tour] ADD  DEFAULT ((0)) FOR [isHome]
GO
ALTER TABLE [ann77429_admin].[BookTour]  WITH CHECK ADD FOREIGN KEY([TourId])
REFERENCES [ann77429_admin].[Tour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [ann77429_admin].[InformationBook]  WITH CHECK ADD FOREIGN KEY([BookTourId])
REFERENCES [ann77429_admin].[BookTour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [ann77429_admin].[OderTour]  WITH CHECK ADD FOREIGN KEY([TourId])
REFERENCES [ann77429_admin].[Tour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [ann77429_admin].[PhotoForTour]  WITH CHECK ADD FOREIGN KEY([TourId])
REFERENCES [ann77429_admin].[Tour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [ann77429_admin].[SceduTour]  WITH CHECK ADD FOREIGN KEY([TourId])
REFERENCES [ann77429_admin].[Tour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
