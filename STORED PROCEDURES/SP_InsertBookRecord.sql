USE [BookRentalDetails]
GO

/****** Object:  StoredProcedure [dbo].[SP_InsertBookRecord]    Script Date: 4/10/2022 1:21:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_InsertBookRecord]
	-- Add the parameters for the stored procedure here
	@GSU_ID INT,
	@BookRented nvarchar(100) NULL,
	@OperationType nvarchar(10) NULL,
	@NewBookName nvarchar(100) NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @OperationType='INS'
	BEGIN
		INSERT INTO Books VALUES(@GSU_ID,@BookRented);
	END
	ELSE IF @OperationType='DEL'
	BEGIN
		DELETE FROM Books 
		where 
		BookRented=@BookRented
		AND 
		GSU_ID=@GSU_ID		
	END
	ELSE IF @OperationType='UPD'
	BEGIN
		UPDATE Books
		SET BookRented = @NewBookName
		where
		BookRented = @BookRented
		AND 
		GSU_ID=@GSU_ID		
	END
END
GO


