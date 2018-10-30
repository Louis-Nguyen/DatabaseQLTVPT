drop Procedure [dbo].[SP_INSERTCTPN]
go

SET QUOTED_IDENTIFIER ON
go
SET ANSI_NULLS ON
go
CREATE PROC [dbo].[SP_INSERTCTPN]
@MAPN	nchar(8),	
@MAVT	nchar(4),	
@SOLUONG	int,
@DONGIA	float		
AS

	INSERT INTO CTPN(MAPN,MAVT,SOLUONG,DONGIA)
	VALUES(@MAPN,@MAVT,@SOLUONG,@DONGIA)
	
RETURN 0  -- THANH CONG
go
