USE [master]
GO
/****** Object:  Database [LiruSisa]    Script Date: 24/02/2018 11:51:37 a.m. ******/
CREATE DATABASE [LiruSisa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LiruSisa', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LiruSisa.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LiruSisa_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LiruSisa_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LiruSisa] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LiruSisa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LiruSisa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LiruSisa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LiruSisa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LiruSisa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LiruSisa] SET ARITHABORT OFF 
GO
ALTER DATABASE [LiruSisa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LiruSisa] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LiruSisa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LiruSisa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LiruSisa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LiruSisa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LiruSisa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LiruSisa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LiruSisa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LiruSisa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LiruSisa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LiruSisa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LiruSisa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LiruSisa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LiruSisa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LiruSisa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LiruSisa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LiruSisa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LiruSisa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LiruSisa] SET  MULTI_USER 
GO
ALTER DATABASE [LiruSisa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LiruSisa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LiruSisa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LiruSisa] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LiruSisa]
GO
/****** Object:  Table [dbo].[Complementos]    Script Date: 24/02/2018 11:51:37 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complementos](
	[idComplemento] [int] NOT NULL,
	[nombreComplemento] [nvarchar](50) NULL,
	[precioComplemento] [money] NULL,
	[imagenComplemento] [image] NULL,
 CONSTRAINT [PK_Complementos] PRIMARY KEY CLUSTERED 
(
	[idComplemento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 24/02/2018 11:51:37 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] NOT NULL,
	[nombreEmpleado] [nvarchar](50) NULL,
	[puestoEmpleado] [nvarchar](50) NULL,
	[horasEmpleado] [money] NULL,
	[sueldoEmpleado]  AS ([horasEmpleado]*(130)),
 CONSTRAINT [PK_Empleado_1] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paquetes]    Script Date: 24/02/2018 11:51:37 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquetes](
	[idPaquete] [int] NOT NULL,
	[nombrePaquete] [nvarchar](50) NULL,
	[descripcionPaquete] [text] NULL,
	[precioPaquete] [money] NULL,
	[imagenPaquete] [image] NULL,
 CONSTRAINT [PK_Paquetes] PRIMARY KEY CLUSTERED 
(
	[idPaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pizzas]    Script Date: 24/02/2018 11:51:37 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pizzas](
	[idPizza] [int] NOT NULL,
	[nombrePizza] [nvarchar](50) NULL,
	[precioPizza] [money] NULL,
	[imagenPizza] [image] NULL,
	[IVA]  AS ([precioPizza]*(0.16)),
 CONSTRAINT [PK_Pizzas_1] PRIMARY KEY CLUSTERED 
(
	[idPizza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Refresco]    Script Date: 24/02/2018 11:51:37 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refresco](
	[idRefresco] [int] NOT NULL,
	[nombreRefresco] [nvarchar](50) NULL,
	[precioRefresco] [money] NULL,
	[imagenRefresco] [image] NULL,
 CONSTRAINT [PK_Refresco] PRIMARY KEY CLUSTERED 
(
	[idRefresco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Complementos]    Script Date: 24/02/2018 11:51:37 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Complementos] ON [dbo].[Complementos]
(
	[idComplemento] ASC,
	[nombreComplemento] ASC,
	[precioComplemento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [IX_Empleado]    Script Date: 24/02/2018 11:51:37 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Empleado] ON [dbo].[Empleado]
(
	[idEmpleado] ASC,
	[nombreEmpleado] ASC,
	[puestoEmpleado] ASC,
	[horasEmpleado] ASC,
	[sueldoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [IX_Pizzas]    Script Date: 24/02/2018 11:51:37 a.m. ******/
CREATE NONCLUSTERED INDEX [IX_Pizzas] ON [dbo].[Pizzas]
(
	[idPizza] ASC,
	[nombrePizza] ASC,
	[precioPizza] ASC,
	[IVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LiruSisa] SET  READ_WRITE 
GO
