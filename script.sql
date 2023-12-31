USE [master]
GO
/****** Object:  Database [AppointmentDatabase]    Script Date: 13/11/2023 5:58:01 pm ******/
CREATE DATABASE [AppointmentDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AppointmentDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AppointmentDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AppointmentDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AppointmentDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AppointmentDatabase] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AppointmentDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AppointmentDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AppointmentDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AppointmentDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AppointmentDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AppointmentDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AppointmentDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AppointmentDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [AppointmentDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AppointmentDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AppointmentDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AppointmentDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AppointmentDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AppointmentDatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AppointmentDatabase] SET QUERY_STORE = ON
GO
ALTER DATABASE [AppointmentDatabase] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AppointmentDatabase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/11/2023 5:58:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 13/11/2023 5:58:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[DateAndTime] [datetime2](7) NOT NULL,
	[PatientNumber] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HealthProfiles]    Script Date: 13/11/2023 5:58:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthProfiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[UserType] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[EmergencyContact] [nvarchar](max) NOT NULL,
	[BloodGroup] [nvarchar](max) NOT NULL,
	[Height] [float] NOT NULL,
	[Weight] [float] NOT NULL,
	[MedicalHistory] [nvarchar](max) NOT NULL,
	[Medications] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_HealthProfiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [AppointmentDatabase] SET  READ_WRITE 
GO
