USE [LiruSisa]
GO
/****** Object:  Table [dbo].[Complemento]    Script Date: 03/03/2018 11:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complemento](
	[idComplemento] [int] NOT NULL,
	[nombreComplemento] [nvarchar](50) NULL,
	[precioComplemento] [money] NULL,
	[imagenComplemento] [image] NULL,
 CONSTRAINT [PK_Complemento] PRIMARY KEY CLUSTERED 
(
	[idComplemento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Complemento] ON [dbo].[Complemento] 
(
	[idComplemento] ASC,
	[nombreComplemento] ASC,
	[precioComplemento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Refresco]    Script Date: 03/03/2018 11:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refresco](
	[idRefresco] [int] NOT NULL,
	[nombreRefresco] [nvarchar](50) NULL,
	[precioRefresco] [money] NULL,
	[imagenRefresco] [nchar](10) NULL,
 CONSTRAINT [PK_Refresco] PRIMARY KEY CLUSTERED 
(
	[idRefresco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Refresco] ON [dbo].[Refresco] 
(
	[idRefresco] ASC,
	[nombreRefresco] ASC,
	[precioRefresco] ASC,
	[imagenRefresco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pizza]    Script Date: 03/03/2018 11:23:02 ******/
SET ARITHABORT ON
GO
SET CONCAT_NULL_YIELDS_NULL ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
SET ANSI_WARNINGS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [dbo].[Pizza](
	[idPizza] [int] NOT NULL,
	[nombrePizza] [nvarchar](50) NULL,
	[precioPizza] [money] NULL,
	[imagenPizza] [image] NULL,
	[IVA]  AS ([precioPizza]*(0.16)),
 CONSTRAINT [PK_Pizza] PRIMARY KEY CLUSTERED 
(
	[idPizza] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
CREATE NONCLUSTERED INDEX [IX_Pizza] ON [dbo].[Pizza] 
(
	[idPizza] ASC,
	[nombrePizza] ASC,
	[precioPizza] ASC,
	[IVA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 03/03/2018 11:23:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquete](
	[idPaquete] [int] NOT NULL,
	[nombrePaquete] [nvarchar](50) NULL,
	[descripcionPaquete] [nvarchar](50) NULL,
	[precioPaquete] [money] NULL,
	[imagenPaquete] [image] NULL,
	[refrescoSi] [int] NULL,
	[refrescoNo] [nchar](10) NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[idPaquete] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Paquete] ON [dbo].[Paquete] 
(
	[idPaquete] ASC,
	[nombrePaquete] ASC,
	[descripcionPaquete] ASC,
	[precioPaquete] ASC,
	[refrescoSi] ASC,
	[refrescoNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 03/03/2018 11:23:02 ******/
SET ARITHABORT ON
GO
SET CONCAT_NULL_YIELDS_NULL ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
SET ANSI_WARNINGS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] NOT NULL,
	[nombreEmpleado] [nvarchar](50) NULL,
	[puestoEmpleado] [nvarchar](50) NULL,
	[horasEmpleado] [int] NULL,
	[sueldoEmpleado]  AS ([horasEmpleado]*(130)),
	[pizzasVendidas] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
CREATE NONCLUSTERED INDEX [IX_Empleado] ON [dbo].[Empleado] 
(
	[idEmpleado] ASC,
	[nombreEmpleado] ASC,
	[puestoEmpleado] ASC,
	[pizzasVendidas] ASC,
	[horasEmpleado] ASC,
	[sueldoEmpleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Paquete_Complemento]    Script Date: 03/03/2018 11:23:02 ******/
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Complemento] FOREIGN KEY([idPaquete])
REFERENCES [dbo].[Complemento] ([idComplemento])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Complemento]
GO
/****** Object:  ForeignKey [FK_Paquete_Pizza]    Script Date: 03/03/2018 11:23:02 ******/
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Pizza] FOREIGN KEY([idPaquete])
REFERENCES [dbo].[Pizza] ([idPizza])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Pizza]
GO
/****** Object:  ForeignKey [FK_Paquete_Refresco]    Script Date: 03/03/2018 11:23:02 ******/
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Refresco] FOREIGN KEY([refrescoSi])
REFERENCES [dbo].[Refresco] ([idRefresco])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Refresco]
GO
/****** Object:  ForeignKey [FK_Empleado_Pizza]    Script Date: 03/03/2018 11:23:02 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Pizza] FOREIGN KEY([pizzasVendidas])
REFERENCES [dbo].[Pizza] ([idPizza])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Pizza]
GO
