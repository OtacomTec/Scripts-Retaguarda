if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK__TBImposto__FKId___57EBF18F]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[TBImpostos_cupom] DROP CONSTRAINT FK__TBImposto__FKId___57EBF18F
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK__TBItens_c__FKId___58E015C8]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[TBItens_cupom] DROP CONSTRAINT FK__TBItens_c__FKId___58E015C8
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TBCupom]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TBCupom]
GO

CREATE TABLE [dbo].[TBCupom] (
	[PKId_TBCupom] [int] IDENTITY (1, 1) NOT NULL ,
	[FKCodigo_TBEmpresa] [int] NOT NULL ,
	[FKId_TBVendedor] [int] NOT NULL ,
	[PKCodigo_TBPdv] [int] NOT NULL ,
	[DFTipo_operacao_TBCupom] [int] NOT NULL ,
	[DFNumero_TBCupom] [nvarchar] (15) COLLATE Latin1_General_CI_AS NOT NULL ,
	[DFSerie_TBCupom] [nchar] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[DFEmitente_TBCupom] [int] NOT NULL ,
	[DFTotal_itens_TBCupom] [money] NOT NULL ,
	[DFTotal_cupom_TBCupom] [money] NOT NULL ,
	[DFTotal_cupom_tabela_TBCupom] [money] NOT NULL ,
	[DFData_Saida_TBCupom] [smalldatetime] NOT NULL ,
	[DFHora_Saida] [smalldatetime] NOT NULL ,
	[DFPrevisao_TBCupom] [bit] NOT NULL ,
	[DFCancelado_TBCupom] [bit] NOT NULL ,
	[DFMotivo_cancelamento_TBCupom] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[DFUsuario_cancelamento_TBCupom] [nvarchar] (20) COLLATE Latin1_General_CI_AS NULL ,
	[DFIntegrado_fiscal_TBCupom] [bit] NOT NULL ,
	[DFBase_calculo_subst_tributaria_TBCupom] [money] NULL ,
	[DFValor_subst_tributaria_TBCupom] [money] NULL ,
	[DFObservacao_TBCupom] [nvarchar] (150) COLLATE Latin1_General_CI_AS NULL ,
	[DFCupom_Registrado_TBCupom] [bit] NOT NULL ,
	[FKCodigo_TBOperadores_ecf] [int] NULL ,
	[DFIntegrado_portal_TBCupom] [bit] NULL ,
	[DFIntegrado_filiais_TBCupom] [bit] NULL ,
	[DFData_alteracao_TBCupom] [smalldatetime] NULL ,
	[DFCodigo_Identificador_TBCupom] [int] NULL ,
	[DFCodigo_cupom_impressora_TBCupom] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL ,
	[DFNumero_serie_impressora_TBCupom] [nvarchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[DFGrant_total_impressora_TBCupom] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[DFNumero_fatura_TBCupom] [int] NULL 
) ON [PRIMARY]
GO

