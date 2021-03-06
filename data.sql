USE [CAFE]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/1/2021 11:53:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[pwd] [nvarchar](255) NOT NULL,
	[showname] [nvarchar](100) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_dangnhap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catelory]    Script Date: 6/1/2021 11:53:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catelory](
	[codeCatelory] [int] IDENTITY(1,1) NOT NULL,
	[nameCatelory] [nvarchar](10) NULL,
 CONSTRAINT [PK_Catelory] PRIMARY KEY CLUSTERED 
(
	[codeCatelory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailOrder]    Script Date: 6/1/2021 11:53:54 AM ******/
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
/****** Object:  Table [dbo].[Discount]    Script Date: 6/1/2021 11:53:54 AM ******/
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
/****** Object:  Table [dbo].[Food]    Script Date: 6/1/2021 11:53:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[codeFood] [int] IDENTITY(1,1) NOT NULL,
	[nameFood] [nvarchar](30) NULL,
	[priceFood] [int] NULL,
	[caletoryFood] [int] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[codeFood] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/1/2021 11:53:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[idOrder] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[idTable] [int] NULL,
	[money] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 6/1/2021 11:53:54 AM ******/
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
/****** Object:  Table [dbo].[TempOrder]    Script Date: 6/1/2021 11:53:54 AM ******/
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
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (1, N'NV001', N'25d55ad283aa400af464c76d713c07ad', N'Phạm Hoàng Học', 0)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (2, N'NV002', N'1', N'Mai Trọng Nhân', 0)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (3, N'NV003', N'1', N'Trần Nhật Hảo', 0)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (4, N'NV004', N'1', N'Huỳnh Quang Nghi', 0)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (5, N'NV005', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Đăng Thiên', 1)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (6, N'NV006', N'1', N'Lê Phú Cường', 1)
INSERT [dbo].[Account] ([id], [username], [pwd], [showname], [role]) VALUES (1007, N'NV010', N'25d55ad283aa400af464c76d713c07ad', N'Textname', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Catelory] ON 

INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (1, N'Cafe')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (2, N'nước ngọt')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (3, N'Đá xay')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (4, N'Trà')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (5, N'Trà sữa')
INSERT [dbo].[Catelory] ([codeCatelory], [nameCatelory]) VALUES (1002, N'Sinh tố')
SET IDENTITY_INSERT [dbo].[Catelory] OFF
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
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'1025', N'14', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'1025', N'19', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'2025', N'5', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'2026', N'7', 2)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'2026', N'5', 3)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'2026', N'10', 3)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'2026', N'34', 2)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3025', N'6', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3025', N'1', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3026', N'1028', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3026', N'1007', 2)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3027', N'1025', 4)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3028', N'1012', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3029', N'1007', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3030', N'1028', 2)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3030', N'1025', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3031', N'1024', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3031', N'1026', 1)
INSERT [dbo].[DetailOrder] ([idOrder], [idSP], [SL]) VALUES (N'3032', N'1025', 2)
GO
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D01', N'Năm mới', 15)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D02', N'Sinh nhật', 10)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D03', N'Nhóm 5 người', 10)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D04', N'Cặp đôi', 10)
INSERT [dbo].[Discount] ([codeDiscount], [nameDiscount], [percentDiscount]) VALUES (N'D05', N'Khách Vip', 20)
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1002, N'Sting vang', 13000, 2)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1003, N'Sting do', 12000, 2)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1004, N'Pepsi', 12000, 2)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1005, N'Trà chanh', 10000, 4)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1006, N'Trà đào', 15000, 4)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1007, N'Trà ÔLOng', 15000, 4)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1008, N'Trà rừng', 12000, 4)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1009, N'Trà sửa', 20000, 5)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1010, N'Trà sữa Machiato', 25000, 5)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1011, N'Hồng Trà', 20000, 4)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1012, N'Trà sữa Topping', 20000, 5)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1013, N'7UP', 15000, 2)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1014, N'Cafe Đen', 12000, 1)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1015, N'Cafe Sữa', 15000, 1)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1016, N'Bạc xỉu', 15000, 1)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1017, N'Cafe chồn', 35000, 1)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1018, N'Mountain Dew', 12000, 2)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1019, N'Trà hoa cúc', 17000, 4)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1020, N'Trà salem', 15000, 4)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1021, N'Mirinda Cam', 14000, 2)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1022, N'Mirinda xá xị', 14000, 2)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1023, N'CocaCola', 16000, 2)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1024, N'Cafe Trung Nguyên', 40000, 1)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1025, N'Cafe NLP', 50000, 1)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1026, N'Nước ngọt NLP', 50000, 2)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1027, N'Siro Đá xay', 15000, 3)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1028, N'Cacao Đá xay', 15000, 3)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1029, N'Dâu đá', 17000, 3)
INSERT [dbo].[Food] ([codeFood], [nameFood], [priceFood], [caletoryFood]) VALUES (1030, N'Đá xay thập cẩm NLP', 30000, 3)
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (1, CAST(N'2000-03-24' AS Date), 1, NULL)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (2, CAST(N'2012-02-01' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (3, CAST(N'2012-02-01' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (4, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (5, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (6, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (7, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (8, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (9, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (10, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (11, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (12, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (13, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (25, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (26, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (27, CAST(N'2021-05-07' AS Date), 1, NULL)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (28, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (29, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (30, CAST(N'2021-05-07' AS Date), 3, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (31, CAST(N'2021-05-07' AS Date), 3, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (32, CAST(N'2021-05-07' AS Date), 4, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (33, CAST(N'2021-05-07' AS Date), 3, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (34, CAST(N'2021-05-07' AS Date), 2, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (35, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (36, CAST(N'2021-05-07' AS Date), 1, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (1025, CAST(N'2021-05-18' AS Date), 2, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (2025, CAST(N'2021-05-25' AS Date), 4, 1000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (2026, CAST(N'2021-05-25' AS Date), 3, 105200)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (3025, CAST(N'2021-06-01' AS Date), 1, 12000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (3026, CAST(N'2021-06-01' AS Date), 2, 45000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (3027, CAST(N'2021-06-01' AS Date), 13, 200000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (3028, CAST(N'2021-06-01' AS Date), 16, 20000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (3029, CAST(N'2021-06-01' AS Date), 3, 15000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (3030, CAST(N'2021-06-01' AS Date), 3, 80000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (3031, CAST(N'2021-06-01' AS Date), 3, 90000)
INSERT [dbo].[Order] ([idOrder], [date], [idTable], [money]) VALUES (3032, CAST(N'2021-06-01' AS Date), 4, 100000)
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
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (2, 1007, 1)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (10, 1018, 2)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (13, 1028, 1)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (13, 1027, 1)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (13, 1029, 2)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (16, 1010, 1)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (16, 1009, 2)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (2, 1010, 3)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (2, 1008, 4)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (7, 1008, 1)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (7, 1009, 3)
INSERT [dbo].[TempOrder] ([idTable], [idSP], [SL]) VALUES (7, 1013, 3)
GO
