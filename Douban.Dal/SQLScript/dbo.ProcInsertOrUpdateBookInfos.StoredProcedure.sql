USE [Douban]
GO
/****** Object:  StoredProcedure [dbo].[ProcInsertOrUpdateBookInfos]    Script Date: 6/11/2016 21:45:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcInsertOrUpdateBookInfos]
(@BookInfos AS dbo.[BookInfoType] READONLY)
AS
BEGIN

	--UPDATE [dbo].[BookInfo]
	--SET
	--	[BookName] = T.BookName,
	--	[Author] = T.Author,
	--	[Publisher] = T.Publisher,
	--	[PublishDate] = T.PublishDate,
	--	[PageNum] = T.PageNum,
	--	[Price] = T.Price,
	--	[ISBN] = T.ISBN,
	--	[AverageScore] = T.AverageScore,
	--	[RatingNum] = T.RatingNum,
	--	[FiveStar] = T.FiveStar,
	--	[FourStar] = T.FourStar,
	--	[ThreeStar] = T.ThreeStar,
	--	[TwoStar] = T.TwoStar,
	--	[OneStar] = T.OneStar,
	--	[ContentDescription] = T.ContentDescription,
	--	[AuthorDescription] = T.AuthorDescription,
	--	[Tags] = T.Tags,
	--	[HttpStatus] = T.HttpStatus,
	--	[UpdateTime] = GETDATE()
	--FROM [BookInfo] AS B INNER JOIN @BookInfos AS T ON B.URLNumber = T.URLNumber AND B.[HttpStatus] <> 'OK'

	INSERT INTO [dbo].[BookInfo]
		([ID]
		,[WebUrl]
		,[BookName]
		,URLNumber
		,[Author]
		,[Publisher]
		,[PublishDate]
		,[PageNum]
		,[Price]
		,[ISBN]
		,[AverageScore]
		,[RatingNum]
		,[FiveStar]
		,[FourStar]
		,[ThreeStar]
		,[TwoStar]
		,[OneStar]
		,[ContentDescription]
		,[AuthorDescription]
		,[Tags]
		,[HttpStatus]
		,[CreateTime]
		,[UpdateTime])
	SELECT t.[ID] ,t.[WebUrl] ,t.[BookName], t.[UrlNumber], t.[Author] ,t.[Publisher] ,t.[PublishDate]
		,t.[PageNum] ,t.[Price] ,t.[ISBN] ,t.[AverageScore] ,t.[RatingNum] ,t.[FiveStar]
		,t.[FourStar] ,t.[ThreeStar] ,t.[TwoStar] ,t.[OneStar] ,t.[ContentDescription]
		,t.[AuthorDescription] ,t.[Tags] ,t.[HttpStatus] ,GETDATE() ,GETDATE()
	FROM @BookInfos t
	LEFT JOIN [BookInfo] b on t.URLNumber = b.URLNumber WHERE b.URLNumber IS NULL

END


GO
