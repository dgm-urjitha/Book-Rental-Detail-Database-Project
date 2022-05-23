USE [BookRentalDetails]
GO

/****** Object:  Trigger [dbo].[alert]    Script Date: 4/10/2022 1:24:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[alert]
on [dbo].[Student_UserDetails]
after insert, update
as raiserror('Welcome! Have a good one',3,4)
GO

ALTER TABLE [dbo].[Student_UserDetails] ENABLE TRIGGER [alert]
GO


