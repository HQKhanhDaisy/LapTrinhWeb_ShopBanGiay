USE [master]
GO
/****** Object:  Database [AnShop2]    Script Date: 10/23/2020 18:33:13 ******/
CREATE DATABASE [AnShop2] ON  PRIMARY 
( NAME = N'AnShop2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\AnShop2.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AnShop2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\AnShop2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AnShop2] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AnShop2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AnShop2] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [AnShop2] SET ANSI_NULLS OFF
GO
ALTER DATABASE [AnShop2] SET ANSI_PADDING OFF
GO
ALTER DATABASE [AnShop2] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [AnShop2] SET ARITHABORT OFF
GO
ALTER DATABASE [AnShop2] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [AnShop2] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [AnShop2] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [AnShop2] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [AnShop2] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [AnShop2] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [AnShop2] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [AnShop2] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [AnShop2] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [AnShop2] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [AnShop2] SET  DISABLE_BROKER
GO
ALTER DATABASE [AnShop2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [AnShop2] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [AnShop2] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [AnShop2] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [AnShop2] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [AnShop2] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [AnShop2] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [AnShop2] SET  READ_WRITE
GO
ALTER DATABASE [AnShop2] SET RECOVERY SIMPLE
GO
ALTER DATABASE [AnShop2] SET  MULTI_USER
GO
ALTER DATABASE [AnShop2] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AnShop2] SET DB_CHAINING OFF
GO
USE [AnShop2]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Fullname] [nvarchar](200) NULL,
	[Gender] [int] NULL,
	[Birthday] [date] NULL,
	[Email] [varchar](50) NULL,
	[Phone] [int] NULL,
	[Address] [nvarchar](200) NULL,
 CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[User] ([Username], [Password], [Fullname], [Gender], [Birthday], [Email], [Phone], [Address]) VALUES (N'baoanloz', N'342012', N'Phan Quốc Bảo', 1, CAST(0xC8220B00 AS Date), N'n17dcat006@student.ptithcm.edu.vn', 907429495, N'Tây Ninh')
