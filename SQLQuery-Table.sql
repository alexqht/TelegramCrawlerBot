/****** Object:  Table [dbo].[Users]    Script Date: 5/19/2017 9:14:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [nvarchar](300) NULL,
	[User_Firstname] [nvarchar](300) NULL,
	[User_Lastname] [nvarchar](300) NULL,
	[User_Username] [nvarchar](300) NULL,
	[User_LanguageCode] [nvarchar](300) NULL,
	[Chat_Id] [nvarchar](300) NULL,
	[Chat_Title] [nvarchar](300) NULL,
	[Chat_Firstname] [nvarchar](300) NULL,
	[Chat_Lastname] [nvarchar](300) NULL,
	[Chat_Username] [nvarchar](300) NULL,
	[Chat_Type] [nvarchar](300) NULL,
	[Message_Id] [nvarchar](300) NULL,
	[Message_Date] [nvarchar](300) NULL,
	[Chat_MembersCount] [nvarchar](300) NULL,
	[Message_Text] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


