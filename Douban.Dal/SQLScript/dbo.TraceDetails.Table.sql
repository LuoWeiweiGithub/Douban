USE [Douban]
GO
/****** Object:  Table [dbo].[TraceDetails]    Script Date: 6/11/2016 21:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraceDetails](
	[ID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[ColumnName] [nvarchar](50) NOT NULL,
	[OldValue] [nvarchar](500) NOT NULL,
	[NewValue] [nvarchar](500) NULL,
	[LastUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_TraceDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[TraceDetails]  WITH CHECK ADD  CONSTRAINT [FK_TraceDetails_TraceChange] FOREIGN KEY([PID])
REFERENCES [dbo].[TraceChange] ([ID])
GO
ALTER TABLE [dbo].[TraceDetails] CHECK CONSTRAINT [FK_TraceDetails_TraceChange]
GO
