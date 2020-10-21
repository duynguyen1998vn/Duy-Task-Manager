USE [master]
GO
/****** Object:  Database [DUYDATABASE]    Script Date: 21/10/2020 8:56:54 AM ******/
CREATE DATABASE [DUYDATABASE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DUYDATABASE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DUYDATABASE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DUYDATABASE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DUYDATABASE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DUYDATABASE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DUYDATABASE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DUYDATABASE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DUYDATABASE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DUYDATABASE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DUYDATABASE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DUYDATABASE] SET ARITHABORT OFF 
GO
ALTER DATABASE [DUYDATABASE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DUYDATABASE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DUYDATABASE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DUYDATABASE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DUYDATABASE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DUYDATABASE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DUYDATABASE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DUYDATABASE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DUYDATABASE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DUYDATABASE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DUYDATABASE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DUYDATABASE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DUYDATABASE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DUYDATABASE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DUYDATABASE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DUYDATABASE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DUYDATABASE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DUYDATABASE] SET RECOVERY FULL 
GO
ALTER DATABASE [DUYDATABASE] SET  MULTI_USER 
GO
ALTER DATABASE [DUYDATABASE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DUYDATABASE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DUYDATABASE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DUYDATABASE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DUYDATABASE] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DUYDATABASE', N'ON'
GO
ALTER DATABASE [DUYDATABASE] SET QUERY_STORE = OFF
GO
USE [DUYDATABASE]
GO
/****** Object:  User [tduy1998vn]    Script Date: 21/10/2020 8:56:54 AM ******/
CREATE USER [tduy1998vn] FOR LOGIN [tduy1998vn] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[JOB]    Script Date: 21/10/2020 8:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Leader] [int] NULL,
	[Title] [varchar](20) NULL,
	[Job_Description] [varchar](255) NULL,
	[Img] [varchar](255) NULL,
	[Time_Create] [date] NULL,
	[Time_End] [date] NULL,
	[Status_Job] [varchar](20) NULL,
 CONSTRAINT [PK_JOB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOB_DETAIL]    Script Date: 21/10/2020 8:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB_DETAIL](
	[Id] [int] NULL,
	[Id_User] [int] NULL,
	[phase] [int] NULL,
	[Flag] [varchar](1) NULL,
	[Job_Finished] [varchar](1) NULL,
	[Time_Complete] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 21/10/2020 8:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[Position] [varchar](10) NULL,
	[Name_Menu] [varchar](20) NULL,
	[URL_Menu] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REVENUE_JOB]    Script Date: 21/10/2020 8:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REVENUE_JOB](
	[Id_User] [varchar](20) NULL,
	[Day_Start] [date] NULL,
	[Day_End] [date] NULL,
	[Point] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 21/10/2020 8:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](20) NULL,
	[Pass] [varchar](20) NULL,
 CONSTRAINT [PK__USERS__3214EC0784C99C74] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS_MENU]    Script Date: 21/10/2020 8:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS_MENU](
	[Id] [int] NULL,
	[Position] [varchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[MENU] ([Position], [Name_Menu], [URL_Menu]) VALUES (N'ADMIN', N'LOG OUT', N'/')
INSERT [dbo].[MENU] ([Position], [Name_Menu], [URL_Menu]) VALUES (N'ADMIN', N'CREATE JOB', N'/create-job')
INSERT [dbo].[MENU] ([Position], [Name_Menu], [URL_Menu]) VALUES (N'ADMIN', N'HOME', N'/home')
INSERT [dbo].[MENU] ([Position], [Name_Menu], [URL_Menu]) VALUES (N'ADMIN', N'MY JOB', N'/show-List-job')
INSERT [dbo].[MENU] ([Position], [Name_Menu], [URL_Menu]) VALUES (N'ADMIN', N'REVENUE', N'/revenue')
INSERT [dbo].[MENU] ([Position], [Name_Menu], [URL_Menu]) VALUES (N'USER', N'LOG OUT', N'/')
INSERT [dbo].[MENU] ([Position], [Name_Menu], [URL_Menu]) VALUES (N'USER', N'HOME', N'/home')
INSERT [dbo].[MENU] ([Position], [Name_Menu], [URL_Menu]) VALUES (N'USER', N'MY JOB', N'/show-List-job')
INSERT [dbo].[MENU] ([Position], [Name_Menu], [URL_Menu]) VALUES (N'USER', N'REVENUE', N'/revenue')
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([Id], [Account], [Pass]) VALUES (1, N'ADMIN', N'123')
INSERT [dbo].[USERS] ([Id], [Account], [Pass]) VALUES (2, N'USER', N'123')
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
INSERT [dbo].[USERS_MENU] ([Id], [Position]) VALUES (1, N'ADMIN')
INSERT [dbo].[USERS_MENU] ([Id], [Position]) VALUES (2, N'USER')
GO
ALTER TABLE [dbo].[JOB_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_JOB_DETAIL_JOB] FOREIGN KEY([Id])
REFERENCES [dbo].[JOB] ([Id])
GO
ALTER TABLE [dbo].[JOB_DETAIL] CHECK CONSTRAINT [FK_JOB_DETAIL_JOB]
GO
ALTER TABLE [dbo].[USERS]  WITH CHECK ADD  CONSTRAINT [FK_USERS_USERS] FOREIGN KEY([Id])
REFERENCES [dbo].[USERS] ([Id])
GO
ALTER TABLE [dbo].[USERS] CHECK CONSTRAINT [FK_USERS_USERS]
GO
ALTER TABLE [dbo].[USERS_MENU]  WITH CHECK ADD  CONSTRAINT [FK_USERS_MENU_USERS] FOREIGN KEY([Id])
REFERENCES [dbo].[USERS] ([Id])
GO
ALTER TABLE [dbo].[USERS_MENU] CHECK CONSTRAINT [FK_USERS_MENU_USERS]
GO
USE [master]
GO
ALTER DATABASE [DUYDATABASE] SET  READ_WRITE 
GO
