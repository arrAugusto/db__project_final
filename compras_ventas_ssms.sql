USE [db_project_ventas_compras]
GO
/****** Object:  Table [dbo].[compras]    Script Date: 14/06/2025 8:08:14 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compras](
	[Fecha] [datetime] NULL,
	[CodProveedor] [nvarchar](255) NULL,
	[NombreProveedor] [nvarchar](255) NULL,
	[DireccionProveedor] [nvarchar](255) NULL,
	[NumeroProveedor] [nvarchar](255) NULL,
	[WebProveedor] [nvarchar](255) NULL,
	[CodProducto] [nvarchar](255) NULL,
	[NombreProducto] [nvarchar](255) NULL,
	[MarcaProducto] [nvarchar](255) NULL,
	[Categoria] [nvarchar](255) NULL,
	[SodSuSursal] [nvarchar](255) NULL,
	[NombreSucursal] [nvarchar](255) NULL,
	[DireccionSucursal] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Departamento] [nvarchar](255) NULL,
	[Unidades] [nvarchar](255) NULL,
	[CostoU] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Cliente]    Script Date: 14/06/2025 8:08:14 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Cliente](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCliente] [nvarchar](255) NULL,
	[NombreCliente] [nvarchar](255) NULL,
	[TipoCliente] [nvarchar](255) NULL,
	[DireccionCliente] [nvarchar](255) NULL,
	[NumeroCliente] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Fecha]    Script Date: 14/06/2025 8:08:14 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Fecha](
	[id_fecha] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Año] [int] NULL,
	[Mes] [int] NULL,
	[Dia] [int] NULL,
	[Trimestre] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Producto]    Script Date: 14/06/2025 8:08:14 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Producto](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[CodProducto] [nvarchar](255) NULL,
	[NombreProducto] [nvarchar](255) NULL,
	[MarcaProducto] [nvarchar](255) NULL,
	[Categoria] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Proveedor]    Script Date: 14/06/2025 8:08:14 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Proveedor](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[CodProveedor] [nvarchar](255) NULL,
	[NombreProveedor] [nvarchar](255) NULL,
	[DireccionProveedor] [nvarchar](255) NULL,
	[NumeroProveedor] [nvarchar](255) NULL,
	[WebProveedor] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Sucursal]    Script Date: 14/06/2025 8:08:14 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Sucursal](
	[id_sucursal] [int] IDENTITY(1,1) NOT NULL,
	[SodSucursal] [nvarchar](255) NULL,
	[NombreSucursal] [nvarchar](255) NULL,
	[DireccionSucursal] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Departamento] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Compras]    Script Date: 14/06/2025 8:08:14 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Compras](
	[id_fact_compra] [int] IDENTITY(1,1) NOT NULL,
	[id_producto] [int] NULL,
	[id_proveedor] [int] NULL,
	[id_sucursal] [int] NULL,
	[id_fecha] [int] NULL,
	[Unidades] [int] NULL,
	[CostoU] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_fact_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Ventas]    Script Date: 14/06/2025 8:08:14 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Ventas](
	[id_fact_venta] [int] IDENTITY(1,1) NOT NULL,
	[id_producto] [int] NULL,
	[id_cliente] [int] NULL,
	[id_sucursal] [int] NULL,
	[id_fecha] [int] NULL,
	[CodVendedor] [nvarchar](255) NULL,
	[NombreVendedor] [nvarchar](255) NULL,
	[Vacacionista] [nvarchar](255) NULL,
	[Unidades] [int] NULL,
	[PrecioUnitario] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_fact_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 14/06/2025 8:08:14 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[Fecha] [datetime] NULL,
	[CodigoCliente] [nvarchar](255) NULL,
	[NombreCliente] [nvarchar](255) NULL,
	[TipoCliente] [nvarchar](255) NULL,
	[DireccionCliente] [nvarchar](255) NULL,
	[NumeroCliente] [nvarchar](255) NULL,
	[CodVendedor] [nvarchar](255) NULL,
	[NombreVendedor] [nvarchar](255) NULL,
	[Vacacionista] [nvarchar](255) NULL,
	[CodProducto] [nvarchar](255) NULL,
	[NombreProducto] [nvarchar](255) NULL,
	[MarcaProducto] [nvarchar](255) NULL,
	[Categoria] [nvarchar](255) NULL,
	[SodSuSursal] [nvarchar](255) NULL,
	[NombreSucursal] [nvarchar](255) NULL,
	[DireccionSucursal] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Departamento] [nvarchar](255) NULL,
	[Unidades] [nvarchar](255) NULL,
	[PrecioUnitario] [nvarchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fact_Compras]  WITH NOCHECK ADD FOREIGN KEY([id_fecha])
REFERENCES [dbo].[Dim_Fecha] ([id_fecha])
GO
ALTER TABLE [dbo].[Fact_Compras]  WITH NOCHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[Dim_Producto] ([id_producto])
GO
ALTER TABLE [dbo].[Fact_Compras]  WITH NOCHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[Dim_Proveedor] ([id_proveedor])
GO
ALTER TABLE [dbo].[Fact_Compras]  WITH NOCHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[Dim_Sucursal] ([id_sucursal])
GO
ALTER TABLE [dbo].[Fact_Ventas]  WITH NOCHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Dim_Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Fact_Ventas]  WITH NOCHECK ADD FOREIGN KEY([id_fecha])
REFERENCES [dbo].[Dim_Fecha] ([id_fecha])
GO
ALTER TABLE [dbo].[Fact_Ventas]  WITH NOCHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[Dim_Producto] ([id_producto])
GO
ALTER TABLE [dbo].[Fact_Ventas]  WITH NOCHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[Dim_Sucursal] ([id_sucursal])
GO
