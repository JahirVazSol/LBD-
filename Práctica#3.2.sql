USE [LiruSisa]
GO
/****** Object:  Table [dbo].[Complemento]    Script Date: 03/10/2018 11:31:16 ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 03/10/2018 11:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] NOT NULL,
	[nombreCl] [nvarchar](50) NULL,
	[idDirección] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Refresco]    Script Date: 03/10/2018 11:31:16 ******/
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
/****** Object:  Table [dbo].[Pizza]    Script Date: 03/10/2018 11:31:16 ******/
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
/****** Object:  Table [dbo].[Ventas]    Script Date: 03/10/2018 11:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[idVentas] [int] NOT NULL,
	[idEmpleado] [int] NULL,
	[idCliente] [int] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[idVentas] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diracción]    Script Date: 03/10/2018 11:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diracción](
	[id_dirección] [int] NOT NULL,
	[Calle] [nvarchar](50) NULL,
	[Colonia] [nvarchar](50) NULL,
	[NoCasa] [int] NULL,
 CONSTRAINT [PK_Diracción] PRIMARY KEY CLUSTERED 
(
	[id_dirección] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 03/10/2018 11:31:16 ******/
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
/****** Object:  Table [dbo].[Sum Venta]    Script Date: 03/10/2018 11:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sum Venta](
	[idPizza] [int] NULL,
	[idComplemento] [int] NULL,
	[idRefresco] [int] NULL,
	[idVenta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 03/10/2018 11:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[idPago] [int] NOT NULL,
	[Efectivo] [money] NULL,
	[TarjetaCredito] [money] NULL,
	[TarjetaDebito] [money] NULL,
	[ValesDespensa] [money] NULL,
	[idVentas] [int] NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MétodosPago]    Script Date: 03/10/2018 11:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MétodosPago](
	[idMétodo] [int] NOT NULL,
 CONSTRAINT [PK_MétodosPago] PRIMARY KEY CLUSTERED 
(
	[idMétodo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Pizza_Complemento]    Script Date: 03/10/2018 11:31:16 ******/
ALTER TABLE [dbo].[Pizza]  WITH CHECK ADD  CONSTRAINT [FK_Pizza_Complemento] FOREIGN KEY([idPizza])
REFERENCES [dbo].[Complemento] ([idComplemento])
GO
ALTER TABLE [dbo].[Pizza] CHECK CONSTRAINT [FK_Pizza_Complemento]
GO
/****** Object:  ForeignKey [FK_Pizza_Refresco]    Script Date: 03/10/2018 11:31:16 ******/
ALTER TABLE [dbo].[Pizza]  WITH CHECK ADD  CONSTRAINT [FK_Pizza_Refresco] FOREIGN KEY([idPizza])
REFERENCES [dbo].[Refresco] ([idRefresco])
GO
ALTER TABLE [dbo].[Pizza] CHECK CONSTRAINT [FK_Pizza_Refresco]
GO
/****** Object:  ForeignKey [FK_Ventas_Refresco]    Script Date: 03/10/2018 11:31:16 ******/
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Refresco] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Refresco] ([idRefresco])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Refresco]
GO
/****** Object:  ForeignKey [FK_Diracción_Cliente]    Script Date: 03/10/2018 11:31:16 ******/
ALTER TABLE [dbo].[Diracción]  WITH CHECK ADD  CONSTRAINT [FK_Diracción_Cliente] FOREIGN KEY([id_dirección])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Diracción] CHECK CONSTRAINT [FK_Diracción_Cliente]
GO
/****** Object:  ForeignKey [FK_Empleado_Diracción]    Script Date: 03/10/2018 11:31:16 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Diracción] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Diracción] ([id_dirección])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Diracción]
GO
/****** Object:  ForeignKey [FK_Empleado_Pizza]    Script Date: 03/10/2018 11:31:16 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Pizza] FOREIGN KEY([pizzasVendidas])
REFERENCES [dbo].[Pizza] ([idPizza])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Pizza]
GO
/****** Object:  ForeignKey [FK_Sum Venta_Ventas]    Script Date: 03/10/2018 11:31:16 ******/
ALTER TABLE [dbo].[Sum Venta]  WITH CHECK ADD  CONSTRAINT [FK_Sum Venta_Ventas] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Ventas] ([idVentas])
GO
ALTER TABLE [dbo].[Sum Venta] CHECK CONSTRAINT [FK_Sum Venta_Ventas]
GO
/****** Object:  ForeignKey [FK_Pagos_Ventas]    Script Date: 03/10/2018 11:31:16 ******/
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Ventas] FOREIGN KEY([idPago])
REFERENCES [dbo].[Ventas] ([idVentas])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Ventas]
GO
/****** Object:  ForeignKey [FK_MétodosPago_Pagos]    Script Date: 03/10/2018 11:31:16 ******/
ALTER TABLE [dbo].[MétodosPago]  WITH CHECK ADD  CONSTRAINT [FK_MétodosPago_Pagos] FOREIGN KEY([idMétodo])
REFERENCES [dbo].[Pagos] ([idPago])
GO
ALTER TABLE [dbo].[MétodosPago] CHECK CONSTRAINT [FK_MétodosPago_Pagos]
GO
