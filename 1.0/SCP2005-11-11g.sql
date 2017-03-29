/*
   sexta-feira, 11 de novembro de 2005 19:06:20
   User: 
   Server: ONLYTECH-02
   Database: BDRetaguarda
   Application: MS SQLEM - Data Tools
*/

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
ALTER TABLE dbo.TBInspecao_veiculo ADD
	DFPadrao_eixo_travado_TBInspecao_veiculo bit NULL,
	DFPadrao_valvula_descarga_TBInspecao_veiculo bit NULL
GO
ALTER TABLE dbo.TBInspecao_veiculo
	DROP COLUMN DFConjunto_emergencia_TBInspecao_veiculo
GO
COMMIT
