USE [master]
GO
/****** Object:  Database [HumanResourceManager]    Script Date: 02/06/2020 8:17:06 CH ******/
CREATE DATABASE [HumanResourceManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HumanResourceManager', FILENAME = N'C:\Users\AkiraTatsuhisa\HumanResourceManager.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HumanResourceManager_log', FILENAME = N'C:\Users\AkiraTatsuhisa\HumanResourceManager_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HumanResourceManager] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HumanResourceManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HumanResourceManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HumanResourceManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HumanResourceManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HumanResourceManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HumanResourceManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [HumanResourceManager] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HumanResourceManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HumanResourceManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HumanResourceManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HumanResourceManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HumanResourceManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HumanResourceManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HumanResourceManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HumanResourceManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HumanResourceManager] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HumanResourceManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HumanResourceManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HumanResourceManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HumanResourceManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HumanResourceManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HumanResourceManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HumanResourceManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HumanResourceManager] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HumanResourceManager] SET  MULTI_USER 
GO
ALTER DATABASE [HumanResourceManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HumanResourceManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HumanResourceManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HumanResourceManager] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HumanResourceManager] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HumanResourceManager] SET QUERY_STORE = OFF
GO
USE [HumanResourceManager]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [HumanResourceManager]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 02/06/2020 8:17:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 02/06/2020 8:17:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [smallint] NOT NULL,
	[ManagerId] [int] NULL,
	[DepartmentId] [int] NOT NULL,
	[Email] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](256) NOT NULL,
	[PhoneNumber] [varchar](32) NULL,
	[Salary] [decimal](18, 3) NULL,
	[HireDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobHistories]    Script Date: 02/06/2020 8:17:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobHistories](
	[EmployeeId] [int] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[JobId] [smallint] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_JobHistories] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC,
	[StartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 02/06/2020 8:17:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[MinSalary] [decimal](18, 3) NULL,
	[MaxSalary] [decimal](18, 3) NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 02/06/2020 8:17:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StreetAddress] [nvarchar](450) NULL,
	[PostalCode] [varchar](32) NULL,
	[City] [nvarchar](256) NULL,
	[StateProvince] [nvarchar](256) NULL,
	[Country] [nvarchar](256) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [HumanResourceManager] SET  READ_WRITE 
GO
