USE [master]
GO

/****** Object:  Database [BookRentalDetails]    Script Date: 4/11/2022 11:32:24 PM ******/
CREATE DATABASE [BookRentalDetails]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Database_Design_Admin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Database_Design_Admin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Database_Design_Admin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Database_Design_Admin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookRentalDetails].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BookRentalDetails] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BookRentalDetails] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BookRentalDetails] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BookRentalDetails] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BookRentalDetails] SET ARITHABORT OFF 
GO

ALTER DATABASE [BookRentalDetails] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BookRentalDetails] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BookRentalDetails] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BookRentalDetails] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BookRentalDetails] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BookRentalDetails] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BookRentalDetails] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BookRentalDetails] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BookRentalDetails] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BookRentalDetails] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BookRentalDetails] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BookRentalDetails] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BookRentalDetails] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BookRentalDetails] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BookRentalDetails] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BookRentalDetails] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BookRentalDetails] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BookRentalDetails] SET RECOVERY FULL 
GO

ALTER DATABASE [BookRentalDetails] SET  MULTI_USER 
GO

ALTER DATABASE [BookRentalDetails] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BookRentalDetails] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BookRentalDetails] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BookRentalDetails] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [BookRentalDetails] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BookRentalDetails] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [BookRentalDetails] SET QUERY_STORE = OFF
GO

ALTER DATABASE [BookRentalDetails] SET  READ_WRITE 
GO

