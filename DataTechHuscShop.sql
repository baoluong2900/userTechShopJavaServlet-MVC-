USE [DataTechHuscShop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/20/2021 3:04:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/20/2021 3:04:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/20/2021 3:04:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](150) NULL,
	[Name] [nvarchar](50) NULL,
	[Password] [nvarchar](30) NULL,
	[Phone] [nvarchar](15) NULL,
	[RegisteredDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order1]    Script Date: 12/20/2021 3:04:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order1](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [float] NULL,
	[CustomerId] [int] NULL,
	[OrderDate] [datetime] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/20/2021 3:04:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/20/2021 3:04:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[Discount] [float] NULL,
	[EnteredDate] [datetime] NULL,
	[Image] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Status] [int] NULL,
	[UnitPrice] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password]) VALUES (N'bao123', N'123')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (1, N'Laptop')
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (2, N'Bàn phím')
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (3, N'Chuột')
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (4, N'Tai nghe')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [Email], [Name], [Password], [Phone], [RegisteredDate]) VALUES (1, N'baoluong0209@gmail.com', N'bao', N'123', N'120102', CAST(N'2021-12-20' AS Date))
INSERT [dbo].[Customer] ([CustomerId], [Email], [Name], [Password], [Phone], [RegisteredDate]) VALUES (2, N'test@gmail.com', N'test123', N'123', N'22222', CAST(N'2021-12-20' AS Date))
INSERT [dbo].[Customer] ([CustomerId], [Email], [Name], [Password], [Phone], [RegisteredDate]) VALUES (3, N'boysilly2900@gmail.com', N'test', N'123', N'aaaaaaa', NULL)
INSERT [dbo].[Customer] ([CustomerId], [Email], [Name], [Password], [Phone], [RegisteredDate]) VALUES (4, N'boysilly2900@gmail.com', N'123', N'123', N'123', NULL)
INSERT [dbo].[Customer] ([CustomerId], [Email], [Name], [Password], [Phone], [RegisteredDate]) VALUES (5, N'boysilly2900@gmail.com', N'1234', N'123', N'123', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order1] ON 

INSERT [dbo].[Order1] ([OrderId], [Amount], [CustomerId], [OrderDate], [Status]) VALUES (1, 1500, 1, CAST(N'2021-12-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order1] ([OrderId], [Amount], [CustomerId], [OrderDate], [Status]) VALUES (3, 1400, 1, CAST(N'2021-12-20T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Order1] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (1, 1, 1, 1, 300)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (2, 3, 1, 2, 400)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [CategoryId], [Description], [Discount], [EnteredDate], [Image], [Name], [Quantity], [Status], [UnitPrice]) VALUES (1, 1, N'MSI', 10, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'resources/img/msgf63.jpg', N'Laptop MSI GF 63', 15, 1, 1500)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Description], [Discount], [EnteredDate], [Image], [Name], [Quantity], [Status], [UnitPrice]) VALUES (2, 2, N'Logetich', 10, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'resources/img/logitechprox.jpg', N'Bàn phím Logetich Pro X', 10, 1, 300)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Description], [Discount], [EnteredDate], [Image], [Name], [Quantity], [Status], [UnitPrice]) VALUES (3, 3, N'Akko', 10, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'resources/img/akkochuot.jpg', N'Chuột Akko G7', 10, 0, 150)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Description], [Discount], [EnteredDate], [Image], [Name], [Quantity], [Status], [UnitPrice]) VALUES (4, 4, N'Logetich ', 0, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'resources/img/logetichproxtainghe.jpg', N'Tai ngnhe Logetich Pro X', 50, 1, 150)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Description], [Discount], [EnteredDate], [Image], [Name], [Quantity], [Status], [UnitPrice]) VALUES (5, 1, N'Asus', 10, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'resources/img/asustuf.jpg', N'Laptop Asus Tuf', 10, 1, 2000)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Description], [Discount], [EnteredDate], [Image], [Name], [Quantity], [Status], [UnitPrice]) VALUES (6, 1, N'Acer', 10, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'resources/img/acernitro.jpg', N'Laptop Acer Nitror 5', 10, 1, 2200)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Description], [Discount], [EnteredDate], [Image], [Name], [Quantity], [Status], [UnitPrice]) VALUES (7, 1, N'Dell', 10, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'resources/img/dellg7.png', N'Laptop Dell G7', 10, 1, 2500)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Description], [Discount], [EnteredDate], [Image], [Name], [Quantity], [Status], [UnitPrice]) VALUES (8, 2, N'Asus', 10, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'resources/img/asusrgb.jpg', N'Bàn phím Asus RGB', 10, 1, 400)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Description], [Discount], [EnteredDate], [Image], [Name], [Quantity], [Status], [UnitPrice]) VALUES (9, 2, N'Razer', 10, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'resources/img/razerwhite.jpg', N'Bàn phím Razer White Hustman', 10, 0, 300)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Order1]  WITH CHECK ADD  CONSTRAINT [FKc5gidx170b32f9q1mwghaum22] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Order1] CHECK CONSTRAINT [FKc5gidx170b32f9q1mwghaum22]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK2bl00vgeri9tdqj2fllxbf7ra] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK2bl00vgeri9tdqj2fllxbf7ra]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FKr65pnbff858j4vkesaky7qnkx] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order1] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FKr65pnbff858j4vkesaky7qnkx]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK6pnobu31k3yhhmk45s97imkui] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK6pnobu31k3yhhmk45s97imkui]
GO
