USE [ann77429_DB]
GO
/****** Object:  Table [ann77429_admin].[asp_Group]    Script Date: 02/02/2016 9:36:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[asp_Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](128) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[status] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[asp_Group_Role]    Script Date: 02/02/2016 9:36:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[asp_Group_Role](
	[roleName] [nvarchar](128) NOT NULL,
	[groupid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleName] ASC,
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[asp_Role]    Script Date: 02/02/2016 9:36:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[asp_Role](
	[name] [nvarchar](128) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[status] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[asp_User]    Script Date: 02/02/2016 9:36:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[asp_User](
	[account] [nvarchar](32) NOT NULL,
	[password] [nvarchar](32) NOT NULL,
	[userName] [nvarchar](128) NOT NULL,
	[email] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[asp_User_Group]    Script Date: 02/02/2016 9:36:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[asp_User_Group](
	[userid] [nvarchar](32) NOT NULL,
	[groupid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC,
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[BookTour]    Script Date: 02/02/2016 9:36:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[BookTour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TourId] [int] NOT NULL,
	[Quantity] [int] NOT NULL DEFAULT ((1)),
	[Price] [money] NOT NULL DEFAULT ((0)),
	[TypePay] [int] NOT NULL DEFAULT ((1)),
	[TypeBill] [int] NOT NULL DEFAULT ((1)),
	[BookDate] [datetime] NOT NULL DEFAULT (getdate()),
	[ModDate] [datetime] NOT NULL DEFAULT (getdate()),
	[Status] [int] NOT NULL DEFAULT ((0)),
	[Token] [nvarchar](32) NOT NULL DEFAULT (''),
	[CreateDate] [datetime] NOT NULL DEFAULT (getdate()),
	[PaymentDate] [datetime] NOT NULL DEFAULT (getdate()),
	[vpc_Amount] [money] NOT NULL DEFAULT ((0)),
	[vpc_TransactionNo] [nvarchar](12) NULL,
	[ExchangeRates] [money] NOT NULL DEFAULT ((0)),
	[TicketsVenuesType] [int] NOT NULL DEFAULT ((0)),
	[TicketsVenuesAddress] [nvarchar](2048) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[CategoriOther]    Script Date: 02/02/2016 9:36:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[CategoriOther](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[KeyWord] [nvarchar](256) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Oder] [int] NOT NULL DEFAULT ((0)),
	[ModTime] [datetime] NOT NULL DEFAULT (getdate()),
	[Sumary] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[Comment]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [ann77429_admin].[ForMe]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [ann77429_admin].[GioiThieuChung]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [ann77429_admin].[Help]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [ann77429_admin].[InformationBook]    Script Date: 02/02/2016 9:36:55 SA ******/
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
	[BirthDay] [date] NOT NULL DEFAULT (getdate()),
	[Country] [nvarchar](128) NOT NULL,
	[Passport] [nvarchar](128) NOT NULL,
	[Nationality] [nvarchar](128) NOT NULL,
	[Note] [nvarchar](2014) NULL,
	[Paid] [bit] NOT NULL DEFAULT ((0)),
	[Price] [money] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[New]    Script Date: 02/02/2016 9:36:55 SA ******/
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
	[ModTime] [datetime] NOT NULL DEFAULT (getdate()),
	[isHome] [bit] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[OderTour]    Script Date: 02/02/2016 9:36:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[OderTour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TourId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Type] [int] NOT NULL DEFAULT ((0)),
	[StartDate] [datetime] NOT NULL DEFAULT (getdate()),
	[EndDate] [datetime] NOT NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[Phonto]    Script Date: 02/02/2016 9:36:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann77429_admin].[Phonto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[img] [nvarchar](256) NULL,
	[ModTime] [datetime] NOT NULL DEFAULT (getdate()),
	[isHome] [bit] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[PhotoForTour]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [ann77429_admin].[SceduTour]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [ann77429_admin].[Setting]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [ann77429_admin].[SettingBaner]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [ann77429_admin].[SlideBaner]    Script Date: 02/02/2016 9:36:55 SA ******/
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
	[Oder] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ann77429_admin].[Tour]    Script Date: 02/02/2016 9:36:55 SA ******/
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
	[Rate] [int] NOT NULL DEFAULT ((1)),
	[Pice] [money] NOT NULL DEFAULT ((0)),
	[Has] [nvarchar](max) NULL,
	[Need] [nvarchar](max) NULL,
	[ModTime] [datetime] NOT NULL DEFAULT (getdate()),
	[KeyWord] [nvarchar](256) NOT NULL DEFAULT (''),
	[Pice2] [money] NOT NULL DEFAULT ((0)),
	[Pice3] [money] NOT NULL DEFAULT ((0)),
	[isHome] [bit] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[Counter]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[Hash]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[Job]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[List]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[Schema]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[Server]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[Set]    Script Date: 02/02/2016 9:36:55 SA ******/
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
/****** Object:  Table [HangFire].[State]    Script Date: 02/02/2016 9:36:55 SA ******/
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
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_CounterAggregated_Key]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_CounterAggregated_Key] ON [HangFire].[AggregatedCounter]
(
	[Key] ASC
)
INCLUDE ( 	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Counter_Key]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Counter_Key] ON [HangFire].[Counter]
(
	[Key] ASC
)
INCLUDE ( 	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Hash_Key]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_Key] ON [HangFire].[Hash]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_Hash_Key_Field]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Hash_Key_Field] ON [HangFire].[Hash]
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
(
	[StateName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_JobParameter_JobIdAndName]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobParameter_JobIdAndName] ON [HangFire].[JobParameter]
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_JobQueue_QueueAndFetchedAt]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobQueue_QueueAndFetchedAt] ON [HangFire].[JobQueue]
(
	[Queue] ASC,
	[FetchedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_List_Key]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_Key] ON [HangFire].[List]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt],
	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Set_Key]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Key] ON [HangFire].[Set]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt],
	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_Set_KeyAndValue]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Set_KeyAndValue] ON [HangFire].[Set]
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_State_JobId]    Script Date: 02/02/2016 9:36:55 SA ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_State_JobId] ON [HangFire].[State]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [ann77429_admin].[PhotoForTour] ADD  DEFAULT ((0)) FOR [Oder]
GO
ALTER TABLE [ann77429_admin].[asp_Group_Role]  WITH CHECK ADD FOREIGN KEY([groupid])
REFERENCES [ann77429_admin].[asp_Group] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [ann77429_admin].[asp_Group_Role]  WITH CHECK ADD FOREIGN KEY([roleName])
REFERENCES [ann77429_admin].[asp_Role] ([name])
GO
ALTER TABLE [ann77429_admin].[asp_User_Group]  WITH CHECK ADD FOREIGN KEY([groupid])
REFERENCES [ann77429_admin].[asp_Group] ([id])
GO
ALTER TABLE [ann77429_admin].[asp_User_Group]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [ann77429_admin].[asp_User] ([account])
ON DELETE CASCADE
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