INSERT [dbo].[User] ([Username], [Password], [Fullname], [Gender], [Birthday], [Email], [Phone], [Address]) VALUES (N'test1', N'123456', N'Phan Quốc Bảo', 1, CAST(0xD1220B00 AS Date), N'phanquocbao@gmail.com', 907429495, N'Tây Ninh')
INSERT [dbo].[User] ([Username], [Password], [Fullname], [Gender], [Birthday], [Email], [Phone], [Address]) VALUES (N'thom123', N'831605', N'Tạ Thị Thơm', 0, CAST(0xD1220B00 AS Date), N'davidan71115@gmail.com', 907429495, N'TP Hồ Chí Minh')
INSERT [dbo].[User] ([Username], [Password], [Fullname], [Gender], [Birthday], [Email], [Phone], [Address]) VALUES (N'vnplus99', N'628931', N'Nguyễn Trường An', 1, CAST(0xD1220B00 AS Date), N'n17dcat001@student.ptithcm.edu.vn', 907429495, N'Bạc Liêu')
/****** Object:  Table [dbo].[Menu]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Link] [varchar](100) NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (1, N'Sản Phẩm', N'list/product.htm', NULL)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (2, N'Thương Hiệu Khác', N'list/other.htm', NULL)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (3, N'Best Buy', N'list/best.htm', NULL)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (4, N'Hàng Mới', N'list/new.htm', NULL)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (5, N'Sale Off', N'list/sale.htm', NULL)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (6, N'Basas', N'BS', 1)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (7, N'Vintas', N'VT', 1)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (8, N'Urbas', N'UB', 1)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (9, N'Pattas', N'PT', 1)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (10, N'Converse', N'CV', 2)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (11, N'Nike', N'NK', 2)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (12, N'Vans', N'VS', 2)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (13, N'Tuần', N'best-week', 3)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (14, N'Tháng', N'best-month', 3)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (16, N'ANANAS', N'new-an', 4)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (17, N'Khác', N'new-other', 4)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (18, N'Tuần', N'sale-week', 5)
INSERT [dbo].[Menu] ([Id], [Name], [Link], [ParentId]) VALUES (19, N'Tháng', N'sale-month', 5)
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[GroupProduct]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupProduct](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Img] [varchar](50) NULL,
	[Brands] [int] NULL,
 CONSTRAINT [PK_GroupProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'AD', N'Adidas', N'', NULL, 0)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'BS', N'Basas', NULL, NULL, 1)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'CR', N'Creas', N'', NULL, 1)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'CV', N'Converse', NULL, NULL, 0)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'NB', N'Newbalance', N'', NULL, 0)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'NK', N'Nike', NULL, NULL, 0)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'PM', N'Puma', N'', NULL, 1)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'PT', N'Pattas', NULL, NULL, 1)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'TR6', N'Track 6', NULL, NULL, 1)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'UB', N'Urbas', NULL, NULL, 1)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'VS', N'Vans', NULL, NULL, 0)
INSERT [dbo].[GroupProduct] ([Id], [Name], [Content], [Img], [Brands]) VALUES (N'VT', N'Vintas', NULL, NULL, 1)
/****** Object:  Table [dbo].[Customer]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Code] [nchar](100) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (101, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'vietnam-eval                                                                                        ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (102, N'Nguyễn Thị Hồng Nhung', 929654321, N'n17dcat006@student.ptithcm.edu.vn', N'Quận 9 - Tp Hồ Chí Minh', N'vietnam-eval                                                                                        ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (103, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (104, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (109, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (110, N'Nguyễn Trường An', 907429495, N'nhima2611@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (111, N'Tạ Thị Thơm', 907429495, N'thomtt120799@gmail.com', N'TP Hồ Chí Minh', N'vietnam-eval                                                                                        ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (112, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (113, N'Nguyễn Thị Hồng Nhung', 929654321, N'n17dcat006@student.ptithcm.edu.vn', N'Quận 9 - Tp Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (114, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (115, N'Tạ Thị Thơm', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (116, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (117, N'Tạ Thị Thơm', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (118, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (119, N'Trương Hoàng Luân', 907429495, N'hoagluan58@gmail.com', N'TP Hồ Chí Minh', N'banan                                                                                               ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (120, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'123456                                                                                              ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (121, N'Tạ Thị Thơm', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (122, N'Trương Hoàng Luân', 907429495, N'hoagluan58@gmail.com', N'TP Hồ Chí Minh', N'                                                                                                    ')
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Address], [Code]) VALUES (123, N'Nguyễn Trường An', 907429495, N'davidan715@gmail.com', N'TP Hồ Chí Minh', N'vietnam-eval                                                                                        ')
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Advertise]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Advertise](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Link] [varchar](50) NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Advertise] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Advertise] ON
INSERT [dbo].[Advertise] ([Id], [Name], [Link], [Content], [Status], [type]) VALUES (1, N'Ananas Track 6', N'banner1.jpg', NULL, 1, NULL)
INSERT [dbo].[Advertise] ([Id], [Name], [Link], [Content], [Status], [type]) VALUES (2, N'Ananas Vintas', N'banner2.jpg', NULL, 1, NULL)
INSERT [dbo].[Advertise] ([Id], [Name], [Link], [Content], [Status], [type]) VALUES (3, N'ALL BLACK IN BLACK', N'sub-banner1.jpg', N'Mặc dù được ứng dụng rất nhiều, nhưng sắc đen lúc nào cũng toát lên một vẻ huyền bí không nhàm chán', 2, N'TR6')
INSERT [dbo].[Advertise] ([Id], [Name], [Link], [Content], [Status], [type]) VALUES (4, N'ANANAS CREAS FLIP-FLAP', N'sub-banner2.jpg', N'Khi sự tích cực, trung thực và ngẫu hứng trở thành tiêu chí sống; niềm vui sẽ xuất hiện ở mọi nơi', 2, N'PT')
INSERT [dbo].[Advertise] ([Id], [Name], [Link], [Content], [Status], [type]) VALUES (5, N'BÌNH MỚI RƯỢU "MỚI"', N'sub-banner3.jpg', N'Vẫn kế thừa vẻ tối giản, nguyên bản đã được định hướng bởi cái tên, Basas mới trở lại với những cải tiến đáng giá chắc chắn sẽ đem đến một trải nghiệm thú vị như hành trình chúng tôi làm ra nó.', 2, N'BS')
INSERT [dbo].[Advertise] ([Id], [Name], [Link], [Content], [Status], [type]) VALUES (6, N'OUTLET SALE', N'sub-banner4.jpg', N'Danh mục những sản phẩm bán tại Outlet Store, đã được phát hành trước một thời gian và đang rơi vào tình trạng bể size, hết mã.', 3, N'sale')
SET IDENTITY_INSERT [dbo].[Advertise] OFF
/****** Object:  Table [dbo].[Admin]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Coler] [nvarchar](50) NULL,
	[Price] [int] NOT NULL,
	[Sale] [int] NULL,
	[Img1] [varchar](max) NULL,
	[Img2] [varchar](max) NULL,
	[Img3] [varchar](max) NULL,
	[Sold] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[GroupProductId] [varchar](50) NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'BS01', N'BASAS BLACK LACE - LOW TOP', N'Vẫn sử dụng những màu sắc cơ bản của Basas, "Basas Black Lace" Pack trở nên mạnh mẻ, ấn tượng hơn khi sử dụng dây giày màu đen làm điểm nhấn cho bản phối màu trắng-đen-xám tưởng chừng quá quen thuộc. Dáng giày low top cổ điển, đây sẽ là một lựa chọn an toàn nhưng không nhàm chán.', N'Dark Grey', 450000, 0, N'BS01-1.jpg', N'BS01-2.jpg', N'BS01-3.jpg', 2, CAST(0x1E410B00 AS Date), N'BS', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'BS02', N'BASAS MONO - HIGH TOP', N'Dáng giày high top cá tính, kết hợp upper và phần đế "ton-sur-ton" đã giúp "Basas Mono" Pack trở nên thu hút. Đôi giày này hứa hẹn sẽ là một điểm nhấn thú vị cho mọi set đồ của bạn.', N'All White', 520000, 0, N'BS02-1.jpg', N'BS02-2.jpg', N'BS02-3.jpg', 2, CAST(0x24410B00 AS Date), N'BS', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'BS03', N'BASAS BUMPER GUM - LOW TOP', N'Sự kết hợp giữa những tông màu cơ bản, dễ ứng dụng của dòng giày Basas và điểm nhấn màu Gum ở phần bumber đã mang đến cho "Basas Bumber Gum" Pack cái nhìn phá cách và thu hút. Cùng với quai dán trẻ trung và tiện lợi, đây chính là đôi giày dành cho những ai tìm kiếm sự mới mẻ từ những điều quen thuộc, truyền thống.', N'Offwhite/Gum', 450000, 20, N'BS03-1.jpg', N'BS03-2.jpg', N'BS03-3.jpg', 7, CAST(0x1E410B00 AS Date), N'BS', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'BS04', N'BASAS MONO-BLACK - SLIP ON', N'Vẻ ngoài cổ điển. Chất màu đơn giản cùng phần đế tiệp màu, "ton-sur-ton" với upper. Basas "Mono" Pack hứa hẹn sẽ là một điểm nhấn đầy thú vị cho tủ giày của bạn.', N'All Black', 420000, 0, N'BS04-1.jpg', N'BS04-2.jpg', N'BS04-3.jpg', 2, CAST(0x1E410B00 AS Date), N'BS', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'BS05', N'BASAS NEW SIMPLE LIFE - SLIP ON', N'Thuộc dòng Basas với nét tối giản đặc trưng, khả năng kết hợp mọi outfit thường ngày, Basas "New Simple Life" dành cho những con người đơn giản nhưng không đơn điệu, bình thường mà chẳng tầm thường. Dáng Slip On hiện đại chính là sự lựa chọn dễ chịu cho những ngày vô lo, vô nghĩ.', N'Chilli Pepper', 420000, 0, N'BS05-1.jpg', N'BS05-2.jpg', N'BS05-3.jpg', 7, CAST(0x1E410B00 AS Date), N'BS', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'CR01', N'CREAS FLIP-FLAP - HIGH TOP', N'Ananas Creas Flip-Flap được sản xuất với số lượng giới hạn. Ngẫu hứng, đảo nghịch và truyền tải "bí quyết" của sự hạnh phúc. Xem kĩ hình để rõ hơn các chi tiết thiết kế đặc biệt trên sản phẩm', N'SNORKEL BLUE', 690000, 0, N'pro_creas_A61084_1.jpg', N'pro_creas_A61084_2.jpg', N'pro_creas_A61084_6.jpg', 4, CAST(0x24410B00 AS Date), N'CR', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'PT01', N'THƠM X ANANAS PATTAS HIGH TOP ', N'Artwork độc đáo với cảm hứng từ sự tự do, âm nhạc và không khí lễ hội được thể hiện trên lót tẩy, má trong và má ngoài trên kiểu dáng High Top cổ điển. Đế cam dạ quang đầy cá tính và mang đậm tinh thần của tuổi trẻ. Một mẫu collab không thể bỏ qua của những tâm hồn trẻ trung, yêu giày Dứa, mến (đêm hội) nhạc Thơm 2019.
', N'SNOW-WHITE', 590000, 30, N'PT01-1.jpg', N'PT01-2.jpg', N'PT01-3.jpg', 2, CAST(0x21410B00 AS Date), N'PT', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'TR601', N'ANANAS TRACK 6 - LOW TOP', N'Với cảm hứng từ Retro Sneakers và âm nhạc giai đoạn 1970s, Ananas Track 6 ra đời với danh hiệu là mẫu giày Cold Cement đầu tiên của Ananas - một thương hiệu giày Vulcanized. Chất liệu Storm Leather đáng giá "càn quét" toàn bộ bề mặt upper cùng những chi tiết thiết kế đặc trưng và mang nhiều ý nghĩa. Chắc rắng, Track 6 sẽ đem đến cho bạn sự tự nhiên thú vị như chính thông điệp bài hát Let it be của huyền thoại The Beatles gửi gắm. Màu all black huyền bí luôn có mặt trong danh sách best seller.', N'TRIPLE BLACK', 990000, 0, N'TR601-1.jpg', N'TR601-2.jpg', N'TR601-3.jpg', 1, CAST(0x21410B00 AS Date), N'TR6', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'TR602', N'ANANAS TRACK 6 - LOW TOP', N'Với cảm hứng từ Retro Sneakers và âm nhạc giai đoạn 1970s, Ananas Track 6 ra đời với danh hiệu là mẫu giày Cold Cement đầu tiên của Ananas - một thương hiệu giày Vulcanized. Chất liệu Storm Leather đáng giá "càn quét" toàn bộ bề mặt upper cùng những chi tiết thiết kế đặc trưng và mang nhiều ý nghĩa. Chắc rằng, Track 6 sẽ đem đến cho bạn sự tự nhiên thú vị như chính thông điệp bài hát Let it be của huyền thoại The Beatles gửi gắm. Màu all white chắc nhiều bạn sẽ thích.', N'TRIPLE WHITE', 990000, 0, N'TR602-1.jpg', N'TR602-2.jpg', N'TR602-3.jpg', 1, CAST(0x21410B00 AS Date), N'TR6', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'TR603', N'ANANAS TRACK 6 OG - LOW TOP', N'Với cảm hứng từ Retro Sneakers và âm nhạc giai đoạn 1970s, Ananas Track 6 ra đời với danh hiệu là mẫu giày Cold Cement đầu tiên của Ananas - một thương hiệu giày Vulcanized. Chất liệu Storm Leather đáng giá "càn quét" toàn bộ bề mặt upper cùng những chi tiết thiết kế đặc trưng và mang nhiều ý nghĩa. Chắc rằng, Track 6 sẽ đem đến cho bạn sự tự nhiên thú vị như chính thông điệp bài hát Let it be của huyền thoại The Beatles gửi gắm.', N'70S WHITE', 990000, 0, N'TR603-1.jpg', N'TR603-2.jpg', N'TR603-3.jpg', 5, CAST(0x21410B00 AS Date), N'TR6', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'UB01', N'URBAS BLOODY - LOW TOP ', N'Urbas "Bloody" - đôi giày có chất liệu Upper hoàn toàn bằng da lộn dành cho những tâm hồn mong muốn nổi bật một cách nổi loạn, sáng tạo một cách sáng chói.', N'HAUTE RED', 580000, 0, N'pro_urbas_A61054_1.jpg', N'pro_urbas_A61054_2-1.jpg', N'pro_urbas_A61054_3-1.jpg', 5, CAST(0x21410B00 AS Date), N'UB', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'VT01', N'VINTAS EARTH - LOW TOP', N'Dáng Low Top, Upper được phủ trọn bằng da Suede, thêm điểm nhấn bằng da Nappa ở tem logo trên lưỡi gà, tông màu trầm mặc gợi nhắc đến cây rừng đất đá. Một sản phẩm dành cho những tâm hồn thích lang thang, yêu tự do và mê xê dịch.', N'DARK OLIVE', 580000, 0, N'pro_vintas_A61033_1.jpg', N'pro_vintas_A61033_2.jpg', N'pro_vintas_A61033_3.jpg', 2, CAST(0x21410B00 AS Date), N'VT', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'VT02', N'VINTAS MISTER - LOW TOP', N'Dáng Low Top truyền thống, kết hợp cùng phối màu gợi nét cổ điển, xưa cũ với chất vải Canvas, da Suede trên Upper và một phần nhỏ da Nappa ở tem logo trên lưỡi gà. Một sự lựa chọn của những ai muốn làm nổi bật lên sự chín chắn, tính điềm đạm cùng nét lịch thiệp cho bộ outfit của mình.', N'SLATE CARAFE', 465000, 0, N'pro_vintas_A61038_1-1.jpg', N'pro_vintas_A61038_2.jpg', N'pro_vintas_A61038_3.jpg', 1, CAST(0x21410B00 AS Date), N'VT', 1)
INSERT [dbo].[Product] ([Id], [Name], [Content], [Coler], [Price], [Sale], [Img1], [Img2], [Img3], [Sold], [Date], [GroupProductId], [Status]) VALUES (N'VT03', N'VINTAS THE NEW MILITARY - LOW TOP', N'Mang vẻ ngoài bụi bặm, mộc mạc và được lấy cảm hứng từ những bộ quân phục của nhiều binh chủng trong quân đội, Vintas "The New Military" đem lại một "chất lính" rất riêng cho những ai yêu phong cách "Military" và những tâm hồn điềm đạm, kiên cường đầy tinh tế.', N'CAPULET OLIVE', 465000, 0, N'pro_vintas_A61026_1.jpg', N'pro_vintas_A61026_2.jpg', N'pro_vintas_A61026_3.jpg', 1, CAST(0x21410B00 AS Date), N'VT', 1)
/****** Object:  Table [dbo].[Order]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Total] [float] NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [int] NULL,
	[Username] [varchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([Id], [CustomerId], [Total], [Date], [Status], [Username]) VALUES (99, 113, 465000, CAST(0x24410B00 AS Date), 0, NULL)
INSERT [dbo].[Order] ([Id], [CustomerId], [Total], [Date], [Status], [Username]) VALUES (104, 118, 970000, CAST(0x25410B00 AS Date), 0, NULL)
INSERT [dbo].[Order] ([Id], [CustomerId], [Total], [Date], [Status], [Username]) VALUES (105, 119, 2060000, CAST(0x25410B00 AS Date), 1, NULL)
INSERT [dbo].[Order] ([Id], [CustomerId], [Total], [Date], [Status], [Username]) VALUES (106, 120, 9330000, CAST(0x25410B00 AS Date), 1, NULL)
INSERT [dbo].[Order] ([Id], [CustomerId], [Total], [Date], [Status], [Username]) VALUES (107, 121, 1680000, CAST(0x28410B00 AS Date), 1, NULL)
INSERT [dbo].[Order] ([Id], [CustomerId], [Total], [Date], [Status], [Username]) VALUES (108, 122, 1380000, CAST(0x28410B00 AS Date), 1, NULL)
INSERT [dbo].[Order] ([Id], [CustomerId], [Total], [Date], [Status], [Username]) VALUES (109, 123, 590000, CAST(0x84410B00 AS Date), 1, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NOT NULL,
	[Quanlity] [int] NOT NULL,
	[ProductId] [varchar](50) NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetail] ON
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (10, 43, 10, N'BS02', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (11, 38, 15, N'BS03', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (12, 42, 15, N'BS03', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (14, 37, 10, N'BS04', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (15, 42, 11, N'BS04', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (16, 43, 19, N'BS05', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (67, 43, 19, N'BS01', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (68, 43, 17, N'PT01', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (69, 41, 20, N'TR601', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (70, 43, 20, N'TR601', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (71, 40, 18, N'TR601', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (72, 39, 20, N'TR602', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (73, 41, 18, N'TR602', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (74, 41, 18, N'TR603', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (75, 40, 18, N'TR603', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (76, 43, 19, N'VT01', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (77, 40, 19, N'VT01', NULL)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (78, 39, 20, N'VT02', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (79, 41, 19, N'VT02', NULL)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (80, 41, 20, N'VT03', 1)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (81, 40, 19, N'VT03', NULL)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (82, 43, 18, N'UB01', NULL)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (83, 41, 19, N'UB01', NULL)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (86, 41, 16, N'CR01', NULL)
INSERT [dbo].[ProductDetail] ([Id], [Size], [Quanlity], [ProductId], [Status]) VALUES (87, 39, 18, N'TR603', NULL)
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/23/2020 18:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [varchar](50) NULL,
	[Quanlity] [int] NOT NULL,
	[Size] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (76, 99, N'VT02', 1, 41)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (87, 104, N'BS02', 1, 43)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (88, 104, N'BS03', 1, 42)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (89, 105, N'BS03', 15, 42)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (90, 105, N'UB01', 1, 41)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (91, 105, N'VT01', 1, 40)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (92, 106, N'BS03', 15, 42)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (93, 106, N'UB01', 1, 41)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (94, 106, N'VT01', 1, 40)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (95, 106, N'BS01', 1, 43)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (96, 106, N'BS02', 1, 43)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (97, 107, N'CR01', 1, 41)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (98, 107, N'TR603', 1, 39)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (99, 108, N'CR01', 2, 41)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quanlity], [Size]) VALUES (100, 109, N'PT01', 1, 43)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  Default [DF_GroupProduct_Brands]    Script Date: 10/23/2020 18:33:15 ******/
