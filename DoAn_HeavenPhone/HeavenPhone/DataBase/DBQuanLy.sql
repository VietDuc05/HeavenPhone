USE [master]
GO
/****** Object:  Database [HeavenPhone]    Script Date: 01/01/2024 13:17:10 ******/
CREATE DATABASE [HeavenPhone]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HeavenPhone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MAYSERVER\MSSQL\DATA\HeavenPhone.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HeavenPhone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MAYSERVER\MSSQL\DATA\HeavenPhone_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HeavenPhone] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HeavenPhone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HeavenPhone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HeavenPhone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HeavenPhone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HeavenPhone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HeavenPhone] SET ARITHABORT OFF 
GO
ALTER DATABASE [HeavenPhone] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HeavenPhone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HeavenPhone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HeavenPhone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HeavenPhone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HeavenPhone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HeavenPhone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HeavenPhone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HeavenPhone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HeavenPhone] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HeavenPhone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HeavenPhone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HeavenPhone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HeavenPhone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HeavenPhone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HeavenPhone] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HeavenPhone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HeavenPhone] SET RECOVERY FULL 
GO
ALTER DATABASE [HeavenPhone] SET  MULTI_USER 
GO
ALTER DATABASE [HeavenPhone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HeavenPhone] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HeavenPhone] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HeavenPhone] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HeavenPhone] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HeavenPhone] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HeavenPhone', N'ON'
GO
ALTER DATABASE [HeavenPhone] SET QUERY_STORE = ON
GO
ALTER DATABASE [HeavenPhone] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HeavenPhone]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 01/01/2024 13:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 01/01/2024 13:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [nvarchar](10) NULL,
	[TenNSX] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 01/01/2024 13:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNSX] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [text] NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongBan] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'CaoCap')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'TrungBinh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP03', N'GiaRe')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (N'NXS01', N'iPhone')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (N'NXS02', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (N'NXS03', N'Oppo')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NXS01', N'Iphone 15 Pro Max', N'No', N'1.png', NULL, NULL, 33490000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP02', N'LSP02', N'NXS02', N'Samsung Note 4', N'No', N'2.png', NULL, NULL, 33490000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP03', N'LSP03', N'NXS03', N'Oppo', N'No', N'3.png', NULL, NULL, 33490000, 0, N'0         ')
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongBan]  DEFAULT ((0)) FOR [SoLuongBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
USE [master]
GO
ALTER DATABASE [HeavenPhone] SET  READ_WRITE 
GO
