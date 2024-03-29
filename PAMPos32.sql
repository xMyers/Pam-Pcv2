USE [PAMPos32]
GO

/****** Object:  Table [dbo].[t_Dias]    Script Date: 04/11/2016 15:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Dias](
	[IDDia] [bigint] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_t_Dias] PRIMARY KEY CLUSTERED 
(
	[IDDia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Despachos]    Script Date: 04/11/2016 15:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Despachos](
	[IDDespacho] [bigint] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[FP] [int] NULL,
	[manguera] [int] NULL,
	[codProducto] [int] NULL,
	[ppu] [varchar](10) NULL,
	[volumen] [varchar](10) NULL,
	[monto] [varchar](10) NULL,
	[totVolumen] [varchar](50) NULL,
	[totMonto] [varchar](50) NULL,
	[IDUltVenta] [varchar](10) NULL,
	[IDUltVentaGral] [varchar](20) NULL,
	[FechaBase] [datetime] NOT NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_t_Despachos] PRIMARY KEY CLUSTERED 
(
	[IDDespacho] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_turnos]    Script Date: 04/11/2016 15:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_turnos](
	[IDTurno] [bigint] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_t_turnos] PRIMARY KEY CLUSTERED 
(
	[IDTurno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_totProdTurnos]    Script Date: 04/11/2016 15:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_totProdTurnos](
	[IDTPT] [bigint] IDENTITY(1,1) NOT NULL,
	[IDturno] [bigint] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[TotMonto] [float] NOT NULL,
	[totVolumen] [float] NOT NULL,
 CONSTRAINT [PK_t_totProdTurnos] PRIMARY KEY CLUSTERED 
(
	[IDTPT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_totProdDias]    Script Date: 04/11/2016 15:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_totProdDias](
	[IDTPD] [bigint] IDENTITY(1,1) NOT NULL,
	[IDDia] [bigint] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[TotMonto] [float] NOT NULL,
	[totVolumen] [float] NOT NULL,
 CONSTRAINT [PK_t_totProdDias] PRIMARY KEY CLUSTERED 
(
	[IDTPD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_totMangTurnos]    Script Date: 04/11/2016 15:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_totMangTurnos](
	[IDTMT] [bigint] IDENTITY(1,1) NOT NULL,
	[IDTurno] [bigint] NOT NULL,
	[FP] [int] NOT NULL,
	[Manguera] [int] NOT NULL,
	[TotVtasMonto] [float] NOT NULL,
	[TotVtasVol] [float] NOT NULL,
 CONSTRAINT [PK_t_totMangTurnos] PRIMARY KEY CLUSTERED 
(
	[IDTMT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_totMangDias]    Script Date: 04/11/2016 15:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_totMangDias](
	[IDTMD] [bigint] IDENTITY(1,1) NOT NULL,
	[IDDia] [bigint] NOT NULL,
	[FP] [int] NOT NULL,
	[Manguera] [int] NOT NULL,
	[TotVtasMonto] [float] NOT NULL,
	[TotVtasVol] [float] NOT NULL,
 CONSTRAINT [PK_t_totMangDias] PRIMARY KEY CLUSTERED 
(
	[IDTMD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_t_Despachos_FechaBase]    Script Date: 04/11/2016 15:23:44 ******/
ALTER TABLE [dbo].[t_Despachos] ADD  CONSTRAINT [DF_t_Despachos_FechaBase]  DEFAULT (getdate()) FOR [FechaBase]
GO
/****** Object:  ForeignKey [FK_t_totProdTurnos_t_turnos]    Script Date: 04/11/2016 15:23:44 ******/
ALTER TABLE [dbo].[t_totProdTurnos]  WITH CHECK ADD  CONSTRAINT [FK_t_totProdTurnos_t_turnos] FOREIGN KEY([IDturno])
REFERENCES [dbo].[t_turnos] ([IDTurno])
GO
ALTER TABLE [dbo].[t_totProdTurnos] CHECK CONSTRAINT [FK_t_totProdTurnos_t_turnos]
GO
/****** Object:  ForeignKey [FK_t_totProdDias_t_dias]    Script Date: 04/11/2016 15:23:44 ******/
ALTER TABLE [dbo].[t_totProdDias]  WITH CHECK ADD  CONSTRAINT [FK_t_totProdDias_t_dias] FOREIGN KEY([IDDia])
REFERENCES [dbo].[t_Dias] ([IDDia])
GO
ALTER TABLE [dbo].[t_totProdDias] CHECK CONSTRAINT [FK_t_totProdDias_t_dias]
GO
/****** Object:  ForeignKey [FK_t_totMangTurnos_t_turnos]    Script Date: 04/11/2016 15:23:44 ******/
ALTER TABLE [dbo].[t_totMangTurnos]  WITH CHECK ADD  CONSTRAINT [FK_t_totMangTurnos_t_turnos] FOREIGN KEY([IDTurno])
REFERENCES [dbo].[t_turnos] ([IDTurno])
GO
ALTER TABLE [dbo].[t_totMangTurnos] CHECK CONSTRAINT [FK_t_totMangTurnos_t_turnos]
GO
/****** Object:  ForeignKey [FK_t_totMangDias_t_Dias]    Script Date: 04/11/2016 15:23:44 ******/
ALTER TABLE [dbo].[t_totMangDias]  WITH CHECK ADD  CONSTRAINT [FK_t_totMangDias_t_Dias] FOREIGN KEY([IDDia])
REFERENCES [dbo].[t_Dias] ([IDDia])
GO
ALTER TABLE [dbo].[t_totMangDias] CHECK CONSTRAINT [FK_t_totMangDias_t_Dias]
GO
