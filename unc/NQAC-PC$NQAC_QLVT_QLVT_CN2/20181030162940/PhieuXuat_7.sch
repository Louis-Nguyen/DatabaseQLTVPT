drop Table [dbo].[PhieuXuat]
go
SET ANSI_PADDING OFF
go

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MAPX] [nchar](8) NOT NULL,
	[NGAY] [date] NOT NULL,
	[HOTENKH] [nvarchar](100) NOT NULL,
	[MANV] [int] NOT NULL,
	[MAKHO] [nchar](4) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
)

GO
ALTER TABLE [dbo].[PhieuXuat] ADD  CONSTRAINT [DF_PX_NGAY]  DEFAULT (getdate()) FOR [NGAY]
GO
ALTER TABLE [dbo].[PhieuXuat] ADD  CONSTRAINT [MSmerge_df_rowguid_AC9A60BC708640E2B25312628CBBFA07]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
SET ANSI_NULLS ON

go

SET QUOTED_IDENTIFIER ON

go

SET ANSI_PADDING ON

GO
ALTER TABLE [dbo].[PhieuXuat] ADD  CONSTRAINT [PK_PX] PRIMARY KEY CLUSTERED 
(
	[MAPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
