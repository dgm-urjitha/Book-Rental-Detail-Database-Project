USE [BookRentalDetails]
GO

ALTER TABLE [dbo].[Student_UserDetails]  WITH CHECK ADD  CONSTRAINT [ck_no_splchar] CHECK  ((NOT [FullName] like '%[^A-Z ]%'))
GO

ALTER TABLE [dbo].[Student_UserDetails] CHECK CONSTRAINT [ck_no_splchar]
GO


