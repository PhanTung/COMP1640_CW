Create Database [CatBaStation]
go
use [CatBaStation]
go
-- manage role
CREATE TABLE [asp_User](
	[account] [nvarchar](32) primary key NOT NULL,
	[password] [nvarchar](32) NOT NULL,
	[userName] [nvarchar](128) NOT NULL,
	[email] [nvarchar](128) NULL
	)
go
Create table [asp_Role]
(
	[name] nvarchar(128) primary key not null,
	[description] nvarchar(1024) null,
	[status] int default(0) not null,
)
go
Create table [asp_Group]
(
	[id] int identity(1,1) primary key not null,
	[name] nvarchar(128)  not null,
	[description] nvarchar(1024) null,
	[status] int default(0) not null
)
go
Create table [asp_Group_Role]
(
	[roleName] nvarchar(128) references [asp_Role](name) not null,
	[groupid]  int references [asp_Group](id)  on delete cascade not null,
	primary key([roleName],[groupId])
)
go
create table [asp_User_Group]
(
	[userid] nvarchar(32) references [asp_User]([account]) on delete cascade not null,
	[groupid] int references [asp_Group](id) not null,
	primary key([userid],[groupid])
)
--------------
go
Create Table SlideBaner
(
	[Id] int identity(1,1) primary key not null,
	[Txt1] nvarchar(256) null,
	[Txt2] nvarchar(256) null,
	[Img] nvarchar(256) null,
	[Link] nvarchar(256) null,
	[Oder] int default(0) not null
)
go
Create Table Setting
(
	[Key] nvarchar(256) primary key not null,	
	[Value] nvarchar(512) null
)
go
Create Table GioiThieuChung
(
	[Id] int identity(1,1) primary key not null,
	[SumaryLocation] nvarchar(2000) null,
	[ContentLocation] nvarchar(max) null,
	[SumaryInfo] nvarchar(2000) null,
	[ContentInfo] nvarchar(max) null,
	[SumaryExp] nvarchar(2000) null,
	[ContentExp] nvarchar(max) null,
)
go
Create Table ForMe
(
	[Id] int identity(1,1) primary key not null,
	[SumaryInfo] nvarchar(2000) null,
	[ContentInfo] nvarchar(max) null,
	[SumaryService] nvarchar(2000) null,
	[ContentService] nvarchar(max) null,
	[SumaryAdmissions] nvarchar(2000) null,
	[ContentAdmissions] nvarchar(max) null,
)
go
Create Table Tour
(
	[Id] int identity(1,1) primary key not null,
	[Name] nvarchar(256) not null,
	[KeyWord] nvarchar(256) default('') not null,
	[Desctiption] nvarchar(max) null,
	[Note] nvarchar(512) null,
	[img] nvarchar(256) null,
	[Rate] int default(1) not null,
	[Pice] money default(0) not null,
	[Pice2] money default(0) not null,
	[Pice3] money default(0) not null,
	[Has] nvarchar(max) null,
	[Need] nvarchar(Max) null,
	[ModTime] Datetime default(getdate()) not null,
	[isHome] bit default(0) not null,
)
Go
Create Table SceduTour(
	[Id] int identity(1,1) primary key not null,
	[TourId] int references Tour([Id]) on delete cascade not null,
	[DateName] nvarchar(256) not null,
	[Description] nvarchar(max) null
)
go
Create Table OderTour
(
	[Id] int identity(1,1) primary key not null,
	[TourId] int references Tour([Id]) on delete cascade not null,
	[Description] nvarchar(max) null,
	[Type] int default(0) not null,
	[StartDate] DateTime default(getdate()) not null,
	[EndDate] DateTime default(getdate()) not null,
)
go
Create Table [Phonto]
(
	[Id] int identity(1,1) primary key not null,
	[Title] nvarchar(256) not null,
	[img] nvarchar(256) null,
	[ModTime] Datetime default(getdate()) not null,
	[isHome] bit default(0) not null,
)
go
Create Table [New]
(
	[Id] int identity(1,1) primary key not null,
	[Title] nvarchar(256) not null,
	[KeyWord] nvarchar(256) not null,
	[img] nvarchar(256) null,
	[Sumary] nvarchar(max) null,
	[Content] nvarchar(max) null,
	[link] nvarchar(256) null,
	[by] nvarchar(256) null,
	[ModTime] Datetime default(getdate()) not null,
	[isHome] bit default(0) not null,
)
go
Create Table [CategoriOther]
(
	[Id] int identity(1,1) primary key not null,
	[Title] nvarchar(256) not null,
	[KeyWord] nvarchar(256) not null,	
	[Sumary] nvarchar(max) null,
	[Content] nvarchar(max) null,
	[Oder] int default(0) not null,
	[ModTime] Datetime default(getdate()) not null
)
go
Create Table [BookTour]
(
	[Id] int identity(1,1) primary key not null,
	[TourId] int references Tour(Id) on delete cascade not null,
	[Quantity] int default(1) not null,
	[Price] money default(0) not null, -- số tiền của gói /1 người
	[TypePay] int default(1) not null,--loai thanh toan - 1: tra truoc; 2: tra sau
	[TypeBill] int default(1) not null, -- loai gửi hóa đơn
	[BookDate] datetime Default(getdate()) not null,
	[ModDate] datetime Default(getdate()) not null,
	[Status] int default(0) not null,
	[Token] nvarchar(32) default('')  not null,
	[CreateDate] datetime Default(getdate()) not null,
	[PaymentDate] datetime Default(getdate()) not null,--ngay thanh toan
	[vpc_Amount] money default(0) not null, -- số đã thanh toán	
	[vpc_TransactionNo] nvarchar(12) null, -- ma giao dich
	[ExchangeRates] money default(0) not null, -- ty giá quy đổi
	[TicketsVenuesType] int default(0) not null, --dia diem nhan ve
	[TicketsVenuesAddress] nvarchar(2048) null, --dia chi cu the
)
go
Create Table [InformationBook]
(
	[Id] int identity(1,1) primary key not null,
	[BookTourId] int references BookTour(Id) on delete cascade not null,
	[FirstName] nvarchar(256)  not null,
	[LastName] nvarchar(256) not null,
	[Phone] nvarchar(100) not null,
	[Email] nvarchar(256) not null,
	[Gender] nvarchar(20)  not null, 
	[BirthDay] Date Default(GetDate()) not null,
	[Country] nvarchar(128) not null,
	[Passport] nvarchar(128) not null,
	[Nationality] nvarchar(128) not null,
	[Note] nvarchar(2014) null,
	[Paid] bit default(0) not null,
	[Price] money default(0) not null
)
go
Create Table [Comment]
(
	[Id] int identity(1,1) primary key not null,
	[Avata] nvarchar(256) not null,
	[Name] nvarchar(256) not null,
	[Comment] nvarchar(2000) not null
)
go
Create Table [Help]
(
	[Id] varchar(128) primary key not null,
	[Title] nvarchar(256) not null,
	[KeyWord] nvarchar(256) not null,	
	[Sumary] nvarchar(max) null,
	[Content] nvarchar(max) null,
)
go
Create Table [PhotoForTour]
(
	[Id] int identity(1,1) primary key not null,
	[TourId] int references Tour(Id) on delete cascade not null,
	[Txt1] nvarchar(256) null,
	[Txt2] nvarchar(256) null,
	[Img] nvarchar(256) null,
	[Link] nvarchar(256) null,
	[Oder] int default(0) not null
)