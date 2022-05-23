USE [BookRentalDetails]
GO

/****** Object:  Table [dbo].[Books]    Script Date: 4/11/2022 11:36:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Books](
	[GSU_ID] [int] NOT NULL,
	[BookRented] [varchar](50) NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Student_UserDetails] FOREIGN KEY([GSU_ID])
REFERENCES [dbo].[Student_UserDetails] ([GSU_ID])
GO

ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Student_UserDetails]
GO


