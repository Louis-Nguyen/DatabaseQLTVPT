drop Procedure [dbo].[SP_XEMCTDDHTHEOMADDH]
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
CREATE PROCEDURE [dbo].[SP_XEMCTDDHTHEOMADDH]
	@MasoDDH NCHAR(8)
AS
BEGIN
	SELECT MasoDDH,MAVT,SOLUONG,DONGIA FROM CTDDH WHERE CTDDH.MasoDDH = @MasoDDH
END

go
