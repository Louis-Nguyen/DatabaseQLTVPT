drop View [dbo].[V_LAYTENNHANVIEN]
go

SET QUOTED_IDENTIFIER ON
go
SET ANSI_NULLS ON
go
CREATE VIEW [dbo].[V_LAYTENNHANVIEN] AS SELECT MANV, HO+' '+TEN AS HOTEN FROM dbo.NhanVien

go
