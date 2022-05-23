USE [BookRentalDetails]
GO

/****** Object:  StoredProcedure [dbo].[SP_BookSearch]    Script Date: 4/10/2022 1:20:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_BookSearch]
	-- Add the parameters for the stored procedure here
	@BookRented nvarchar(100) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select S.GSU_ID ,S.FullName,G.Gender,B.BookRented
	from [dbo].[Books] b
	join
	[dbo].[Student_UserDetails] s
	on
	b.GSU_ID = s.GSU_ID
	join
	[dbo].[GenderInfo] g
	on 
	g.Gender_ID = s.Gender_ID
	WHERE BookRented=@BookRented
END
GO


