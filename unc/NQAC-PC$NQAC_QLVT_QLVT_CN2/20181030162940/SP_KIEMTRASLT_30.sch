drop Procedure [dbo].[SP_KIEMTRASLT]
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
CREATE PROCEDURE [dbo].[SP_KIEMTRASLT]
	@MAVT NCHAR(4)
AS
BEGIN
	SELECT SOLUONGTON FROM DBO.Vattu WHERE MAVT = @MAVT
END

go
