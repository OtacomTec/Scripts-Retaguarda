CREATE TABLE [dbo].[TBCategoria] (
	[PKId_TBCategoria] [int] IDENTITY (1, 1) NOT NULL ,
	[DFDescricao_TBCategoria] [nvarchar] (40) COLLATE Latin1_General_CI_AS NULL ,
	[DFSigla_TBCategoria] [nvarchar] (5) COLLATE Latin1_General_CI_AS NULL ,
	[DFData_cadastro_TBCategoria] [smalldatetime] NULL ,
	[DFData_alteracao_TBCategoria] [smalldatetime] NULL ,
	[DFIntegrado_portal_TBCategoria] [bit] NULL ,
	[DFIntegrado_filiais_TBCategoria] [bit] NULL ,
	[DFCodigo_Identificador_TBCategoria] [int] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TBCategoria] WITH NOCHECK ADD 
	 PRIMARY KEY  CLUSTERED 
	(
		[PKId_TBCategoria]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

