USE [Douban]
GO
/****** Object:  StoredProcedure [dbo].[ProcGetMaxDownloadedNumer]    Script Date: 6/11/2016 21:45:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ProcGetMaxDownloadedNumer]
AS
BEGIN
	SELECT MAX(URLNumber) FROM BookInfo
END

GO
