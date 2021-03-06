USE [Douban]
GO
/****** Object:  Table [dbo].[TraceChange]    Script Date: 6/11/2016 21:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraceChange](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TraceChange] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
