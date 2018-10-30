drop Procedure [dbo].[SP_GIAMSLT]
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
CREATE PROCEDURE [dbo].[SP_GIAMSLT]
	@MAVT NCHAR(4),
	@SL INT
AS
BEGIN
	DECLARE @SLT INT
	SELECT @SLT = SOLUONGTON FROM DBO.Vattu WHERE MAVT= @MAVT
	
	UPDATE DBO.Vattu
	SET SOLUONGTON = @SLT - @SL
	WHERE MAVT = @MAVT;
END

go
