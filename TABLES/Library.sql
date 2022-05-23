USE [BookRentalDetails]
GO

/****** Object:  Table [dbo].[Library]    Script Date: 4/11/2022 11:38:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Library](
	[GSU_ID] [int] NOT NULL,
	[FullName] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO


