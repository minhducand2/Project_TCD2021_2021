CREATE DATABASE [web_ban_hang]
GO

USE [web_ban_hang]
GO
/****** Object:  Table [dbo].[p000account]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p000account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdRole] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](15) NULL,
	[address] [nvarchar](100) NULL,
	[password] [nvarchar](255) NOT NULL,
	[img] [nvarchar](255) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[role] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1000shopcomment]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1000shopcomment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdShop] [int] NULL,
	[IdUser] [int] NULL,
	[IdCommentStatus] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[IdTypeComment] [int] NULL,
	[IdStaff] [int] NULL,
 CONSTRAINT [PK__p1000sho__3213E83F614E7968] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p100menu]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p100menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdParentMenu] [int] NULL,
	[IsGroup] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Slug] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[Position] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1100shopcategories]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1100shopcategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Thumbnail] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1200mealplantype]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1200mealplantype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1300blogcategories]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1300blogcategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1400blog]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1400blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdBlogCategories] [int] NULL,
	[Title] [nvarchar](100) NULL,
	[Thumbnail] [nvarchar](150) NULL,
	[Description] [nvarchar](150) NULL,
	[Content] [text] NULL,
	[NumberView] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1500contactinfo]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1500contactinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NULL,
	[Phone] [nvarchar](15) NULL,
	[Mail] [nvarchar](30) NULL,
	[Working] [nvarchar](200) NULL,
	[Facebook] [nvarchar](100) NULL,
	[Instagram] [nvarchar](100) NULL,
	[Youtube] [nvarchar](100) NULL,
	[Twitter] [nvarchar](100) NULL,
	[Map] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1600contactstatus]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1600contactstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1700contactus]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1700contactus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdContactStatus] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](30) NULL,
	[Message] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1800userstatus]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1800userstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1900roleuser]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1900roleuser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2000user]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2000user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdUserStatus] [int] NULL,
	[Fullname] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Avatar] [text] NULL,
	[IdRoleUser] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[authkey] [nvarchar](max) NULL,
	[Phone] [nvarchar](15) NULL,
	[Sex] [nvarchar](10) NULL,
	[IdCity] [nvarchar](10) NULL,
	[IdDistrict] [nvarchar](10) NULL,
	[Address] [nvarchar](250) NULL,
	[Point] [int] NULL,
 CONSTRAINT [PK__p2000use__3213E83FCC8F841F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p200role]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p200role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2100promotion]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2100promotion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[PromotionCode] [nvarchar](30) NULL,
	[PercentCode] [float] NULL,
	[MoneyDiscount] [float] NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Point] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2200orderstatus]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2200orderstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2300paymentstatus]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2300paymentstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2400paymenttype]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2400paymenttype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2500city]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2500city](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2600district]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2600district](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdCity] [int] NULL,
	[Name] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2700producttype]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2700producttype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2800ordershop]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2800ordershop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdProductType] [int] NULL,
	[IdUser] [int] NULL,
	[IdOrderStatus] [int] NULL,
	[IdCity] [int] NULL,
	[IdDistrict] [int] NULL,
	[IdPaymentStatus] [int] NULL,
	[IdPaymentType] [int] NULL,
	[TotalPrice] [real] NULL,
	[PromotionCode] [nvarchar](50) NULL,
	[Name] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[Phone] [nvarchar](15) NULL,
	[Address] [nvarchar](150) NULL,
	[Note] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[Point] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2900orderdetail]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2900orderdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdOrderShop] [int] NULL,
	[IdShop] [int] NULL,
	[Amount] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[Star] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p3000commentstatus]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p3000commentstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p300roledetail]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p300roledetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdRole] [int] NULL,
	[IdMenu] [int] NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p3100mypromotion]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p3100mypromotion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdPromotion] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p3200inputproduct]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p3200inputproduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdShop] [int] NULL,
	[Note] [nvarchar](150) NULL,
	[ExpiryDate] [date] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Amount] [int] NULL,
	[IdCity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p3300warehouse]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p3300warehouse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdShop] [int] NULL,
	[Amount] [int] NULL,
	[ExpiryDate] [date] NULL,
	[IdCity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p400banner]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p400banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](200) NULL,
	[Position] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p500footer]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p500footer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Content1] [nvarchar](max) NULL,
	[Content2] [nvarchar](max) NULL,
	[Content3] [nvarchar](max) NULL,
	[AndroidLink] [nvarchar](100) NULL,
	[IosLink] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p600headerinfo]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p600headerinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](15) NULL,
	[Mail] [nvarchar](30) NULL,
	[Logo] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p700shop]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p700shop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Thumbnail] [nvarchar](150) NULL,
	[Description] [text] NULL,
	[PriceOrigin] [real] NULL,
	[PriceCurrent] [real] NULL,
	[Star] [real] NULL,
	[Images] [nvarchar](150) NULL,
	[Video] [nvarchar](150) NULL,
	[IdShopCategories] [int] NULL,
	[PricePromotion] [real] NULL,
	[Point] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p800shopcombo]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p800shopcombo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usd] [float] NULL,
	[Ship] [int] NULL,
 CONSTRAINT [PK__p800shop__3213E83F5F88CAB2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p900shopcombodetail]    Script Date: 31/10/2021 23:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p900shopcombodetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdShopCombo] [int] NULL,
	[IdShop] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[p000account] ON 

INSERT [dbo].[p000account] ([id], [IdRole], [name], [email], [phone], [address], [password], [img], [created_date], [role]) VALUES (1, 1, N'Administrator', N'admin@gmail.com', N'0966250693', N'183 Quách Thị Trang', N'5f4dcc3b5aa765d61d8327deb882cf99', N'http://127.0.0.1:8000/images\2021_04_28_10_03_04_3 vi.jpg', CAST(N'2021-04-28T10:08:36.000' AS DateTime), N'a:3,b:3,c:3,d:3,e:3,f:3,g:3,h:3,i:3,j:3,k:3,l:3,m:3,n:3,o:3,p:3,q:3,r:3,s:3,t:3,u:3,v:3,w:3,x:3,y:3,z:3,{:3,|:3,}:3,~:3,:3')
SET IDENTITY_INSERT [dbo].[p000account] OFF
GO
SET IDENTITY_INSERT [dbo].[p1000shopcomment] ON 

INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (1, 1, 1, 1, N'<p>m?i t?o</p>
', CAST(N'2021-04-20T14:22:29.000' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (3, 2, 1, 1, N'<p>L?n 2</p>
', CAST(N'2021-04-20T14:22:55.000' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (4, 2, 0, 1, N'<p>L?n 3</p>
', CAST(N'2021-04-20T14:23:08.000' AS DateTime), 3, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (5, 2, 1, 1, N'<p>test th?</p>
', CAST(N'2021-04-20T14:23:24.000' AS DateTime), 3, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (6, 1, 1, 1, N'<p>bbbb</p>
', CAST(N'2021-04-20T14:24:22.000' AS DateTime), 1, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (7, 1, 1, 1, N'<p>23424</p>
', CAST(N'2021-04-20T09:35:27.000' AS DateTime), 1, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (8, 1, 17, 1, N'Bình luận', CAST(N'2021-05-05T14:00:09.503' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (9, 1, 17, 1, N'Bình luận222', CAST(N'2021-05-05T14:02:31.637' AS DateTime), 8, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (10, 1, 17, 1, N'dang bài', CAST(N'2021-05-05T14:04:27.280' AS DateTime), 1, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (11, 1, 17, 1, N'B?n ph?i nh?p n?i dung bình lu?n', CAST(N'2021-05-05T14:04:40.857' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (12, 1, 17, 1, N'bbbb bình lu?n
', CAST(N'2021-05-05T14:05:36.073' AS DateTime), 8, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (13, 1, 17, 1, N'bình lu?n', CAST(N'2021-05-05T14:05:54.697' AS DateTime), 11, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (14, 7, 17, 1, N'bbbb', CAST(N'2021-05-05T14:07:14.860' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (15, 7, 17, 1, N'aaaa', CAST(N'2021-05-05T14:07:18.657' AS DateTime), 14, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (16, 1, 17, 1, N'bcbcvb', CAST(N'2021-05-05T14:08:22.023' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (17, 1, 17, 1, N'ádasd', CAST(N'2021-05-05T14:08:36.623' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (18, 1, 17, 1, N'6666', CAST(N'2021-05-05T14:08:53.730' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (19, 8, 17, 1, N'bbbb', CAST(N'2021-05-05T14:10:41.383' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (20, 7, 17, 1, N'bbbb', CAST(N'2021-05-05T14:10:49.477' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (21, 2, 17, 1, N'234234', CAST(N'2021-05-06T15:00:22.547' AS DateTime), 3, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (22, 2, 17, 1, N'234234', CAST(N'2021-05-06T15:00:26.417' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (23, 1, 0, 1, N'<p>bb</p>
', CAST(N'2021-05-05T16:10:22.000' AS DateTime), 8, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (24, 2, 0, 1, N'<p>bbb</p>
', CAST(N'2021-05-06T20:49:07.000' AS DateTime), 22, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (25, 6, 17, 1, N'43545', CAST(N'2021-05-11T08:42:55.590' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (26, 1, 17, 1, N'bình lu?n', CAST(N'2021-05-11T08:56:54.860' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (27, 1, 17, 1, N'bình lu?n', CAST(N'2021-05-11T08:57:50.223' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (28, 3, 17, 1, N'bình lu?n', CAST(N'2021-05-11T09:01:55.443' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (29, 3, 17, 1, N'bình lu?n', CAST(N'2021-05-11T09:02:13.833' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (30, 9, 17, 1, N'bình lu?n', CAST(N'2021-05-11T09:07:19.747' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (31, 9, 17, 1, N'<p>b&igrave;nh luận n&egrave;</p>
', CAST(N'2021-05-11T14:43:39.000' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (32, 9, 17, 1, N'<p>b&igrave;nh luận</p>
', CAST(N'2021-05-11T14:42:03.000' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (33, 8, 17, 1, N'bình luận', CAST(N'2021-05-11T14:14:43.343' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (34, 8, 17, 1, N'test bình luận hôm nay', CAST(N'2021-05-11T14:15:24.043' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (35, 8, 17, 1, N'test bình luận hôm nay', CAST(N'2021-05-11T14:15:27.850' AS DateTime), 34, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (36, 6, 0, 1, N'<p>bbbb</p>
', CAST(N'2021-05-11T17:09:23.000' AS DateTime), 25, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (37, 3, 17, 1, N'bình luận', CAST(N'2021-06-08T19:33:09.573' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[p1000shopcomment] OFF
GO
SET IDENTITY_INSERT [dbo].[p100menu] ON 

INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (1, 0, 0, N'DashBoard', N'/manager/home', N'fas fa-chart-line', 1)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (2, 0, 1, N'Manage Permission', N'', N'fas fa-book-spells', 2)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (3, 2, 0, N'Menu', N'/manager/c2-menu', N'fas fa-bars', 3)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (4, 2, 0, N'Department', N'/manager/c3-role', N'fas fa-building', 4)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (5, 2, 0, N'Account', N'/manager/c1-account', N'fas fa-user-circle', 5)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (6, 41, 0, N'Banner', N'/manager/c5-Banner', N'far fa-image', 6)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (7, 41, 0, N'Footer', N'/manager/c6-Footer', N'fas fa-atlas', 7)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (8, 41, 0, N'HeaderInfo', N'/manager/c7-HeaderInfo', N'fas fa-globe-americas', 8)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (9, 36, 0, N'Product', N'/manager/c8-Shop', N'fas fa-shopping-bag', 9)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (10, 36, 0, N'ShopSetting', N'/manager/c9-ShopCombo', N'fas fa-gifts', 10)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (11, 36, 2, N'ShopComboDetail', N'/manager/c10-ShopComboDetail', N'fas fa-cart-plus', 11)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (12, 43, 0, N'ShopComment', N'/manager/c11-ShopComment', N'fas fa-comment-dollar', 12)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (13, 36, 0, N'ShopCategories', N'/manager/c12-ShopCategories', N'far fa-address-card', 13)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (14, 36, 2, N'MealPlanType', N'/manager/c13-MealPlanType', N'fas fa-gem', 14)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (15, 40, 0, N'BlogCategories', N'/manager/c14-BlogCategories', N'fab fa-blogger', 15)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (16, 40, 0, N'Blog', N'/manager/c15-Blog', N'fas fa-rss-square', 16)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (17, 41, 0, N'ContactInfo', N'/manager/c16-ContactInfo', N'far fa-address-card', 17)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (18, 39, 0, N'ContactStatus', N'/manager/c17-ContactStatus', N'fas fa-id-card-alt', 18)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (19, 39, 0, N'ContactUs', N'/manager/c18-ContactUs', N'far fa-id-card', 19)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (20, 38, 0, N'UserStatus', N'/manager/c19-UserStatus', N'fas fa-id-card-alt', 20)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (21, 38, 0, N'RoleUser', N'/manager/c20-RoleUser', N'far fa-id-card', 21)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (22, 38, 0, N'User', N'/manager/c21-User', N'fas fa-users', 22)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (23, 36, 0, N'Promotion', N'/manager/c22-Promotion', N'fas fa-ad', 23)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (24, 37, 0, N'OrderStatus', N'/manager/c23-OrderStatus', N'fas fa-star', 24)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (25, 37, 0, N' PaymentStatus', N'/manager/c24-PaymentStatus', N'fab fa-amazon-pay', 25)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (26, 37, 0, N'PaymentType', N'/manager/c25-PaymentType', N'fab fa-paypal', 26)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (27, 42, 0, N'City', N'/manager/c26-City', N'fas fa-city', 27)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (28, 42, 0, N'District', N'/manager/c27-District', N'fas fa-university', 28)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (29, 36, 0, N'ProductType', N'/manager/c28-ProductType', N'fas fa-coins', 29)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (30, 37, 0, N'OrderShop', N'/manager/c29-OrderShop', N'fas fa-shopping-basket', 30)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (31, 37, 2, N'OrderDetail', N'/manager/c30-OrderDetail', N'fas fa-shopping-bag', 31)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (32, 43, 0, N'CommentStatus', N'/manager/c31-CommentStatus', N'far fa-comment-alt', 32)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (33, 38, 2, N'MyPromotion', N'/manager/c32-MyPromotion', N'fas fa-gem', 33)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (34, 42, 0, N'InputProduct', N'/manager/c33-InputProduct', N'fas fa-file-import', 34)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (35, 42, 0, N'Warehouse', N'/manager/c34-Warehouse', N'fas fa-warehouse', 35)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (36, 0, 1, N'Manage Shop', N'', N'fas fa-store-alt', 2)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (37, 0, 1, N'Manage Order', N'', N'fas fa-file-invoice-dollar', 3)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (38, 0, 1, N'User', N'', N'fas fa-users', 4)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (39, 0, 1, N'User Contact', N'', N'fas fa-id-card', 5)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (40, 0, 2, N'Manage News', N'', N'fas fa-newspaper', 6)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (41, 0, 1, N'Setting Homepage', N'', N'fas fa-sliders-h', 7)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (42, 0, 1, N'Manage WareHouse', N'', N'fas fa-warehouse', 8)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (43, 0, 1, N'Manage Comment', N'', N'fas fa-comments', 9)
SET IDENTITY_INSERT [dbo].[p100menu] OFF
GO
SET IDENTITY_INSERT [dbo].[p1100shopcategories] ON 

INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (1, N'Máy ảnh', N'http://127.0.0.1:8000/images\2021_04_28_09_47_21_camera.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (2, N'Laptop', N'http://127.0.0.1:8000/images\2021_04_28_09_47_28_maytinh.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (3, N'Đồng hồ', N'http://127.0.0.1:8000/images\2021_04_29_08_57_42_dongho.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (4, N'Đồ gia dụng', N'http://127.0.0.1:8000/images\2021_04_29_08_58_00_dogiadung.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (5, N'Giày dép', N'http://127.0.0.1:8000/images\2021_04_29_08_58_07_giay.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (6, N'Đồ nữ', N'http://127.0.0.1:8000/images\2021_04_29_08_58_17_giaynu.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (7, N'Mẹ và bé', N'http://127.0.0.1:8000/images\2021_04_29_08_58_34_me_be.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (8, N'Đồ bếp', N'http://127.0.0.1:8000/images\2021_04_29_08_59_00_nhacua.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (9, N'Túi xách', N'http://127.0.0.1:8000/images\2021_04_29_09_00_02_tuivinu.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (10, N'Thiết bị điện tử', N'http://127.0.0.1:8000/images\2021_04_29_09_00_17_tbdt.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (11, N'Áo nữ', N'http://127.0.0.1:8000/images\2021_04_29_09_00_30_thoitrangnu.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (12, N'Áo nam', N'http://127.0.0.1:8000/images\2021_04_29_09_00_39_thoitrangnam.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (13, N'Điện thoại', N'http://127.0.0.1:8000/images\2021_04_29_09_01_04_phone.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (14, N'Tai nghe', N'http://127.0.0.1:8000/images\2021_04_29_09_01_51_oktt.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (15, N'Xe', N'http://127.0.0.1:8000/images\2021_04_29_09_02_05_oto.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (16, N'Thể thao', N'http://127.0.0.1:8000/images\2021_04_29_09_02_21_thethao.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (17, N'sản phẩm test', N'http://127.0.0.1:8000/images\2021_05_17_16_51_31_Chup-hinh-san-pham-Root-03.jpg')
SET IDENTITY_INSERT [dbo].[p1100shopcategories] OFF
GO
SET IDENTITY_INSERT [dbo].[p1300blogcategories] ON 

INSERT [dbo].[p1300blogcategories] ([id], [Name]) VALUES (1, N'Tin tức')
INSERT [dbo].[p1300blogcategories] ([id], [Name]) VALUES (2, N'Đời sống')
SET IDENTITY_INSERT [dbo].[p1300blogcategories] OFF
GO
SET IDENTITY_INSERT [dbo].[p1400blog] ON 

INSERT [dbo].[p1400blog] ([id], [IdBlogCategories], [Title], [Thumbnail], [Description], [Content], [NumberView], [CreatedAt], [UpdatedAt]) VALUES (1, 1, N'bbbbb', N'http://127.0.0.1:8000/images\2021_04_28_09_32_24_item-menu.jpg', N'ádasd', N'<p>cvbcvb</p>

<p>\n</p>
', 10, CAST(N'2021-04-02T09:32:26.000' AS DateTime), CAST(N'2021-04-10T09:32:26.000' AS DateTime))
INSERT [dbo].[p1400blog] ([id], [IdBlogCategories], [Title], [Thumbnail], [Description], [Content], [NumberView], [CreatedAt], [UpdatedAt]) VALUES (2, 2, N'nnnn', N'http://127.0.0.1:8000/images\2021_04_28_09_32_31_3 vi.jpg', N'sdfsd', N'<p>345345</p>

<p>\n</p>
', 6, CAST(N'2021-04-01T09:32:32.000' AS DateTime), CAST(N'2021-04-01T09:32:32.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[p1400blog] OFF
GO
SET IDENTITY_INSERT [dbo].[p1500contactinfo] ON 

INSERT [dbo].[p1500contactinfo] ([id], [Address], [Phone], [Mail], [Working], [Facebook], [Instagram], [Youtube], [Twitter], [Map]) VALUES (1, N'183 Quách Thị Trang1111', N'0966250693', N'luongthanhbinh45@gmail.com', N'8:00 AM - 10:00 PM', N'https://www.facebook.com/izisoftwaredanang/', N'https://www.facebook.com/izisoftwaredanang/', N'https://www.facebook.com/izisoftwaredanang/', N'https://www.facebook.com/izisoftwaredanang/', N'<p><iframe height="450" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.1687642996817!2d108.22204811514789!3d16.004727888920772!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421a104a344fa9%3A0x3214d6e27e11473e!2zMTgzIFF1w6FjaCBUaOG7iyBUcmFuZywgSG_DoCBYdcOibiwgQ-G6qW0gTOG7hywgxJDDoCBO4bq1bmcgNTUwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1619661390011!5m2!1svi!2s" style="border:0;" width="600"></iframe></p>
')
SET IDENTITY_INSERT [dbo].[p1500contactinfo] OFF
GO
SET IDENTITY_INSERT [dbo].[p1600contactstatus] ON 

INSERT [dbo].[p1600contactstatus] ([id], [Name]) VALUES (1, N'Mới gửi')
SET IDENTITY_INSERT [dbo].[p1600contactstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p1700contactus] ON 

INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (1, NULL, N'ducadsas', N'minhducand@gmail.com', N'ádasd')
INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (2, NULL, N'ducadsas', N'minhducand@gmail.com', N'ádasd')
INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (3, 1, N'3453234', N'minhducand@gmail.com', N'23423')
INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (4, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'54656')
INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (5, 1, N'rolie', N'test@gmail.com', N'bbb')
SET IDENTITY_INSERT [dbo].[p1700contactus] OFF
GO
SET IDENTITY_INSERT [dbo].[p1800userstatus] ON 

INSERT [dbo].[p1800userstatus] ([id], [Name]) VALUES (1, N'Mới đăng ký')
SET IDENTITY_INSERT [dbo].[p1800userstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p1900roleuser] ON 

INSERT [dbo].[p1900roleuser] ([id], [Name]) VALUES (1, N'Khách hàng')
INSERT [dbo].[p1900roleuser] ([id], [Name]) VALUES (2, N'Khách Vip')
SET IDENTITY_INSERT [dbo].[p1900roleuser] OFF
GO
SET IDENTITY_INSERT [dbo].[p2000user] ON 

INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (1, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'020F80EC82D9A9EB21B53468F3F97E39', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-03-30T13:56:47.000' AS DateTime), CAST(N'2021-05-10T13:56:47.000' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', 1000)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (17, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'6A50CE6F7C366CB17C71FB6EA5CC3D1D', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-04T13:56:54.000' AS DateTime), CAST(N'2021-05-11T13:56:54.000' AS DateTime), N'luongthanhbinh45@gmail.com', N'0966150693', N'1', N'1', N'1', N'56456', 70)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (18, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'B379B04B1FB4E5AB34E0C3ABCE88757D', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-04T19:49:37.000' AS DateTime), CAST(N'2021-05-04T19:49:37.000' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', 10)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (19, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-04T15:22:17.600' AS DateTime), CAST(N'2021-05-04T15:22:17.600' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (20, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-04T15:56:32.577' AS DateTime), CAST(N'2021-05-04T15:56:32.577' AS DateTime), N'19k4111007@hce.edu.vn', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (21, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-06T13:36:51.867' AS DateTime), CAST(N'2021-05-06T13:36:51.867' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (22, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-06T13:42:02.530' AS DateTime), CAST(N'2021-05-06T13:42:02.530' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (23, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-06T13:43:43.407' AS DateTime), CAST(N'2021-05-06T13:43:43.407' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (24, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'B389B2B1251E0D8BAF3C1219C14BBD56', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-06T13:56:41.000' AS DateTime), CAST(N'2021-05-06T13:56:41.000' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', 1000)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (25, 1, N'Pham Van Minh Duc', N'minhducand@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://127.0.0.1:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-07T09:22:37.430' AS DateTime), CAST(N'2021-05-07T09:22:37.430' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (26, 1, N'bbbbb', N'6456456@gmail.com', N'72816E4D3C7168B39CCC277912208E37', N'http://127.0.0.1:8000/images\2021_05_10_19_45_24_favicon.ico', 1, CAST(N'2021-05-10T19:45:36.000' AS DateTime), CAST(N'2021-05-10T19:45:36.000' AS DateTime), NULL, N'+84966150693', N'1', N'1', N'1', N'K123/H20 Cù Chính Lan', NULL)
SET IDENTITY_INSERT [dbo].[p2000user] OFF
GO
SET IDENTITY_INSERT [dbo].[p200role] ON 

INSERT [dbo].[p200role] ([id], [Name]) VALUES (1, N'ADMIN')
INSERT [dbo].[p200role] ([id], [Name]) VALUES (22, N'Chăm sóc khách hàng')
SET IDENTITY_INSERT [dbo].[p200role] OFF
GO
SET IDENTITY_INSERT [dbo].[p2100promotion] ON 

INSERT [dbo].[p2100promotion] ([id], [Name], [PromotionCode], [PercentCode], [MoneyDiscount], [StartDate], [EndDate], [Point]) VALUES (1, N'Khuyến mãi 30-4', N'G50', 0, 300000, CAST(N'2021-04-29' AS Date), CAST(N'2021-05-04' AS Date), 5)
INSERT [dbo].[p2100promotion] ([id], [Name], [PromotionCode], [PercentCode], [MoneyDiscount], [StartDate], [EndDate], [Point]) VALUES (20, N'Khuyến mãi', N'G30', 30, 0, CAST(N'2021-04-30' AS Date), CAST(N'2021-06-30' AS Date), 5)
SET IDENTITY_INSERT [dbo].[p2100promotion] OFF
GO
SET IDENTITY_INSERT [dbo].[p2200orderstatus] ON 

INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (1, N'Mới đặt hàng')
INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (2, N'Đang xử lý')
INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (3, N'Ðang giao hàng')
INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (4, N'Đã nhận hàng')
INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (5, N'Đã huỷ')
SET IDENTITY_INSERT [dbo].[p2200orderstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p2300paymentstatus] ON 

INSERT [dbo].[p2300paymentstatus] ([id], [Name]) VALUES (1, N'Chưa thanh toán')
INSERT [dbo].[p2300paymentstatus] ([id], [Name]) VALUES (2, N'Ðã thanh toán')
SET IDENTITY_INSERT [dbo].[p2300paymentstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p2400paymenttype] ON 

INSERT [dbo].[p2400paymenttype] ([id], [Name]) VALUES (1, N'Tiền mặt')
INSERT [dbo].[p2400paymenttype] ([id], [Name]) VALUES (2, N'Chuyển khoản')
INSERT [dbo].[p2400paymenttype] ([id], [Name]) VALUES (3, N'Paypal')
SET IDENTITY_INSERT [dbo].[p2400paymenttype] OFF
GO
SET IDENTITY_INSERT [dbo].[p2500city] ON 

INSERT [dbo].[p2500city] ([id], [Name]) VALUES (1, N'Hà Nội')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (2, N'Hà Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (4, N'Cao Bằng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (6, N'Bắc Kạn')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (8, N'Tuyên Quang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (10, N'Lào Cai')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (11, N'Điện Biên')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (12, N'Lai Châu')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (14, N'Sơn La')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (15, N'Yên Bái')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (17, N'Hoà Bình')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (19, N'Thái Nguyên')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (20, N'Lạng Sơn')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (22, N'Quảng Ninh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (24, N'Bắc Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (25, N'Phú Thọ')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (26, N'Vĩnh Phúc')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (27, N'Bắc Ninh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (30, N'Hải Dương')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (31, N'Hải Phòng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (33, N'Hưng Yên')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (34, N'Thái Bình')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (35, N'Hà Nam')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (36, N'Nam Định')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (37, N'Ninh Bình')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (38, N'Thanh Hóa')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (40, N'Nghệ An')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (42, N'Hà Tĩnh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (44, N'Quảng Bình')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (45, N'Quảng Trị')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (46, N'Huế')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (48, N'Đà Nẵng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (49, N'Quảng Nam')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (51, N'Quảng Ngãi')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (52, N'Bình Định')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (54, N'Phú Yên')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (56, N'Khánh Hòa')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (58, N'Ninh Thuận')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (60, N'Bình Thuận')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (62, N'Kon Tum')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (64, N'Gia Lai')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (66, N'Đắk Lắk')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (67, N'Đắk Nông')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (68, N'Lâm Đồng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (70, N'Bình Phước')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (72, N'Tây Ninh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (74, N'Bình Dương')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (75, N'Đồng Nai')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (77, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (79, N'Hồ Chí Minh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (80, N'Long An')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (82, N'Tiền Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (83, N'Bến Tre')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (84, N'Trà Vinh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (86, N'Vĩnh Long')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (87, N'Đồng Tháp')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (89, N'An Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (91, N'Kiên Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (92, N'Cần Thơ')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (93, N'Hậu Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (94, N'Sóc Trăng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (95, N'Bạc Liêu')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (96, N'Cà Mau')
SET IDENTITY_INSERT [dbo].[p2500city] OFF
GO
SET IDENTITY_INSERT [dbo].[p2600district] ON 

INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (1, 1, N'Ba Đình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (2, 1, N'Hoàn Kiếm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (3, 1, N'Tây Hồ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (4, 1, N'Long Biên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (5, 1, N'Cầu Giấy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (6, 1, N'Đống Đa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (7, 1, N'Hai Bà Trưng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (8, 1, N'Hoàng Mai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (9, 1, N'Thanh Xuân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (16, 1, N'Sóc Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (17, 1, N'Đông Anh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (18, 1, N'Gia Lâm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (19, 1, N'Nam Từ Liêm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (20, 1, N'Thanh Trì')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (21, 1, N'Bắc Từ Liêm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (24, 2, N'Thành phố Hà Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (26, 2, N'Đồng Văn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (27, 2, N'Mèo Vạc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (28, 2, N'Yên Minh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (29, 2, N'Quản Bạ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (30, 2, N'Vị Xuyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (31, 2, N'Bắc Mê')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (32, 2, N'Hoàng Su Phì')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (33, 2, N'Xín Mần')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (34, 2, N'Bắc Quang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (35, 2, N'Quang Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (40, 4, N'Thành phố Cao Bằng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (42, 4, N'Bảo Lâm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (43, 4, N'Bảo Lạc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (44, 4, N'Thông Nông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (45, 4, N'Hà Quảng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (46, 4, N'Trà Lĩnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (47, 4, N'Trùng Khánh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (48, 4, N'Hạ Lang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (49, 4, N'Quảng Uyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (50, 4, N'Phục Hoà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (51, 4, N'Hoà An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (52, 4, N'Nguyên Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (53, 4, N'Thạch An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (58, 6, N'Thành Phố Bắc Kạn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (60, 6, N'Pác Nặm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (61, 6, N'Ba Bể')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (62, 6, N'Ngân Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (63, 6, N'Bạch Thông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (64, 6, N'Chợ Đồn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (65, 6, N'Chợ Mới')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (66, 6, N'Na Rì')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (70, 8, N'Thành phố Tuyên Quang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (71, 8, N'Lâm Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (72, 8, N'Nà Hang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (73, 8, N'Chiêm Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (74, 8, N'Hàm Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (75, 8, N'Yên Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (76, 8, N'Sơn Dương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (80, 10, N'Thành phố Lào Cai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (82, 10, N'Bát Xát')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (83, 10, N'Mường Khương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (84, 10, N'Si Ma Cai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (85, 10, N'Bắc Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (86, 10, N'Bảo Thắng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (87, 10, N'Bảo Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (88, 10, N'Sa Pa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (89, 10, N'Văn Bàn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (94, 11, N'Thành phố Điện Biên Phủ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (95, 11, N'Thị Xã Mường Lay')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (96, 11, N'Mường Nhé')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (97, 11, N'Mường Chà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (98, 11, N'Tủa Chùa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (99, 11, N'Tuần Giáo')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (100, 11, N'Điện Biên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (101, 11, N'Điện Biên Đông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (102, 11, N'Mường Ảng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (103, 11, N'Nậm Pồ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (105, 12, N'Thành phố Lai Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (106, 12, N'Tam Đường')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (107, 12, N'Mường Tè')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (108, 12, N'Sìn Hồ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (109, 12, N'Phong Thổ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (110, 12, N'Than Uyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (111, 12, N'Tân Uyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (112, 12, N'Nậm Nhùn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (116, 14, N'Thành phố Sơn La')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (118, 14, N'Quỳnh Nhai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (119, 14, N'Thuận Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (120, 14, N'Mường La')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (121, 14, N'Bắc Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (122, 14, N'Phù Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (123, 14, N'Mộc Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (124, 14, N'Yên Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (125, 14, N'Mai Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (126, 14, N'Sông Mã')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (127, 14, N'Sốp Cộp')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (128, 14, N'Vân Hồ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (132, 15, N'Thành phố Yên Bái')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (133, 15, N'Thị xã Nghĩa Lộ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (135, 15, N'Lục Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (136, 15, N'Văn Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (137, 15, N'Mù Căng Chải')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (138, 15, N'Trấn Yên')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (139, 15, N'Trạm Tấu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (140, 15, N'Văn Chấn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (141, 15, N'Yên Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (148, 17, N'Thành phố Hòa Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (150, 17, N'Đà Bắc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (151, 17, N'Kỳ Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (152, 17, N'Lương Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (153, 17, N'Kim Bôi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (154, 17, N'Cao Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (155, 17, N'Tân Lạc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (156, 17, N'Mai Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (157, 17, N'Lạc Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (158, 17, N'Yên Thủy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (159, 17, N'Lạc Thủy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (164, 19, N'Thành phố Thái Nguyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (165, 19, N'Thành phố Sông Công')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (167, 19, N'Định Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (168, 19, N'Phú Lương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (169, 19, N'Đồng Hỷ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (170, 19, N'Võ Nhai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (171, 19, N'Đại Từ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (172, 19, N'Thị xã Phổ Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (173, 19, N'Phú Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (178, 20, N'Thành phố Lạng Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (180, 20, N'Tràng Định')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (181, 20, N'Bình Gia')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (182, 20, N'Văn Lãng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (183, 20, N'Cao Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (184, 20, N'Văn Quan')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (185, 20, N'Bắc Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (186, 20, N'Hữu Lũng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (187, 20, N'Chi Lăng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (188, 20, N'Lộc Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (189, 20, N'Đình Lập')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (193, 22, N'Thành phố Hạ Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (194, 22, N'Thành phố Móng Cái')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (195, 22, N'Thành phố Cẩm Phả')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (196, 22, N'Thành phố Uông Bí')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (198, 22, N'Bình Liêu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (199, 22, N'Tiên Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (200, 22, N'Đầm Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (201, 22, N'Hải Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (202, 22, N'Ba Chẽ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (203, 22, N'Vân Đồn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (204, 22, N'Hoành Bồ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (205, 22, N'Thị xã Đông Triều')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (206, 22, N'Thị xã Quảng Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (207, 22, N'Cô Tô')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (213, 24, N'Thành phố Bắc Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (215, 24, N'Yên Thế')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (216, 24, N'Tân Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (217, 24, N'Lạng Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (218, 24, N'Lục Nam')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (219, 24, N'Lục Ngạn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (220, 24, N'Sơn Động')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (221, 24, N'Yên Dũng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (222, 24, N'Việt Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (223, 24, N'Hiệp Hòa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (227, 25, N'Thành phố Việt Trì')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (228, 25, N'Thị xã Phú Thọ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (230, 25, N'Đoan Hùng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (231, 25, N'Hạ Hoà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (232, 25, N'Thanh Ba')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (233, 25, N'Phù Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (234, 25, N'Yên Lập')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (235, 25, N'Cẩm Khê')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (236, 25, N'Tam Nông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (237, 25, N'Lâm Thao')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (238, 25, N'Thanh Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (239, 25, N'Thanh Thuỷ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (240, 25, N'Tân Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (243, 26, N'Thành phố Vĩnh Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (244, 26, N'Thị xã Phúc Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (246, 26, N'Lập Thạch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (247, 26, N'Tam Dương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (248, 26, N'Tam Đảo')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (249, 26, N'Bình Xuyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (250, 1, N'NMê Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (251, 26, N'Yên Lạc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (252, 26, N'Vĩnh Tường')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (253, 26, N'Sông Lô')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (256, 27, N'Thành phố Bắc Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (258, 27, N'Yên Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (259, 27, N'Quế Võ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (260, 27, N'Tiên Du')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (261, 27, N'Thị xã Từ Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (262, 27, N'Thuận Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (263, 27, N'Gia Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (264, 27, N'Lương Tài')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (268, 1, N'NHà Ðông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (269, 1, N'NTh? xã Son Tây')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (271, 1, N'NBa Vì')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (272, 1, N'NPhúc Th?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (273, 1, N'NÐan Phu?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (274, 1, N'NHoài Ð?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (275, 1, N'NQu?c Oai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (276, 1, N'NTh?ch Th?t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (277, 1, N'NChuong M?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (278, 1, N'NThanh Oai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (279, 1, N'NThu?ng Tín')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (280, 1, N'NPhú Xuyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (281, 1, N'N?ng Hòa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (282, 1, N'NM? Ð?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (288, 30, N'Thành phố Hải Dương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (290, 30, N'Thị xã Chí Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (291, 30, N'Nam Sách')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (292, 30, N'Kinh Môn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (293, 30, N'Kim Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (294, 30, N'Thanh Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (295, 30, N'Cẩm Giàng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (296, 30, N'Bình Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (297, 30, N'Gia Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (298, 30, N'Tứ Kỳ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (299, 30, N'Ninh Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (300, 30, N'Thanh Miện')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (303, 31, N'Hồng Bàng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (304, 31, N'Ngô Quyền')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (305, 31, N'Lê Chân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (306, 31, N'Hải An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (307, 31, N'Kiến An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (308, 31, N'Đồ Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (309, 31, N'Dương Kinh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (311, 31, N'Thuỷ Nguyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (312, 31, N'An Dương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (313, 31, N'An Lão')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (314, 31, N'Kiến Thuỵ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (315, 31, N'Tiên Lãng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (316, 31, N'Vĩnh Bảo')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (317, 31, N'Cát Hải')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (318, 31, N'Bạch Long Vĩ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (323, 33, N'Thành phố Hưng Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (325, 33, N'Văn Lâm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (326, 33, N'Văn Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (327, 33, N'Yên Mỹ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (328, 33, N'Mỹ Hào')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (329, 33, N'Ân Thi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (330, 33, N'Khoái Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (331, 33, N'Kim Động')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (332, 33, N'Tiên Lữ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (333, 33, N'Phù Cừ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (336, 34, N'Thành phố Thái Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (338, 34, N'Quỳnh Phụ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (339, 34, N'Hưng Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (340, 34, N'Đông Hưng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (341, 34, N'Thái Thụy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (342, 34, N'Tiền Hải')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (343, 34, N'Kiến Xương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (344, 34, N'Vũ Thư')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (347, 35, N'Thành phố Phủ Lý')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (349, 35, N'Duy Tiên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (350, 35, N'Kim Bảng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (351, 35, N'Thanh Liêm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (352, 35, N'Bình Lục')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (353, 35, N'Lý Nhân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (356, 36, N'Thành phố Nam Định')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (358, 36, N'Mỹ Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (359, 36, N'Vụ Bản')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (360, 36, N'Ý Yên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (361, 36, N'Nghĩa Hưng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (362, 36, N'Nam Trực')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (363, 36, N'Trực Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (364, 36, N'Xuân Trường')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (365, 36, N'Giao Thủy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (366, 36, N'Hải Hậu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (369, 37, N'Thành phố Ninh Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (370, 37, N'Thành phố Tam Điệp')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (372, 37, N'Nho Quan')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (373, 37, N'Gia Viễn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (374, 37, N'Hoa Lư')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (375, 37, N'Yên Khánh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (376, 37, N'Kim Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (377, 37, N'Yên Mô')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (380, 38, N'Thành phố Thanh Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (381, 38, N'Thị xã Bỉm Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (382, 38, N'Thị xã Sầm Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (384, 38, N'Mường Lát')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (385, 38, N'Quan Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (386, 38, N'Bá Thước')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (387, 38, N'Quan Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (388, 38, N'Lang Chánh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (389, 38, N'Ngọc Lặc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (390, 38, N'Cẩm Thủy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (391, 38, N'Thạch Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (392, 38, N'Hà Trung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (393, 38, N'Vĩnh Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (394, 38, N'Yên Định')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (395, 38, N'Thọ Xuân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (396, 38, N'Thường Xuân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (397, 38, N'Triệu Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (398, 38, N'Thiệu Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (399, 38, N'Hoằng Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (400, 38, N'Hậu Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (401, 38, N'Nga Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (402, 38, N'Như Xuân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (403, 38, N'Như Thanh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (404, 38, N'Nông Cống')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (405, 38, N'Đông Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (406, 38, N'Quảng Xương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (407, 38, N'Tĩnh Gia')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (412, 40, N'Thành phố Vinh')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (413, 40, N'Thị xã Cửa Lò')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (414, 40, N'Thị xã Thái Hoà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (415, 40, N'Quế Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (416, 40, N'Quỳ Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (417, 40, N'Kỳ Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (418, 40, N'Tương Dương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (419, 40, N'Nghĩa Đàn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (420, 40, N'Quỳ Hợp')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (421, 40, N'Quỳnh Lưu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (422, 40, N'Con Cuông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (423, 40, N'Tân Kỳ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (424, 40, N'Anh Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (425, 40, N'Diễn Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (426, 40, N'Yên Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (427, 40, N'Đô Lương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (428, 40, N'Thanh Chương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (429, 40, N'Nghi Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (430, 40, N'Nam Đàn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (431, 40, N'Hưng Nguyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (432, 40, N'Thị xã Hoàng Mai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (436, 42, N'Thành phố Hà Tĩnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (437, 42, N'Thị xã Hồng Lĩnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (439, 42, N'Hương Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (440, 42, N'Đức Thọ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (441, 42, N'Vũ Quang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (442, 42, N'Nghi Xuân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (443, 42, N'Can Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (444, 42, N'Hương Khê')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (445, 42, N'Thạch Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (446, 42, N'Cẩm Xuyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (447, 42, N'Kỳ Anh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (448, 42, N'Lộc Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (449, 42, N'Thị xã Kỳ Anh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (450, 44, N'Thành Phố Đồng Hới')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (452, 44, N'Minh Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (453, 44, N'Tuyên Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (454, 44, N'Quảng Trạch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (455, 44, N'Bố Trạch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (456, 44, N'Quảng Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (457, 44, N'Lệ Thủy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (458, 44, N'Thị xã Ba Đồn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (461, 45, N'Thành phố Đông Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (462, 45, N'Thị xã Quảng Trị')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (464, 45, N'Vĩnh Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (465, 45, N'Hướng Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (466, 45, N'Gio Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (467, 45, N'Đa Krông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (468, 45, N'Cam Lộ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (469, 45, N'Triệu Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (470, 45, N'Hải Lăng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (471, 45, N'Cồn Cỏ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (474, 46, N'Thành phố Huế')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (476, 46, N'Phong Điền')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (477, 46, N'Quảng Điền')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (478, 46, N'Phú Vang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (479, 46, N'Thị xã Hương Thủy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (480, 46, N'Thị xã Hương Trà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (481, 46, N'A Lưới')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (482, 46, N'Phú Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (483, 46, N'Nam Đông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (490, 48, N'Liên Chiểu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (491, 48, N'Thanh Khê')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (492, 48, N'Hải Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (493, 48, N'Sơn Trà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (494, 48, N'Ngũ Hành Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (495, 48, N'Cẩm Lệ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (497, 48, N'Hòa Vang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (498, 48, N'Hoàng Sa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (502, 49, N'Thành phố Tam Kỳ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (503, 49, N'Thành phố Hội An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (504, 49, N'Tây Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (505, 49, N'Đông Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (506, 49, N'Đại Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (507, 49, N'Thị xã Điện Bàn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (508, 49, N'Duy Xuyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (509, 49, N'Quế Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (510, 49, N'Nam Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (511, 49, N'Phước Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (512, 49, N'Hiệp Đức')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (513, 49, N'Thăng Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (514, 49, N'Tiên Phước')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (515, 49, N'Bắc Trà My')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (516, 49, N'Nam Trà My')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (517, 49, N'Núi Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (518, 49, N'Phú Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (519, 49, N'Nông Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (522, 51, N'Thành phố Quảng Ngãi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (524, 51, N'Bình Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (525, 51, N'Trà Bồng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (526, 51, N'Tây Trà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (527, 51, N'Sơn Tịnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (528, 51, N'Tư Nghĩa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (529, 51, N'Sơn Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (530, 51, N'Sơn Tây')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (531, 51, N'Minh Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (532, 51, N'Nghĩa Hành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (533, 51, N'Mộ Đức')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (534, 51, N'Đức Phổ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (535, 51, N'Ba Tơ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (536, 51, N'Lý Sơn')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (540, 52, N'Thành phố Qui Nhơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (542, 52, N'An Lão')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (543, 52, N'Hoài Nhơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (544, 52, N'Hoài Ân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (545, 52, N'Phù Mỹ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (546, 52, N'Vĩnh Thạnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (547, 52, N'Tây Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (548, 52, N'Phù Cát')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (549, 52, N'Thị xã An Nhơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (550, 52, N'Tuy Phước')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (551, 52, N'Vân Canh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (555, 54, N'Thành phố Tuy Hoà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (557, 54, N'Thị xã Sông Cầu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (558, 54, N'Đồng Xuân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (559, 54, N'Tuy An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (560, 54, N'Sơn Hòa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (561, 54, N'Sông Hinh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (562, 54, N'Tây Hoà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (563, 54, N'Phú Hoà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (564, 54, N'Đông Hòa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (568, 56, N'Thành phố Nha Trang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (569, 56, N'Thành phố Cam Ranh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (570, 56, N'Cam Lâm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (571, 56, N'Vạn Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (572, 56, N'Thị xã Ninh Hòa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (573, 56, N'Khánh Vĩnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (574, 56, N'Diên Khánh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (575, 56, N'Khánh Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (576, 56, N'Trường Sa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (582, 58, N'Thành phố Phan Rang-Tháp Chàm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (584, 58, N'Bác Ái')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (585, 58, N'Ninh Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (586, 58, N'Ninh Hải')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (587, 58, N'Ninh Phước')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (588, 58, N'Thuận Bắc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (589, 58, N'Thuận Nam')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (593, 60, N'Thành phố Phan Thiết')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (594, 60, N'Thị xã La Gi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (595, 60, N'Tuy Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (596, 60, N'Bắc Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (597, 60, N'Hàm Thuận Bắc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (598, 60, N'Hàm Thuận Nam')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (599, 60, N'Tánh Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (600, 60, N'Đức Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (601, 60, N'Hàm Tân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (602, 60, N'Phú Quí')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (608, 62, N'Thành phố Kon Tum')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (610, 62, N'Đắk Glei')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (611, 62, N'Ngọc Hồi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (612, 62, N'Đắk Tô')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (613, 62, N'Kon Plông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (614, 62, N'Kon Rẫy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (615, 62, N'Đắk Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (616, 62, N'Sa Thầy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (617, 62, N'Tu Mơ Rông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (618, 62, N'Ia H Drai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (622, 64, N'Thành phố Pleiku')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (623, 64, N'Thị xã An Khê')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (624, 64, N'Thị xã Ayun Pa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (625, 64, N'KBang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (626, 64, N'Đăk Đoa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (627, 64, N'Chư Păh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (628, 64, N'Ia Grai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (629, 64, N'Mang Yang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (630, 64, N'Kông Chro')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (631, 64, N'Đức Cơ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (632, 64, N'Chư Prông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (633, 64, N'Chư Sê')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (634, 64, N'Đăk Pơ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (635, 64, N'Ia Pa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (637, 64, N'Krông Pa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (638, 64, N'Phú Thiện')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (639, 64, N'Chư Pưh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (643, 66, N'Thành phố Buôn Ma Thuột')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (644, 66, N'Thị Xã Buôn Hồ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (645, 66, N'Ea Hleo')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (646, 66, N'Ea Súp')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (647, 66, N'Buôn Đôn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (648, 66, N'Cư Mgar')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (649, 66, N'Krông Búk')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (650, 66, N'Krông Năng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (651, 66, N'Ea Kar')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (652, 66, N'MĐrắk')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (653, 66, N'Krông Bông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (654, 66, N'Krông Pắc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (655, 66, N'Krông A Na')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (656, 66, N'Lắk')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (657, 66, N'Cư Kuin')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (660, 67, N'Thị xã Gia Nghĩa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (661, 67, N'Đăk Glong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (662, 67, N'Cư Jút')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (663, 67, N'Đắk Mil')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (664, 67, N'Krông Nô')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (665, 67, N'Đắk Song')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (666, 67, N'Đắk RLấp')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (667, 67, N'Tuy Đức')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (672, 68, N'Thành phố Đà Lạt')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (673, 68, N'Thành phố Bảo Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (674, 68, N'Đam Rông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (675, 68, N'Lạc Dương')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (676, 68, N'Lâm Hà')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (677, 68, N'Đơn Dương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (678, 68, N'Đức Trọng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (679, 68, N'Di Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (680, 68, N'Bảo Lâm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (681, 68, N'Đạ Huoai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (682, 68, N'Đạ Tẻh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (683, 68, N'Cát Tiên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (688, 70, N'Thị xã Phước Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (689, 70, N'Thị xã Đồng Xoài')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (690, 70, N'Thị xã Bình Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (691, 70, N'Bù Gia Mập')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (692, 70, N'Lộc Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (693, 70, N'Bù Đốp')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (694, 70, N'Hớn Quản')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (695, 70, N'Đồng Phú')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (696, 70, N'Bù Đăng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (697, 70, N'Chơn Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (698, 70, N'Phú Riềng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (703, 72, N'Thành phố Tây Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (705, 72, N'Tân Biên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (706, 72, N'Tân Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (707, 72, N'Dương Minh Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (708, 72, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (709, 72, N'Hòa Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (710, 72, N'Gò Dầu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (711, 72, N'Bến Cầu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (712, 72, N'Trảng Bàng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (718, 74, N'Thành phố Thủ Dầu Một')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (719, 74, N'Bàu Bàng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (720, 74, N'Dầu Tiếng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (721, 74, N'Thị xã Bến Cát')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (722, 74, N'Phú Giáo')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (723, 74, N'Thị xã Tân Uyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (724, 74, N'Thị xã Dĩ An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (725, 74, N'Thị xã Thuận An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (726, 74, N'Bắc Tân Uyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (731, 75, N'Thành phố Biên Hòa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (732, 75, N'Thị xã Long Khánh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (734, 75, N'Tân Phú')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (735, 75, N'Vĩnh Cửu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (736, 75, N'Định Quán')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (737, 75, N'Trảng Bom')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (738, 75, N'Thống Nhất')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (739, 75, N'Cẩm Mỹ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (740, 75, N'Long Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (741, 75, N'Xuân Lộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (742, 75, N'Nhơn Trạch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (747, 77, N'Thành phố Vũng Tàu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (748, 77, N'Thành phố Bà Rịa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (750, 77, N'Châu Đức')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (751, 77, N'Xuyên Mộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (752, 77, N'Long Điền')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (753, 77, N'Đất Đỏ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (754, 77, N'Tân Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (755, 77, N'Côn Đảo')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (762, 79, N'Thủ Đức')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (764, 79, N'Gò Vấp')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (765, 79, N'Bình Thạnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (766, 79, N'Tân Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (767, 79, N'Tân Phú')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (768, 79, N'Phú Nhuận')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (777, 79, N'Bình Tân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (783, 79, N'Củ Chi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (784, 79, N'Hóc Môn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (785, 79, N'Bình Chánh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (786, 79, N'Nhà Bè')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (787, 79, N'Cần Giờ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (794, 80, N'Thành phố Tân An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (795, 80, N'Thị xã Kiến Tường')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (796, 80, N'Tân Hưng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (797, 80, N'Vĩnh Hưng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (798, 80, N'Mộc Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (799, 80, N'Tân Thạnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (800, 80, N'Thạnh Hóa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (801, 80, N'Đức Huệ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (802, 80, N'Đức Hòa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (803, 80, N'Bến Lức')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (804, 80, N'Thủ Thừa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (805, 80, N'Tân Trụ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (806, 80, N'Cần Đước')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (807, 80, N'Cần Giuộc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (808, 80, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (815, 82, N'Thành phố Mỹ Tho')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (816, 82, N'Thị xã Gò Công')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (817, 82, N'Thị xã Cai Lậy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (818, 82, N'Tân Phước')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (819, 82, N'Cái Bè')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (820, 82, N'Cai Lậy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (821, 82, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (822, 82, N'Chợ Gạo')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (823, 82, N'Gò Công Tây')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (824, 82, N'Gò Công Đông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (825, 82, N'Tân Phú Đông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (829, 83, N'Thành phố Bến Tre')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (831, 83, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (832, 83, N'Chợ Lách')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (833, 83, N'Mỏ Cày Nam')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (834, 83, N'Giồng Trôm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (835, 83, N'Bình Đại')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (836, 83, N'Ba Tri')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (837, 83, N'Thạnh Phú')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (838, 83, N'Mỏ Cày Bắc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (842, 84, N'Thành phố Trà Vinh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (844, 84, N'Càng Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (845, 84, N'Cầu Kè')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (846, 84, N'Tiểu Cần')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (847, 84, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (848, 84, N'Cầu Ngang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (849, 84, N'Trà Cú')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (850, 84, N'Duyên Hải')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (851, 84, N'Thị xã Duyên Hải')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (855, 86, N'Thành phố Vĩnh Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (857, 86, N'Long Hồ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (858, 86, N'Mang Thít')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (859, 86, N'Vũng Liêm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (860, 86, N'Tam Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (861, 86, N'Thị xã Bình Minh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (862, 86, N'Trà Ôn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (863, 86, N'Bình Tân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (866, 87, N'Thành phố Cao Lãnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (867, 87, N'Thành phố Sa Đéc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (868, 87, N'Thị xã Hồng Ngự')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (869, 87, N'Tân Hồng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (870, 87, N'Hồng Ngự')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (871, 87, N'Tam Nông')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (872, 87, N'Tháp Mười')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (873, 87, N'Cao Lãnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (874, 87, N'Thanh Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (875, 87, N'Lấp Vò')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (876, 87, N'Lai Vung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (877, 87, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (883, 89, N'Thành phố Long Xuyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (884, 89, N'Thành phố Châu Đốc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (886, 89, N'An Phú')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (887, 89, N'Thị xã Tân Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (888, 89, N'Phú Tân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (889, 89, N'Châu Phú')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (890, 89, N'Tịnh Biên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (891, 89, N'Tri Tôn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (892, 89, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (893, 89, N'Chợ Mới')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (894, 89, N'Thoại Sơn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (899, 91, N'Thành phố Rạch Giá')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (900, 91, N'Thị xã Hà Tiên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (902, 91, N'Kiên Lương')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (903, 91, N'Hòn Đất')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (904, 91, N'Tân Hiệp')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (905, 91, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (906, 91, N'Giồng Riềng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (907, 91, N'Gò Quao')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (908, 91, N'An Biên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (909, 91, N'An Minh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (910, 91, N'Vĩnh Thuận')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (911, 91, N'Phú Quốc')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (912, 91, N'Kiên Hải')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (913, 91, N'U Minh Thượng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (914, 91, N'Giang Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (916, 92, N'Ninh Kiều')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (917, 92, N'Ô Môn')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (918, 92, N'Bình Thuỷ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (919, 92, N'Cái Răng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (923, 92, N'Thốt Nốt')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (924, 92, N'Vĩnh Thạnh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (925, 92, N'Cờ Đỏ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (926, 92, N'Phong Điền')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (927, 92, N'Thới Lai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (930, 93, N'Thành phố Vị Thanh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (931, 93, N'Thị xã Ngã Bảy')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (932, 93, N'Châu Thành A')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (933, 93, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (934, 93, N'Phụng Hiệp')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (935, 93, N'Vị Thuỷ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (936, 93, N'Long Mỹ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (937, 93, N'Thị xã Long Mỹ')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (941, 94, N'Thành phố Sóc Trăng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (942, 94, N'Châu Thành')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (943, 94, N'Kế Sách')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (944, 94, N'Mỹ Tú')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (945, 94, N'Cù Lao Dung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (946, 94, N'Long Phú')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (947, 94, N'Mỹ Xuyên')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (948, 94, N'Thị xã Ngã Năm')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (949, 94, N'Thạnh Trị')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (950, 94, N'Thị xã Vĩnh Châu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (951, 94, N'Trần Đề')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (954, 95, N'Thành phố Bạc Liêu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (956, 95, N'Hồng Dân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (957, 95, N'Phước Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (958, 95, N'Vĩnh Lợi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (959, 95, N'Thị xã Giá Rai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (960, 95, N'Đông Hải')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (961, 95, N'Hoà Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (964, 96, N'Thành phố Cà Mau')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (966, 96, N'U Minh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (967, 96, N'Thới Bình')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (968, 96, N'Trần Văn Thời')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (969, 96, N'Cái Nước')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (970, 96, N'Đầm Dơi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (971, 96, N'Năm Căn')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (972, 96, N'Phú Tân')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (973, 96, N'Ngọc Hiển')
SET IDENTITY_INSERT [dbo].[p2600district] OFF
GO
SET IDENTITY_INSERT [dbo].[p2700producttype] ON 

INSERT [dbo].[p2700producttype] ([id], [Name]) VALUES (1, N'Sản phẩm mới')
SET IDENTITY_INSERT [dbo].[p2700producttype] OFF
GO
SET IDENTITY_INSERT [dbo].[p2800ordershop] ON 

INSERT [dbo].[p2800ordershop] ([id], [IdProductType], [IdUser], [IdOrderStatus], [IdCity], [IdDistrict], [IdPaymentStatus], [IdPaymentType], [TotalPrice], [PromotionCode], [Name], [Email], [Phone], [Address], [Note], [CreatedAt], [UpdatedAt], [Point]) VALUES (1, 1, 17, 4, 1, 1, 1, 1, 825000, N'', N'Pham Van Minh Duc', N'minhducand@gmail.com', N'0966150693', N'56456', N'', CAST(N'2021-06-11T11:33:32.000' AS DateTime), CAST(N'2021-06-11T11:33:32.000' AS DateTime), 0)
INSERT [dbo].[p2800ordershop] ([id], [IdProductType], [IdUser], [IdOrderStatus], [IdCity], [IdDistrict], [IdPaymentStatus], [IdPaymentType], [TotalPrice], [PromotionCode], [Name], [Email], [Phone], [Address], [Note], [CreatedAt], [UpdatedAt], [Point]) VALUES (2, 1, 17, 5, 1, 1, 1, 1, 525000, N'', N'Pham Van Minh Duc', N'minhducand@gmail.com', N'0966150693', N'56456', N'', CAST(N'2021-06-11T11:29:45.000' AS DateTime), CAST(N'2021-06-11T11:29:45.000' AS DateTime), 0)
INSERT [dbo].[p2800ordershop] ([id], [IdProductType], [IdUser], [IdOrderStatus], [IdCity], [IdDistrict], [IdPaymentStatus], [IdPaymentType], [TotalPrice], [PromotionCode], [Name], [Email], [Phone], [Address], [Note], [CreatedAt], [UpdatedAt], [Point]) VALUES (3, 1, 17, 5, 62, 1, 1, 1, 85000, N'', N'Pham Van Minh Duc', N'minhducand@gmail.com', N'0966150693', N'56456', N'', CAST(N'2021-06-11T11:35:57.000' AS DateTime), CAST(N'2021-06-11T11:35:57.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[p2800ordershop] OFF
GO
SET IDENTITY_INSERT [dbo].[p2900orderdetail] ON 

INSERT [dbo].[p2900orderdetail] ([id], [IdOrderShop], [IdShop], [Amount], [CreatedAt], [UpdatedAt], [Star]) VALUES (1, 1, 9, 2, CAST(N'2021-06-11T10:48:42.980' AS DateTime), CAST(N'2021-06-11T10:48:42.980' AS DateTime), 5)
INSERT [dbo].[p2900orderdetail] ([id], [IdOrderShop], [IdShop], [Amount], [CreatedAt], [UpdatedAt], [Star]) VALUES (2, 1, 7, 2, CAST(N'2021-06-11T10:48:47.440' AS DateTime), CAST(N'2021-06-11T10:48:47.440' AS DateTime), 5)
INSERT [dbo].[p2900orderdetail] ([id], [IdOrderShop], [IdShop], [Amount], [CreatedAt], [UpdatedAt], [Star]) VALUES (3, 2, 1, 1, CAST(N'2021-06-11T11:05:08.597' AS DateTime), CAST(N'2021-06-11T11:05:08.597' AS DateTime), 5)
INSERT [dbo].[p2900orderdetail] ([id], [IdOrderShop], [IdShop], [Amount], [CreatedAt], [UpdatedAt], [Star]) VALUES (4, 3, 3, 2, CAST(N'2021-06-11T11:33:52.450' AS DateTime), CAST(N'2021-06-11T11:33:52.450' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[p2900orderdetail] OFF
GO
SET IDENTITY_INSERT [dbo].[p3000commentstatus] ON 

INSERT [dbo].[p3000commentstatus] ([id], [Name]) VALUES (1, N'Mới tạo')
INSERT [dbo].[p3000commentstatus] ([id], [Name]) VALUES (2, N'Đã duyệt')
INSERT [dbo].[p3000commentstatus] ([id], [Name]) VALUES (3, N'Từ chối')
SET IDENTITY_INSERT [dbo].[p3000commentstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p300roledetail] ON 

INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (1, 1, 1, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (2, 1, 2, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (3, 1, 3, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (4, 1, 4, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (5, 1, 5, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (6, 1, 6, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (7, 1, 7, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (8, 1, 8, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (9, 1, 9, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (10, 1, 10, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (11, 1, 11, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (12, 1, 12, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (13, 1, 13, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (14, 1, 14, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (15, 1, 15, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (16, 1, 16, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (17, 1, 17, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (18, 1, 18, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (19, 1, 19, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (20, 1, 20, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (21, 1, 21, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (22, 1, 22, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (23, 1, 23, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (24, 1, 24, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (25, 1, 25, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (26, 1, 26, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (27, 1, 27, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (28, 1, 28, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (29, 1, 29, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (30, 1, 30, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (31, 1, 31, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (32, 1, 32, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (33, 1, 33, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (34, 1, 34, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (35, 1, 35, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (36, 1, 36, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (37, 1, 37, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (38, 1, 38, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (39, 1, 39, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (40, 1, 40, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (41, 1, 41, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (42, 1, 42, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (43, 1, 43, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (44, 22, 3, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (45, 22, 4, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (46, 22, 5, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (47, 22, 24, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (48, 22, 25, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (49, 22, 26, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (50, 22, 30, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (51, 22, 37, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (52, 22, 38, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (53, 22, 20, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (54, 22, 21, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (55, 22, 22, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (56, 22, 33, 1)
SET IDENTITY_INSERT [dbo].[p300roledetail] OFF
GO
SET IDENTITY_INSERT [dbo].[p3200inputproduct] ON 

INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (1, 1, N'0', NULL, CAST(N'2021-06-11T10:34:43.000' AS DateTime), 5, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (2, 1, N'5', NULL, CAST(N'2021-06-11T10:35:03.000' AS DateTime), 2, 4)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (3, 1, N'3', NULL, CAST(N'2021-06-11T10:35:44.000' AS DateTime), 3, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (4, 2, N'5', NULL, CAST(N'2021-06-11T10:36:10.000' AS DateTime), 5, 17)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (5, 2, N'10', NULL, CAST(N'2021-06-11T10:36:35.000' AS DateTime), 10, 17)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (6, 9, N'2', NULL, CAST(N'2021-06-11T11:30:14.000' AS DateTime), 2, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (7, 7, N'2', NULL, CAST(N'2021-06-11T11:30:20.000' AS DateTime), 2, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (8, 7, N'1', NULL, CAST(N'2021-06-11T11:31:48.000' AS DateTime), 1, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (9, 9, N'1', NULL, CAST(N'2021-06-11T11:31:54.000' AS DateTime), 1, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (10, 7, N'1', NULL, CAST(N'2021-06-11T11:32:52.000' AS DateTime), 1, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (11, 9, N'1', NULL, CAST(N'2021-06-11T11:32:57.000' AS DateTime), 1, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (12, 3, N'5', NULL, CAST(N'2021-06-11T11:35:09.000' AS DateTime), 5, 62)
SET IDENTITY_INSERT [dbo].[p3200inputproduct] OFF
GO
SET IDENTITY_INSERT [dbo].[p3300warehouse] ON 

INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (1, 1, 8, NULL, 1)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (2, 1, 2, NULL, 4)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (3, 2, 15, NULL, 17)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (4, 9, 2, NULL, 1)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (5, 7, 2, NULL, 1)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (6, 3, 5, NULL, 62)
SET IDENTITY_INSERT [dbo].[p3300warehouse] OFF
GO
SET IDENTITY_INSERT [dbo].[p400banner] ON 

INSERT [dbo].[p400banner] ([id], [Image], [Position]) VALUES (1, N'http://127.0.0.1:8000/images\2021_05_17_17_05_59_Chup-hinh-san-pham-Root-03.jpg', 1)
INSERT [dbo].[p400banner] ([id], [Image], [Position]) VALUES (2, N'http://127.0.0.1:8000/images\2021_04_28_13_59_30_c3358bb87f18cf8bedac5b5f63710a0f.jpg', 2)
SET IDENTITY_INSERT [dbo].[p400banner] OFF
GO
SET IDENTITY_INSERT [dbo].[p500footer] ON 

INSERT [dbo].[p500footer] ([id], [Content1], [Content2], [Content3], [AndroidLink], [IosLink]) VALUES (1, N'<div><strong>C&Ocirc;NG TY IZISOFTWARE&nbsp;Việt Nam</strong></div>

<p>C&ocirc;ng Ty Cổ Phần C&ocirc;ng nghệ IZI SOFTWARE, chuy&ecirc;n thiết kế website, marketing online, thiết kế c&aacute;c ứng dụng chuy&ecirc;n nghiệp, app mobile.</p>
', N'<ul>
	<li>Thiết kế webiste chuy&ecirc;n nghiệp</li>
	<li>Thiết kế phần mềm quản trị</li>
	<li>Thiết kế ứng dụng Android</li>
	<li>Thiết kế ứng dụng IOS</li>
	<li>Thiết kế Web App</li>
	<li>Hỗ trợ Digital Marketing</li>
	<li>Hỗ trợ quảng c&aacute;o Google Ads</li>
	<li>Hỗ trợ SEO Website</li>
</ul>
', N'<p><strong>TH&Ocirc;NG TIN CẦN BIẾT</strong></p>

<p>Ch&iacute;nh s&aacute;ch đổi trả</p>

<p>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</p>

<p>&ETH;iều khoản dịch vụ</p>
', N'https://izisoft.io/', N'https://izisoft.io/')
SET IDENTITY_INSERT [dbo].[p500footer] OFF
GO
SET IDENTITY_INSERT [dbo].[p600headerinfo] ON 

INSERT [dbo].[p600headerinfo] ([id], [Phone], [Mail], [Logo]) VALUES (1, N'09888888', N'luongthanhbinh41115@gmail.com', N'http://127.0.0.1:8000/images\2021_06_11_09_08_47_logoizi.png')
SET IDENTITY_INSERT [dbo].[p600headerinfo] OFF
GO
SET IDENTITY_INSERT [dbo].[p700shop] ON 

INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (1, N'Đồng hồ', N'http://127.0.0.1:8000/images\2021_04_28_13_25_25_dongho.png', N'<p>bbbb</p>
', 300000, 500000, 3, N'http://127.0.0.1:8000/images\2021_04_28_09_21_45_item-menu.jpg', N'<p>23424</p>
', 3, 600000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (2, N'Laptop', N'http://127.0.0.1:8000/images\2021_04_28_09_23_38_maytinh.png', N'<p>bbb</p>

<p>\n</p>
', 400000, 500000, 5, N'http://127.0.0.1:8000/images\2021_04_28_09_23_43_img-contact.png', N'<p>bbb</p>
', 2, 800000, 20)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (3, N'Đồ gia dụng', N'http://127.0.0.1:8000/images\2021_04_29_09_03_06_nhacua.png', N'<p>46456456</p>
', 20000, 30000, 5, N'http://127.0.0.1:8000/images\2021_04_29_09_03_33_bg-thank.jpg', N'<p>45345</p>
', 4, 50000, 0)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (4, N'Giày dép', N'http://127.0.0.1:8000/images\2021_04_29_09_04_40_giay.png', N'<p>bbbbb</p>
', 25000, 30000, 5, N'http://127.0.0.1:8000/images\2021_04_29_09_05_05_giay.png', N'<p>bbb</p>
', 5, 50000, 0)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (5, N'Mẹ & bé', N'http://127.0.0.1:8000/images\2021_04_29_09_05_29_me_be.png', N'<p>bbbbb</p>
', 30000, 50000, 5, N'http://127.0.0.1:8000/images\2021_04_29_09_05_42_3 vi.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 7, 300000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (6, N'Túi xách', N'http://127.0.0.1:8000/images\2021_04_29_09_06_50_tuivinu.png', N'<p>bbb</p>
', 40000, 60000, 5, N'http://127.0.0.1:8000/images\2021_04_29_09_07_03_img-contact.png', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 9, 100000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (7, N'Màn hình', N'http://127.0.0.1:8000/images\2021_04_29_09_07_24_tbdt.png', N'<p>bbbb</p>
', 200000, 300000, 5, N'http://127.0.0.1:8000/images\2021_04_29_09_07_37_mt.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 10, 500000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (8, N'Điện thoại', N'http://127.0.0.1:8000/images\2021_04_29_09_07_58_phone.png', N'<p>bbb</p>
', 60000, 100000, 4, N'http://127.0.0.1:8000/images\2021_04_29_09_08_13_pw.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 13, 200000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (9, N'Xe', N'http://127.0.0.1:8000/images\2021_04_29_09_08_38_oto.png', N'<p>bbbb</p>
', 50000, 100000, 5, N'http://127.0.0.1:8000/images\2021_04_29_09_08_55_item-menu.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 15, 200000, 0)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (28, N'Đồng hồ Casino', N'http://127.0.0.1:8000/images\2021_05_17_16_50_58_Chup-hinh-san-pham-Root-03.jpg', N'<p>testtt</p>
', 30000, 50000, 5, N'http://127.0.0.1:8000/images\2021_05_17_16_49_56_IMG_0124-scaled.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/MCoqnoVau0g" title="YouTube video player" width="560"></iframe></p>
', 3, 60000, 0)
SET IDENTITY_INSERT [dbo].[p700shop] OFF
GO
SET IDENTITY_INSERT [dbo].[p800shopcombo] ON 

INSERT [dbo].[p800shopcombo] ([id], [Usd], [Ship]) VALUES (1, 23000, 25000)
SET IDENTITY_INSERT [dbo].[p800shopcombo] OFF
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT ('5f4dcc3b5aa765d61d8327deb882cf99') FOR [password]
GO
ALTER TABLE [dbo].[p000account] ADD  CONSTRAINT [DF_p000account_img]  DEFAULT (N'/assets/images/logo-admin.png') FOR [img]
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT (NULL) FOR [role]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__IdSho__4BCC3ABA]  DEFAULT (NULL) FOR [IdShop]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__IdUse__4CC05EF3]  DEFAULT (NULL) FOR [IdUser]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__IdCom__4DB4832C]  DEFAULT (NULL) FOR [IdCommentStatus]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__Conte__4EA8A765]  DEFAULT (NULL) FOR [Content]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__Creat__4F9CCB9E]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF_p1000shopcomment_IdTypeComment]  DEFAULT ((0)) FOR [IdTypeComment]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF_p1000shopcomment_IdStaff]  DEFAULT ((0)) FOR [IdStaff]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [IdParentMenu]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [IsGroup]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [Slug]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [Icon]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [Position]
GO
ALTER TABLE [dbo].[p1100shopcategories] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1200mealplantype] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1300blogcategories] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [IdBlogCategories]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [Title]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [Thumbnail]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [Content]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [NumberView]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Mail]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Working]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Facebook]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Instagram]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Youtube]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Twitter]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Map]
GO
ALTER TABLE [dbo].[p1600contactstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1700contactus] ADD  CONSTRAINT [DF__p1700cont__IdCon__6B44E613]  DEFAULT ((1)) FOR [IdContactStatus]
GO
ALTER TABLE [dbo].[p1700contactus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1700contactus] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[p1700contactus] ADD  DEFAULT (NULL) FOR [Message]
GO
ALTER TABLE [dbo].[p1800userstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1900roleuser] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__IdUse__73DA2C14]  DEFAULT (NULL) FOR [IdUserStatus]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Fulln__74CE504D]  DEFAULT (NULL) FOR [Fullname]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Email__75C27486]  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Passw__76B698BF]  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Avata__77AABCF8]  DEFAULT (NULL) FOR [Avatar]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__IdRol__789EE131]  DEFAULT (NULL) FOR [IdRoleUser]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Creat__7993056A]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Updat__7A8729A3]  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF_p2000user_Point]  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[p200role] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [PromotionCode]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [PercentCode]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [MoneyDiscount]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [Point]
GO
ALTER TABLE [dbo].[p2200orderstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2300paymentstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2400paymenttype] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2600district] ADD  DEFAULT (NULL) FOR [IdCity]
GO
ALTER TABLE [dbo].[p2600district] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2700producttype] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  CONSTRAINT [DF__p2800orde__IdPro__0E8E2250]  DEFAULT ((1)) FOR [IdProductType]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdUser]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdOrderStatus]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdCity]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdDistrict]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdPaymentStatus]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdPaymentType]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [PromotionCode]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Note]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (NULL) FOR [IdOrderShop]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (NULL) FOR [IdShop]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (NULL) FOR [Amount]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  CONSTRAINT [DF_p2900orderdetail_Star]  DEFAULT ((5)) FOR [Star]
GO
ALTER TABLE [dbo].[p3000commentstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p300roledetail] ADD  DEFAULT (NULL) FOR [IdRole]
GO
ALTER TABLE [dbo].[p300roledetail] ADD  DEFAULT (NULL) FOR [IdMenu]
GO
ALTER TABLE [dbo].[p3100mypromotion] ADD  DEFAULT (NULL) FOR [IdPromotion]
GO
ALTER TABLE [dbo].[p3100mypromotion] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p3200inputproduct] ADD  DEFAULT (NULL) FOR [IdShop]
GO
ALTER TABLE [dbo].[p3200inputproduct] ADD  DEFAULT (NULL) FOR [Note]
GO
ALTER TABLE [dbo].[p3200inputproduct] ADD  DEFAULT (NULL) FOR [ExpiryDate]
GO
ALTER TABLE [dbo].[p3200inputproduct] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p3300warehouse] ADD  DEFAULT (NULL) FOR [IdShop]
GO
ALTER TABLE [dbo].[p3300warehouse] ADD  DEFAULT (NULL) FOR [Amount]
GO
ALTER TABLE [dbo].[p3300warehouse] ADD  DEFAULT (NULL) FOR [ExpiryDate]
GO
ALTER TABLE [dbo].[p400banner] ADD  DEFAULT (NULL) FOR [Image]
GO
ALTER TABLE [dbo].[p400banner] ADD  DEFAULT (NULL) FOR [Position]
GO
ALTER TABLE [dbo].[p600headerinfo] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[p600headerinfo] ADD  DEFAULT (NULL) FOR [Mail]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Title]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Thumbnail]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [PriceOrigin]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [PriceCurrent]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Star]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Images]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Video]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [IdShopCategories]
GO
ALTER TABLE [dbo].[p700shop] ADD  CONSTRAINT [DF_p700shop_Point]  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[p800shopcombo] ADD  CONSTRAINT [DF__p800shopco__Name__46136164]  DEFAULT (NULL) FOR [Usd]
GO
ALTER TABLE [dbo].[p800shopcombo] ADD  CONSTRAINT [DF__p800shopc__Price__4707859D]  DEFAULT (NULL) FOR [Ship]
GO
ALTER TABLE [dbo].[p900shopcombodetail] ADD  DEFAULT (NULL) FOR [IdShopCombo]
GO
ALTER TABLE [dbo].[p900shopcombodetail] ADD  DEFAULT (NULL) FOR [IdShop]
GO


