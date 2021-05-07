USE [CAFE]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/7/2021 4:14:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [nvarchar](100) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[pwd] [nvarchar](10) NOT NULL,
	[showname] [nvarchar](100) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_dangnhap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catelory]    Script Date: 5/7/2021 4:14:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catelory](
	[codeCatelory] [nvarchar](10) NULL,
	[nameCatelory] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailOrder]    Script Date: 5/7/2021 4:14:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailOrder](
	[idOrder] [nvarchar](50) NOT NULL,
	[idSP] [nvarchar](50) NULL,
	[SL] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 5/7/2021 4:14:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[codeDiscount] [nvarchar](100) NOT NULL,
	[nameDiscount] [nvarchar](100) NULL,
	[percentDiscount] [float] NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[codeDiscount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 5/7/2021 4:14:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[codeFood] [nvarchar](50) NOT NULL,
	[nameFood] [nvarchar](30) NULL,
	[priceFood] [int] NULL,
	[caletoryFood] [nvarchar](max) NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[codeFood] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/7/2021 4:14:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[idOrder] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[idTable] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 5/7/2021 4:14:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[codeTable] [nvarchar](10) NOT NULL,
	[nameTable] [nvarchar](10) NULL,
	[statusTable] [nvarchar](100) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[codeTable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempOrder]    Script Date: 5/7/2021 4:14:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempOrder](
	[idTable] [int] NOT NULL,
	[idSP] [int] NOT NULL,
	[SL] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (N'1', N'NV001', N'1', N'Phạm Hoàng Học', 0)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (N'2', N'NV002', N'1', N'Mai Trọng Nhân', 0)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (N'3', N'NV003', N'1', N'Trần Nhật Hảo', 0)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (N'4', N'NV004', N'1', N'Huỳnh Quang Nghi', 0)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (N'5', N'NV005', N'1', N'Nguyễn Đăng Thiên', 1)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (N'6', N'NV006', N'1', N'Lê Phú Cường', 1)
GO
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (N'c1', N'Cafe')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (N'c2', N'nước ngọt')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (N'c3', N'Đá xay')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (N'c4', N'Trà')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (N'c5', N'Trà sữa')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (N'c6', N'Sinh tố')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (N'c7', N'Gái')
GO
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'23', N'2', 3)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'23', N'5', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'23', N'13', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'24', N'1', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'24', N'2', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'24', N'10', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'24', N'6', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'24', N'3', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'24', N'4', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'24', N'5', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'25', N'1', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'25', N'2', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'25', N'10', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'25', N'6', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'25', N'3', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'25', N'4', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'25', N'5', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'26', N'1', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'26', N'2', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'26', N'10', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'26', N'6', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'26', N'3', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'26', N'4', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'26', N'5', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'27', N'1', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'27', N'2', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'27', N'10', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'27', N'6', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'27', N'3', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'27', N'4', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'27', N'5', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'28', N'1', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'28', N'2', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'28', N'10', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'28', N'6', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'28', N'3', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'28', N'4', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'28', N'5', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'29', N'1', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'29', N'2', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'29', N'10', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'29', N'6', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'29', N'3', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'29', N'4', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'29', N'5', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'32', N'1', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'32', N'2', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'32', N'12', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'33', N'2', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'34', N'2', 3)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'34', N'5', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'34', N'13', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'35', N'11', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'36', N'11', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'36', N'8', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'36', N'9', 1)
GO
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D01', N'Năm mới', 15)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D02', N'Sinh nhật', 10)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D03', N'Nhóm 5 người', 10)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D04', N'Cặp đôi', 10)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D05', N'Khách Vip', 20)
GO
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'1', N'Cafe sữa', 17000, N'c1')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'10', N'NumberOne', 15000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'11', N'Red Bull', 17000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'12', N'Ca cao đá xay', 20000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'13', N'Ca Cao đá xay sũa', 22000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'14', N'Siro đá xay', 18000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'15', N'Đá xay Oreo', 25000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'16', N'Dâu đá', 22000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'17', N'Lipton', 12000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'18', N'Trà đào', 15000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'19', N'Hồng trà', 15000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'2', N'Cafe đá', 15000, N'c1')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'20', N'Trà vải', 15000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'21', N'Trà gừng', 17000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'22', N'Trà chanh', 12000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'23', N'Trà hoa cúc', 18000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'24', N'Trà sữa truyền thống', 25000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'25', N'Trà sữa chân châu đường đen', 27000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'26', N'Trà sữa machiato', 25000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'27', N'Trà sữa bạc hà', 25000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'28', N'Trà sữa socola', 25000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'29', N'Sinh tố bơ', 20000, N'c6')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'3', N'Cafe phim', 20000, N'c1')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'30', N'Sinh tố dâu', 20000, N'c6')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'31', N'Sinh tố thập cẩm', 30000, N'c6')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'32', N'Rau má', 15000, N'c6')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'33', N'Rau má sữa', 17000, N'c6')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'4', N'Bạc xỉu', 17000, N'c1')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'5', N'String đỏ', 12000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'6', N'String Vàng', 12000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'7', N'CocaCola', 12000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'8', N'Xá xị', 12000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'9', N'Cam', 12000, N'c2')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (1, CAST(N'2000-03-24' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (2, CAST(N'2012-02-01' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (3, CAST(N'2012-02-01' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (4, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (5, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (6, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (7, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (8, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (9, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (10, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (11, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (12, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (13, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (25, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (26, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (27, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (28, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (29, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (30, CAST(N'2021-05-07' AS Date), 3)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (31, CAST(N'2021-05-07' AS Date), 3)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (32, CAST(N'2021-05-07' AS Date), 4)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (33, CAST(N'2021-05-07' AS Date), 3)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (34, CAST(N'2021-05-07' AS Date), 2)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (35, CAST(N'2021-05-07' AS Date), 1)
INSERT [dbo].[Order] ([idOrder], [date], [idTable]) VALUES (36, CAST(N'2021-05-07' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't01', N'Bàn 1', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't02', N'bàn 2', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't03', N'Bàn 3', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't04', N'Bàn 4', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't05', N'Bàn 5', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't06', N'bàn 6', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't07', N'Bàn 7', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't08', N'Bàn 8', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't09', N'Bàn 9', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't10', N'Bàn 10', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't11', N'Bàn 11', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't12', N'Bàn 12', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't13', N'Bàn 13', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't14', N'bàn 14', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't15', N'Bàn 15', N'0')
INSERT [dbo].[Table] ([codeTable], [nameTable], [statusTable]) VALUES (N't16', N'Bàn 16', N'0')
GO
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (4, 5, 1)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (3, 27, 1)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (1, 1, 1)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (15, 6, 1)
GO
