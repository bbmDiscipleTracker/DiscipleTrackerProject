USE [master]
GO
/****** Object:  Database [bbmDatabase]    Script Date: 2019/10/15 00:07:20 ******/
CREATE DATABASE [bbmDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bbmDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bbmDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bbmDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bbmDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bbmDatabase] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bbmDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bbmDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bbmDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bbmDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bbmDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bbmDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [bbmDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bbmDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bbmDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bbmDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bbmDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bbmDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bbmDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bbmDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bbmDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bbmDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bbmDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bbmDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bbmDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bbmDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bbmDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bbmDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bbmDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bbmDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [bbmDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [bbmDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bbmDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bbmDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bbmDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bbmDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bbmDatabase', N'ON'
GO
ALTER DATABASE [bbmDatabase] SET QUERY_STORE = OFF
GO
USE [bbmDatabase]
GO
/****** Object:  Table [dbo].[Disciple]    Script Date: 2019/10/15 00:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciple](
	[Disciple_Id] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Date_Of_Birth] [varchar](50) NULL,
	[Cell_Number] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Str_Name] [varchar](50) NULL,
	[Str_Num] [varchar](50) NULL,
	[Str_Suburb] [varchar](50) NULL,
	[Str_Town] [varchar](50) NULL,
	[Overall_Status] [varchar](50) NULL,
	[Overall_Comment] [varchar](max) NULL,
	[Province] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Church] [varchar](50) NULL,
	[Image] [image] NULL,
	[Assurance_Status] [varchar](50) NULL,
	[Assurance_Start_Date] [varchar](50) NULL,
	[Assurance_End_Date] [varchar](50) NULL,
	[Assurance_Comment] [varchar](max) NULL,
	[Bible_Status] [varchar](50) NULL,
	[Bible_Start_Date] [varchar](50) NULL,
	[Bible_End_Date] [varchar](50) NULL,
	[Bible_Comment] [varchar](max) NULL,
	[God_Status] [varchar](50) NULL,
	[God_Start_Date] [varchar](50) NULL,
	[God_End_Date] [varchar](50) NULL,
	[God_Comment] [varchar](max) NULL,
	[ManSatan_Status] [varchar](50) NULL,
	[ManSatan_Start_Date] [varchar](50) NULL,
	[ManSatan_End_Date] [varchar](50) NULL,
	[ManSatan_Comment] [varchar](max) NULL,
	[Jesus_Status] [varchar](50) NULL,
	[Jesus_Start_Date] [varchar](50) NULL,
	[Jesus_End_Date] [varchar](50) NULL,
	[Jesus_Comment] [varchar](max) NULL,
	[Cross_Status] [varchar](50) NULL,
	[Cross_Start_Date] [varchar](50) NULL,
	[Cross_End_Date] [varchar](50) NULL,
	[Cross_Comment] [varchar](max) NULL,
	[Blood_Status] [varchar](50) NULL,
	[Blood_Start_Date] [varchar](50) NULL,
	[Blood_End_Date] [varchar](50) NULL,
	[Blood_Comment] [varchar](max) NULL,
	[Resurrection_Status] [varchar](50) NULL,
	[Resurrection_Start] [varchar](50) NULL,
	[Resurrection_End_Date] [varchar](50) NULL,
	[Resurrection_Comment] [varchar](max) NULL,
	[Repentance_Status] [varchar](50) NULL,
	[Repentance_Start_Date] [varchar](50) NULL,
	[Repentence_End_Date] [varchar](50) NULL,
	[Repentance_Comment] [varchar](max) NULL,
	[Faith_Status] [varchar](50) NULL,
	[Faith_Start_Date] [varchar](50) NULL,
	[Faith_End_Date] [varchar](50) NULL,
	[Faith_Comment] [varchar](max) NULL,
	[HolySpirit_Status] [varchar](50) NULL,
	[HolySpirit_Start_Date] [varchar](50) NULL,
	[HolySpirit_End_Date] [varchar](50) NULL,
	[HolySpirit_Comment] [varchar](max) NULL,
	[Temptation_Status] [varchar](50) NULL,
	[Temptation_Start_Date] [varchar](50) NULL,
	[Temptation_End_Date] [varchar](50) NULL,
	[Temptation_Comment] [varchar](max) NULL,
	[Fellowship_Status] [varchar](50) NULL,
	[Fellowship_Start_Date] [varchar](50) NULL,
	[Fellowship_End_Date] [varchar](50) NULL,
	[Fellowship_Comment] [varchar](max) NULL,
	[Generosity_Status] [varchar](50) NULL,
	[Generosity_Start_Date] [varchar](50) NULL,
	[Generosity_End_Date] [varchar](50) NULL,
	[Generosity_Comment] [varchar](max) NULL,
	[WaterBaptism_Status] [varchar](50) NULL,
	[WaterBaptism_Start_Date] [varchar](50) NULL,
	[WaterBaptism_End_Date] [varchar](50) NULL,
	[WaterBaptism_Comment] [varchar](max) NULL,
	[CallOfGod_Status] [varchar](50) NULL,
	[CallOfGod_Start_Date] [varchar](50) NULL,
	[CallOfGod_End_Date] [varchar](50) NULL,
	[CallOfGod_Comment] [varchar](max) NULL,
	[Prayer_Status] [varchar](50) NULL,
	[Prayer_Start_Date] [varchar](50) NULL,
	[Prayer_End_Date] [varchar](50) NULL,
	[Prayer_Comment] [varchar](max) NULL,
	[KingdomLiving_Status] [varchar](50) NULL,
	[KingdomLiving_Start_Date] [varchar](50) NULL,
	[KingdomLiving_End_Date] [varchar](50) NULL,
	[KingdomLiving_Comment] [varchar](max) NULL,
	[Membership_Status] [varchar](50) NULL,
	[Membership_Start_Date] [varchar](50) NULL,
	[Membership_End_Date] [varchar](50) NULL,
	[Membership_Comment] [varchar](max) NULL,
	[Discipler_ID] [nchar](10) NULL,
	[DisciplerSurname] [varchar](50) NULL,
	[DisciplerName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Disciple_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 2019/10/15 00:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Region_Id] [int] IDENTITY(1,1) NOT NULL,
	[Region] [varchar](50) NULL,
	[Province_Id] [int] NULL,
	[Province] [varchar](50) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Region_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChurch]    Script Date: 2019/10/15 00:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChurch](
	[Church_Id] [int] IDENTITY(1,1) NOT NULL,
	[ChurchName] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Province] [varchar](50) NULL,
	[Region_Id] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Church_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProvince]    Script Date: 2019/10/15 00:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProvince](
	[Province_Id] [int] IDENTITY(1,1) NOT NULL,
	[Province] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Province_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2019/10/15 00:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Disciple_Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[fName] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Cell_Number] [varchar](50) NULL,
	[Province] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Town] [varchar](50) NULL,
	[Branch] [varchar](50) NULL,
	[Suburb] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Comment] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Disciple_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Disciple] ON 

INSERT [dbo].[Disciple] ([Disciple_Id], [FName], [Surname], [Date_Of_Birth], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [Image], [Assurance_Status], [Assurance_Start_Date], [Assurance_End_Date], [Assurance_Comment], [Bible_Status], [Bible_Start_Date], [Bible_End_Date], [Bible_Comment], [God_Status], [God_Start_Date], [God_End_Date], [God_Comment], [ManSatan_Status], [ManSatan_Start_Date], [ManSatan_End_Date], [ManSatan_Comment], [Jesus_Status], [Jesus_Start_Date], [Jesus_End_Date], [Jesus_Comment], [Cross_Status], [Cross_Start_Date], [Cross_End_Date], [Cross_Comment], [Blood_Status], [Blood_Start_Date], [Blood_End_Date], [Blood_Comment], [Resurrection_Status], [Resurrection_Start], [Resurrection_End_Date], [Resurrection_Comment], [Repentance_Status], [Repentance_Start_Date], [Repentence_End_Date], [Repentance_Comment], [Faith_Status], [Faith_Start_Date], [Faith_End_Date], [Faith_Comment], [HolySpirit_Status], [HolySpirit_Start_Date], [HolySpirit_End_Date], [HolySpirit_Comment], [Temptation_Status], [Temptation_Start_Date], [Temptation_End_Date], [Temptation_Comment], [Fellowship_Status], [Fellowship_Start_Date], [Fellowship_End_Date], [Fellowship_Comment], [Generosity_Status], [Generosity_Start_Date], [Generosity_End_Date], [Generosity_Comment], [WaterBaptism_Status], [WaterBaptism_Start_Date], [WaterBaptism_End_Date], [WaterBaptism_Comment], [CallOfGod_Status], [CallOfGod_Start_Date], [CallOfGod_End_Date], [CallOfGod_Comment], [Prayer_Status], [Prayer_Start_Date], [Prayer_End_Date], [Prayer_Comment], [KingdomLiving_Status], [KingdomLiving_Start_Date], [KingdomLiving_End_Date], [KingdomLiving_Comment], [Membership_Status], [Membership_Start_Date], [Membership_End_Date], [Membership_Comment], [Discipler_ID], [DisciplerSurname], [DisciplerName]) VALUES (257662187, N'Lungisa', N'Gwija', N'1990-02-06', N'0739933122', N'lungisa@gmail.com', N'Male', N'Maselane', N'20', N'New Brighton', N'Port Elizabeth', N'In Progress', N'Good classes', N'Eastern Cape', N'Sara Baartman', N'New Brighton', NULL, N'In Progress', N'2019-03-29', N'2019-04-02', N'The class was nice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Pambili   ', N'Pambili', N'Ntsinde')
INSERT [dbo].[Disciple] ([Disciple_Id], [FName], [Surname], [Date_Of_Birth], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [Image], [Assurance_Status], [Assurance_Start_Date], [Assurance_End_Date], [Assurance_Comment], [Bible_Status], [Bible_Start_Date], [Bible_End_Date], [Bible_Comment], [God_Status], [God_Start_Date], [God_End_Date], [God_Comment], [ManSatan_Status], [ManSatan_Start_Date], [ManSatan_End_Date], [ManSatan_Comment], [Jesus_Status], [Jesus_Start_Date], [Jesus_End_Date], [Jesus_Comment], [Cross_Status], [Cross_Start_Date], [Cross_End_Date], [Cross_Comment], [Blood_Status], [Blood_Start_Date], [Blood_End_Date], [Blood_Comment], [Resurrection_Status], [Resurrection_Start], [Resurrection_End_Date], [Resurrection_Comment], [Repentance_Status], [Repentance_Start_Date], [Repentence_End_Date], [Repentance_Comment], [Faith_Status], [Faith_Start_Date], [Faith_End_Date], [Faith_Comment], [HolySpirit_Status], [HolySpirit_Start_Date], [HolySpirit_End_Date], [HolySpirit_Comment], [Temptation_Status], [Temptation_Start_Date], [Temptation_End_Date], [Temptation_Comment], [Fellowship_Status], [Fellowship_Start_Date], [Fellowship_End_Date], [Fellowship_Comment], [Generosity_Status], [Generosity_Start_Date], [Generosity_End_Date], [Generosity_Comment], [WaterBaptism_Status], [WaterBaptism_Start_Date], [WaterBaptism_End_Date], [WaterBaptism_Comment], [CallOfGod_Status], [CallOfGod_Start_Date], [CallOfGod_End_Date], [CallOfGod_Comment], [Prayer_Status], [Prayer_Start_Date], [Prayer_End_Date], [Prayer_Comment], [KingdomLiving_Status], [KingdomLiving_Start_Date], [KingdomLiving_End_Date], [KingdomLiving_Comment], [Membership_Status], [Membership_Start_Date], [Membership_End_Date], [Membership_Comment], [Discipler_ID], [DisciplerSurname], [DisciplerName]) VALUES (257662188, N'Para', N'Ntsinde', N'1990-02-06', N'0847898748', N'lungids', N'Male', N'Maselane', N'45', N'Sunnyside', N'Kirkwood', N'Completed', N'Nothing now', N'Eastern Cape', N'Sara Baartman', N'Sowetho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Lutho     ', N'Bena', N'Baba')
INSERT [dbo].[Disciple] ([Disciple_Id], [FName], [Surname], [Date_Of_Birth], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [Image], [Assurance_Status], [Assurance_Start_Date], [Assurance_End_Date], [Assurance_Comment], [Bible_Status], [Bible_Start_Date], [Bible_End_Date], [Bible_Comment], [God_Status], [God_Start_Date], [God_End_Date], [God_Comment], [ManSatan_Status], [ManSatan_Start_Date], [ManSatan_End_Date], [ManSatan_Comment], [Jesus_Status], [Jesus_Start_Date], [Jesus_End_Date], [Jesus_Comment], [Cross_Status], [Cross_Start_Date], [Cross_End_Date], [Cross_Comment], [Blood_Status], [Blood_Start_Date], [Blood_End_Date], [Blood_Comment], [Resurrection_Status], [Resurrection_Start], [Resurrection_End_Date], [Resurrection_Comment], [Repentance_Status], [Repentance_Start_Date], [Repentence_End_Date], [Repentance_Comment], [Faith_Status], [Faith_Start_Date], [Faith_End_Date], [Faith_Comment], [HolySpirit_Status], [HolySpirit_Start_Date], [HolySpirit_End_Date], [HolySpirit_Comment], [Temptation_Status], [Temptation_Start_Date], [Temptation_End_Date], [Temptation_Comment], [Fellowship_Status], [Fellowship_Start_Date], [Fellowship_End_Date], [Fellowship_Comment], [Generosity_Status], [Generosity_Start_Date], [Generosity_End_Date], [Generosity_Comment], [WaterBaptism_Status], [WaterBaptism_Start_Date], [WaterBaptism_End_Date], [WaterBaptism_Comment], [CallOfGod_Status], [CallOfGod_Start_Date], [CallOfGod_End_Date], [CallOfGod_Comment], [Prayer_Status], [Prayer_Start_Date], [Prayer_End_Date], [Prayer_Comment], [KingdomLiving_Status], [KingdomLiving_Start_Date], [KingdomLiving_End_Date], [KingdomLiving_Comment], [Membership_Status], [Membership_Start_Date], [Membership_End_Date], [Membership_Comment], [Discipler_ID], [DisciplerSurname], [DisciplerName]) VALUES (257662189, N'Siya', N'Gala', N'1990-02-06', N'0178569856', NULL, N'Female', N'Leyds', N'45', N'Sunnyside', N'Kirkwood', N'Completed', N'Oh very nice person', N'Free State', N'Sara Baartman', N'Khayelisha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Tabza     ', N'Mohlala', N'Tabza')
INSERT [dbo].[Disciple] ([Disciple_Id], [FName], [Surname], [Date_Of_Birth], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [Image], [Assurance_Status], [Assurance_Start_Date], [Assurance_End_Date], [Assurance_Comment], [Bible_Status], [Bible_Start_Date], [Bible_End_Date], [Bible_Comment], [God_Status], [God_Start_Date], [God_End_Date], [God_Comment], [ManSatan_Status], [ManSatan_Start_Date], [ManSatan_End_Date], [ManSatan_Comment], [Jesus_Status], [Jesus_Start_Date], [Jesus_End_Date], [Jesus_Comment], [Cross_Status], [Cross_Start_Date], [Cross_End_Date], [Cross_Comment], [Blood_Status], [Blood_Start_Date], [Blood_End_Date], [Blood_Comment], [Resurrection_Status], [Resurrection_Start], [Resurrection_End_Date], [Resurrection_Comment], [Repentance_Status], [Repentance_Start_Date], [Repentence_End_Date], [Repentance_Comment], [Faith_Status], [Faith_Start_Date], [Faith_End_Date], [Faith_Comment], [HolySpirit_Status], [HolySpirit_Start_Date], [HolySpirit_End_Date], [HolySpirit_Comment], [Temptation_Status], [Temptation_Start_Date], [Temptation_End_Date], [Temptation_Comment], [Fellowship_Status], [Fellowship_Start_Date], [Fellowship_End_Date], [Fellowship_Comment], [Generosity_Status], [Generosity_Start_Date], [Generosity_End_Date], [Generosity_Comment], [WaterBaptism_Status], [WaterBaptism_Start_Date], [WaterBaptism_End_Date], [WaterBaptism_Comment], [CallOfGod_Status], [CallOfGod_Start_Date], [CallOfGod_End_Date], [CallOfGod_Comment], [Prayer_Status], [Prayer_Start_Date], [Prayer_End_Date], [Prayer_Comment], [KingdomLiving_Status], [KingdomLiving_Start_Date], [KingdomLiving_End_Date], [KingdomLiving_Comment], [Membership_Status], [Membership_Start_Date], [Membership_End_Date], [Membership_Comment], [Discipler_ID], [DisciplerSurname], [DisciplerName]) VALUES (257662190, N'Lutho', N'Mendu', N'1990-02-06', N'0208568953', NULL, N'Male', N'Leyds', N'878', N'Sunnyside', N'Kirkwood', N'Completed', N'None for now', N'Free State', N'Border', N'East London ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Mels      ', N'Willz', N'Melz')
INSERT [dbo].[Disciple] ([Disciple_Id], [FName], [Surname], [Date_Of_Birth], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [Image], [Assurance_Status], [Assurance_Start_Date], [Assurance_End_Date], [Assurance_Comment], [Bible_Status], [Bible_Start_Date], [Bible_End_Date], [Bible_Comment], [God_Status], [God_Start_Date], [God_End_Date], [God_Comment], [ManSatan_Status], [ManSatan_Start_Date], [ManSatan_End_Date], [ManSatan_Comment], [Jesus_Status], [Jesus_Start_Date], [Jesus_End_Date], [Jesus_Comment], [Cross_Status], [Cross_Start_Date], [Cross_End_Date], [Cross_Comment], [Blood_Status], [Blood_Start_Date], [Blood_End_Date], [Blood_Comment], [Resurrection_Status], [Resurrection_Start], [Resurrection_End_Date], [Resurrection_Comment], [Repentance_Status], [Repentance_Start_Date], [Repentence_End_Date], [Repentance_Comment], [Faith_Status], [Faith_Start_Date], [Faith_End_Date], [Faith_Comment], [HolySpirit_Status], [HolySpirit_Start_Date], [HolySpirit_End_Date], [HolySpirit_Comment], [Temptation_Status], [Temptation_Start_Date], [Temptation_End_Date], [Temptation_Comment], [Fellowship_Status], [Fellowship_Start_Date], [Fellowship_End_Date], [Fellowship_Comment], [Generosity_Status], [Generosity_Start_Date], [Generosity_End_Date], [Generosity_Comment], [WaterBaptism_Status], [WaterBaptism_Start_Date], [WaterBaptism_End_Date], [WaterBaptism_Comment], [CallOfGod_Status], [CallOfGod_Start_Date], [CallOfGod_End_Date], [CallOfGod_Comment], [Prayer_Status], [Prayer_Start_Date], [Prayer_End_Date], [Prayer_Comment], [KingdomLiving_Status], [KingdomLiving_Start_Date], [KingdomLiving_End_Date], [KingdomLiving_Comment], [Membership_Status], [Membership_Start_Date], [Membership_End_Date], [Membership_Comment], [Discipler_ID], [DisciplerSurname], [DisciplerName]) VALUES (257662191, N'Kapa', N'Thando', N'1990-02-06', N'0178569856', NULL, N'Female', N'Leyds', N'874', N'Sunnyside', N'Kirkwood', N'Completed', N'All good', N'Kwazulu Natala', N'South Coat', N'Daku', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Adm       ', N'AdmName', N'AdmSurname')
INSERT [dbo].[Disciple] ([Disciple_Id], [FName], [Surname], [Date_Of_Birth], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [Image], [Assurance_Status], [Assurance_Start_Date], [Assurance_End_Date], [Assurance_Comment], [Bible_Status], [Bible_Start_Date], [Bible_End_Date], [Bible_Comment], [God_Status], [God_Start_Date], [God_End_Date], [God_Comment], [ManSatan_Status], [ManSatan_Start_Date], [ManSatan_End_Date], [ManSatan_Comment], [Jesus_Status], [Jesus_Start_Date], [Jesus_End_Date], [Jesus_Comment], [Cross_Status], [Cross_Start_Date], [Cross_End_Date], [Cross_Comment], [Blood_Status], [Blood_Start_Date], [Blood_End_Date], [Blood_Comment], [Resurrection_Status], [Resurrection_Start], [Resurrection_End_Date], [Resurrection_Comment], [Repentance_Status], [Repentance_Start_Date], [Repentence_End_Date], [Repentance_Comment], [Faith_Status], [Faith_Start_Date], [Faith_End_Date], [Faith_Comment], [HolySpirit_Status], [HolySpirit_Start_Date], [HolySpirit_End_Date], [HolySpirit_Comment], [Temptation_Status], [Temptation_Start_Date], [Temptation_End_Date], [Temptation_Comment], [Fellowship_Status], [Fellowship_Start_Date], [Fellowship_End_Date], [Fellowship_Comment], [Generosity_Status], [Generosity_Start_Date], [Generosity_End_Date], [Generosity_Comment], [WaterBaptism_Status], [WaterBaptism_Start_Date], [WaterBaptism_End_Date], [WaterBaptism_Comment], [CallOfGod_Status], [CallOfGod_Start_Date], [CallOfGod_End_Date], [CallOfGod_Comment], [Prayer_Status], [Prayer_Start_Date], [Prayer_End_Date], [Prayer_Comment], [KingdomLiving_Status], [KingdomLiving_Start_Date], [KingdomLiving_End_Date], [KingdomLiving_Comment], [Membership_Status], [Membership_Start_Date], [Membership_End_Date], [Membership_Comment], [Discipler_ID], [DisciplerSurname], [DisciplerName]) VALUES (257662192, N'Lihle', N'Zathu', N'1990-02-06', N'01425621448', NULL, N'Male', N'Leyds', N'55', N'Sunnyside', N'Kirkwood', N'In Progress', N'Nice person', N'Gauteng', N'Welani', N'Smith ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'AT        ', N'Holiday', N'Athabile')
INSERT [dbo].[Disciple] ([Disciple_Id], [FName], [Surname], [Date_Of_Birth], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [Image], [Assurance_Status], [Assurance_Start_Date], [Assurance_End_Date], [Assurance_Comment], [Bible_Status], [Bible_Start_Date], [Bible_End_Date], [Bible_Comment], [God_Status], [God_Start_Date], [God_End_Date], [God_Comment], [ManSatan_Status], [ManSatan_Start_Date], [ManSatan_End_Date], [ManSatan_Comment], [Jesus_Status], [Jesus_Start_Date], [Jesus_End_Date], [Jesus_Comment], [Cross_Status], [Cross_Start_Date], [Cross_End_Date], [Cross_Comment], [Blood_Status], [Blood_Start_Date], [Blood_End_Date], [Blood_Comment], [Resurrection_Status], [Resurrection_Start], [Resurrection_End_Date], [Resurrection_Comment], [Repentance_Status], [Repentance_Start_Date], [Repentence_End_Date], [Repentance_Comment], [Faith_Status], [Faith_Start_Date], [Faith_End_Date], [Faith_Comment], [HolySpirit_Status], [HolySpirit_Start_Date], [HolySpirit_End_Date], [HolySpirit_Comment], [Temptation_Status], [Temptation_Start_Date], [Temptation_End_Date], [Temptation_Comment], [Fellowship_Status], [Fellowship_Start_Date], [Fellowship_End_Date], [Fellowship_Comment], [Generosity_Status], [Generosity_Start_Date], [Generosity_End_Date], [Generosity_Comment], [WaterBaptism_Status], [WaterBaptism_Start_Date], [WaterBaptism_End_Date], [WaterBaptism_Comment], [CallOfGod_Status], [CallOfGod_Start_Date], [CallOfGod_End_Date], [CallOfGod_Comment], [Prayer_Status], [Prayer_Start_Date], [Prayer_End_Date], [Prayer_Comment], [KingdomLiving_Status], [KingdomLiving_Start_Date], [KingdomLiving_End_Date], [KingdomLiving_Comment], [Membership_Status], [Membership_Start_Date], [Membership_End_Date], [Membership_Comment], [Discipler_ID], [DisciplerSurname], [DisciplerName]) VALUES (257662195, N'Sanele', N'Morgan', N'1990-01-01', N'0739578409', N'sanele@gmail.com', N'Male', N'Leyds', N'De Cop Flat', N'Sunnyside', N'Sunnyside', N'In Progress', N'Excited Looking forward to learn more', N'Gauteng', N'Midrand', N'Midrand', NULL, N'Completed', N'2019-08-16', N'2019-08-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Sine      ', N'Fubu', N'Sinethemba')
INSERT [dbo].[Disciple] ([Disciple_Id], [FName], [Surname], [Date_Of_Birth], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [Image], [Assurance_Status], [Assurance_Start_Date], [Assurance_End_Date], [Assurance_Comment], [Bible_Status], [Bible_Start_Date], [Bible_End_Date], [Bible_Comment], [God_Status], [God_Start_Date], [God_End_Date], [God_Comment], [ManSatan_Status], [ManSatan_Start_Date], [ManSatan_End_Date], [ManSatan_Comment], [Jesus_Status], [Jesus_Start_Date], [Jesus_End_Date], [Jesus_Comment], [Cross_Status], [Cross_Start_Date], [Cross_End_Date], [Cross_Comment], [Blood_Status], [Blood_Start_Date], [Blood_End_Date], [Blood_Comment], [Resurrection_Status], [Resurrection_Start], [Resurrection_End_Date], [Resurrection_Comment], [Repentance_Status], [Repentance_Start_Date], [Repentence_End_Date], [Repentance_Comment], [Faith_Status], [Faith_Start_Date], [Faith_End_Date], [Faith_Comment], [HolySpirit_Status], [HolySpirit_Start_Date], [HolySpirit_End_Date], [HolySpirit_Comment], [Temptation_Status], [Temptation_Start_Date], [Temptation_End_Date], [Temptation_Comment], [Fellowship_Status], [Fellowship_Start_Date], [Fellowship_End_Date], [Fellowship_Comment], [Generosity_Status], [Generosity_Start_Date], [Generosity_End_Date], [Generosity_Comment], [WaterBaptism_Status], [WaterBaptism_Start_Date], [WaterBaptism_End_Date], [WaterBaptism_Comment], [CallOfGod_Status], [CallOfGod_Start_Date], [CallOfGod_End_Date], [CallOfGod_Comment], [Prayer_Status], [Prayer_Start_Date], [Prayer_End_Date], [Prayer_Comment], [KingdomLiving_Status], [KingdomLiving_Start_Date], [KingdomLiving_End_Date], [KingdomLiving_Comment], [Membership_Status], [Membership_Start_Date], [Membership_End_Date], [Membership_Comment], [Discipler_ID], [DisciplerSurname], [DisciplerName]) VALUES (257662196, N'DisName', N'DisSurname', N'1990-01-01', N'0711171524', N'testdisciple@gmail.com', N'Female', N'Central', N'143', N'Pretoria', N'Pretoria', N'In Progress', N'I am ready', N'Gauteng', N'Midrand', N'Daveyton', NULL, N'In Progress', N'2019-09-03', N'2019-09-03', N'The class was wonderful, looking forward onto the following one.. The Bible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Discipler ', N'DName', N'DSurname')
INSERT [dbo].[Disciple] ([Disciple_Id], [FName], [Surname], [Date_Of_Birth], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [Image], [Assurance_Status], [Assurance_Start_Date], [Assurance_End_Date], [Assurance_Comment], [Bible_Status], [Bible_Start_Date], [Bible_End_Date], [Bible_Comment], [God_Status], [God_Start_Date], [God_End_Date], [God_Comment], [ManSatan_Status], [ManSatan_Start_Date], [ManSatan_End_Date], [ManSatan_Comment], [Jesus_Status], [Jesus_Start_Date], [Jesus_End_Date], [Jesus_Comment], [Cross_Status], [Cross_Start_Date], [Cross_End_Date], [Cross_Comment], [Blood_Status], [Blood_Start_Date], [Blood_End_Date], [Blood_Comment], [Resurrection_Status], [Resurrection_Start], [Resurrection_End_Date], [Resurrection_Comment], [Repentance_Status], [Repentance_Start_Date], [Repentence_End_Date], [Repentance_Comment], [Faith_Status], [Faith_Start_Date], [Faith_End_Date], [Faith_Comment], [HolySpirit_Status], [HolySpirit_Start_Date], [HolySpirit_End_Date], [HolySpirit_Comment], [Temptation_Status], [Temptation_Start_Date], [Temptation_End_Date], [Temptation_Comment], [Fellowship_Status], [Fellowship_Start_Date], [Fellowship_End_Date], [Fellowship_Comment], [Generosity_Status], [Generosity_Start_Date], [Generosity_End_Date], [Generosity_Comment], [WaterBaptism_Status], [WaterBaptism_Start_Date], [WaterBaptism_End_Date], [WaterBaptism_Comment], [CallOfGod_Status], [CallOfGod_Start_Date], [CallOfGod_End_Date], [CallOfGod_Comment], [Prayer_Status], [Prayer_Start_Date], [Prayer_End_Date], [Prayer_Comment], [KingdomLiving_Status], [KingdomLiving_Start_Date], [KingdomLiving_End_Date], [KingdomLiving_Comment], [Membership_Status], [Membership_Start_Date], [Membership_End_Date], [Membership_Comment], [Discipler_ID], [DisciplerSurname], [DisciplerName]) VALUES (257662197, N'Trevor', N'Noah', N'2019-10-12', N'0123456789', N'trevornoah@ymail.com', N'Male', N'163 Rissik Street', N'Urbanvest', N'Sunnyside', N'Pretoria', N'In Progress', NULL, NULL, NULL, NULL, NULL, N'In Progress', N'2019-10-12', N'2019-10-12', N'In progress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Sine      ', N'Sinethemba', N'Fubu')
SET IDENTITY_INSERT [dbo].[Disciple] OFF
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (1, N'Sara Baartman', 1, N'Eastern Cape')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (2, N'Border', 1, N'Eastern Cape')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (3, N'Mthata', 1, N'Eastern Cape')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (4, N'Border', 2, N'Free State')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (5, N'Border', 2, N'Free State')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (6, N'Andazi 3', 2, N'Free State')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (7, N'Midrand', 3, N'Gauteng')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (8, N'Durban', 6, N'KwaZulu Natal')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (9, N'Thokoza', 3, N'Gauteng')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (10, N'Germiston', 3, N'Gauteng')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (11, N'Vaal', 3, N'Gauteng')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (12, N'North West', 3, N'North West')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (13, N'Mpumalanga', 7, N'Mpumalanga')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (14, N'Daveyton', 3, N'Gauteng')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (15, N'Northen Cape', 3, N'Gauteng')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (16, N'PMB', 6, N'KwaZulu Natal')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (17, N'Hluhluwe/Mtuba', 6, N'KwaZulu Natal')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (18, N'Ballito', 6, N'KwaZulu Natal')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (19, N'Marget', 6, N'KwaZulu Natal')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (20, N'Gauteng', 3, N'Gauteng')
INSERT [dbo].[Region] ([Region_Id], [Region], [Province_Id], [Province]) VALUES (21, N'South Coast', 6, N'KwaZulu Natal')
SET IDENTITY_INSERT [dbo].[Region] OFF
SET IDENTITY_INSERT [dbo].[tblChurch] ON 

INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (1, N'New Brighton', N'Sara Baartman', N'Eastern Cape', N'1')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (2, N'Kirkwood', N'Sara Baartman', N'Eastern Cape', N'1')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (3, N'East London', N'Border', N'Eastern Cape', N'2')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (4, N'Bityi', N'Mthata', N'Eastern Cape', N'3')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (5, N'Wena', N'Free State', N'Free State', N'4')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (6, N'Midrand', N'Midrand', N'Gauteng', N'20')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (7, N'Durban', N'South Coast', N'KwaZulu Natal', N'21')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (8, N'Marget', N'South Coast', N'KwaZulu Natal', N'21')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (9, N'Mtuba/Hluhluwe', N'South Coast', N'KwaZulu Natal', N'21')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (10, N'Germiston', N'Midrand', N'Gauteng', N'20')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (11, N'Thokoza', N'Midrand', N'Gauteng', N'20')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (12, N'Vaal', N'Midrand', N'Gauteng', N'20')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (13, N'North West', N'Midrand', N'Gauteng', N'20')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (14, N'Daveyton', N'Midrand', N'Gauteng', N'20')
INSERT [dbo].[tblChurch] ([Church_Id], [ChurchName], [Region], [Province], [Region_Id]) VALUES (15, N'Mpumalanga', N'Midrand', N'Gauteng', N'20')
SET IDENTITY_INSERT [dbo].[tblChurch] OFF
SET IDENTITY_INSERT [dbo].[tblProvince] ON 

INSERT [dbo].[tblProvince] ([Province_Id], [Province]) VALUES (1, N'Eastern Cape')
INSERT [dbo].[tblProvince] ([Province_Id], [Province]) VALUES (2, N'Free State')
INSERT [dbo].[tblProvince] ([Province_Id], [Province]) VALUES (3, N'Gauteng')
INSERT [dbo].[tblProvince] ([Province_Id], [Province]) VALUES (4, N' Western Cape')
INSERT [dbo].[tblProvince] ([Province_Id], [Province]) VALUES (5, N'Limpopo')
INSERT [dbo].[tblProvince] ([Province_Id], [Province]) VALUES (6, N'KwaZulu Natal')
INSERT [dbo].[tblProvince] ([Province_Id], [Province]) VALUES (7, N'Mpumalanga')
INSERT [dbo].[tblProvince] ([Province_Id], [Province]) VALUES (8, N'Northen Cape')
INSERT [dbo].[tblProvince] ([Province_Id], [Province]) VALUES (9, N'North West')
SET IDENTITY_INSERT [dbo].[tblProvince] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (1, N'Mr', N'Pambilini', N'Ntsinde', N'0739933122', N'Eastern Cape', N'Sara Bartman', N'Port Elizabeth', N'Summerstrand', N'Summerstrand', N'parantsinde@gmail.com', N'Discipler', N'Pambili', N'1234', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (2, N'Pastor', N'Thabza', N'Mohlala', N'0756895690', N'Eastern Cape', N'Sara Bartman', N'Port Elizabeth', N'Town', N'Central', N'ntsindep@hotmail.com', N'Pastor', N'Thabza', N'1234', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (3, N'Bishop', N'Athabile', N'Holiday', N'0795869587', N'Eastern Cape', N'Sara Bartman', N'Port Elizabeth', N'Kirkwood', N'Kirkwood', N's216512568', N'Bishop', N'Athabile', N'1234', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (4, N'Mr', N'Lwazi', N'Gwija', N'0739966568', N'Eastern Cape', N'Sara Bartman', N'Port Elizabeth', N'New Brighton', N'New Brighton', N's216512719@mandela.ac.za', N'Admin', N'Lwazi', N'1234', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (5, N'Mr', N'Sanele', N'Morgan', N'0711171524', N'KwaZulu Natal', N'South Coast', N'Durban', N'Durban', N'Durban', N'email@gmail.com', N'Discipler', N'Sanele', N'1234', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (7, N'Mr', N'Lubabalo', N'Funani', N'0756895690', N'Eastern Cape', N'Border', N'East London', N'Kirkwood', N'Central', N's216512719@mandela.ac.za', N'Admin', N'Luba', N'1234', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (9, N'Mr', N'Sinethemba', N'Fubu', N'0815936513', N'Gauteng', N'Midrand', N'Thokoza', N'Thokoza', N'Joburg', N'sinefubu@gmail.com', N'Discipler', N'Sine', N'1234', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (10, N'Bishop', N'BishopName', N'BishopSurname', N'0712345678', N'Limpopo', N'Limpopo', N'Limpopo', N'Limpopo', N'Limpopo', N'limpopo@gmail.com', N'Bishop', N'Bishop', N'testBishop', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (11, N'Discipler', N'DName', N'DSurname', N'0812345678', N'Gauteng', N'Midrand', N'Pretoria', N'Midrand', N'Sunnyside', N'testdiscipler@gmail.com', N'Discipler', N'Discipler', N'testDiscipler', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (12, N'Pastor', N'PastorName', N'PastorSurname', N'0612345678', N'KwaZulu Natal', N'Marget', N'Marget', N'Marget', N'Marget', N'dbn@gmail.com', N'Pastor', N'Pastor', N'testPastor', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (13, N'MaterUser', N'MatserUser', N'MSUser', N'0512345678', N'Western Cape', N'Western Cape', N'Cape Town', N'Cape Town', N'Cape Town', N'cpt@gmail.com', N'MasterUser', N'Master', N'testsMster', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (14, N'Admin', N'AdmName', N'AdmSurname', N'0412345678', N'Mpumalanga', N'Mpumalanga', N'Mpumalanga', N'Mpumalanga', N'Mpumalanga', N'testadmin@gmail.com', N'Admin', N'Admin', N'testAdmin', NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password], [Comment]) VALUES (16, N'Mr', N'TestAdmin', N'MySurname', N'0123456789', N'Limpopo', N'Gauteng', N'Centurion', N'Midrand', N'Techno-Park', N'testadmin@bbm.co.za', N'Admin', N'MasterUser', N'12345', NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
USE [master]
GO
ALTER DATABASE [bbmDatabase] SET  READ_WRITE 
GO
