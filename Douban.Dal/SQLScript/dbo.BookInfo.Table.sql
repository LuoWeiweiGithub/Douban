USE [Douban]
GO
/****** Object:  Table [dbo].[BookInfo]    Script Date: 6/11/2016 21:45:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookInfo](
	[ID] [uniqueidentifier] NOT NULL,
	[WebUrl] [nvarchar](200) NOT NULL,
	[URLNumber] [int] NOT NULL,
	[BookName] [nvarchar](500) NULL,
	[Author] [nvarchar](max) NULL,
	[Publisher] [nvarchar](500) NULL,
	[PublishDate] [nvarchar](500) NULL,
	[PageNum] [nvarchar](50) NULL,
	[Price] [nvarchar](50) NULL,
	[ISBN] [nvarchar](50) NULL,
	[AverageScore] [float] NULL,
	[RatingNum] [int] NULL,
	[FiveStar] [float] NULL,
	[FourStar] [float] NULL,
	[ThreeStar] [float] NULL,
	[TwoStar] [float] NULL,
	[OneStar] [float] NULL,
	[ContentDescription] [nvarchar](max) NULL,
	[AuthorDescription] [nvarchar](max) NULL,
	[Tags] [nvarchar](max) NULL,
	[HttpStatus] [nvarchar](500) NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_BookInfo] PRIMARY KEY CLUSTERED 
(
	[URLNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
