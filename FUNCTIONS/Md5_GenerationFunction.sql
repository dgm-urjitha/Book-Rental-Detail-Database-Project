USE [BookRentalDetails]
GO

/****** Object:  UserDefinedFunction [dbo].[Md5_GeneratorFunction]    Script Date: 4/10/2022 1:05:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Md5_GeneratorFunction] ()
RETURNS TABLE AS
RETURN
	SELECT *,CONVERT(VARCHAR(32), HashBytes('MD5', BookRented), 2) As HashKeyValue
	FROM
	Books
GO


