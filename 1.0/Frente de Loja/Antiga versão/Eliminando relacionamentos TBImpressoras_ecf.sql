/*
   sexta-feira, 5 de maio de 2006 19:42:09
   User: sa
   Server: ONLYTECH-DADOS
   Database: BDPDV
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
ALTER TABLE dbo.TBPdv
	DROP CONSTRAINT FK__TBPdv__FKCodigo___4AD81681
GO
COMMIT
BEGIN TRANSACTION
COMMIT
