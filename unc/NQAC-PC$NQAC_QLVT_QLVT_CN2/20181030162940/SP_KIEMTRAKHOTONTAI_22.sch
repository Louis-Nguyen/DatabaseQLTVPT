drop Procedure [dbo].[SP_KIEMTRAKHOTONTAI]
go

SET QUOTED_IDENTIFIER ON
go
SET ANSI_NULLS ON
go
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_KIEMTRAKHOTONTAI]
@MAKHO NCHAR(4) 
AS
BEGIN
	IF EXISTS( SELECT 1 FROM DBO.Kho WHERE DBO.Kho.MAKHO= @MAKHO)
	BEGIN 
		RETURN 1;
	END
	IF EXISTS( SELECT 1 FROM LINK.QLVT.DBO.Kho K WHERE K.MAKHO=@MAKHO)
	BEGIN
		RETURN 1; 
	END 

	RETURN 0;
END

go
