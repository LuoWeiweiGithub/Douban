USE [Douban]
GO
/****** Object:  UserDefinedTableType [dbo].[BookInfoType]    Script Date: 6/11/2016 21:45:08 ******/
CREATE TYPE [dbo].[BookInfoType] AS TABLE(
	[ID] [uniqueidentifier] NOT NULL,
	[WebUrl] [nvarchar](200) NOT NULL,
	[UrlNumber] [int] NOT NULL,
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
	[HttpStatus] [nvarchar](500) NULL
)
GO
