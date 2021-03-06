if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TBOperacao_caixa]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TBOperacao_caixa]
GO

CREATE TABLE [dbo].[TBOperacao_caixa] (
	[PKId_TBOperacao_caixa] [int] IDENTITY (1, 1) NOT NULL ,
	[FKCodigo_TBPdv] [int] NOT NULL ,
	[FKId_TBFinalizadora] [int] NOT NULL ,
	[FKCodigo_TBOperadores_ecf] [int] NOT NULL ,
	[DFData_TBOperacao_caixa] [smalldatetime] NULL ,
	[DFHora_TBOperacao_caixa] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL ,
	[DFValor_TBOperacao_caixa] [money] NULL ,
	[DFTipo_operacao_TBOperacao_caixa] [bit] NULL ,
	[DFStatus_aberto_fechado_TBOperacao_caixa] [bit] NULL ,
	[DFObservacao_TBOperacao_caixa] [nvarchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[FKCodigo_TBEmpresa] [int] NULL ,
	[DFNumero_Cupom_TBOperacao_caixa] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[DFIntegrado_filiais_TBOperacao_caixa] [bit] NULL ,
	[DFIntegrado_portal_TBOperacao_caixa] [bit] NULL ,
	[DFData_alteracao_TBOperacao_caixa] [smalldatetime] NULL ,
	[DFCodigo_Identificador_TBOperacao_caixa] [int] NULL ,
	[DFGrant_total_impressora_TBOperacao_caixa] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[DFCodigo_cupom_impressora_TBOperacao_caixa] [nvarchar] (20) COLLATE Latin1_General_CI_AS NULL ,
	[DFAtualizado_concentrador_TBOperacao_caixa] [bit] NULL 
) ON [PRIMARY]
GO

