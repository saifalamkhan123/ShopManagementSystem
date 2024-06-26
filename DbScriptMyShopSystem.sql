USE [master]
GO
/****** Object:  Database [shopDb]    Script Date: 21/05/2023 4:36:53 pm ******/
CREATE DATABASE [shopDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shopDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\shopDb.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shopDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\shopDb_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shopDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shopDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shopDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shopDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shopDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shopDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shopDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [shopDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shopDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shopDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shopDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shopDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shopDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shopDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shopDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shopDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shopDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [shopDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shopDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shopDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shopDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shopDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shopDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shopDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shopDb] SET RECOVERY FULL 
GO
ALTER DATABASE [shopDb] SET  MULTI_USER 
GO
ALTER DATABASE [shopDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shopDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shopDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shopDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [shopDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'shopDb', N'ON'
GO
USE [shopDb]
GO
/****** Object:  Table [dbo].[adminLogin_tbl]    Script Date: 21/05/2023 4:36:53 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminLogin_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[category_tbl]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[city_tbl]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[c_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contact_tbl]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[subject] [varchar](50) NOT NULL,
	[message] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[country_tbl]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[country_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purchase_tbl]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchase_tbl](
	[product_id] [int] NOT NULL,
	[p_date] [date] NOT NULL,
	[vendor_name] [varchar](50) NOT NULL,
	[category] [varchar](50) NOT NULL,
	[stock_name] [varchar](50) NOT NULL,
	[rate] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[t_amount] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sale_tbl]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sale_tbl](
	[sale_id] [int] NOT NULL,
	[sale_date] [date] NOT NULL,
	[customer_name] [varchar](50) NOT NULL,
	[category] [varchar](50) NOT NULL,
	[stock_name] [varchar](50) NOT NULL,
	[rate] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[t_amount] [int] NOT NULL,
	[img] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[signup_tbl]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[signup_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NOT NULL,
	[lastname] [varchar](50) NOT NULL,
	[birthday] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phonenumber] [varchar](50) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[city] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stock_tbl]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stock_tbl](
	[stock_id] [int] IDENTITY(1,1) NOT NULL,
	[stock_name] [varchar](50) NOT NULL,
	[category_id] [int] NOT NULL,
	[rate] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[stock_img] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[stock_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[student_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[city_tbl]  WITH CHECK ADD FOREIGN KEY([c_id])
REFERENCES [dbo].[country_tbl] ([id])
GO
ALTER TABLE [dbo].[stock_tbl]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category_tbl] ([id])
GO
/****** Object:  StoredProcedure [dbo].[spContact_Insert]    Script Date: 21/05/2023 4:36:54 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spContact_Insert]
@name varchar(50),
@email varchar(50),
@subject varchar(50),
@message varchar(max)
as
begin
insert into contact_tbl values (@name,@email,@subject,@message)
end


GO
USE [master]
GO
ALTER DATABASE [shopDb] SET  READ_WRITE 
GO
