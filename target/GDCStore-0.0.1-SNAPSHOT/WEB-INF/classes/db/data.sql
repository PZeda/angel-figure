USE [db_angel]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Image] [varchar](255) NULL,
	[Address] [nvarchar](100) NULL,
	[TelePhone] [char](10) NULL,
	[Reset_password] [varchar](50) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[ProductId] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_FeedBacks] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[FavoriteId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBacks]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBacks](
	[FeedBackId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Username] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FeedBacks_1] PRIMARY KEY CLUSTERED 
(
	[FeedBackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[Quantity] [int] NULL,
	[Discription] [nvarchar](100) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[CreateDay] [date] NOT NULL,
	[TelePhone] [varchar](12) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](30) NULL,
	[Total] [int] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Discount] [float] NULL,
	[Image1] [varchar](50) NOT NULL,
	[Image2] [varchar](50) NULL,
	[Image3] [varchar](50) NULL,
	[Image4] [varchar](50) NULL,
	[Image5] [varchar](50) NULL,
	[EnteredDay] [date] NOT NULL,
	[Discription] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[HotSale] [varchar](20) NULL,
	[OldPrice] [int] NULL,
	[TheFirm] [nvarchar](20) NULL,
	[RAM] [varchar](7) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statitic]    Script Date: 3/30/2023 9:22:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statitic](
	[OrderId] [int] NOT NULL,
	[OrderDetailId] [int] NOT NULL,
	[id] [int] NULL,
	[slDoanhthu] [bigint] NOT NULL,
	[slOrder] [bigint] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Admin', N'123', N'Thức Admin', N'thucAdmin@gmail.com', N'f38b98e1c562343c6d73.jpg', N'50 Nguyễn Thị Thập, Hòa Minh, Liên Chiểu, Đà Nẵng.', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ba', N'567890', N'Lý Thành An', N'tonthuhuyen581@hotmail.com', N'Screenshot 2022-12-05 111914.png', N'Xã Lãng Ngâm, Huyện Gia Bình, Bắc Ninh.', N'0798473625', N'ErIhQsMUnp1IT0B7Lxj2qDkf8lQ4oiOXR0QCzwL4G52NwX0J9C')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ca', N'34567', N'Nguyễn Thị Tú Cẩm', N'hnianhunga560@hotmail.com', N'Screenshot 2022-12-05 111945.png', N'Xã Long Cốc, Huyện Tân Sơn, Phú Thọ', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Can', N'567890', N'Chu Thị Vỹ Lan', N'chuvylan546@yahoo.com', N'e11.jpg', N'Phường Tân An, Quận Ninh Kiều, Cần Thơ', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'demo', N'123', N'Nguyễn Công Viên', N'congvien.01@gmail.com', N'LogoShopNow.png', N'60 Ngô Thị Nhậm, Hòa Minh, Đà Nẵng', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'demo3', N'123123', N'Huỳnh Thị Như', N'nhuyeukhangno1@gmail.com', N'e12.jpg', N'Xã Thanh Sơn, Huyện Kim Bảng, Hà Nam', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'director', N'123123', N'Nguyễn Văn Thức', N'thucfc2002@gmail.com', N'c89e299133bdc3e39aac.jpg', N'25 Ngô Sĩ Liên, Hòa Minh, Liên Chiểu, Đà Nẵng', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ha', N'123', N'Bành Thị Thu Hà', N'ngocmongvy346@gmail.com', N'Screenshot 2022-12-05 111850.png', N'Xã Ba Cụm Nam, Huyện Khánh Sơn, Khánh Hòa', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Hai', N'123', N'Lý Thị Hải Như', N'deothuviet949@facebook.com', N'Screenshot 2022-12-05 112000.png', N'Xã Gio Việt, Huyện Gio Linh, Quảng Trị', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Hi', N'4567890', N'Lý Văn Hoán Tư', N'nghiemthaovan641@facebook.com', N'Screenshot 2022-12-05 112046.png', N'Xã Ngọc Linh, Huyện Vị Xuyên, Hà Giang', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Hoan', N'234', N'Lý Văn Công Hoàn', N'aovietson265@facebook.com', N'Screenshot 2022-12-05 112126.png', N'Xã Tân Thới, Huyện Tân Phú Đông, Tiền Giang', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Hoang', N'3245678', N'Dương Thị Thu Cầm', N'hoaphihai961@icloud.com', N'Screenshot 2022-12-05 112113.png', N'Xã Tân Phước, Huyện Tân Thành, Bà Rịa - Vũng Tàu', N'0394763912', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Huy', N'123', N'Lê Văn Huy', N'danggiangthanh771@google.com', N'noimage.jpg', N'Xã Phương Khoan, Huyện Sông Lô, Vĩnh Phúc', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Huyn', N'e45678970', N'Huyn La', N'khieutruongthanh141@gmail.com', N'Screenshot 2022-12-05 112034.png', N'Xã Pom Lót, Huyện Điện Biên, Điện Biên', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Khang', N'123', N'Lý Thường Khang', N'ungthuynhu76@hotmail.com', N'Screenshot 2022-12-05 112137.png', N'Xã Nhơn Mỹ, Thị xã An Nhơn, Bình Định', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ky', N'123123', N'Lý Nhã Kỳ', N'diemlechi468@microsoft.com', N'Screenshot 2022-12-05 112024.png', N'Phường Tiên Cát, Thành phố Việt Trì, Phú Thọ', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Lan', N'123', N'Ninh Duong Lan ', N'leuvietnga606@naver.com', N'Screenshot 2022-12-05 111850.png', N'Xã An Hải, Huyện Lý Sơn, Quảng Ngãi', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Lay', N'4567890', N'Hồ Viết Khang', N'vuthanhphong168@gmail.com', N'noimage.jpg', N'Xã Rô Men, Huyện Đam Rông, Lâm Đồng', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'linh', N'123123', N'Nguyen Thuc', N'thucfc2002@gmail.com', N'noimage.jpg', NULL, N'0969794458', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'linh6ch', N'123123', N'Nguyen Thuc', N'thucfc2002@gmail.com', N'noimage.jpg', NULL, N'0969794458', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Luc', N'e567890', N'LucTieuKy', N'laviethai0@facebook.com', N'Screenshot 2022-12-05 112046.png', N'Phường Lãm Hà, Quận Kiến An, Hải Phòng', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Luoc', N'34567890', N'Lược Văn Cảnh', N'phihaivan687@yahoo.com', N'Screenshot 2022-12-05 112000.png', N'Xã An Thanh, Huyện Quỳnh Phụ, Thái Bình', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ly', N'123', N'Ho Ly', N'lenhanhong446@google.com', N'Screenshot 2022-12-05 112059.png', N'Xã Tân Mỹ, Thành phố Bắc Giang, Bắc Giang', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ma', N'456789', N'Ma Thị Hoa', N'giapthanhnga737@gmail.com', N'noimage.jpg', N'Phường Hiệp Thành, Thị xã Ngã Bảy, Hậu Giang', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Manh', N'456789', N'Manh Duc Cuong', N'leunhathung307@microsoft.com', N'noimage.jpg', N'Xã Thanh Sơn, Huyện Kim Bảng, Hà Nam', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Mi', N'456789', N'LaMiDo', N'diepuctai144@google.com', N'noimage.jpg', N'Xã Ngọc Đường, Thành phố Hà Giang, Hà Giang', N'0358453271', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Mip', N'45678', N'Minh Mip', N'ungtamhang472@gmail.com', N'noimage.jpg', N'Xã Hưng Phú, Huyện Phước Long, Bạc Liêu', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Mit', N'1234', N'Mu Mit Toi Tam', N'xakimngan677@microsoft.com', N'noimage.jpg', N'Phường Ngọc Hà, Thành phố Hà Giang, Hà Giang', N'0783460158', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Na', N'4567890', N'Tra Bong Na', N'trinhxuanhieu204@microsoft.com', N'noimage.jpg', N'Xã Trà Giang, Huyện Trà Bồng, Quảng Ngãi', N'0834983571', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Nhanh', N'123', N'Nhanh Nhanh Len', N'quananhao580@naver.com', N'noimage.jpg', N'Phường Hòa Thọ Tây, Quận Cẩm Lệ, Đà Nẵng', N'0843062958', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ni', N'2345678', N'Ni Co Lat Cau', N'doanlinhphuong427@naver.com', N'noimage.jpg', N'Xã Thượng Long, Huyện Yên Lập, Phú Thọ', N'0768362045', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ninh', N'67890-', N'Minh Tieu Ha', N'cabichhai812@icloud.com', N'noimage.jpg', N'Xã Nâm N''Jang, Huyện Đắk Song, Đắc Nông', N'0914178509', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Oi', N'4567890', N'Ly Ly Đáng Yêu', N'tonthattuankhanh378@facebook.com', N'noimage.jpg', N'Xã Tam Hiệp, Huyện Phúc Thọ, Hà Nội', N'0385743268', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Pho', N't6666666', N'Giang A Pho', N'biminhloan91@microsoft.com', N'noimage.jpg', N'Xã Thanh Hải, Huyện Ninh Hải, Ninh Thuận', N'0329268457', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Phu', N'22222', N'Phu Le', N'trinhhaphuong315@google.com', N'noimage.jpg', N'Xã Yên Lỗ, Huyện Bình Gia, Lạng Sơn', N'0813714695', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Phung', N'67890-', N'Cung Phung', N'giangthanhao29@google.com', N'noimage.jpg', N'Phường 2, Thành phố Tuy Hoà, Phú Yên', N'0779734521', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'qqww', N'123123', N'Nguyen Thuc', N'thucfc2002@gmail.com', N'f3.jpg', N'123 nguyen thi thap2', N'0969794458', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Qui', N'12345678', N'Ho Qui Kong Ly', N'tonguyetha291@yahoo.com', N'noimage.jpg', N'Xã An Phú, Huyện Lục Yên, Yên Bái', N'0337451390', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Quynh', N'123', N'Ly Thi Quynh', N'Qunhh@gmail.com', N'noimage.jpg', N'Xã Nghĩa Hà, Thành phố Quảng Ngãi, Quảng Ngãi', N'0852360194', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ri', N'24546578', N'Ca Ri', N'machyenthanh421@google.com', N'noimage.jpg', N'Xã Cam Lập, Thành phố Cam Ranh, Khánh Hòa', N'0365780136', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Rin', N'67890-', N'Rin Rin Kuout', N'xaquynhthanh140@facebook.com', N'noimage.jpg', N'Xã Độc Lập, Huyện Quảng Uyên, Cao Bằng', N'0857584139', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'staff', N'123', N'Nguyen Thuc', N'thucfc2002@gmail.com', N'f3.jpg', N'Phường Trần Hưng Đạo, Thành phố Hải Dương, Hải Dương', N'0969794458', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Su', N'600000', N'Xã Ia Din Su', N'sonkieuminh11@facebook.com', N'noimage.jpg', N'Xã Ia Din, Huyện Đức Cơ, Gia Lai', N'0975398617', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'T1', N'123123', N'Nguyễn Văn Thức', N'thucnvpd05369@fpt.edu.vn', N'6a26e19d85b175ef2ca0.jpg', N'21 Phú Thạnh 1, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'0999999977', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'T2', N'123', N'Thuc Skin', N'thucbadao@gmail.com', N'noimage.jpg', N'Xã Quảng Hoà, Huyện Đăk Glong, Đắc Nông', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'T3', N'123', N'Hồ Văn ý', N't3@gmail.com', N'noimage.jpg', N'Xã Nhơn Sơn, Huyện Ninh Sơn, Ninh Thuận', N'0798473625', N'nOdxdkjVnrhpllvpwJhrz20hUQDVn5t05tGkK5zjrdQQO12hir')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ta', N'456789', N'Ta Day La Vo Dich', N'nhuhuyha870@yahoo.com', N'noimage.jpg', N'Xã Hồng Châu, Huyện Yên Lạc, Vĩnh Phúc', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Tan', N'r42386', N'Lâm Đồng Tân', N'khuuhongthuy464@gmail.com', N'noimage.jpg', N'Xã Nam Ninh, Huyện Cát Tiên, Lâm Đồng', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Thai', N'5dd3123', N'Tuần Giáo Thái', N'phinhathanh844@yahoo.com', N'noimage.jpg', N'Xã Pú Nhung, Huyện Tuần Giáo, Điện Biên', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Thinh', N'123', N'Lai Châu', N'vienthuyen819@icloud.com', N'noimage.jpg', N'Xã Nậm Khao, Huyện Mường Tè, Lai Châu', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Thuc', N'123', N'Thức Skin', N'thucfc2002@gmail.com', N'Screenshot 2022-12-05 112034.png', N'21 Phú Thanh1, Hòa Minh, Liên Chiểu, Đà Nẵng', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'thuc1', N'123123', N'Nguyen Thuc', N'thucfc2002@gmail.com', N'noimage.jpg', NULL, N'0969794458', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Thuc11', N'123123', N'Nguyen Thuc', N'thucfc2002@gmail.com', N'noimage.jpg', NULL, N'0969794458', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'thuc123', N'123123', N'Nguyen Thuc', N'thucfc2002@gmail.com', N'noimage.jpg', NULL, N'0969794458', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'ThucSkin', N'123', N'Thức Skin', N'thucfc2002@gmail.com', N'c89e299133bdc3e39aac.jpg', N'21 Phú Thạnh1, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Ti', N'123', N'Trần Văn Tí', N'ti452@microsoft.com', N'1.png', N'Xã Hưng Phú, Huyện Phước Long, Bạc Liêu', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Tim', N't555555', N'Tim Tim Xanh Xanh', N'himyhiep907@naver.com', N'noimage.jpg', N'Xã Suối Trai, Huyện Sơn Hòa, Phú Yên', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'TramAnh', N'123', N'Trâm Anh', N'tramanh002@gmail.com', N'cay-cau-noi.jpg', N'Xã Yên Lỗ, Huyện Bình Gia, Lạng Sơn', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'tt', N'123123', N'Nguyễn Công Kiên', N'congvien.0123@gmail.com', N'noimage.jpg', N'Lý Thường Kiệt, An Phú, Hòa Tân', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'TTTT', N'123123', N'Nguyen Thuc', N'thucfc2002@gmail.com', N'noimage.jpg', NULL, N'0969794458', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'TTTTT', N'123123', N'Nguyen Thuc', N'thucfc2002@gmail.com', N'noimage.jpg', NULL, N'0969794458', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Tung', N'1342567687', N'Nghiem ThanhTTung', N'lothienngon447@yahoo.com', N'noimage.jpg', N'Xã Thanh Sơn, Huyện Kim Bảng, Hà Nam', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'user', N'123', N'Facebook', N'thucfc2002@gmail.com', N'Screenshot 2022-12-05 112208.png', N'Xã Tam Hiệp, Huyện Phúc Thọ, Hà Nội', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Uyen', N'123', N'Nguyen Hai Uyen', N'UyenNC@gmail.com', N'noimage.jpg', N'Lý Thường Kiệt, An Phú, Hòa Tân', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Va', N'3245678', N'Va Cham', N'tiephuukhang981@naver.com', N'noimage.jpg', N'Xã Quảng Hoà, Huyện Đăk Glong, Đắc Nông', N'0798473625', NULL)
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Image], [Address], [TelePhone], [Reset_password]) VALUES (N'Yasuo', N'123123', N'Yasuo', N'thucfc2002@gmail.com', N'Screenshot 2022-12-05 111850.png', N'123 nguyen thi thap', N'0969794458', NULL)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (148, N'Admin', N'DIRE')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (95, N'demo', N'DIRE')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (104, N'NewMoon', N'CUST')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (143, N'Khoa', N'DIRE')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (96, N'Dat', N'DIRE')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (112, N'Solar', N'STAF')
GO
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (141, N'Luna', N'DIRE')
GO
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2, N'Gunpla')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (3, N'Figure')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 
GO
INSERT [dbo].[Comments] ([CommentId], [Username], [ProductId], [Description]) VALUES (109, N'Khoa', 22, N'Sản phẩm chất lương')
GO
INSERT [dbo].[Comments] ([CommentId], [Username], [ProductId], [Description]) VALUES (110, N'Khoa', 2019, N'Đẹp, giá hợp lý')
GO
INSERT [dbo].[Comments] ([CommentId], [Username], [ProductId], [Description]) VALUES (111, N'Dat', 14, N'Chi tiết chất lượng')
GO
INSERT [dbo].[Comments] ([CommentId], [Username], [ProductId], [Description]) VALUES (112, N'Admin', 14, N'Rẻ, xịn, khớp nối chắc chắn')
GO
INSERT [dbo].[Comments] ([CommentId], [Username], [ProductId], [Description]) VALUES (115, N'NewMoon', 9, N'ok 👍👌👌👌')
GO
INSERT [dbo].[Comments] ([CommentId], [Username], [ProductId], [Description]) VALUES (117, N'Luna', 9, N'ok')
GO
INSERT [dbo].[Comments] ([CommentId], [Username], [ProductId], [Description]) VALUES (118, N'Solar', 2091, N' 👌👌👌')
GO
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [ProductId]) VALUES (31, N'user', 10)
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [ProductId]) VALUES (32, N'Khoa', 2060)
GO
INSERT [dbo].[Favorites] ([FavoriteId], [Username], [ProductId]) VALUES (33, N'user', 2019)
GO
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBacks] ON 
GO
INSERT [dbo].[FeedBacks] ([FeedBackId], [Description], [Username]) VALUES (30, N'web lag', N'Admin')
GO
INSERT [dbo].[FeedBacks] ([FeedBackId], [Description], [Username]) VALUES (33, N'Giao hàng chậm vl', N'Khoa')
GO
INSERT [dbo].[FeedBacks] ([FeedBackId], [Description], [Username]) VALUES (34, N'Giao hàng nhanh, hàng chất lượng 👍👍👍', N'Dat')
GO
INSERT [dbo].[FeedBacks] ([FeedBackId], [Description], [Username]) VALUES (35, N'ok 💕💕', N'Solar')
GO
INSERT [dbo].[FeedBacks] ([FeedBackId], [Description], [Username]) VALUES (36, N'Giao hang` nhanh 👍👍👍💖', N'Admin')
GO
SET IDENTITY_INSERT [dbo].[FeedBacks] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (19, 19, 2034, 5000000, 10, 1, N'Duyệt', 12022000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (20, 20, 2035, 2300000, 10, 2, N'Duyệt', 25382000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (21, 21, 2036, 4500000, 10, 1, N'Duyệt', 19972500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (23, 23, 2038, 3000000, 10, 2, N'Duyệt', 13643000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (25, 25, 2040, 5300000, 10, 1, N'Duyệt', 21861000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (26, 26, 2041, 5100000, 10, 1, N'Duyệt', 25191000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (27, 27, 2042, 900000, 10, 1, N'Duyệt', 21771000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (28, 28, 2043, 2500000, 10, 2, N'Duyệt', 18792000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (30, 30, 2045, 2000000, 10, 1, N'Duyệt', 8631000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (32, 32, 2047, 5000000, 10, 1, N'Duyệt', 3591000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (33, 33, 2048, 1000000, 10, 1, N'Duyệt', 3992000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (34, 34, 2049, 2000000, 10, 1, N'Duyệt', 12990000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (35, 35, 2050, 3000000, 10, 2, N'Duyệt', 4491000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (36, 36, 2051, 4000000, 10, 1, N'Duyệt', 18891000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (37, 37, 2052, 3400000, 10, 2, N'Duyệt', 3192000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (39, 39, 2054, 1100000, 10, 1, N'Duyệt', 25194000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (40, 40, 2055, 1200000, 10, 2, N'Duyệt', 25193000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (41, 41, 2056, 1300000, 10, 1, N'Duyệt', 17574000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (42, 42, 2057, 1400000, 10, 2, N'Duyệt', 18441000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (43, 43, 2058, 2100000, 10, 3, N'Duyệt', 1374300)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (44, 44, 2059, 2300000, 10, 1, N'Duyệt', 1972000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (45, 45, 2060, 2400000, 10, 2, N'Duyệt', 1103700)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (46, 46, 2061, 3200000, 10, 1, N'Duyệt', 1998000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (47, 47, 2062, 1200000, 10, 2, N'Duyệt', 234400)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (48, 48, 2063, 1800000, 10, 3, N'Duyệt', 926100)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (49, 49, 2064, 4100000, 10, 1, N'Duyệt', 769500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (121, 147, 2079, 1060000, 10, 1, N'Duyệt', 954000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (122, 147, 2028, 25990000, 15, 1, N'Duyệt', 22091500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (123, 147, 2020, 4990000, 15, 1, N'Duyệt', 4241500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (124, 148, 2079, 1060000, 10, 4, N'Duyệt', 3816000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (125, 148, 2025, 25990000, 25, 1, N'Duyệt', 19492500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (144, 166, 2063, 1029000, 10, 1, N'Duyệt', 926100)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (145, 166, 2064, 855000, 10, 1, N'Duyệt', 769500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (146, 167, 2025, 25990000, 25, 1, N'Duyệt', 19492500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (149, 172, 2077, 970000, 20, 1, N'Duyệt', 776000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (150, 173, 2081, 21490000, 20, 1, N'Duyệt', 17192000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (155, 180, 2058, 1527000, 10, 1, N'Duyệt', 1374300)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (156, 181, 8, 10790000, 15, 3, N'Duyệt', 27514500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (157, 181, 9, 36290000, 25, 1, N'Duyệt', 27217500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (158, 182, 4, 4990000, 20, 1, N'Duyệt', 3992000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (159, 183, 10, 19990000, 10, 1, N'Duyệt', 17991000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (160, 183, 9, 36290000, 25, 2, N'Duyệt', 54435000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (161, 184, 8, 10790000, 15, 3, N'Duyệt', 27514500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (162, 184, 10, 19990000, 10, 3, N'Duyệt', 53973000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (163, 184, 9, 36290000, 25, 4, N'Duyệt', 108870000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (164, 184, 14, 43590000, 15, 2, N'Duyệt', 74103000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (165, 184, 4, 4990000, 20, 1, N'Duyệt', 3992000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (166, 184, 2020, 4990000, 15, 2, N'Duyệt', 8483000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (167, 184, 2019, 2990000, 30, 1, N'Duyệt', 2093000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (168, 184, 2016, 25990000, 30, 1, N'Duyệt', 18193000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (169, 185, 9, 36290000, 25, 1, N'Duyệt', 27217500)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (170, 185, 10, 19990000, 10, 1, N'Duyệt', 17991000)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Discount], [Quantity], [Discription], [Amount]) VALUES (171, 186, 2118, 11399000, 15, 1, N'Duyệt', 9689150)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (19, N'Hoan', CAST(N'2022-11-04' AS Date), N'0969794458', N'1020 Nguyễn Tất Thành, Phường Thanh Khê Đông, Thanh Khê, Tp Đà NẴng', N'Công Hoàn', N'hoan2002@gmail.com', 4530000, N'Đang vận chuyển')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (20, N'Phu', CAST(N'2022-08-04' AS Date), N'0969794458', N'44 Trần Cung, Phường Nghĩa Tân, Quận Cầu Giấy, Hà Nội', N'Nguyen Ba Phu', N'thucfc2002@gmail.com', 4170000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (21, N'Na', CAST(N'2022-09-11' AS Date), N'0969794458', N'33 Thi Sách, Phường Hòa Thuận Tây, Quận Hòa Thuận Tây, Đà Nẵng', N'Li Na', N'linacfc2002@gmail.com', 4080000, N'Đang giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (23, N'Ni', CAST(N'2022-08-02' AS Date), N'0969794458', N'120 Bạch Mai, Phường 5, Quận Gò Vấp, Hồ Chí Minh', N'Ni Cô', N'nico@gmail.com', 5430000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (25, N'Ca', CAST(N'2022-02-07' AS Date), N'0969794458', N'51 Văn Cao, Phường Liễu Giai, Quận Ba Đình, Hà Nội', N'Ca Ca', N'cacafc2002@gmail.com', 4800000, N'Đã hủy')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (26, N'Mit', CAST(N'2022-11-06' AS Date), N'0969794458', N'81 Vũ Chí Thắng , Phường Nghĩa Xá, Quận Lê Chân, Hải Phòng', N'mit', N'thucfc2002@gmail.com', 4620000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (27, N'Oi', CAST(N'2022-12-11' AS Date), N'0969794458', N'12 Phan Tứ, Phường Mỹ An , Quận Sơn Trà, Đà Nẵng', N'Oi leee', N'thucfc2002@gmail.com', 840000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (28, N'Luoc', CAST(N'2022-10-10' AS Date), N'0969794458', N'256 Lương Hữu Khánh, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh', N'Luoc Luoc', N'thucfc2002@gmail.com', 4530000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (30, N'Qui', CAST(N'2022-11-04' AS Date), N'0969794458', N'35 Ngự Bình , An Cựu, Quận Thành phố Huế, Huế', N'Qui Bùi', N'thucfc2002@gmail.com', 1830000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (32, N'Hi', CAST(N'2022-12-06' AS Date), N'0969794458', N'101 Đồng Văn Cống, Phường An Thới, Quận Bình Thủy, Cần Thơ', N'Hi ', N'thucfc2002@gmail.com', 4530000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (33, N'Mi', CAST(N'2022-01-01' AS Date), N'0969794458', N'12 Duy Tân, Phường Thuận Đông , Quận Hải Châu, Đà Nẵng', N'Nguyen Thuc', N'thucfc2002@gmail.com', 930000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (34, N'Va', CAST(N'2022-02-10' AS Date), N'0969794458', N'40 Tây Thạnh, Phường Tây Thạnh, Quận Tân Phú, Hồ Chí Minh', N'Nguyen Thuc', N'thucfc2002@gmail.com', 1830000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (35, N'Lay', CAST(N'2022-04-04' AS Date), N'0969794458', N'32 Ba Vì, Phường 15, Quận Phú Nhuận, Hồ Chí Minh', N'Nguyen Thuc', N'thucfc2002@gmail.com', 5430000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (36, N'ba', CAST(N'2022-12-29' AS Date), N'0969794458', N'220 Bùi Thị Xuân, Phạm Ngũ Lão , Quận 1, Hồ Chí Minh', N'Nguyen Thuc', N'thucfc2002@gmail.com', 3630000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (37, N'ma', CAST(N'2022-08-01' AS Date), N'0969794458', N'189 Lý Nam Đế, Phường Hàng Mã, Quận Hoàn Kiếm, Hà Nội', N'Nguyen Thuc', N'thucfc2002@gmail.com', 6150000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (39, N'Phung', CAST(N'2022-08-14' AS Date), N'0969794458', N'40 Trần Cung, Phường Nghĩa Tân, Quận Cầu Giấy, Hà Nội', N'Nguyen Thuc', N'thucfc2002@gmail.com', 1020000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (40, N'Nhanh', CAST(N'2022-09-11' AS Date), N'0969794458', N'30 Thi Sách, Phường Hòa Thuận Tây, Quận Hòa Thuận Tây, Đà Nẵng', N'Nguyen Thuc', N'thucfc2002@gmail.com', 2190000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (41, N'Manh', CAST(N'2022-02-10' AS Date), N'0969794458', N'181 Ngô Văn Sở, Phường Hòa Minh, Liên Chiểu, TP Đà Nẵng', N'Nguyen Thuc', N'thucfc2002@gmail.com', 1200000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (42, N'Ninh', CAST(N'2022-08-02' AS Date), N'0969794458', N'110 Bạch Mai, Phường 5, Quận Gò Vấp, Hồ Chí Minh', N'Nguyen Thuc', N'thucfc2002@gmail.com', 2550000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (43, N'Rin', CAST(N'2022-12-19' AS Date), N'0969794458', N'65 Ngọc Hà, Phường Ngọc Hà , Quận Ba Đình, Hà Nội', N'Nguyen Thuc', N'thucfc2002@gmail.com', 5770000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (44, N'Can', CAST(N'2022-01-07' AS Date), N'0969794458', N'50 Văn Cao, Phường Liễu Giai, Quận Ba Đình, Hà Nội', N'Nguyen Thuc', N'thucfc2002@gmail.com', 2100000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (45, N'Mip', CAST(N'2022-12-06' AS Date), N'0969794458', N'80 Vũ Chí Thắng , Phường Nghĩa Xá, Quận Lê Chân, Hải Phòng', N'Nguyen Thuc', N'thucfc2002@gmail.com', 4350000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (46, N'Huyn', CAST(N'2022-12-11' AS Date), N'0969794458', N'120 Phan Tứ, Phường Mỹ An , Quận Sơn Trà, Đà Nẵng', N'Nguyen Thuc', N'thucfc2002@gmail.com', 2910000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (47, N'Luc', CAST(N'2022-10-10' AS Date), N'0969794458', N'26 Lương Hữu Khánh, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh', N'Nguyen Thuc', N'thucfc2002@gmail.com', 2190000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (48, N'ky', CAST(N'2022-09-02' AS Date), N'0969794458', N'125 Bạch Đằng , Thượng Lý, Quận Hồng Bàng, Hải Phòng', N'Nguyen Thuc', N'thucfc2002@gmail.com', 4890000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (49, N'Tung', CAST(N'2022-11-04' AS Date), N'0969794458', N'350 Ngự Bình , An Cựu, Quận Thành phố Huế, Huế', N'Nguyen Thuc', N'thucfc2002@gmail.com', 3720000, N'Đang vận chuyển')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (147, N'T1', CAST(N'2023-01-01' AS Date), N'0944444444', N'21 Phú Thạnh1, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'Thuc Skin', N'thucfc2002@gmail.com', 27317000, N'Đã hủy')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (148, N'T1', CAST(N'2023-01-01' AS Date), N'0944444444', N'21 Phú Thạnh1, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'Thuc Skin', N'thucfc2002@gmail.com', 23338500, N'Đã hủy')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (166, N'T1', CAST(N'2023-01-04' AS Date), N'0944444444', N'21 Phú Thạnh1, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'Thuc Skin', N'thucfc2002@gmail.com', 1725600, N'Đã hủy')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (167, N'T1', CAST(N'2023-01-08' AS Date), N'0944444444', N'21 Phú Thạnh1, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'Thuc Skin', N'thucfc2002@gmail.com', 19522500, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (172, N'T1', CAST(N'2023-01-08' AS Date), N'0944444444', N'21 Phú Thạnh1, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'Thức Skin', N'thucfc2002@gmail.com', 806000, N'Đã giao hàng')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (173, N'T1', CAST(N'2023-01-10' AS Date), N'0999999999', N'21 Phú Thạnh1, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'thuc', N'thucfc2002@gmail.com', 17222000, N'Đang chờ xác nhận')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (180, N'T1', CAST(N'2023-02-07' AS Date), N'0954444444', N'21 abc', N'thuc', N'thucfc2002@gmail.com', 1404300, N'Đang chờ xác nhận')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (181, N'T1', CAST(N'2023-02-07' AS Date), N'0944444444', N'abc', N'thuc', N'thucfc2002@gmail.com', 54762000, N'Đang chờ xác nhận')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (182, N'demo', CAST(N'2023-02-09' AS Date), N'0222222222', N'asd', N'thuc', N'thucfc2002@gmail.com', 4022000, N'Đang chờ xác nhận')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (183, N'T1', CAST(N'2023-02-19' AS Date), N'0988888888', N'ACCC', N'Thuc', N'thucfc2002@gmail.com', 90447000, N'Đang vận chuyển')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (184, N'T1', CAST(N'2023-02-24' AS Date), N'0909090909', N'21 Phu thanh 1', N'Thuc', N'thucfc2002@gmail.com', 297251500, N'Đang chờ xác nhận')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (185, N'ThucSkin', CAST(N'2023-03-09' AS Date), N'0935353553', N'21 Phu Thanh1, Lien Chieu, Da Nang', N'Thuc', N'thucfc2002@gmail.com', 45238500, N'Đang chờ xác nhận')
GO
INSERT [dbo].[Orders] ([OrderId], [Username], [CreateDay], [TelePhone], [Address], [Name], [Email], [Total], [Status]) VALUES (186, N'Yasuo', CAST(N'2023-03-10' AS Date), N'0933333333', N'Da Nang', N'Yasuo', N'thucfc2002@gmail.com', 9719150, N'Đang chờ xác nhận')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO

INSERT [dbo].[Products] ([ProductId], [Name], [Quantity], [UnitPrice], [Discount], [Image1], [Image2], [Image3], [Image4], [Image5], [EnteredDay], [Discription], [CategoryId], [HotSale], [OldPrice], [TheFirm], [RAM]) VALUES (4, N'Realme C35', 120, 4990000, 20, N'realme-9-pro.jpg', N'realme1.png', N'realme-2.png', N'realme-3.png', N'5sao.png', CAST(N'2022-11-10' AS Date), N'Chip A13 Bionic, hệ điều hành IOS 13 kết hợp hoàn hảo 
RAM 4GB, bộ nhớ trong 64GB hoạt động mượt mà, đa nhiệm -
Hệ thống camera kép mới 12 MP cho góc chụp siêu rộng -
Camera selfie 12 MP chụp hình ở chế độ chuyển động chậm -
Màn hình IPS LCD 6.1 inch Liquid Retina hiển thị sắc nét -
Pin chuẩn Li-Ion, dung lượng pin tốt, thời gian lướt web lâu.', 2, N'hot-icon.gif', 6490000, N'realme', N'/ 4GB')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'CUST', N'Customers')
GO
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'DIRE', N'Directors')
GO
INSERT [dbo].[Roles] ([RoleId], [Name]) VALUES (N'STAF', N'Staffs')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK23fux5pe6yss1vck8iv9juegn]    Script Date: 3/30/2023 9:22:53 AM ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UK23fux5pe6yss1vck8iv9juegn] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKef7fbpy09qu6267gf071q71we]    Script Date: 3/30/2023 9:22:53 AM ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UKef7fbpy09qu6267gf071q71we] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Accounts]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Accounts]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Products]
GO
ALTER TABLE [dbo].[FeedBacks]  WITH CHECK ADD  CONSTRAINT [FK_FeedBacks_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[FeedBacks] CHECK CONSTRAINT [FK_FeedBacks_Accounts]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Statitic]  WITH CHECK ADD  CONSTRAINT [FK_Statitic_OrderDetails] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetails] ([OrderDetailId])
GO
ALTER TABLE [dbo].[Statitic] CHECK CONSTRAINT [FK_Statitic_OrderDetails]
GO
ALTER TABLE [dbo].[Statitic]  WITH CHECK ADD  CONSTRAINT [FK_Statitic_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Statitic] CHECK CONSTRAINT [FK_Statitic_Orders]
GO
