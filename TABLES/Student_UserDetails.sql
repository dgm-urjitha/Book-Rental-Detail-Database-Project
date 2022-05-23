USE [BookRentalDetails]
GO

/****** Object:  Table [dbo].[Student_UserDetails]    Script Date: 4/11/2022 11:41:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student_UserDetails](
	[GSU_ID] [int] NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[PhysicalAddress] [nvarchar](100) NOT NULL,
	[Gender_ID] [int] NOT NULL,
 CONSTRAINT [PK_Student_UserDetails] PRIMARY KEY CLUSTERED 
(
	[GSU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student_UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_Student_UserDetails_GenderInfo] FOREIGN KEY([Gender_ID])
REFERENCES [dbo].[GenderInfo] ([Gender_ID])
GO

ALTER TABLE [dbo].[Student_UserDetails] CHECK CONSTRAINT [FK_Student_UserDetails_GenderInfo]
GO

ALTER TABLE [dbo].[Student_UserDetails]  WITH CHECK ADD  CONSTRAINT [ck_no_splchar] CHECK  ((NOT [FullName] like '%[^A-Z ]%'))
GO

ALTER TABLE [dbo].[Student_UserDetails] CHECK CONSTRAINT [ck_no_splchar]
GO


