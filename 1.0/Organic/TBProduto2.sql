/*
   quinta-feira, 13 de setembro de 2007 16:08:58
   User: sa
   Server: ONLYTECH-04
   Database: BDC-Organic
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
ALTER TABLE dbo.TBProduto ADD
	DFData_fim_promocao_TBProduto smalldatetime NULL
GO
COMMIT