ALTER TABLE [dbo].[GroupProduct] ADD  CONSTRAINT [DF_GroupProduct_Brands]  DEFAULT ((1)) FOR [Brands]
GO
/****** Object:  Default [DF_Product_Sold]    Script Date: 10/23/2020 18:33:15 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Sold]  DEFAULT ((0)) FOR [Sold]
GO
/****** Object:  Default [DF_Order_Status]    Script Date: 10/23/2020 18:33:15 ******/
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  ForeignKey [FK_Product_GroupProduct1]    Script Date: 10/23/2020 18:33:15 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_GroupProduct1] FOREIGN KEY([GroupProductId])
REFERENCES [dbo].[GroupProduct] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_GroupProduct1]
GO
/****** Object:  ForeignKey [FK_Order_Customer1]    Script Date: 10/23/2020 18:33:15 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer1] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer1]
GO
/****** Object:  ForeignKey [FK_Order_User]    Script Date: 10/23/2020 18:33:15 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
/****** Object:  ForeignKey [FK_ProductDetail_Product]    Script Date: 10/23/2020 18:33:15 ******/
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [FK_ProductDetail_Product]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Order]    Script Date: 10/23/2020 18:33:15 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product1]    Script Date: 10/23/2020 18:33:15 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product1] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product1]
GO
