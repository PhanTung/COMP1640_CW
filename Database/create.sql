GO
/****** Object:  Table [dbo].[asp_Group]    Script Date: 23/02/2016 11:54:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](128) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_Group_Role]    Script Date: 23/02/2016 11:54:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_Group_Role](
	[roleName] [nvarchar](128) NOT NULL,
	[groupid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleName] ASC,
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_Role]    Script Date: 23/02/2016 11:54:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_Role](
	[name] [nvarchar](128) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[asp_User]    Script Date: 23/02/2016 11:54:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_User](
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
/****** Object:  Table [dbo].[asp_User_Group]    Script Date: 23/02/2016 11:54:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asp_User_Group](
	[userid] [nvarchar](32) NOT NULL,
	[groupid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC,
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[asp_Group] ON 

INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (1, N'Admin', N'Supper Admin', 1)
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (2, N'Kiểm duyệt câu hỏi', N'Kiểm duyệt các câu hỏi', 1)
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (4, N'Tạo cậu hỏi', N'Tạo mới các câu hỏi', 0)
INSERT [dbo].[asp_Group] ([id], [name], [description], [status]) VALUES (5, N'SinhVien', N'ấdsadas', 0)
SET IDENTITY_INSERT [dbo].[asp_Group] OFF
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'0', 1)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'1', 1)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'2', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'3', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'4', 4)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'4', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'5', 2)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'6', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'7', 5)
INSERT [dbo].[asp_Group_Role] ([roleName], [groupid]) VALUES (N'8', 5)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'0', N'Admin', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'1', N'Cấu hình quảng cáo', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'2', N'Cấu hình Game', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'3', N'Cấu hình Notification', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'4', N'Tạo câu hỏi', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'5', N'Kiểm duyệt câu hỏi', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'6', N'Quản lý câu hỏi đã kiểm duyệt', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'7', N'Quản lý chủ đề', 0)
INSERT [dbo].[asp_Role] ([name], [description], [status]) VALUES (N'8', N'Quản lý quyền hệ thông', 0)
INSERT [dbo].[asp_User] ([account], [password], [userName], [email]) VALUES (N'Admin', N'e3afed0047b08059d0fada10f400c1e5', N'Admin', N'thanhnxgt00410@fpt.edu.vn')
INSERT [dbo].[asp_User_Group] ([userid], [groupid]) VALUES (N'Admin', 1)
ALTER TABLE [dbo].[asp_Group] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[asp_Role] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[asp_Group_Role]  WITH CHECK ADD FOREIGN KEY([groupid])
REFERENCES [dbo].[asp_Group] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[asp_Group_Role]  WITH CHECK ADD FOREIGN KEY([roleName])
REFERENCES [dbo].[asp_Role] ([name])
GO
ALTER TABLE [dbo].[asp_User_Group]  WITH CHECK ADD FOREIGN KEY([groupid])
REFERENCES [dbo].[asp_Group] ([id])
GO
ALTER TABLE [dbo].[asp_User_Group]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[asp_User] ([account])
ON DELETE CASCADE
GO
