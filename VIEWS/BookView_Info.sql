USE [BookRentalDetails]
GO

/****** Object:  View [dbo].[BookView_Info]    Script Date: 4/10/2022 1:12:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[BookView_Info] as 
select [FullName], [BookRented] from 
[dbo].[Student_UserDetails] s
join 
[dbo].[Books] b
on
s.GSU_ID = b.GSU_ID
GO


