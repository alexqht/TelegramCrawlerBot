/****** Object:  StoredProcedure [dbo].[CrawlerInsert]    Script Date: 5/19/2017 9:14:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CrawlerInsert]

@User_Id  nvarchar(300) ,
@User_Firstname  nvarchar(300) ,
@User_Lastname  nvarchar(300) ,
@User_Username  nvarchar(300) ,
@User_LanguageCode  nvarchar(300) ,
@Chat_Id  nvarchar(300) ,
@Chat_Title  nvarchar(300) ,
@Chat_Firstname  nvarchar(300) ,
@Chat_Lastname  nvarchar(300) ,
@Chat_Username  nvarchar(300) ,
@Chat_Type  nvarchar(300) ,
@Message_Id  nvarchar(300) ,
@Message_Date  nvarchar(300) ,
@Chat_MembersCount  nvarchar(300) ,
@Message_Text  nvarchar(max) 


AS
BEGIN
INSERT INTO [dbo].[Users]
           ([User_Id]
           ,[User_Firstname]
           ,[User_Lastname]
           ,[User_Username]
           ,[User_LanguageCode]
           ,[Chat_Id]
           ,[Chat_Title]
           ,[Chat_Firstname]
           ,[Chat_Lastname]
           ,[Chat_Username]
           ,[Chat_Type]
           ,[Message_Id]
           ,[Message_Date]
           ,[Chat_MembersCount]
           ,[Message_Text])
     VALUES
           (@User_Id, 
           @User_Firstname,
           @User_Lastname, 
           @User_Username, 
           @User_LanguageCode,
           @Chat_Id, 
           @Chat_Title,
           @Chat_Firstname,
           @Chat_Lastname, 
           @Chat_Username, 
           @Chat_Type,
           @Message_Id,
           @Message_Date, 
           @Chat_MembersCount, 
           @Message_Text)
		   
		   END

GO


