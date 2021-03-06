BEGIN TRANSACTION
/*
 *** IDENTIFICAÇÃO DO SCRIPT ***

 1 - Apartir de 20/12/2005, fica expressamente proibida a criação de scripts sem que seja preenchido este cabeçalho
 2 - Obrigatoriamente necessário que este paragrafo seja inserido apos um BEGIN TRANSACTION
 3 - Obrigatoriamente o preenchimento das variaveis abaixo(@Nomenclatura,@Observacao,@Data)com valores correspondentes e condizentes
 Att: Marcos

*/

--INICIO CABECALHO

declare @Nomenclatura as nvarchar(20)
declare @Observacao as nvarchar(100)
declare @Data as SMALLDATETIME

SET @Nomenclatura = 'SCP2006-01-04e'
SET @Observacao = 'Cria TBPendencia_Servicos'
SET @Data = CURRENT_TIMESTAMP


---LIMPEZA DA TABELA
DELETE FROM TBSCRIPT

---INSERCAO DO REGISTRO
INSERT INTO TBSCRIPT(DFNome_TBScript,DFObjetivo_TBScript,DFData_execucao_TBScript)
VALUES(@Nomenclatura,@Observacao,@Data)

---FIM CABECALHO

CREATE TABLE [dbo].[TBPendencia_Servicos] (
	[PKID_TBPendencia_servico] [int] NOT NULL ,
	[FKCodigo_TBFuncionario] [int] NULL ,
	[FKID_TBCliente] [int] NULL ,
	[FKCodigo_TBEmpresa] [int] NULL ,
	[FKID_TBProgramas] [int] NULL ,
	[DFData_Cadastro_TBPendencia_servico] [smalldatetime] NULL ,
	[DFData_Inicio_TBPendencia_servico] [smalldatetime] NULL ,
	[DFData_fim_TBPendencia_servico] [smalldatetime] NULL ,
	[FKCodigo_TStatus_Pendencia_Servico] [int] NULL ,
	[DFHora_Cadastro_TBPendencia_servico] [smalldatetime] NULL ,
	[DFHora_Inicio_TBPendencia_servico] [smalldatetime] NULL ,
	[DFHora_Fim_TBPendencia_servico] [smalldatetime] NULL ,
	[DFObservacao_TBPendencia_servico] [nvarchar] (500) COLLATE Latin1_General_CI_AS NULL ,
	[FKCodigo_Prioridade_TBPrioridade_Pendencia_Servico] [int] NULL ,
	[FKCodigo_TBTipo_servico_Pendencia_Servico] [int] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TBPendencia_Servicos] WITH NOCHECK ADD 
	CONSTRAINT [PK_TBPendencia_Servicos] PRIMARY KEY  CLUSTERED 
	(
		[PKID_TBPendencia_servico]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TBPendencia_Servicos] ADD 
	CONSTRAINT [FK_TBPendencia_Servicos_TBCliente] FOREIGN KEY 
	(
		[FKCodigo_TBFuncionario]
	) REFERENCES [dbo].[TBCliente] (
		[PKId_TBCliente]
	),
	CONSTRAINT [FK_TBPendencia_Servicos_TBEmpresa] FOREIGN KEY 
	(
		[FKCodigo_TBEmpresa]
	) REFERENCES [dbo].[TBEmpresa] (
		[PKCodigo_TBEmpresa]
	),
	CONSTRAINT [FK_TBPendencia_Servicos_TBFuncionario] FOREIGN KEY 
	(
		[FKCodigo_TBFuncionario]
	) REFERENCES [dbo].[TBFuncionario] (
		[PKCodigo_TBFuncionario]
	),
	CONSTRAINT [FK_TBPendencia_Servicos_TBPrioridade_Pendencia_servico] FOREIGN KEY 
	(
		[FKCodigo_Prioridade_TBPrioridade_Pendencia_Servico]
	) REFERENCES [dbo].[TBPrioridade_Pendencia_servico] (
		[PKCodigo__TBPrioridade_pendencia_servico]
	),
	CONSTRAINT [FK_TBPendencia_Servicos_TBProgramas] FOREIGN KEY 
	(
		[FKID_TBProgramas]
	) REFERENCES [dbo].[TBProgramas] (
		[PKId_TBProgramas]
	),
	CONSTRAINT [FK_TBPendencia_Servicos_TBStatus_Pendencia_servico] FOREIGN KEY 
	(
		[FKCodigo_TStatus_Pendencia_Servico]
	) REFERENCES [dbo].[TBStatus_Pendencia_servico] (
		[PKCodigo_TBStatus_pendencia_servico]
	),
	CONSTRAINT [FK_TBPendencia_Servicos_TBTipo_servico_Pendencia_servico] FOREIGN KEY 
	(
		[FKCodigo_Prioridade_TBPrioridade_Pendencia_Servico]
	) REFERENCES [dbo].[TBTipo_servico_Pendencia_servico] (
		[PKCodigo_Prioridade_TBTipo_Pendencia_servico]
	)
GO

COMMIT TRANSACTION