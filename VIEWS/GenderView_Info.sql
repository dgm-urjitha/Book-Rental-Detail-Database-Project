USE [BookRentalDetails]
GO

/****** Object:  View [dbo].[GenderView_Info]    Script Date: 4/10/2022 1:13:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[GenderView_Info] 
AS 
select g.Gender,COUNT(*) BookCount from 
Student_UserDetails s
join
GenderInfo g
on g.Gender_ID = s.Gender_ID
join
Books b
on b.GSU_ID=s.GSU_ID
group by g.Gender
GO


