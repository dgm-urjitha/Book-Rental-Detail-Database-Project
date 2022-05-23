USE [BookRentalDetails]
GO

/****** Object:  Trigger [dbo].[insert_into_library]    Script Date: 4/10/2022 1:24:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create trigger [dbo].[insert_into_library]
on [dbo].[Student_UserDetails]
after insert
AS
BEGIN

SET NOCOUNT ON;

	INSERT INTO [dbo].[Library](
	i.GSU_ID, FullName
	)
	SELECT 
		i.GSU_ID, FullName
	FROM
	inserted i

END


GO

ALTER TABLE [dbo].[Student_UserDetails] ENABLE TRIGGER [insert_into_library]
GO


