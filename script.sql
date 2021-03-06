USE [master]
GO
/****** Object:  Database [camdocuongphat]    Script Date: 11/17/2018 2:00:57 PM ******/
CREATE DATABASE [camdocuongphat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'camdocuongphat', FILENAME = N'C:\Program Files (x86)\Plesk\Databases\MSSQL\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\camdocuongphat.mdf' , SIZE = 3264KB , MAXSIZE = 1024000KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'camdocuongphat_log', FILENAME = N'C:\Program Files (x86)\Plesk\Databases\MSSQL\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\camdocuongphat_log.ldf' , SIZE = 1024KB , MAXSIZE = 1024000KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [camdocuongphat] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [camdocuongphat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [camdocuongphat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [camdocuongphat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [camdocuongphat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [camdocuongphat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [camdocuongphat] SET ARITHABORT OFF 
GO
ALTER DATABASE [camdocuongphat] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [camdocuongphat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [camdocuongphat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [camdocuongphat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [camdocuongphat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [camdocuongphat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [camdocuongphat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [camdocuongphat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [camdocuongphat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [camdocuongphat] SET  ENABLE_BROKER 
GO
ALTER DATABASE [camdocuongphat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [camdocuongphat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [camdocuongphat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [camdocuongphat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [camdocuongphat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [camdocuongphat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [camdocuongphat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [camdocuongphat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [camdocuongphat] SET  MULTI_USER 
GO
ALTER DATABASE [camdocuongphat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [camdocuongphat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [camdocuongphat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [camdocuongphat] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [camdocuongphat] SET DELAYED_DURABILITY = DISABLED 
GO
USE [camdocuongphat]
GO
/****** Object:  User [camdocuongphat]    Script Date: 11/17/2018 2:00:57 PM ******/
CREATE USER [camdocuongphat] FOR LOGIN [camdocuongphat] WITH DEFAULT_SCHEMA=[camdocuongphat]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [camdocuongphat]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [camdocuongphat]
GO
ALTER ROLE [db_datareader] ADD MEMBER [camdocuongphat]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [camdocuongphat]
GO
/****** Object:  Schema [camdocuongphat]    Script Date: 11/17/2018 2:00:57 PM ******/
CREATE SCHEMA [camdocuongphat]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/17/2018 2:00:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [varchar](50) NULL,
	[Address] [nvarchar](1000) NULL,
	[Loan] [decimal](18, 0) NULL,
	[Price] [decimal](18, 0) NULL,
	[AmountPaid] [decimal](18, 0) NULL,
	[RemainingAmount] [decimal](18, 0) NULL,
	[DayPaids] [int] NULL,
	[Code] [varchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[NgayNo] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DayBonus] [int] NULL,
	[OldCode] [varchar](50) NULL,
	[Note] [nvarchar](1000) NULL,
	[CodeSort] [int] NULL,
	[type] [int] NULL,
	[songayno] [int] NULL,
	[nodung] [bit] NULL,
	[tentaisan] [nvarchar](max) NULL,
	[loaigiayto] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history]    Script Date: 11/17/2018 2:00:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [varchar](255) NOT NULL,
	[Ngaydongtien] [datetime] NULL,
	[Detail] [nvarchar](max) NULL,
	[price] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 11/17/2018 2:00:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan](
	[Date] [datetime] NOT NULL,
	[IDCus] [varchar](50) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/17/2018 2:00:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](50) NULL,
	[PassWord] [varchar](50) NULL,
	[Permission] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_cuahang] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [camdocuongphat].[GetCustomerEven]    Script Date: 11/17/2018 2:00:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [camdocuongphat].[GetCustomerEven]
	
AS
BEGIN
	select * from Customer cs where CONVERT(INT, SUBSTRING(cs.Code,2,LEN(cs.Code) - 1)) % 2 = 0
END
GO
/****** Object:  StoredProcedure [camdocuongphat].[GetCustomerOdd]    Script Date: 11/17/2018 2:00:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [camdocuongphat].[GetCustomerOdd]

AS
BEGIN
	select * from Customer cs where CONVERT(INT, SUBSTRING(cs.Code,2,LEN(cs.Code) - 1)) % 2 = 1
END
GO
USE [master]
GO
ALTER DATABASE [camdocuongphat] SET  READ_WRITE 
GO
