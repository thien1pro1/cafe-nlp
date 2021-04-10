USE [CAFE]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/10/2021 3:50:55 PM ******/
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
/****** Object:  Table [dbo].[Catelory]    Script Date: 4/10/2021 3:50:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catelory](
	[codeCatelory] [nvarchar](10) NULL,
	[nameCatelory] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailOrder]    Script Date: 4/10/2021 3:50:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailOrder](
	[idOrder] [nvarchar](50) NOT NULL,
	[idSP] [nvarchar](50) NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_DetailOrder] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 4/10/2021 3:50:55 PM ******/
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
/****** Object:  Table [dbo].[Food]    Script Date: 4/10/2021 3:50:55 PM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 4/10/2021 3:50:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[idOrder] [nvarchar](50) NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 4/10/2021 3:50:55 PM ******/
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
/****** Object:  Table [dbo].[TempOrder]    Script Date: 4/10/2021 3:50:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempOrder](
	[idTable] [nvarchar](50) NOT NULL,
	[idSP] [nvarchar](50) NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_TempOrder] PRIMARY KEY CLUSTERED 
(
	[idTable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D01', N'Năm mới', 15)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D02', N'Sinh nhật', 10)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D03', N'Nhóm 5 người', 10)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D04', N'Cặp đôi', 10)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D05', N'Khách Vip', 20)
GO
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D001', N'Cafe sữa', 17000, N'c1')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D002', N'Cafe đá', 15000, N'c1')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D003', N'Cafe phim', 20000, N'c1')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D004', N'Bạc xỉu', 17000, N'c1')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D011', N'String đỏ', 12000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D012', N'String Vàng', 12000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D013', N'CocaCola', 12000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D014', N'Xá xị', 12000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D015', N'Cam', 12000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D016', N'NumberOne', 15000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D017', N'Red Bull', 17000, N'c2')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D021', N'Ca cao đá xay', 20000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D022', N'Ca Cao đá xay sũa', 22000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D023', N'Siro đá xay', 18000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D024', N'Đá xay Oreo', 25000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D025', N'Dâu đá', 22000, N'c3')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D031', N'Lipton', 12000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D032', N'Trà đào', 15000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D033', N'Hồng trà', 15000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D034', N'Trà vải', 15000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D035', N'Trà gừng', 17000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D036', N'Trà chanh', 12000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D037', N'Trà hoa cúc', 18000, N'c4')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D041', N'Trà sữa truyền thống', 25000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D042', N'Trà sữa chân châu đường đen', 27000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D043', N'Trà sữa machiato', 25000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D044', N'Trà sữa bạc hà', 25000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D045', N'Trà sữa socola', 25000, N'c5')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D051', N'Sinh tố bơ', 20000, N'c6')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D052', N'Sinh tố dâu', 20000, N'c6')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D053', N'Sinh tố thập cẩm', 30000, N'c6')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D054', N'Rau má', 15000, N'c6')
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (N'D055', N'Rau má sữa', 17000, N'c6')
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
