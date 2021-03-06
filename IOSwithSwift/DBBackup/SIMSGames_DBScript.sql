USE [SIMSGames]
GO
/****** Object:  Table [dbo].[GameTypes]    Script Date: 10/11/2018 6:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameTypes](
	[TypeID] [nvarchar](50) NOT NULL,
	[GameTypeName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_GameTypes] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PastHistory]    Script Date: 10/11/2018 6:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PastHistory](
	[GameId] [nvarchar](50) NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[Datetime] [datetime] NULL,
	[GameStatus] [char](10) NULL,
	[Score] [int] NULL,
	[GameTypeId] [nvarchar](50) NULL,
	[ActualString] [nvarchar](50) NULL,
	[DisplayString] [nvarchar](50) NULL,
	[TempDateTime] [nvarchar](250) NULL,
 CONSTRAINT [PK_PastHistory] PRIMARY KEY CLUSTERED 
(
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRegistration]    Script Date: 10/11/2018 6:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegistration](
	[UserId] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserRegistration] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Words]    Script Date: 10/11/2018 6:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Words](
	[WordString] [nvarchar](255) NULL,
	[WordStringChar] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WordsList]    Script Date: 10/11/2018 6:09:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordsList](
	[WordId] [int] IDENTITY(1,1) NOT NULL,
	[WordString] [nvarchar](255) NULL,
	[WordStringChar] [nvarchar](255) NULL,
 CONSTRAINT [PK_WordsList] PRIMARY KEY CLUSTERED 
(
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'104f9a53-5777-47a7-a4d4-cbb41e57e763', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 17:44:01.743' AS DateTime), N'Fail      ', 0, N'M', N'AGAINST', N'HAAINST', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'133c2cc7-ddbc-436e-a3c7-14db480f9914', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-10 16:10:49.340' AS DateTime), N'Fail      ', 0, N'M', N'ADEQUATE', N'ADMQUATE', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'2c5b4b5d-a4dc-470e-95f2-3428ded681ae', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-08 17:55:06.127' AS DateTime), N'Fail      ', 0, N'J', N'ADVANCED', N'DCVENDAA', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'306b7b63-5785-4790-ac25-76a6926b75d5', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-09 17:31:41.330' AS DateTime), N'Fail      ', 0, N'J', N'ADVANCE', N'AAVNCED', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'4cc05d6d-0606-417d-b099-f8ee6add242d', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 17:47:25.387' AS DateTime), N'Success   ', 10, N'J', N'ABUSE', N'ABUSE', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'54623bc6-efd5-4709-9385-6d409403c72c', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-09 16:04:58.930' AS DateTime), N'Fail      ', 0, N'J', N'ADVERTISING', N'SVTNIEGAIDR', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'58239d52-2cd2-4411-a7db-1a0c194a3fd8', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 13:55:28.540' AS DateTime), N'Success   ', 10, N'M', N'ACQUIRE', N'ACQUIRE', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'6b018704-7187-4994-9c45-6df63006fbaf', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 18:06:27.793' AS DateTime), N'Success   ', 10, N'J', N'AFTER', N'AFTER', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'739d5d2f-39cd-4193-a086-6cd68abf2121', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 17:48:40.710' AS DateTime), N'Fail      ', 0, N'J', N'ABSORB', N'HKGUOP', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'7e88f96a-9e5f-4331-a308-772e0013a887', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 17:41:20.203' AS DateTime), N'Success   ', 10, N'J', N'ACTION', N'ACTION', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'8491d6fd-2064-4519-819f-7208ef4e30a2', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-10 16:22:45.177' AS DateTime), N'Fail      ', 0, N'M', N'ABANDONED', N'ABODMONED', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'a9cfde17-c599-458a-9a5e-a0911efdb866', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-08 17:51:33.113' AS DateTime), N'Success   ', 10, N'J', N'anil', N'anil', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'af0cb42a-6985-4976-a2d6-db9436ef8649', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-08 18:12:52.627' AS DateTime), N'Success   ', 10, N'J', N'anil', N'anil', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'c9852335-804b-46d0-a2eb-582279beba69', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 17:53:38.747' AS DateTime), N'Fail      ', 0, N'J', N'ADDITION', N'ASDFGHJ', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'd3575c70-8282-4925-8605-acdaa4c23f5d', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 13:55:04.717' AS DateTime), N'Fail      ', 0, N'M', N'ABUSE', N'ABFSE', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'd69c435c-0da9-4061-b50b-1fb91d057086', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 17:15:51.937' AS DateTime), N'Success   ', 10, N'M', N'ABSOLUTELY', N'ABSOLUTELY', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'e908acdd-564c-4f35-920d-2a6fcb3a6351', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 14:03:22.690' AS DateTime), N'Fail      ', 0, N'M', N'ABANDONED', N'ABANND', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'eaff667d-ed8f-4d94-970d-bdb48eabb07d', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-10 16:32:00.377' AS DateTime), N'Success   ', 10, N'M', N'ADAPT', N'ADAPT', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'f80b5571-133a-4a2b-b5b8-f0aa4d386e6a', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 17:44:44.330' AS DateTime), N'Fail      ', 0, N'J', N'ADDITIONAL', N'IIADNLT', N'10/11/2018')
GO
INSERT [dbo].[PastHistory] ([GameId], [UserId], [Datetime], [GameStatus], [Score], [GameTypeId], [ActualString], [DisplayString], [TempDateTime]) VALUES (N'faee3bb3-a550-4469-b1ab-b185157b87b9', N'bf62a949-5caa-40bc-b803-fe311608b52b', CAST(N'2018-10-11 17:44:44.130' AS DateTime), N'Fail      ', 0, N'J', N'ADDITIONAL', N'IIADNLT', N'10/11/2018')
GO
INSERT [dbo].[UserRegistration] ([UserId], [FullName], [Email], [Password], [IsActive]) VALUES (N'10f84d4b-b208-41fa-9c9f-21f592a92ecb', N'a', N'test@a.com', N'123456', 1)
GO
INSERT [dbo].[UserRegistration] ([UserId], [FullName], [Email], [Password], [IsActive]) VALUES (N'bf62a949-5caa-40bc-b803-fe311608b52b', N'Abhi', N'abhi@a.com', N'a', 1)
GO
INSERT [dbo].[UserRegistration] ([UserId], [FullName], [Email], [Password], [IsActive]) VALUES (N'C1F9B4B4-E23A-4696-B2F5-7E18AA4B07F1', N'Anil Kumar', N'anil@anil.com', N'a', 1)
GO
INSERT [dbo].[UserRegistration] ([UserId], [FullName], [Email], [Password], [IsActive]) VALUES (N'E4C05ACD-22D6-4619-9350-B58BD3FE4C88', N'Karanam Anil', N'k@a.com', N'a', 1)
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ability', N'ability')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'able', N'able')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'about', N'about')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'above', N'above')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accept', N'accept')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'according', N'according')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'account', N'account')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'across', N'across')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'action', N'action')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'activity', N'activity')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'actually', N'actually')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'address', N'address')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'administration', N'administration')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'admit', N'admit')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'adult', N'adult')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'affect', N'affect')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'after', N'after')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'again', N'again')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'against', N'against')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'agency', N'agency')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'agent', N'agent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'agree', N'agree')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'agreement', N'agreement')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ahead', N'ahead')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'allow', N'allow')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'almost', N'almost')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'alone', N'alone')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'along', N'along')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'already', N'already')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'also', N'also')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'although', N'although')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'always', N'always')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'American', N'American')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'among', N'among')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'amount', N'amount')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'analysis', N'analysis')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'animal', N'animal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'another', N'another')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'answer', N'answer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'anyone', N'anyone')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'anything', N'anything')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'appear', N'appear')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'apply', N'apply')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'approach', N'approach')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'area', N'area')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'argue', N'argue')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'around', N'around')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'arrive', N'arrive')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'article', N'article')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'artist', N'artist')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'assume', N'assume')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'attack', N'attack')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'attention', N'attention')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'attorney', N'attorney')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'audience', N'audience')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'author', N'author')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'authority', N'authority')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'available', N'available')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'avoid', N'avoid')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'away', N'away')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'baby', N'baby')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'back', N'back')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ball', N'ball')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'bank', N'bank')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'base', N'base')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'beat', N'beat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'beautiful', N'beautiful')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'because', N'because')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'become', N'become')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'before', N'before')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'begin', N'begin')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'behavior', N'behavior')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'behind', N'behind')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'believe', N'believe')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'benefit', N'benefit')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'best', N'best')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'better', N'better')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'between', N'between')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'beyond', N'beyond')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'bill', N'bill')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'billion', N'billion')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'black', N'black')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'blood', N'blood')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'blue', N'blue')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'board', N'board')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'body', N'body')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'book', N'book')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'born', N'born')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'both', N'both')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'break', N'break')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'bring', N'bring')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'brother', N'brother')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'budget', N'budget')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'build', N'build')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'building', N'building')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'business', N'business')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'call', N'call')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'camera', N'camera')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'campaign', N'campaign')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cancer', N'cancer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'candidate', N'candidate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'capital', N'capital')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'card', N'card')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'care', N'care')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'career', N'career')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'carry', N'carry')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'case', N'case')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'catch', N'catch')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cause', N'cause')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cell', N'cell')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'center', N'center')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'central', N'central')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'century', N'century')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'certain', N'certain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'certainly', N'certainly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chair', N'chair')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'challenge', N'challenge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chance', N'chance')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'change', N'change')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'character', N'character')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'charge', N'charge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'check', N'check')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'child', N'child')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'choice', N'choice')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'choose', N'choose')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'church', N'church')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'citizen', N'citizen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'city', N'city')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'civil', N'civil')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'claim', N'claim')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'class', N'class')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'clear', N'clear')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'clearly', N'clearly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'close', N'close')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'coach', N'coach')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cold', N'cold')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'collection', N'collection')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'college', N'college')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'color', N'color')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'come', N'come')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'commercial', N'commercial')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'common', N'common')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'community', N'community')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'company', N'company')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'compare', N'compare')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'computer', N'computer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'concern', N'concern')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'condition', N'condition')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'conference', N'conference')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'Congress', N'Congress')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'consider', N'consider')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'consumer', N'consumer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'contain', N'contain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'continue', N'continue')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'control', N'control')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cost', N'cost')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'could', N'could')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'country', N'country')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'couple', N'couple')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'course', N'course')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'court', N'court')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cover', N'cover')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'create', N'create')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'crime', N'crime')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cultural', N'cultural')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'culture', N'culture')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'current', N'current')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'customer', N'customer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'dark', N'dark')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'data', N'data')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'daughter', N'daughter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'dead', N'dead')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'deal', N'deal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'death', N'death')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'debate', N'debate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'decade', N'decade')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'decide', N'decide')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'decision', N'decision')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'deep', N'deep')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'defense', N'defense')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'degree', N'degree')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'Democrat', N'Democrat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'democratic', N'democratic')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'describe', N'describe')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'design', N'design')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'despite', N'despite')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'detail', N'detail')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'determine', N'determine')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'develop', N'develop')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'development', N'development')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'difference', N'difference')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'different', N'different')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'difficult', N'difficult')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'dinner', N'dinner')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'direction', N'direction')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'director', N'director')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'discover', N'discover')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'discuss', N'discuss')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'discussion', N'discussion')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'disease', N'disease')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'doctor', N'doctor')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'door', N'door')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'down', N'down')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'draw', N'draw')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'dream', N'dream')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'drive', N'drive')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'drop', N'drop')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'drug', N'drug')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'during', N'during')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'each', N'each')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'early', N'early')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'east', N'east')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'easy', N'easy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'economic', N'economic')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'economy', N'economy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'edge', N'edge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'education', N'education')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'effect', N'effect')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'effort', N'effort')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eight', N'eight')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'either', N'either')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'election', N'election')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'else', N'else')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'employee', N'employee')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'energy', N'energy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enjoy', N'enjoy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enough', N'enough')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enter', N'enter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'entire', N'entire')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'environment', N'environment')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'environmental', N'environmental')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'especially', N'especially')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'establish', N'establish')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'even', N'even')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'evening', N'evening')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'event', N'event')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ever', N'ever')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'every', N'every')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'everybody', N'everybody')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'everyone', N'everyone')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'everything', N'everything')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'evidence', N'evidence')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'exactly', N'exactly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'example', N'example')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'executive', N'executive')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'exist', N'exist')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'expect', N'expect')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'experience', N'experience')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'expert', N'expert')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'explain', N'explain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'face', N'face')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fact', N'fact')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'factor', N'factor')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fail', N'fail')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fall', N'fall')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'family', N'family')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fast', N'fast')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'father', N'father')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fear', N'fear')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'federal', N'federal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'feel', N'feel')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'feeling', N'feeling')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'field', N'field')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fight', N'fight')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'figure', N'figure')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fill', N'fill')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'film', N'film')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'final', N'final')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'finally', N'finally')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'financial', N'financial')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'find', N'find')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fine', N'fine')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'finger', N'finger')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'finish', N'finish')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fire', N'fire')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'firm', N'firm')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'first', N'first')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fish', N'fish')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'five', N'five')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'floor', N'floor')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'focus', N'focus')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'follow', N'follow')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'food', N'food')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'foot', N'foot')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'force', N'force')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'foreign', N'foreign')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'forget', N'forget')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'form', N'form')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'former', N'former')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'forward', N'forward')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'four', N'four')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'free', N'free')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'friend', N'friend')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'from', N'from')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'front', N'front')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'full', N'full')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'fund', N'fund')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'future', N'future')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'game', N'game')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'garden', N'garden')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'general', N'general')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'generation', N'generation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'girl', N'girl')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'give', N'give')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'glass', N'glass')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'goal', N'goal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'good', N'good')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'government', N'government')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'great', N'great')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'green', N'green')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ground', N'ground')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'group', N'group')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'grow', N'grow')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'growth', N'growth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'guess', N'guess')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hair', N'hair')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'half', N'half')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hand', N'hand')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hang', N'hang')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'happen', N'happen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'happy', N'happy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hard', N'hard')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'have', N'have')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'head', N'head')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'health', N'health')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hear', N'hear')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heart', N'heart')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heat', N'heat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heavy', N'heavy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'help', N'help')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'here', N'here')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'herself', N'herself')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'high', N'high')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'himself', N'himself')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'history', N'history')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hold', N'hold')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'home', N'home')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hope', N'hope')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hospital', N'hospital')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hotel', N'hotel')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hour', N'hour')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'house', N'house')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'however', N'however')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'huge', N'huge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'human', N'human')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hundred', N'hundred')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'husband', N'husband')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'idea', N'idea')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'identify', N'identify')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'image', N'image')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'imagine', N'imagine')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'impact', N'impact')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'important', N'important')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'improve', N'improve')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'include', N'include')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'including', N'including')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'increase', N'increase')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'indeed', N'indeed')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'indicate', N'indicate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'individual', N'individual')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'industry', N'industry')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'information', N'information')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'inside', N'inside')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'instead', N'instead')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'institution', N'institution')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'interest', N'interest')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'interesting', N'interesting')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'international', N'international')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'interview', N'interview')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'into', N'into')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'investment', N'investment')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'involve', N'involve')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'issue', N'issue')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'item', N'item')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'itself', N'itself')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'join', N'join')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'just', N'just')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'keep', N'keep')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'kill', N'kill')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'kind', N'kind')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'kitchen', N'kitchen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'know', N'know')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'knowledge', N'knowledge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'land', N'land')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'language', N'language')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'large', N'large')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'last', N'last')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'late', N'late')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'later', N'later')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'laugh', N'laugh')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lawyer', N'lawyer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lead', N'lead')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'leader', N'leader')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'learn', N'learn')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'least', N'least')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'leave', N'leave')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'left', N'left')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'legal', N'legal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'less', N'less')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'letter', N'letter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'level', N'level')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'life', N'life')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'light', N'light')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'like', N'like')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'likely', N'likely')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'line', N'line')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'list', N'list')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'listen', N'listen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'little', N'little')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'live', N'live')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'local', N'local')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'long', N'long')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'look', N'look')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lose', N'lose')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'loss', N'loss')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'love', N'love')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'machine', N'machine')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'magazine', N'magazine')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'main', N'main')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'maintain', N'maintain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'major', N'major')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'majority', N'majority')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'make', N'make')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'manage', N'manage')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'management', N'management')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'manager', N'manager')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'many', N'many')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'market', N'market')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'marriage', N'marriage')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'material', N'material')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'matter', N'matter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'maybe', N'maybe')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'mean', N'mean')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'measure', N'measure')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'media', N'media')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'medical', N'medical')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'meet', N'meet')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'meeting', N'meeting')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'member', N'member')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'memory', N'memory')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'mention', N'mention')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'message', N'message')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'method', N'method')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'middle', N'middle')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'might', N'might')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'military', N'military')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'million', N'million')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'mind', N'mind')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'minute', N'minute')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'miss', N'miss')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'mission', N'mission')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'model', N'model')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'modern', N'modern')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'moment', N'moment')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'money', N'money')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'month', N'month')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'more', N'more')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'morning', N'morning')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'most', N'most')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'mother', N'mother')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'mouth', N'mouth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'move', N'move')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'movement', N'movement')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'movie', N'movie')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'much', N'much')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'music', N'music')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'must', N'must')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'myself', N'myself')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'name', N'name')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'nation', N'nation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'national', N'national')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'natural', N'natural')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'nature', N'nature')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'near', N'near')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'nearly', N'nearly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'necessary', N'necessary')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'need', N'need')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'network', N'network')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'never', N'never')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'news', N'news')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'newspaper', N'newspaper')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'next', N'next')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'nice', N'nice')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'night', N'night')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'none', N'none')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'north', N'north')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'note', N'note')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'nothing', N'nothing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'notice', N'notice')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'number', N'number')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'occur', N'occur')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'offer', N'offer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'office', N'office')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'officer', N'officer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'official', N'official')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'often', N'often')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'once', N'once')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'only', N'only')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'onto', N'onto')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'open', N'open')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'operation', N'operation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'opportunity', N'opportunity')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'option', N'option')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'order', N'order')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'organization', N'organization')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'other', N'other')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'others', N'others')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'outside', N'outside')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'over', N'over')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'owner', N'owner')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'page', N'page')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'pain', N'pain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'painting', N'painting')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'paper', N'paper')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'parent', N'parent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'part', N'part')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'participant', N'participant')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'particular', N'particular')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'particularly', N'particularly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'partner', N'partner')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'party', N'party')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'pass', N'pass')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'past', N'past')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'patient', N'patient')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'pattern', N'pattern')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'peace', N'peace')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'people', N'people')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'perform', N'perform')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'performance', N'performance')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'perhaps', N'perhaps')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'period', N'period')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'person', N'person')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'personal', N'personal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'phone', N'phone')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'physical', N'physical')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'pick', N'pick')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'picture', N'picture')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'piece', N'piece')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'place', N'place')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'plan', N'plan')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'plant', N'plant')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'play', N'play')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'player', N'player')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'point', N'point')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'police', N'police')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'policy', N'policy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'political', N'political')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'politics', N'politics')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'poor', N'poor')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'popular', N'popular')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'population', N'population')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'position', N'position')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'positive', N'positive')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'possible', N'possible')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'power', N'power')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'practice', N'practice')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'prepare', N'prepare')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'present', N'present')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'president', N'president')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'pressure', N'pressure')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'pretty', N'pretty')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'prevent', N'prevent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'price', N'price')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'private', N'private')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'probably', N'probably')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'problem', N'problem')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'process', N'process')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'produce', N'produce')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'product', N'product')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'production', N'production')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'professional', N'professional')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'professor', N'professor')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'program', N'program')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'project', N'project')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'property', N'property')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'protect', N'protect')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'prove', N'prove')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'provide', N'provide')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'public', N'public')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'pull', N'pull')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'purpose', N'purpose')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'push', N'push')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quality', N'quality')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'question', N'question')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quickly', N'quickly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quite', N'quite')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'race', N'race')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'radio', N'radio')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'raise', N'raise')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'range', N'range')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rate', N'rate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rather', N'rather')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reach', N'reach')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'read', N'read')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ready', N'ready')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'real', N'real')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reality', N'reality')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'realize', N'realize')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'really', N'really')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reason', N'reason')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'receive', N'receive')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recent', N'recent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recently', N'recently')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recognize', N'recognize')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'record', N'record')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reduce', N'reduce')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reflect', N'reflect')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'region', N'region')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relate', N'relate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relationship', N'relationship')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'religious', N'religious')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'remain', N'remain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'remember', N'remember')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'remove', N'remove')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'report', N'report')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'represent', N'represent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'Republican', N'Republican')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'require', N'require')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'research', N'research')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'resource', N'resource')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'respond', N'respond')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'response', N'response')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'responsibility', N'responsibility')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rest', N'rest')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'result', N'result')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'return', N'return')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reveal', N'reveal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rich', N'rich')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'right', N'right')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rise', N'rise')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'risk', N'risk')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'road', N'road')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rock', N'rock')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'role', N'role')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'room', N'room')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rule', N'rule')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'safe', N'safe')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'same', N'same')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'save', N'save')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scene', N'scene')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'school', N'school')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'science', N'science')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scientist', N'scientist')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'score', N'score')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'season', N'season')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seat', N'seat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'second', N'second')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'section', N'section')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'security', N'security')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seek', N'seek')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seem', N'seem')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sell', N'sell')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'send', N'send')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'senior', N'senior')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sense', N'sense')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'series', N'series')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'serious', N'serious')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'serve', N'serve')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'service', N'service')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seven', N'seven')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'several', N'several')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sexual', N'sexual')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'shake', N'shake')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'share', N'share')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'shoot', N'shoot')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'short', N'short')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'shot', N'shot')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'should', N'should')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'shoulder', N'shoulder')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'show', N'show')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'side', N'side')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sign', N'sign')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'significant', N'significant')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'similar', N'similar')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'simple', N'simple')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'simply', N'simply')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'since', N'since')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sing', N'sing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'single', N'single')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sister', N'sister')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'site', N'site')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'situation', N'situation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'size', N'size')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'skill', N'skill')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'skin', N'skin')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'small', N'small')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'smile', N'smile')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'social', N'social')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'society', N'society')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'soldier', N'soldier')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'some', N'some')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'somebody', N'somebody')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'someone', N'someone')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'something', N'something')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sometimes', N'sometimes')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'song', N'song')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'soon', N'soon')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sort', N'sort')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sound', N'sound')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'source', N'source')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'south', N'south')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'southern', N'southern')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'space', N'space')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'speak', N'speak')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'special', N'special')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'specific', N'specific')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'speech', N'speech')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'spend', N'spend')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sport', N'sport')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'spring', N'spring')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'staff', N'staff')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'stage', N'stage')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'stand', N'stand')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'standard', N'standard')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'star', N'star')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'start', N'start')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'state', N'state')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'statement', N'statement')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'station', N'station')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'stay', N'stay')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'step', N'step')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'still', N'still')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'stock', N'stock')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'stop', N'stop')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'store', N'store')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'story', N'story')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'strategy', N'strategy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'street', N'street')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'strong', N'strong')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'structure', N'structure')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'student', N'student')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'study', N'study')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'stuff', N'stuff')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'style', N'style')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'subject', N'subject')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'success', N'success')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'successful', N'successful')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'such', N'such')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'suddenly', N'suddenly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'suffer', N'suffer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'suggest', N'suggest')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'summer', N'summer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'support', N'support')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sure', N'sure')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'surface', N'surface')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'system', N'system')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'table', N'table')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'take', N'take')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'talk', N'talk')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'task', N'task')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'teach', N'teach')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'teacher', N'teacher')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'team', N'team')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'technology', N'technology')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'television', N'television')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tell', N'tell')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tend', N'tend')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'term', N'term')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'test', N'test')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'than', N'than')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thank', N'thank')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'that', N'that')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'their', N'their')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'them', N'them')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'themselves', N'themselves')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'then', N'then')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'theory', N'theory')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'there', N'there')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'these', N'these')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'they', N'they')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thing', N'thing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'think', N'think')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'third', N'third')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'this', N'this')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'those', N'those')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'though', N'though')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thought', N'thought')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thousand', N'thousand')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'threat', N'threat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'three', N'three')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'through', N'through')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'throughout', N'throughout')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'throw', N'throw')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thus', N'thus')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'time', N'time')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'today', N'today')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'together', N'together')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tonight', N'tonight')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'total', N'total')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tough', N'tough')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'toward', N'toward')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'town', N'town')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'trade', N'trade')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'traditional', N'traditional')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'training', N'training')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'travel', N'travel')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'treat', N'treat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'treatment', N'treatment')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tree', N'tree')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'trial', N'trial')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'trip', N'trip')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'trouble', N'trouble')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'TRUE', N'TRUE')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'truth', N'truth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'turn', N'turn')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'type', N'type')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'under', N'under')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'understand', N'understand')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unit', N'unit')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'until', N'until')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'upon', N'upon')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'usually', N'usually')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'value', N'value')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'various', N'various')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'very', N'very')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'victim', N'victim')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'view', N'view')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'violence', N'violence')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'visit', N'visit')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'voice', N'voice')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'vote', N'vote')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'wait', N'wait')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'walk', N'walk')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'wall', N'wall')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'want', N'want')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'watch', N'watch')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'water', N'water')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'weapon', N'weapon')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'wear', N'wear')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'week', N'week')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'weight', N'weight')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'well', N'well')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'west', N'west')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'western', N'western')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'what', N'what')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'whatever', N'whatever')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'when', N'when')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'where', N'where')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'whether', N'whether')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'which', N'which')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'while', N'while')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'white', N'white')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'whole', N'whole')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'whom', N'whom')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'whose', N'whose')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'wide', N'wide')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'wife', N'wife')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'will', N'will')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'wind', N'wind')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'window', N'window')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'wish', N'wish')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'with', N'with')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'within', N'within')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'without', N'without')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'woman', N'woman')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'wonder', N'wonder')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'word', N'word')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'work', N'work')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'worker', N'worker')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'world', N'world')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'worry', N'worry')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'would', N'would')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'write', N'write')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'writer', N'writer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'wrong', N'wrong')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'yard', N'yard')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'yeah', N'yeah')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'year', N'year')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'young', N'young')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'your', N'your')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'yourself', N'yourself')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (NULL, NULL)
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (NULL, NULL)
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'abandon', N'abandon')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'abandoned', N'abandoned')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ability', N'ability')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'able', N'able')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'about', N'about')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'above', N'above')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'abroad', N'abroad')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'absence', N'absence')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'absent', N'absent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'absolute', N'absolute')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'absolutely', N'absolutely')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'absorb', N'absorb')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'abuse', N'abuse')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'abuse', N'abuse')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'academic', N'academic')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accent', N'accent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accept', N'accept')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'acceptable', N'acceptable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'access', N'access')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accident', N'accident')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accidental', N'accidental')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accidentally', N'accidentally')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accommodation', N'accommodation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accompany', N'accompany')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'account', N'account')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accurate', N'accurate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accurately', N'accurately')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'accuse', N'accuse')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'achieve', N'achieve')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'achievement', N'achievement')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'acid', N'acid')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'acknowledge', N'acknowledge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'acquire', N'acquire')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'across', N'across')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'action', N'action')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'active', N'active')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'actively', N'actively')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'activity', N'activity')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'actor', N'actor')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'actress', N'actress')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'actual', N'actual')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'actually', N'actually')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'adapt', N'adapt')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'addition', N'addition')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'additional', N'additional')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'address', N'address')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'adequate', N'adequate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'adequately', N'adequately')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'adjust', N'adjust')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'admiration', N'admiration')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'admire', N'admire')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'admit', N'admit')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'adopt', N'adopt')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'adult', N'adult')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'advance', N'advance')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'advanced', N'advanced')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'advantage', N'advantage')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'adventure', N'adventure')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'advert', N'advert')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'advertise', N'advertise')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'advertisement', N'advertisement')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'advertising', N'advertising')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'advice', N'advice')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'advise', N'advise')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'affair', N'affair')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'affect', N'affect')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'affection', N'affection')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'afford', N'afford')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'afraid', N'afraid')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'after', N'after')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'afternoon', N'afternoon')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'afterwards', N'afterwards')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'again', N'again')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'against', N'against')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'aged', N'aged')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'agency', N'agency')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'agent', N'agent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'aggressive', N'aggressive')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'agree', N'agree')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'agreement', N'agreement')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ahead', N'ahead')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'aircraft', N'aircraft')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'airport', N'airport')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'alarm', N'alarm')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'alarmed', N'alarmed')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cabinet', N'cabinet')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cable', N'cable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cake', N'cake')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'calculate', N'calculate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'calculation', N'calculation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'call', N'call')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'called', N'called')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'calm', N'calm')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'calmly', N'calmly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'camera', N'camera')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'camp', N'camp')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'campaign', N'campaign')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'camping', N'camping')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cancel', N'cancel')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cancer', N'cancer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'candidate', N'candidate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'candy', N'candy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cannot', N'cannot')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'capable', N'capable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'capacity', N'capacity')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'capital', N'capital')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'captain', N'captain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'capture', N'capture')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'card', N'card')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cardboard', N'cardboard')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'care', N'care')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'career', N'career')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'careful', N'careful')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'carefully', N'carefully')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'careless', N'careless')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'carelessly', N'carelessly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'carpet', N'carpet')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'carrot', N'carrot')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'carry', N'carry')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'case', N'case')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cash', N'cash')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cast', N'cast')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'castle', N'castle')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'catch', N'catch')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'category', N'category')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cause', N'cause')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cease', N'cease')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ceiling', N'ceiling')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'celebrate', N'celebrate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'celebration', N'celebration')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cell', N'cell')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cent', N'cent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'centimetre', N'centimetre')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'central', N'central')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'centre', N'centre')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'century', N'century')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ceremony', N'ceremony')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'certain', N'certain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'certainly', N'certainly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'certificate', N'certificate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chain', N'chain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chair', N'chair')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chairman', N'chairman')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chairwoman', N'chairwoman')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'challenge', N'challenge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chamber', N'chamber')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chance', N'chance')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'change', N'change')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'channel', N'channel')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chapter', N'chapter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'character', N'character')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'characteristic', N'characteristic')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'charge', N'charge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'charity', N'charity')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chart', N'chart')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chase', N'chase')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'chat', N'chat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cheap', N'cheap')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cheaply', N'cheaply')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'cheat', N'cheat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'check', N'check')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'each', N'each')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'early', N'early')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'earn', N'earn')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'earth', N'earth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ease', N'ease')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'easily', N'easily')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'east', N'east')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eastern', N'eastern')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'easy', N'easy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'economic', N'economic')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'economy', N'economy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'edge', N'edge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'edition', N'edition')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'editor', N'editor')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'educate', N'educate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'educated', N'educated')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'education', N'education')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'effect', N'effect')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'effective', N'effective')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'effectively', N'effectively')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'efficient', N'efficient')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'efficiently', N'efficiently')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'effort', N'effort')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (NULL, NULL)
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eight', N'eight')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eighteen', N'eighteen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eighteenth', N'eighteenth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eighth', N'eighth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eightieth', N'eightieth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eighty', N'eighty')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'either', N'either')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'elbow', N'elbow')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'elderly', N'elderly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'elect', N'elect')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'election', N'election')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'electric', N'electric')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'electrical', N'electrical')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'electricity', N'electricity')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'electronic', N'electronic')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'elegant', N'elegant')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'element', N'element')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'elevator', N'elevator')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eleven', N'eleven')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'eleventh', N'eleventh')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'else', N'else')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'elsewhere', N'elsewhere')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'email', N'email')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'embarrass', N'embarrass')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'embarrassed', N'embarrassed')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'embarrassing', N'embarrassing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'embarrassment', N'embarrassment')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'emerge', N'emerge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'emergency', N'emergency')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'emotion', N'emotion')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'emotional', N'emotional')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'emotionally', N'emotionally')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'emphasis', N'emphasis')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'emphasize', N'emphasize')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'empire', N'empire')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'employ', N'employ')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'employee', N'employee')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'employer', N'employer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'employment', N'employment')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'empty', N'empty')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enable', N'enable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'encounter', N'encounter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'encourage', N'encourage')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'encouragement', N'encouragement')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ending', N'ending')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enemy', N'enemy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'energy', N'energy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'engage', N'engage')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'engaged', N'engaged')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'engine', N'engine')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'engineer', N'engineer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'engineering', N'engineering')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enjoy', N'enjoy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enjoyable', N'enjoyable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enjoyment', N'enjoyment')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enormous', N'enormous')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enough', N'enough')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enquiry', N'enquiry')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ensure', N'ensure')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enter', N'enter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'entertain', N'entertain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'entertainer', N'entertainer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'entertaining', N'entertaining')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'entertainment', N'entertainment')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enthusiasm', N'enthusiasm')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enthusiastic', N'enthusiastic')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'enthusiastically', N'enthusiastically')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'habit', N'habit')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hair', N'hair')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hairdresser', N'hairdresser')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'half', N'half')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hall', N'hall')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hammer', N'hammer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hand', N'hand')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'handle', N'handle')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hang', N'hang')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'happen', N'happen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'happily', N'happily')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'happiness', N'happiness')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'happy', N'happy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hard', N'hard')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hardly', N'hardly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'harm', N'harm')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'harmful', N'harmful')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'harmless', N'harmless')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hate', N'hate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hatred', N'hatred')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'have', N'have')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'head', N'head')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'headache', N'headache')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heal', N'heal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'health', N'health')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'healthy', N'healthy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hear', N'hear')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hearing', N'hearing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heart', N'heart')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heat', N'heat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heating', N'heating')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heaven', N'heaven')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heavily', N'heavily')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heavy', N'heavy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'heel', N'heel')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'height', N'height')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hell', N'hell')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hello', N'hello')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'help', N'help')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'helpful', N'helpful')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hence', N'hence')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'here', N'here')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hero', N'hero')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hers', N'hers')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'herself', N'herself')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hesitate', N'hesitate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hide', N'hide')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'high', N'high')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'highlight', N'highlight')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'highly', N'highly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'highway', N'highway')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hill', N'hill')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'himself', N'himself')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hire', N'hire')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'historical', N'historical')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'history', N'history')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hobby', N'hobby')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hold', N'hold')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hole', N'hole')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'holiday', N'holiday')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'hollow', N'hollow')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'holy', N'holy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'home', N'home')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'homework', N'homework')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'honest', N'honest')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'label', N'label')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'laboratory', N'laboratory')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'labour', N'labour')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lack', N'lack')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lacking', N'lacking')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lady', N'lady')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lake', N'lake')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lamp', N'lamp')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'land', N'land')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'landscape', N'landscape')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lane', N'lane')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'language', N'language')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'large', N'large')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'largely', N'largely')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'late', N'late')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'later', N'later')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'latest', N'latest')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'latter', N'latter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'laugh', N'laugh')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'launch', N'launch')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lawyer', N'lawyer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'layer', N'layer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lazy', N'lazy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'leader', N'leader')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'leaf', N'leaf')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'league', N'league')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lean', N'lean')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'learn', N'learn')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'least', N'least')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'leather', N'leather')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'leave', N'leave')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lecture', N'lecture')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'left', N'left')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'legal', N'legal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'legally', N'legally')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lemon', N'lemon')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lend', N'lend')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'length', N'length')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'less', N'less')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lesson', N'lesson')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'letter', N'letter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'level', N'level')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'library', N'library')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'licence', N'licence')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'license', N'license')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'life', N'life')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lift', N'lift')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'light', N'light')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lightly', N'lightly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'like', N'like')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'likely', N'likely')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'limit', N'limit')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'limited', N'limited')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'line', N'line')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'link', N'link')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'liquid', N'liquid')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'list', N'list')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'listen', N'listen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'literature', N'literature')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'litre', N'litre')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'little', N'little')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lively', N'lively')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'living', N'living')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'load', N'load')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'loan', N'loan')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'local', N'local')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'locally', N'locally')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'locate', N'locate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'located', N'located')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'location', N'location')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lock', N'lock')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'logic', N'logic')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'logical', N'logical')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'lonely', N'lonely')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'long', N'long')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'obey', N'obey')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'object', N'object')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'object', N'object')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'objective', N'objective')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'observation', N'observation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'observe', N'observe')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'obtain', N'obtain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'obvious', N'obvious')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'obviously', N'obviously')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'occasion', N'occasion')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'occasionally', N'occasionally')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'occupied', N'occupied')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'occupy', N'occupy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'occur', N'occur')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ocean', N'ocean')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'o’clock', N'o’clock')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'October', N'October')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'oddly', N'oddly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'offence', N'offence')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'offend', N'offend')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'offense', N'offense')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'offensive', N'offensive')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'offer', N'offer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'office', N'office')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'officer', N'officer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'official', N'official')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'officially', N'officially')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'often', N'often')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'old-fashioned', N'old-fashioned')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'once', N'once')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'onion', N'onion')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'online', N'online')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'only', N'only')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'onto', N'onto')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'open', N'open')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'opening', N'opening')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'openly', N'openly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'operate', N'operate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'operation', N'operation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'opinion', N'opinion')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'opponent', N'opponent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'opportunity', N'opportunity')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'oppose', N'oppose')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'opposed', N'opposed')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'opposing', N'opposing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'opposite', N'opposite')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'opposition', N'opposition')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'option', N'option')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'orange', N'orange')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'order', N'order')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ordinary', N'ordinary')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'organ', N'organ')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'organization', N'organization')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'organize', N'organize')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'organized', N'organized')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'origin', N'origin')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'original', N'original')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'originally', N'originally')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'other', N'other')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'otherwise', N'otherwise')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ours', N'ours')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ourselves', N'ourselves')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'outdoor', N'outdoor')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'outdoors', N'outdoors')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'outer', N'outer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'outline', N'outline')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'output', N'output')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'outside', N'outside')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'outside', N'outside')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'outstanding', N'outstanding')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'oven', N'oven')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'over', N'over')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'overall', N'overall')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'overall', N'overall')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'overcome', N'overcome')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'owner', N'owner')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'pack', N'pack')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'package', N'package')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'packaging', N'packaging')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'packet', N'packet')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'qualification', N'qualification')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'qualified', N'qualified')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'qualify', N'qualify')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quality', N'quality')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quantity', N'quantity')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quarter', N'quarter')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'queen', N'queen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'question', N'question')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quick', N'quick')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quickly', N'quickly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quiet', N'quiet')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quietly', N'quietly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quit', N'quit')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quite', N'quite')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'quote', N'quote')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'race', N'race')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'racing', N'racing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'radio', N'radio')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rail', N'rail')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'railroad', N'railroad')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'railway', N'railway')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rain', N'rain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'raise', N'raise')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'range', N'range')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rank', N'rank')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rapid', N'rapid')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rapidly', N'rapidly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rare', N'rare')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rarely', N'rarely')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rate', N'rate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rather', N'rather')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reach', N'reach')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'react', N'react')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reaction', N'reaction')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'read', N'read')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reader', N'reader')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reading', N'reading')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ready', N'ready')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'real', N'real')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'realistic', N'realistic')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reality', N'reality')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'realize', N'realize')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'really', N'really')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'rear', N'rear')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reason', N'reason')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reasonable', N'reasonable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reasonably', N'reasonably')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recall', N'recall')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'receipt', N'receipt')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'receive', N'receive')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recent', N'recent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recently', N'recently')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reception', N'reception')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reckon', N'reckon')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recognition', N'recognition')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recognize', N'recognize')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recommend', N'recommend')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'record', N'record')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'record', N'record')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recording', N'recording')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'recover', N'recover')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reduce', N'reduce')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reduction', N'reduction')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'refer', N'refer')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reference', N'reference')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reflect', N'reflect')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reform', N'reform')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'refrigerator', N'refrigerator')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'refusal', N'refusal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'regard', N'regard')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'regarding', N'regarding')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'region', N'region')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'regional', N'regional')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'register', N'register')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'regret', N'regret')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'regular', N'regular')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'regularly', N'regularly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'regulation', N'regulation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'reject', N'reject')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relate', N'relate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'related', N'related')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relation', N'relation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relationship', N'relationship')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relative', N'relative')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relatively', N'relatively')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relax', N'relax')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relaxed', N'relaxed')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relaxing', N'relaxing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'release', N'release')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relevant', N'relevant')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'relief', N'relief')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sack', N'sack')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sadly', N'sadly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sadness', N'sadness')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'safe', N'safe')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'safely', N'safely')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'safety', N'safety')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sail', N'sail')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sailing', N'sailing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sailor', N'sailor')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'salad', N'salad')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'salary', N'salary')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sale', N'sale')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'salt', N'salt')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'salty', N'salty')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'same', N'same')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sample', N'sample')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sand', N'sand')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'satisfaction', N'satisfaction')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'satisfied', N'satisfied')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'satisfy', N'satisfy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'satisfying', N'satisfying')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'Saturday', N'Saturday')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sauce', N'sauce')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'save', N'save')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'saving', N'saving')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scale', N'scale')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scare', N'scare')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scared', N'scared')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scene', N'scene')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'schedule', N'schedule')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scheme', N'scheme')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'school', N'school')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'science', N'science')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scientific', N'scientific')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scientist', N'scientist')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scissors', N'scissors')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'score', N'score')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scratch', N'scratch')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'scream', N'scream')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'screen', N'screen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'screw', N'screw')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seal', N'seal')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'search', N'search')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'season', N'season')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seat', N'seat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'second', N'second')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'secondary', N'secondary')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'secret', N'secret')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'secretary', N'secretary')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'secretly', N'secretly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'section', N'section')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sector', N'sector')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'secure', N'secure')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'security', N'security')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seed', N'seed')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seek', N'seek')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seem', N'seem')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'select', N'select')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'selection', N'selection')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'self', N'self')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'self-', N'self-')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sell', N'sell')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'senate', N'senate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'senator', N'senator')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'send', N'send')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'senior', N'senior')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sense', N'sense')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sensible', N'sensible')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sensitive', N'sensitive')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'sentence', N'sentence')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'separate', N'separate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'separate', N'separate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'separated', N'separated')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'separately', N'separately')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'separation', N'separation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'September', N'September')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'series', N'series')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'serious', N'serious')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'seriously', N'seriously')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'servant', N'servant')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'serve', N'serve')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'service', N'service')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'session', N'session')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'settle', N'settle')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'table', N'table')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tablet', N'tablet')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tackle', N'tackle')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tail', N'tail')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'take', N'take')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'talk', N'talk')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tall', N'tall')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tank', N'tank')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tape', N'tape')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'target', N'target')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'task', N'task')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'taste', N'taste')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'taxi', N'taxi')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'teach', N'teach')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'teacher', N'teacher')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'teaching', N'teaching')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'team', N'team')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'technical', N'technical')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'technique', N'technique')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'technology', N'technology')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'telephone', N'telephone')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'television', N'television')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tell', N'tell')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'temperature', N'temperature')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'temporarily', N'temporarily')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'temporary', N'temporary')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tend', N'tend')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tendency', N'tendency')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tension', N'tension')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tent', N'tent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'tenth', N'tenth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'term', N'term')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'terrible', N'terrible')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'terribly', N'terribly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'test', N'test')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'text', N'text')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'than', N'than')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thank', N'thank')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thanks', N'thanks')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'that', N'that')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'that', N'that')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'theatre', N'theatre')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'their', N'their')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'theirs', N'theirs')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'them', N'them')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'theme', N'theme')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'themselves', N'themselves')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'then', N'then')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'theory', N'theory')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'there', N'there')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'therefore', N'therefore')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'they', N'they')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thick', N'thick')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thickly', N'thickly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thickness', N'thickness')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thief', N'thief')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thin', N'thin')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thing', N'thing')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'think', N'think')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thinking', N'thinking')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'third', N'third')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thirsty', N'thirsty')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thirteen', N'thirteen')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thirteenth', N'thirteenth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thirtieth', N'thirtieth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thirty', N'thirty')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'this', N'this')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thorough', N'thorough')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thoroughly', N'thoroughly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'though', N'though')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thought', N'thought')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thousand', N'thousand')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thousandth', N'thousandth')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'thread', N'thread')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'threat', N'threat')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'threaten', N'threaten')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ugly', N'ugly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ultimate', N'ultimate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'ultimately', N'ultimately')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'umbrella', N'umbrella')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unable', N'unable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unacceptable', N'unacceptable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'uncertain', N'uncertain')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'uncle', N'uncle')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'uncomfortable', N'uncomfortable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unconscious', N'unconscious')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'uncontrolled', N'uncontrolled')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'under', N'under')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'underground', N'underground')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'underneath', N'underneath')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'understand', N'understand')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'understanding', N'understanding')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'underwater', N'underwater')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'underwear', N'underwear')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'undo', N'undo')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unemployed', N'unemployed')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unemployment', N'unemployment')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unexpected', N'unexpected')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unexpectedly', N'unexpectedly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unfair', N'unfair')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unfairly', N'unfairly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unfortunate', N'unfortunate')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unfortunately', N'unfortunately')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unfriendly', N'unfriendly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unhappy', N'unhappy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'uniform', N'uniform')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unimportant', N'unimportant')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'union', N'union')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unique', N'unique')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unit', N'unit')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unite', N'unite')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'united', N'united')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'universe', N'universe')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'university', N'university')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unkind', N'unkind')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unknown', N'unknown')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unless', N'unless')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unlike', N'unlike')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unlikely', N'unlikely')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unload', N'unload')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unlucky', N'unlucky')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unnecessary', N'unnecessary')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unpleasant', N'unpleasant')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unreasonable', N'unreasonable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unsteady', N'unsteady')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unsuccessful', N'unsuccessful')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'untidy', N'untidy')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'until', N'until')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unusual', N'unusual')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unusually', N'unusually')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unwilling', N'unwilling')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'unwillingly', N'unwillingly')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'upon', N'upon')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'upper', N'upper')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'upset', N'upset')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'upset', N'upset')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'upsetting', N'upsetting')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'upstairs', N'upstairs')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'upward', N'upward')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'upwards', N'upwards')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'urban', N'urban')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'urge', N'urge')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'urgent', N'urgent')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'useful', N'useful')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'useless', N'useless')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'user', N'user')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'usual', N'usual')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'usually', N'usually')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'vacation', N'vacation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'valid', N'valid')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'valley', N'valley')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'valuable', N'valuable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'value', N'value')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'variation', N'variation')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'varied', N'varied')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'variety', N'variety')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'various', N'various')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'vary', N'vary')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'vast', N'vast')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'vegetable', N'vegetable')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'vehicle', N'vehicle')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'venture', N'venture')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'version', N'version')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'vertical', N'vertical')
GO
INSERT [dbo].[Words] ([WordString], [WordStringChar]) VALUES (N'very', N'very')
GO
SET IDENTITY_INSERT [dbo].[WordsList] ON 

GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1, N'ability', N'ability')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (3, N'about', N'about')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (4, N'above', N'above')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (5, N'accept', N'accept')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (7, N'account', N'account')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (8, N'across', N'across')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (9, N'action', N'action')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (10, N'activity', N'activity')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (11, N'actually', N'actually')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (12, N'address', N'address')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (14, N'admit', N'admit')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (15, N'adult', N'adult')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (16, N'affect', N'affect')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (17, N'after', N'after')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (18, N'again', N'again')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (19, N'against', N'against')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (20, N'agency', N'agency')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (21, N'agent', N'agent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (22, N'agree', N'agree')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (24, N'ahead', N'ahead')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (25, N'allow', N'allow')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (26, N'almost', N'almost')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (27, N'alone', N'alone')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (28, N'along', N'along')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (29, N'already', N'already')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (31, N'although', N'although')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (32, N'always', N'always')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (33, N'American', N'American')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (34, N'among', N'among')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (35, N'amount', N'amount')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (36, N'analysis', N'analysis')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (37, N'animal', N'animal')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (38, N'another', N'another')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (39, N'answer', N'answer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (40, N'anyone', N'anyone')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (41, N'anything', N'anything')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (42, N'appear', N'appear')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (43, N'apply', N'apply')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (44, N'approach', N'approach')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (46, N'argue', N'argue')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (47, N'around', N'around')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (48, N'arrive', N'arrive')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (49, N'article', N'article')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (50, N'artist', N'artist')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (51, N'assume', N'assume')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (52, N'attack', N'attack')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (54, N'attorney', N'attorney')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (55, N'audience', N'audience')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (56, N'author', N'author')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (59, N'avoid', N'avoid')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (68, N'because', N'because')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (69, N'become', N'become')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (70, N'before', N'before')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (71, N'begin', N'begin')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (72, N'behavior', N'behavior')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (73, N'behind', N'behind')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (74, N'believe', N'believe')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (75, N'benefit', N'benefit')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (77, N'better', N'better')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (78, N'between', N'between')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (79, N'beyond', N'beyond')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (81, N'billion', N'billion')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (82, N'black', N'black')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (83, N'blood', N'blood')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (85, N'board', N'board')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (90, N'break', N'break')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (91, N'bring', N'bring')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (92, N'brother', N'brother')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (93, N'budget', N'budget')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (94, N'build', N'build')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (95, N'building', N'building')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (96, N'business', N'business')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (98, N'camera', N'camera')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (99, N'campaign', N'campaign')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (100, N'cancer', N'cancer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (102, N'capital', N'capital')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (105, N'career', N'career')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (106, N'carry', N'carry')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (108, N'catch', N'catch')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (109, N'cause', N'cause')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (111, N'center', N'center')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (112, N'central', N'central')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (113, N'century', N'century')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (114, N'certain', N'certain')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (116, N'chair', N'chair')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (118, N'chance', N'chance')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (119, N'change', N'change')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (121, N'charge', N'charge')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (122, N'check', N'check')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (123, N'child', N'child')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (124, N'choice', N'choice')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (125, N'choose', N'choose')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (126, N'church', N'church')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (127, N'citizen', N'citizen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (129, N'civil', N'civil')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (130, N'claim', N'claim')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (131, N'class', N'class')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (132, N'clear', N'clear')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (133, N'clearly', N'clearly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (134, N'close', N'close')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (135, N'coach', N'coach')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (138, N'college', N'college')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (139, N'color', N'color')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (142, N'common', N'common')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (144, N'company', N'company')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (145, N'compare', N'compare')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (146, N'computer', N'computer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (147, N'concern', N'concern')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (150, N'Congress', N'Congress')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (151, N'consider', N'consider')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (152, N'consumer', N'consumer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (153, N'contain', N'contain')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (154, N'continue', N'continue')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (155, N'control', N'control')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (157, N'could', N'could')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (158, N'country', N'country')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (159, N'couple', N'couple')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (160, N'course', N'course')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (161, N'court', N'court')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (162, N'cover', N'cover')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (163, N'create', N'create')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (164, N'crime', N'crime')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (165, N'cultural', N'cultural')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (166, N'culture', N'culture')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (167, N'current', N'current')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (168, N'customer', N'customer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (171, N'daughter', N'daughter')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (174, N'death', N'death')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (175, N'debate', N'debate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (176, N'decade', N'decade')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (177, N'decide', N'decide')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (178, N'decision', N'decision')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (180, N'defense', N'defense')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (181, N'degree', N'degree')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (182, N'Democrat', N'Democrat')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (184, N'describe', N'describe')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (185, N'design', N'design')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (186, N'despite', N'despite')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (187, N'detail', N'detail')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (189, N'develop', N'develop')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (194, N'dinner', N'dinner')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (196, N'director', N'director')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (197, N'discover', N'discover')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (198, N'discuss', N'discuss')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (200, N'disease', N'disease')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (201, N'doctor', N'doctor')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (205, N'dream', N'dream')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (206, N'drive', N'drive')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (209, N'during', N'during')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (211, N'early', N'early')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (214, N'economic', N'economic')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (215, N'economy', N'economy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (218, N'effect', N'effect')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (219, N'effort', N'effort')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (220, N'eight', N'eight')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (221, N'either', N'either')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (222, N'election', N'election')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (224, N'employee', N'employee')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (225, N'energy', N'energy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (226, N'enjoy', N'enjoy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (227, N'enough', N'enough')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (228, N'enter', N'enter')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (229, N'entire', N'entire')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (235, N'evening', N'evening')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (236, N'event', N'event')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (238, N'every', N'every')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (240, N'everyone', N'everyone')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (242, N'evidence', N'evidence')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (243, N'exactly', N'exactly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (244, N'example', N'example')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (246, N'exist', N'exist')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (247, N'expect', N'expect')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (249, N'expert', N'expert')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (250, N'explain', N'explain')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (253, N'factor', N'factor')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (256, N'family', N'family')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (258, N'father', N'father')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (260, N'federal', N'federal')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (262, N'feeling', N'feeling')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (263, N'field', N'field')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (264, N'fight', N'fight')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (265, N'figure', N'figure')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (268, N'final', N'final')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (269, N'finally', N'finally')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (273, N'finger', N'finger')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (274, N'finish', N'finish')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (277, N'first', N'first')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (280, N'floor', N'floor')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (281, N'focus', N'focus')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (282, N'follow', N'follow')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (285, N'force', N'force')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (286, N'foreign', N'foreign')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (287, N'forget', N'forget')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (289, N'former', N'former')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (290, N'forward', N'forward')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (293, N'friend', N'friend')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (295, N'front', N'front')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (298, N'future', N'future')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (300, N'garden', N'garden')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (301, N'general', N'general')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (305, N'glass', N'glass')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (309, N'great', N'great')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (310, N'green', N'green')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (311, N'ground', N'ground')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (312, N'group', N'group')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (314, N'growth', N'growth')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (315, N'guess', N'guess')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (320, N'happen', N'happen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (321, N'happy', N'happy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (325, N'health', N'health')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (327, N'heart', N'heart')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (329, N'heavy', N'heavy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (332, N'herself', N'herself')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (334, N'himself', N'himself')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (335, N'history', N'history')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (339, N'hospital', N'hospital')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (340, N'hotel', N'hotel')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (342, N'house', N'house')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (343, N'however', N'however')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (345, N'human', N'human')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (346, N'hundred', N'hundred')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (347, N'husband', N'husband')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (349, N'identify', N'identify')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (350, N'image', N'image')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (351, N'imagine', N'imagine')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (352, N'impact', N'impact')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (354, N'improve', N'improve')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (355, N'include', N'include')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (357, N'increase', N'increase')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (358, N'indeed', N'indeed')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (359, N'indicate', N'indicate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (361, N'industry', N'industry')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (363, N'inside', N'inside')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (364, N'instead', N'instead')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (366, N'interest', N'interest')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (372, N'involve', N'involve')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (373, N'issue', N'issue')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (375, N'itself', N'itself')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (381, N'kitchen', N'kitchen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (385, N'language', N'language')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (386, N'large', N'large')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (389, N'later', N'later')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (390, N'laugh', N'laugh')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (391, N'lawyer', N'lawyer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (393, N'leader', N'leader')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (394, N'learn', N'learn')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (395, N'least', N'least')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (396, N'leave', N'leave')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (398, N'legal', N'legal')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (400, N'letter', N'letter')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (401, N'level', N'level')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (403, N'light', N'light')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (405, N'likely', N'likely')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (408, N'listen', N'listen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (409, N'little', N'little')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (411, N'local', N'local')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (417, N'machine', N'machine')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (418, N'magazine', N'magazine')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (420, N'maintain', N'maintain')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (421, N'major', N'major')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (422, N'majority', N'majority')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (424, N'manage', N'manage')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (426, N'manager', N'manager')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (428, N'market', N'market')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (429, N'marriage', N'marriage')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (430, N'material', N'material')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (431, N'matter', N'matter')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (432, N'maybe', N'maybe')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (434, N'measure', N'measure')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (435, N'media', N'media')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (436, N'medical', N'medical')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (438, N'meeting', N'meeting')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (439, N'member', N'member')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (440, N'memory', N'memory')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (441, N'mention', N'mention')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (442, N'message', N'message')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (443, N'method', N'method')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (444, N'middle', N'middle')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (445, N'might', N'might')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (446, N'military', N'military')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (447, N'million', N'million')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (449, N'minute', N'minute')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (451, N'mission', N'mission')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (452, N'model', N'model')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (453, N'modern', N'modern')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (454, N'moment', N'moment')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (455, N'money', N'money')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (456, N'month', N'month')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (458, N'morning', N'morning')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (460, N'mother', N'mother')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (461, N'mouth', N'mouth')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (463, N'movement', N'movement')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (464, N'movie', N'movie')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (466, N'music', N'music')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (468, N'myself', N'myself')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (470, N'nation', N'nation')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (471, N'national', N'national')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (472, N'natural', N'natural')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (473, N'nature', N'nature')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (475, N'nearly', N'nearly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (478, N'network', N'network')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (479, N'never', N'never')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (484, N'night', N'night')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (486, N'north', N'north')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (488, N'nothing', N'nothing')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (489, N'notice', N'notice')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (490, N'number', N'number')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (491, N'occur', N'occur')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (492, N'offer', N'offer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (493, N'office', N'office')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (494, N'officer', N'officer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (495, N'official', N'official')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (496, N'often', N'often')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (503, N'option', N'option')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (504, N'order', N'order')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (506, N'other', N'other')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (507, N'others', N'others')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (508, N'outside', N'outside')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (510, N'owner', N'owner')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (513, N'painting', N'painting')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (514, N'paper', N'paper')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (515, N'parent', N'parent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (520, N'partner', N'partner')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (521, N'party', N'party')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (524, N'patient', N'patient')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (525, N'pattern', N'pattern')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (526, N'peace', N'peace')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (527, N'people', N'people')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (528, N'perform', N'perform')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (530, N'perhaps', N'perhaps')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (531, N'period', N'period')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (532, N'person', N'person')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (533, N'personal', N'personal')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (534, N'phone', N'phone')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (535, N'physical', N'physical')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (537, N'picture', N'picture')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (538, N'piece', N'piece')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (539, N'place', N'place')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (541, N'plant', N'plant')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (543, N'player', N'player')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (544, N'point', N'point')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (545, N'police', N'police')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (546, N'policy', N'policy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (548, N'politics', N'politics')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (550, N'popular', N'popular')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (552, N'position', N'position')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (553, N'positive', N'positive')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (554, N'possible', N'possible')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (555, N'power', N'power')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (556, N'practice', N'practice')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (557, N'prepare', N'prepare')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (558, N'present', N'present')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (560, N'pressure', N'pressure')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (561, N'pretty', N'pretty')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (562, N'prevent', N'prevent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (563, N'price', N'price')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (564, N'private', N'private')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (565, N'probably', N'probably')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (566, N'problem', N'problem')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (567, N'process', N'process')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (568, N'produce', N'produce')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (569, N'product', N'product')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (573, N'program', N'program')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (574, N'project', N'project')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (575, N'property', N'property')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (576, N'protect', N'protect')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (577, N'prove', N'prove')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (578, N'provide', N'provide')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (579, N'public', N'public')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (581, N'purpose', N'purpose')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (583, N'quality', N'quality')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (584, N'question', N'question')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (585, N'quickly', N'quickly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (586, N'quite', N'quite')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (588, N'radio', N'radio')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (589, N'raise', N'raise')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (590, N'range', N'range')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (592, N'rather', N'rather')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (593, N'reach', N'reach')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (595, N'ready', N'ready')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (597, N'reality', N'reality')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (598, N'realize', N'realize')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (599, N'really', N'really')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (600, N'reason', N'reason')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (601, N'receive', N'receive')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (602, N'recent', N'recent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (603, N'recently', N'recently')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (605, N'record', N'record')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (606, N'reduce', N'reduce')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (607, N'reflect', N'reflect')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (608, N'region', N'region')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (609, N'relate', N'relate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (612, N'remain', N'remain')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (613, N'remember', N'remember')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (614, N'remove', N'remove')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (615, N'report', N'report')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (618, N'require', N'require')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (619, N'research', N'research')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (620, N'resource', N'resource')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (621, N'respond', N'respond')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (622, N'response', N'response')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (625, N'result', N'result')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (626, N'return', N'return')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (627, N'reveal', N'reveal')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (629, N'right', N'right')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (640, N'scene', N'scene')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (641, N'school', N'school')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (642, N'science', N'science')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (644, N'score', N'score')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (645, N'season', N'season')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (647, N'second', N'second')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (648, N'section', N'section')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (649, N'security', N'security')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (654, N'senior', N'senior')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (655, N'sense', N'sense')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (656, N'series', N'series')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (657, N'serious', N'serious')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (658, N'serve', N'serve')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (659, N'service', N'service')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (660, N'seven', N'seven')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (661, N'several', N'several')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (662, N'sexual', N'sexual')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (663, N'shake', N'shake')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (664, N'share', N'share')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (665, N'shoot', N'shoot')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (666, N'short', N'short')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (668, N'should', N'should')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (669, N'shoulder', N'shoulder')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (674, N'similar', N'similar')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (675, N'simple', N'simple')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (676, N'simply', N'simply')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (677, N'since', N'since')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (679, N'single', N'single')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (680, N'sister', N'sister')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (684, N'skill', N'skill')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (686, N'small', N'small')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (687, N'smile', N'smile')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (688, N'social', N'social')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (689, N'society', N'society')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (690, N'soldier', N'soldier')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (692, N'somebody', N'somebody')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (693, N'someone', N'someone')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (699, N'sound', N'sound')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (700, N'source', N'source')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (701, N'south', N'south')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (702, N'southern', N'southern')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (703, N'space', N'space')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (704, N'speak', N'speak')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (705, N'special', N'special')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (706, N'specific', N'specific')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (707, N'speech', N'speech')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (708, N'spend', N'spend')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (709, N'sport', N'sport')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (710, N'spring', N'spring')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (711, N'staff', N'staff')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (712, N'stage', N'stage')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (713, N'stand', N'stand')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (714, N'standard', N'standard')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (716, N'start', N'start')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (717, N'state', N'state')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (719, N'station', N'station')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (722, N'still', N'still')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (723, N'stock', N'stock')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (725, N'store', N'store')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (726, N'story', N'story')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (727, N'strategy', N'strategy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (728, N'street', N'street')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (729, N'strong', N'strong')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (731, N'student', N'student')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (732, N'study', N'study')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (733, N'stuff', N'stuff')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (734, N'style', N'style')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (735, N'subject', N'subject')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (736, N'success', N'success')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (739, N'suddenly', N'suddenly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (740, N'suffer', N'suffer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (741, N'suggest', N'suggest')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (742, N'summer', N'summer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (743, N'support', N'support')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (745, N'surface', N'surface')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (746, N'system', N'system')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (747, N'table', N'table')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (751, N'teach', N'teach')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (752, N'teacher', N'teacher')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (761, N'thank', N'thank')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (763, N'their', N'their')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (767, N'theory', N'theory')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (768, N'there', N'there')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (769, N'these', N'these')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (771, N'thing', N'thing')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (772, N'think', N'think')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (773, N'third', N'third')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (775, N'those', N'those')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (776, N'though', N'though')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (777, N'thought', N'thought')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (778, N'thousand', N'thousand')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (779, N'threat', N'threat')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (780, N'three', N'three')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (781, N'through', N'through')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (783, N'throw', N'throw')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (786, N'today', N'today')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (787, N'together', N'together')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (788, N'tonight', N'tonight')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (789, N'total', N'total')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (790, N'tough', N'tough')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (791, N'toward', N'toward')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (793, N'trade', N'trade')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (795, N'training', N'training')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (796, N'travel', N'travel')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (797, N'treat', N'treat')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (800, N'trial', N'trial')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (802, N'trouble', N'trouble')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (804, N'truth', N'truth')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (807, N'under', N'under')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (810, N'until', N'until')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (812, N'usually', N'usually')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (813, N'value', N'value')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (814, N'various', N'various')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (816, N'victim', N'victim')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (818, N'violence', N'violence')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (819, N'visit', N'visit')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (820, N'voice', N'voice')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (826, N'watch', N'watch')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (827, N'water', N'water')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (828, N'weapon', N'weapon')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (831, N'weight', N'weight')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (834, N'western', N'western')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (836, N'whatever', N'whatever')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (838, N'where', N'where')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (839, N'whether', N'whether')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (840, N'which', N'which')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (841, N'while', N'while')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (842, N'white', N'white')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (843, N'whole', N'whole')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (845, N'whose', N'whose')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (850, N'window', N'window')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (853, N'within', N'within')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (854, N'without', N'without')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (855, N'woman', N'woman')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (856, N'wonder', N'wonder')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (859, N'worker', N'worker')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (860, N'world', N'world')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (861, N'worry', N'worry')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (862, N'would', N'would')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (863, N'write', N'write')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (864, N'writer', N'writer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (865, N'wrong', N'wrong')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (869, N'young', N'young')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (871, N'yourself', N'yourself')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (872, NULL, NULL)
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (873, NULL, NULL)
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (874, N'abandon', N'abandon')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (876, N'ability', N'ability')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (878, N'about', N'about')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (879, N'above', N'above')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (880, N'abroad', N'abroad')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (881, N'absence', N'absence')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (882, N'absent', N'absent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (883, N'absolute', N'absolute')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (885, N'absorb', N'absorb')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (886, N'abuse', N'abuse')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (887, N'abuse', N'abuse')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (888, N'academic', N'academic')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (889, N'accent', N'accent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (890, N'accept', N'accept')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (892, N'access', N'access')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (893, N'accident', N'accident')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (898, N'account', N'account')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (899, N'accurate', N'accurate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (901, N'accuse', N'accuse')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (902, N'achieve', N'achieve')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (906, N'acquire', N'acquire')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (907, N'across', N'across')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (908, N'action', N'action')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (909, N'active', N'active')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (910, N'actively', N'actively')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (911, N'activity', N'activity')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (912, N'actor', N'actor')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (913, N'actress', N'actress')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (914, N'actual', N'actual')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (915, N'actually', N'actually')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (916, N'adapt', N'adapt')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (917, N'addition', N'addition')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (919, N'address', N'address')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (920, N'adequate', N'adequate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (922, N'adjust', N'adjust')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (924, N'admire', N'admire')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (925, N'admit', N'admit')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (926, N'adopt', N'adopt')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (927, N'adult', N'adult')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (928, N'advance', N'advance')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (929, N'advanced', N'advanced')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (932, N'advert', N'advert')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (936, N'advice', N'advice')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (937, N'advise', N'advise')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (938, N'affair', N'affair')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (939, N'affect', N'affect')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (941, N'afford', N'afford')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (942, N'afraid', N'afraid')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (943, N'after', N'after')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (946, N'again', N'again')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (947, N'against', N'against')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (949, N'agency', N'agency')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (950, N'agent', N'agent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (952, N'agree', N'agree')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (954, N'ahead', N'ahead')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (955, N'aircraft', N'aircraft')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (956, N'airport', N'airport')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (957, N'alarm', N'alarm')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (958, N'alarmed', N'alarmed')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (959, N'cabinet', N'cabinet')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (960, N'cable', N'cable')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (965, N'called', N'called')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (967, N'calmly', N'calmly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (968, N'camera', N'camera')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (970, N'campaign', N'campaign')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (971, N'camping', N'camping')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (972, N'cancel', N'cancel')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (973, N'cancer', N'cancer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (975, N'candy', N'candy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (976, N'cannot', N'cannot')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (977, N'capable', N'capable')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (978, N'capacity', N'capacity')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (979, N'capital', N'capital')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (980, N'captain', N'captain')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (981, N'capture', N'capture')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (985, N'career', N'career')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (986, N'careful', N'careful')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (988, N'careless', N'careless')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (990, N'carpet', N'carpet')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (991, N'carrot', N'carrot')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (992, N'carry', N'carry')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (996, N'castle', N'castle')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (997, N'catch', N'catch')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (998, N'category', N'category')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (999, N'cause', N'cause')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1000, N'cease', N'cease')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1001, N'ceiling', N'ceiling')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1007, N'central', N'central')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1008, N'centre', N'centre')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1009, N'century', N'century')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1010, N'ceremony', N'ceremony')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1011, N'certain', N'certain')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1014, N'chain', N'chain')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1015, N'chair', N'chair')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1016, N'chairman', N'chairman')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1019, N'chamber', N'chamber')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1020, N'chance', N'chance')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1021, N'change', N'change')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1022, N'channel', N'channel')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1023, N'chapter', N'chapter')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1026, N'charge', N'charge')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1027, N'charity', N'charity')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1028, N'chart', N'chart')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1029, N'chase', N'chase')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1031, N'cheap', N'cheap')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1032, N'cheaply', N'cheaply')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1033, N'cheat', N'cheat')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1034, N'check', N'check')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1036, N'early', N'early')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1038, N'earth', N'earth')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1040, N'easily', N'easily')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1042, N'eastern', N'eastern')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1044, N'economic', N'economic')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1045, N'economy', N'economy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1047, N'edition', N'edition')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1048, N'editor', N'editor')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1049, N'educate', N'educate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1050, N'educated', N'educated')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1052, N'effect', N'effect')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1057, N'effort', N'effort')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1058, NULL, NULL)
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1059, N'eight', N'eight')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1060, N'eighteen', N'eighteen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1062, N'eighth', N'eighth')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1064, N'eighty', N'eighty')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1065, N'either', N'either')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1066, N'elbow', N'elbow')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1067, N'elderly', N'elderly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1068, N'elect', N'elect')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1069, N'election', N'election')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1070, N'electric', N'electric')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1074, N'elegant', N'elegant')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1075, N'element', N'element')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1076, N'elevator', N'elevator')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1077, N'eleven', N'eleven')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1078, N'eleventh', N'eleventh')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1081, N'email', N'email')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1086, N'emerge', N'emerge')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1088, N'emotion', N'emotion')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1091, N'emphasis', N'emphasis')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1093, N'empire', N'empire')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1094, N'employ', N'employ')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1095, N'employee', N'employee')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1096, N'employer', N'employer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1098, N'empty', N'empty')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1099, N'enable', N'enable')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1103, N'ending', N'ending')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1104, N'enemy', N'enemy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1105, N'energy', N'energy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1106, N'engage', N'engage')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1107, N'engaged', N'engaged')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1108, N'engine', N'engine')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1109, N'engineer', N'engineer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1111, N'enjoy', N'enjoy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1114, N'enormous', N'enormous')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1115, N'enough', N'enough')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1116, N'enquiry', N'enquiry')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1117, N'ensure', N'ensure')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1118, N'enter', N'enter')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1126, N'habit', N'habit')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1131, N'hammer', N'hammer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1133, N'handle', N'handle')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1135, N'happen', N'happen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1136, N'happily', N'happily')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1138, N'happy', N'happy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1140, N'hardly', N'hardly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1142, N'harmful', N'harmful')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1143, N'harmless', N'harmless')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1145, N'hatred', N'hatred')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1148, N'headache', N'headache')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1150, N'health', N'health')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1151, N'healthy', N'healthy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1153, N'hearing', N'hearing')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1154, N'heart', N'heart')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1156, N'heating', N'heating')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1157, N'heaven', N'heaven')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1158, N'heavily', N'heavily')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1159, N'heavy', N'heavy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1161, N'height', N'height')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1163, N'hello', N'hello')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1165, N'helpful', N'helpful')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1166, N'hence', N'hence')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1170, N'herself', N'herself')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1171, N'hesitate', N'hesitate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1175, N'highly', N'highly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1176, N'highway', N'highway')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1178, N'himself', N'himself')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1181, N'history', N'history')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1182, N'hobby', N'hobby')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1185, N'holiday', N'holiday')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1186, N'hollow', N'hollow')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1189, N'homework', N'homework')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1190, N'honest', N'honest')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1191, N'label', N'label')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1193, N'labour', N'labour')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1195, N'lacking', N'lacking')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1202, N'language', N'language')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1203, N'large', N'large')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1204, N'largely', N'largely')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1206, N'later', N'later')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1207, N'latest', N'latest')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1208, N'latter', N'latter')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1209, N'laugh', N'laugh')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1210, N'launch', N'launch')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1211, N'lawyer', N'lawyer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1212, N'layer', N'layer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1214, N'leader', N'leader')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1216, N'league', N'league')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1218, N'learn', N'learn')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1219, N'least', N'least')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1220, N'leather', N'leather')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1221, N'leave', N'leave')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1222, N'lecture', N'lecture')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1224, N'legal', N'legal')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1225, N'legally', N'legally')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1226, N'lemon', N'lemon')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1228, N'length', N'length')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1230, N'lesson', N'lesson')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1231, N'letter', N'letter')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1232, N'level', N'level')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1233, N'library', N'library')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1234, N'licence', N'licence')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1235, N'license', N'license')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1238, N'light', N'light')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1239, N'lightly', N'lightly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1241, N'likely', N'likely')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1242, N'limit', N'limit')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1243, N'limited', N'limited')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1246, N'liquid', N'liquid')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1248, N'listen', N'listen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1250, N'litre', N'litre')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1251, N'little', N'little')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1252, N'lively', N'lively')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1253, N'living', N'living')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1256, N'local', N'local')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1257, N'locally', N'locally')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1258, N'locate', N'locate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1259, N'located', N'located')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1260, N'location', N'location')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1262, N'logic', N'logic')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1263, N'logical', N'logical')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1264, N'lonely', N'lonely')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1267, N'object', N'object')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1268, N'object', N'object')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1271, N'observe', N'observe')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1272, N'obtain', N'obtain')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1273, N'obvious', N'obvious')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1275, N'occasion', N'occasion')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1277, N'occupied', N'occupied')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1278, N'occupy', N'occupy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1279, N'occur', N'occur')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1280, N'ocean', N'ocean')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1281, N'o’clock', N'o’clock')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1282, N'October', N'October')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1283, N'oddly', N'oddly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1284, N'offence', N'offence')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1285, N'offend', N'offend')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1286, N'offense', N'offense')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1288, N'offer', N'offer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1289, N'office', N'office')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1290, N'officer', N'officer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1291, N'official', N'official')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1293, N'often', N'often')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1296, N'onion', N'onion')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1297, N'online', N'online')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1301, N'opening', N'opening')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1302, N'openly', N'openly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1303, N'operate', N'operate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1305, N'opinion', N'opinion')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1306, N'opponent', N'opponent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1308, N'oppose', N'oppose')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1309, N'opposed', N'opposed')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1310, N'opposing', N'opposing')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1311, N'opposite', N'opposite')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1313, N'option', N'option')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1314, N'orange', N'orange')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1315, N'order', N'order')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1316, N'ordinary', N'ordinary')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1317, N'organ', N'organ')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1319, N'organize', N'organize')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1321, N'origin', N'origin')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1322, N'original', N'original')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1324, N'other', N'other')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1328, N'outdoor', N'outdoor')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1329, N'outdoors', N'outdoors')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1330, N'outer', N'outer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1331, N'outline', N'outline')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1332, N'output', N'output')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1333, N'outside', N'outside')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1334, N'outside', N'outside')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1338, N'overall', N'overall')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1339, N'overall', N'overall')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1340, N'overcome', N'overcome')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1341, N'owner', N'owner')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1343, N'package', N'package')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1345, N'packet', N'packet')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1348, N'qualify', N'qualify')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1349, N'quality', N'quality')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1350, N'quantity', N'quantity')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1351, N'quarter', N'quarter')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1352, N'queen', N'queen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1353, N'question', N'question')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1354, N'quick', N'quick')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1355, N'quickly', N'quickly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1356, N'quiet', N'quiet')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1357, N'quietly', N'quietly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1359, N'quite', N'quite')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1360, N'quote', N'quote')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1362, N'racing', N'racing')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1363, N'radio', N'radio')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1365, N'railroad', N'railroad')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1366, N'railway', N'railway')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1368, N'raise', N'raise')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1369, N'range', N'range')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1371, N'rapid', N'rapid')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1372, N'rapidly', N'rapidly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1374, N'rarely', N'rarely')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1376, N'rather', N'rather')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1377, N'reach', N'reach')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1378, N'react', N'react')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1379, N'reaction', N'reaction')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1381, N'reader', N'reader')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1382, N'reading', N'reading')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1383, N'ready', N'ready')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1386, N'reality', N'reality')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1387, N'realize', N'realize')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1388, N'really', N'really')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1390, N'reason', N'reason')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1393, N'recall', N'recall')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1394, N'receipt', N'receipt')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1395, N'receive', N'receive')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1396, N'recent', N'recent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1397, N'recently', N'recently')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1399, N'reckon', N'reckon')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1403, N'record', N'record')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1404, N'record', N'record')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1406, N'recover', N'recover')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1407, N'reduce', N'reduce')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1409, N'refer', N'refer')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1411, N'reflect', N'reflect')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1412, N'reform', N'reform')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1414, N'refusal', N'refusal')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1415, N'regard', N'regard')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1417, N'region', N'region')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1418, N'regional', N'regional')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1419, N'register', N'register')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1420, N'regret', N'regret')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1421, N'regular', N'regular')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1424, N'reject', N'reject')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1425, N'relate', N'relate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1426, N'related', N'related')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1427, N'relation', N'relation')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1429, N'relative', N'relative')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1431, N'relax', N'relax')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1432, N'relaxed', N'relaxed')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1433, N'relaxing', N'relaxing')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1434, N'release', N'release')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1435, N'relevant', N'relevant')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1436, N'relief', N'relief')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1438, N'sadly', N'sadly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1439, N'sadness', N'sadness')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1441, N'safely', N'safely')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1442, N'safety', N'safety')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1444, N'sailing', N'sailing')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1445, N'sailor', N'sailor')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1446, N'salad', N'salad')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1447, N'salary', N'salary')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1450, N'salty', N'salty')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1452, N'sample', N'sample')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1456, N'satisfy', N'satisfy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1458, N'Saturday', N'Saturday')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1459, N'sauce', N'sauce')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1461, N'saving', N'saving')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1462, N'scale', N'scale')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1463, N'scare', N'scare')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1464, N'scared', N'scared')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1465, N'scene', N'scene')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1466, N'schedule', N'schedule')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1467, N'scheme', N'scheme')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1468, N'school', N'school')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1469, N'science', N'science')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1472, N'scissors', N'scissors')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1473, N'score', N'score')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1474, N'scratch', N'scratch')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1475, N'scream', N'scream')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1476, N'screen', N'screen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1477, N'screw', N'screw')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1479, N'search', N'search')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1480, N'season', N'season')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1482, N'second', N'second')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1484, N'secret', N'secret')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1486, N'secretly', N'secretly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1487, N'section', N'section')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1488, N'sector', N'sector')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1489, N'secure', N'secure')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1490, N'security', N'security')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1494, N'select', N'select')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1497, N'self-', N'self-')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1499, N'senate', N'senate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1500, N'senator', N'senator')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1502, N'senior', N'senior')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1503, N'sense', N'sense')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1504, N'sensible', N'sensible')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1506, N'sentence', N'sentence')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1507, N'separate', N'separate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1508, N'separate', N'separate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1513, N'series', N'series')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1514, N'serious', N'serious')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1516, N'servant', N'servant')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1517, N'serve', N'serve')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1518, N'service', N'service')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1519, N'session', N'session')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1520, N'settle', N'settle')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1521, N'table', N'table')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1522, N'tablet', N'tablet')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1523, N'tackle', N'tackle')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1530, N'target', N'target')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1532, N'taste', N'taste')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1534, N'teach', N'teach')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1535, N'teacher', N'teacher')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1536, N'teaching', N'teaching')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1548, N'tendency', N'tendency')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1549, N'tension', N'tension')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1551, N'tenth', N'tenth')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1553, N'terrible', N'terrible')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1554, N'terribly', N'terribly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1558, N'thank', N'thank')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1559, N'thanks', N'thanks')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1562, N'theatre', N'theatre')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1563, N'their', N'their')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1564, N'theirs', N'theirs')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1566, N'theme', N'theme')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1569, N'theory', N'theory')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1570, N'there', N'there')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1573, N'thick', N'thick')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1574, N'thickly', N'thickly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1576, N'thief', N'thief')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1578, N'thing', N'thing')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1579, N'think', N'think')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1580, N'thinking', N'thinking')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1581, N'third', N'third')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1582, N'thirsty', N'thirsty')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1583, N'thirteen', N'thirteen')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1586, N'thirty', N'thirty')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1588, N'thorough', N'thorough')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1590, N'though', N'though')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1591, N'thought', N'thought')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1592, N'thousand', N'thousand')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1594, N'thread', N'thread')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1595, N'threat', N'threat')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1596, N'threaten', N'threaten')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1598, N'ultimate', N'ultimate')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1600, N'umbrella', N'umbrella')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1601, N'unable', N'unable')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1604, N'uncle', N'uncle')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1608, N'under', N'under')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1620, N'unfair', N'unfair')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1621, N'unfairly', N'unfairly')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1625, N'unhappy', N'unhappy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1626, N'uniform', N'uniform')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1628, N'union', N'union')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1629, N'unique', N'unique')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1631, N'unite', N'unite')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1632, N'united', N'united')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1633, N'universe', N'universe')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1635, N'unkind', N'unkind')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1636, N'unknown', N'unknown')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1637, N'unless', N'unless')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1638, N'unlike', N'unlike')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1639, N'unlikely', N'unlikely')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1640, N'unload', N'unload')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1641, N'unlucky', N'unlucky')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1645, N'unsteady', N'unsteady')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1647, N'untidy', N'untidy')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1648, N'until', N'until')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1649, N'unusual', N'unusual')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1654, N'upper', N'upper')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1655, N'upset', N'upset')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1656, N'upset', N'upset')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1658, N'upstairs', N'upstairs')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1659, N'upward', N'upward')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1660, N'upwards', N'upwards')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1661, N'urban', N'urban')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1663, N'urgent', N'urgent')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1664, N'useful', N'useful')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1665, N'useless', N'useless')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1667, N'usual', N'usual')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1668, N'usually', N'usually')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1669, N'vacation', N'vacation')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1670, N'valid', N'valid')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1671, N'valley', N'valley')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1672, N'valuable', N'valuable')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1673, N'value', N'value')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1675, N'varied', N'varied')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1676, N'variety', N'variety')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1677, N'various', N'various')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1681, N'vehicle', N'vehicle')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1682, N'venture', N'venture')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1683, N'version', N'version')
GO
INSERT [dbo].[WordsList] ([WordId], [WordString], [WordStringChar]) VALUES (1684, N'vertical', N'vertical')
GO
SET IDENTITY_INSERT [dbo].[WordsList] OFF
GO
ALTER TABLE [dbo].[PastHistory]  WITH CHECK ADD  CONSTRAINT [FK_PastHistory_UserRegistration] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserRegistration] ([UserId])
GO
ALTER TABLE [dbo].[PastHistory] CHECK CONSTRAINT [FK_PastHistory_UserRegistration]
GO
