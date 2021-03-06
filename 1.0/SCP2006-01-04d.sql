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

SET @Nomenclatura = 'SCP2006-01-04d'
SET @Observacao = 'Cria TBTipo_servico_Pendencia_servico'
SET @Data = CURRENT_TIMESTAMP


---LIMPEZA DA TABELA
DELETE FROM TBSCRIPT

---INSERCAO DO REGISTRO
INSERT INTO TBSCRIPT(DFNome_TBScript,DFObjetivo_TBScript,DFData_execucao_TBScript)
VALUES(@Nomenclatura,@Observacao,@Data)

---FIM CABECALHO

CREATE TABLE [dbo].[TBTipo_servico_Pendencia_servico] (
	[PKCodigo_Prioridade_TBTipo_Pendencia_servico] [int] NOT NULL ,
	[DFDescricao_TBTipo_Pendencia_servico] [nvarchar] (40) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TBTipo_servico_Pendencia_servico] WITH NOCHECK ADD 
	CONSTRAINT [PK_TBTipo_servico_Pendencia_servico] PRIMARY KEY  CLUSTERED 
	(
		[PKCodigo_Prioridade_TBTipo_Pendencia_servico]
	)  ON [PRIMARY] 
GO

COMMIT TRANSACTION