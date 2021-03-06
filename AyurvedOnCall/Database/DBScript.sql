IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sizes_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sizes]'))
ALTER TABLE [dbo].[Sizes] DROP CONSTRAINT [FK_Sizes_Category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductImages_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImages]'))
ALTER TABLE [dbo].[ProductImages] DROP CONSTRAINT [FK_ProductImages_Product]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Feature_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductFeature]'))
ALTER TABLE [dbo].[ProductFeature] DROP CONSTRAINT [FK_Feature_Product]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Sizes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] DROP CONSTRAINT [FK_ProductDetails_Sizes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] DROP CONSTRAINT [FK_ProductDetails_Product]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] DROP CONSTRAINT [FK_ProductDetails_Color]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Category]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Offers_DiscountType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offers]'))
ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [FK_Offers_DiscountType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails] DROP CONSTRAINT [FK_CartDetails_Product]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails] DROP CONSTRAINT [FK_CartDetails_Color]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Contact_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Contact] DROP CONSTRAINT [DF_Contact_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Contact_IsProductInquiry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Contact] DROP CONSTRAINT [DF_Contact_IsProductInquiry]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[bosskinds].[DF_ProductPTE_isUpdated]') AND type = 'D')
BEGIN
ALTER TABLE [bosskinds].[ProductPTE] DROP CONSTRAINT [DF_ProductPTE_isUpdated]
END

GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sizes]') AND type in (N'U'))
DROP TABLE [dbo].[Sizes]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImages]') AND type in (N'U'))
DROP TABLE [dbo].[ProductImages]
GO
/****** Object:  Table [dbo].[ProductFeature]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductFeature]') AND type in (N'U'))
DROP TABLE [dbo].[ProductFeature]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductDetails]') AND type in (N'U'))
DROP TABLE [dbo].[ProductDetails]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offers]') AND type in (N'U'))
DROP TABLE [dbo].[Offers]
GO
/****** Object:  Table [dbo].[FileManagers]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileManagers]') AND type in (N'U'))
DROP TABLE [dbo].[FileManagers]
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAQ]') AND type in (N'U'))
DROP TABLE [dbo].[FAQ]
GO
/****** Object:  Table [dbo].[EmailTemplete]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailTemplete]') AND type in (N'U'))
DROP TABLE [dbo].[EmailTemplete]
GO
/****** Object:  Table [dbo].[DiscountType]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiscountType]') AND type in (N'U'))
DROP TABLE [dbo].[DiscountType]
GO
/****** Object:  Table [dbo].[Containers]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Containers]') AND type in (N'U'))
DROP TABLE [dbo].[Containers]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
DROP TABLE [dbo].[Contact]
GO
/****** Object:  Table [dbo].[Configurations]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Configurations]') AND type in (N'U'))
DROP TABLE [dbo].[Configurations]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Color]') AND type in (N'U'))
DROP TABLE [dbo].[Color]
GO
/****** Object:  Table [dbo].[CollectionPoints]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CollectionPoints]') AND type in (N'U'))
DROP TABLE [dbo].[CollectionPoints]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CartDetails]') AND type in (N'U'))
DROP TABLE [dbo].[CartDetails]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Advertisement]') AND type in (N'U'))
DROP TABLE [dbo].[Advertisement]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [bosskinds].[ProductPTE]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bosskinds].[ProductPTE]') AND type in (N'U'))
DROP TABLE [bosskinds].[ProductPTE]
GO
/****** Object:  Schema [bosskinds]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'bosskinds')
DROP SCHEMA [bosskinds]
GO

DECLARE @RoleName sysname
set @RoleName = N'gd_execprocs'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
IF @RoleName <> N'public' and (select is_fixed_role from sys.database_principals where name = @RoleName) = 0
BEGIN
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id
		from sys.database_role_members

		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName AND type = 'R'))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName
	
	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
END
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'gd_execprocs' AND type = 'R')
DROP ROLE [gd_execprocs]
GO
/****** Object:  Database [ECommerce_Shop]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'ECommerce_Shop')
DROP DATABASE [ECommerce_Shop]
GO
/****** Object:  Database [ECommerce_Shop]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ECommerce_Shop')
BEGIN
CREATE DATABASE [ECommerce_Shop] ON  PRIMARY 
( NAME = N'ECommerce_Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ECommerce_Shop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ECommerce_Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ECommerce_Shop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ECommerce_Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ECommerce_Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ECommerce_Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ECommerce_Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ECommerce_Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ECommerce_Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ECommerce_Shop] SET RECOVERY FULL 
GO
ALTER DATABASE [ECommerce_Shop] SET  MULTI_USER 
GO
ALTER DATABASE [ECommerce_Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ECommerce_Shop] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ECommerce_Shop', N'ON'
GO
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'gd_execprocs' AND type = 'R')
CREATE ROLE [gd_execprocs]
GO
/****** Object:  Schema [bosskinds]    Script Date: 18-Sep-19 4:52:09 PM ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'bosskinds')
EXEC sys.sp_executesql N'CREATE SCHEMA [bosskinds]'

GO
/****** Object:  Table [bosskinds].[ProductPTE]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bosskinds].[ProductPTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [bosskinds].[ProductPTE](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[word] [nvarchar](max) NULL,
	[meaning] [nvarchar](max) NULL,
	[extrainfomation] [nvarchar](max) NULL,
	[createdDate] [datetime] NULL,
	[isUpdated] [bit] NOT NULL,
 CONSTRAINT [PK_ProductPTE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Advertisement]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Advertisement](
	[AdvertisementId] [bigint] IDENTITY(1,1) NOT NULL,
	[LinkUrl] [nvarchar](max) NULL,
	[HImageUrl] [nvarchar](max) NULL,
	[VImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Advertisement] PRIMARY KEY CLUSTERED 
(
	[AdvertisementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[ProfileImage] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Tagline] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[DateOfBirth] [datetime] NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Brand](
	[BrandId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Brand_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CartDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CartDetails](
	[CartDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactId] [bigint] NOT NULL CONSTRAINT [DF_CartDetails_ContactId]  DEFAULT ((0)),
	[CartCookie] [nvarchar](150) NOT NULL,
	[Quantity] [int] NOT NULL CONSTRAINT [DF_CartDetails_Quantity]  DEFAULT ((1)),
	[ProductId] [bigint] NOT NULL,
	[MRP] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[TAX] [float] NOT NULL,
	[OfferTitle] [nvarchar](max) NULL,
	[Discount] [float] NOT NULL CONSTRAINT [DF_CartDetails_Discount]  DEFAULT ((0)),
	[SizeName] [nvarchar](500) NOT NULL,
	[ColorId] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CartDetails_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_CartDetails_1] PRIMARY KEY CLUSTERED 
(
	[CartDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[CategoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[RootCategoryId] [bigint] NULL,
	[CustomUrl] [nvarchar](max) NULL,
	[OrderNo] [int] NULL CONSTRAINT [DF_Category_OrderNo_1]  DEFAULT ((0)),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Category_active]  DEFAULT ((1)),
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CollectionPoints]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CollectionPoints]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CollectionPoints](
	[CollectionPointId] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CollectionPoints] PRIMARY KEY CLUSTERED 
(
	[CollectionPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Color]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Color]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Color](
	[ColorId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Hex] [nvarchar](7) NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Color_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Configurations]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Configurations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Configurations](
	[ConfigurationId] [bigint] IDENTITY(1,1) NOT NULL,
	[ConfigurationType] [nvarchar](max) NOT NULL,
	[ConfigurationValue] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Configurations] PRIMARY KEY CLUSTERED 
(
	[ConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contact](
	[ContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](500) NULL,
	[Mobile] [nvarchar](10) NOT NULL,
	[IsProductInquiry] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Containers]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Containers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Containers](
	[VideoId] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[VideoName] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[IsVideo] [bit] NOT NULL,
 CONSTRAINT [PK_Containers] PRIMARY KEY CLUSTERED 
(
	[VideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DiscountType]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiscountType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DiscountType](
	[DiscountId] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_DiscountType] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EmailTemplete]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailTemplete]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmailTemplete](
	[EmailTempleteId] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Subject] [nvarchar](1000) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[HashTag] [nvarchar](max) NOT NULL,
	[FromId] [nvarchar](100) NOT NULL,
	[BccId] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_EmailTemplete_IsActive]  DEFAULT ((0)),
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_EmailTemplete_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_EmailTemplete] PRIMARY KEY CLUSTERED 
(
	[EmailTempleteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FAQ](
	[FAQId] [bigint] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_FAQ_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK_FAQ] PRIMARY KEY CLUSTERED 
(
	[FAQId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FileManagers]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileManagers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FileManagers](
	[ImageId] [bigint] IDENTITY(1,1) NOT NULL,
	[typeId] [bigint] NOT NULL,
	[ImageName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FileManagers] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Offers](
	[OfferId] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[DiscountId] [bigint] NULL,
	[DiscountPercentage] [bigint] NULL,
	[FlatDiscount] [bigint] NULL,
	[SpecificItems] [bigint] NULL,
	[SpecificValue] [bigint] NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ProductId] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[OfferId] [bigint] NULL CONSTRAINT [DF_Product_OfferId]  DEFAULT ((0)),
	[ProductName] [nvarchar](500) NOT NULL,
	[MRP] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[TAX] [float] NOT NULL,
	[SKU] [nvarchar](500) NOT NULL,
	[ShortDescription] [nvarchar](500) NOT NULL,
	[FullDescription] [nvarchar](max) NOT NULL,
	[Tag] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF__Product__active__1ED998B2]  DEFAULT ((1)),
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK__Product__2D10D16A8176F9A0] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductDetails](
	[ProductDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[SizeId] [bigint] NOT NULL,
	[ColorId] [bigint] NOT NULL,
	[StockQty] [int] NULL CONSTRAINT [DF_ProductDetails_StockQty]  DEFAULT ((0)),
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ProductDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductFeature]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductFeature](
	[FeatureId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[FeatureType] [nvarchar](100) NOT NULL,
	[FeatureValue] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductImages](
	[ProductImageId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[ImageName] [nvarchar](100) NOT NULL,
	[CoverImage] [bit] NOT NULL CONSTRAINT [DF_ProductImages_coverImage]  DEFAULT ((0)),
 CONSTRAINT [PK__ProductI__AD7A00A83E16888E] PRIMARY KEY CLUSTERED 
(
	[ProductImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 18-Sep-19 4:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sizes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sizes](
	[SizeId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Sizes_CreatedDate]  DEFAULT (getutcdate()),
	[UpdatedDate] [datetime] NULL,
	[CreatedDateInt]  AS ((datepart(year,[CreatedDate])*(10000)+datepart(month,[CreatedDate])*(100))+datepart(day,[CreatedDate])),
	[UpdatedDateInt]  AS ((datepart(year,[UpdatedDate])*(10000)+datepart(month,[UpdatedDate])*(100))+datepart(day,[UpdatedDate])),
 CONSTRAINT [PK__Sizes__55B1E55757215B0B] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[bosskinds].[DF_ProductPTE_isUpdated]') AND type = 'D')
BEGIN
ALTER TABLE [bosskinds].[ProductPTE] ADD  CONSTRAINT [DF_ProductPTE_isUpdated]  DEFAULT ((0)) FOR [isUpdated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Contact_IsProductInquiry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_IsProductInquiry]  DEFAULT ((0)) FOR [IsProductInquiry]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Contact_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Color] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Color] ([ColorId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Color]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CartDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[CartDetails]'))
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Offers_DiscountType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offers]'))
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_DiscountType] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[DiscountType] ([DiscountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Offers_DiscountType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offers]'))
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_DiscountType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Color] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Color] ([ColorId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Color]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Color]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Sizes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Sizes] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([SizeId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDetails_Sizes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDetails]'))
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Sizes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Feature_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductFeature]'))
ALTER TABLE [dbo].[ProductFeature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Feature_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductFeature]'))
ALTER TABLE [dbo].[ProductFeature] CHECK CONSTRAINT [FK_Feature_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductImages_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImages]'))
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductImages_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImages]'))
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sizes_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sizes]'))
ALTER TABLE [dbo].[Sizes]  WITH CHECK ADD  CONSTRAINT [FK_Sizes_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sizes_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sizes]'))
ALTER TABLE [dbo].[Sizes] CHECK CONSTRAINT [FK_Sizes_Category]
GO
ALTER DATABASE [ECommerce_Shop] SET  READ_WRITE 
GO
