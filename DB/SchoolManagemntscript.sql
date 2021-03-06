USE [master]
GO
/****** Object:  Database [studentinfo]    Script Date: 02/10/2020 7:56:13 PM ******/
CREATE DATABASE [studentinfo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'studentinfo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\studentinfo.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'studentinfo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\studentinfo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [studentinfo] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [studentinfo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [studentinfo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [studentinfo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [studentinfo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [studentinfo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [studentinfo] SET ARITHABORT OFF 
GO
ALTER DATABASE [studentinfo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [studentinfo] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [studentinfo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [studentinfo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [studentinfo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [studentinfo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [studentinfo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [studentinfo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [studentinfo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [studentinfo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [studentinfo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [studentinfo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [studentinfo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [studentinfo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [studentinfo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [studentinfo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [studentinfo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [studentinfo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [studentinfo] SET RECOVERY FULL 
GO
ALTER DATABASE [studentinfo] SET  MULTI_USER 
GO
ALTER DATABASE [studentinfo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [studentinfo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [studentinfo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [studentinfo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'studentinfo', N'ON'
GO
USE [studentinfo]
GO
/****** Object:  Table [dbo].[add_std_info]    Script Date: 02/10/2020 7:56:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_std_info](
	[std_id] [int] IDENTITY(1,1) NOT NULL,
	[std_name] [varchar](max) NULL,
	[std_lastname] [varchar](max) NULL,
	[std_father] [varchar](max) NULL,
	[std_gender] [varchar](max) NULL,
	[classes_id] [int] NOT NULL,
	[std_phone_no] [varchar](max) NULL,
	[autotime] [datetime] NULL,
 CONSTRAINT [PK_add_std_info] PRIMARY KEY CLUSTERED 
(
	[std_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[addteacher]    Script Date: 02/10/2020 7:56:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addteacher](
	[t_id] [int] IDENTITY(1,1) NOT NULL,
	[t_name] [varchar](max) NULL,
	[t_lastname] [varchar](max) NULL,
	[t_father] [varchar](max) NULL,
	[t_gender] [varchar](max) NULL,
	[t_phone_no] [varchar](max) NULL,
	[autotime] [datetime] NULL,
 CONSTRAINT [PK_addteacher] PRIMARY KEY CLUSTERED 
(
	[t_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[classes]    Script Date: 02/10/2020 7:56:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[classes](
	[classes_id] [int] IDENTITY(1,1) NOT NULL,
	[classes_name] [varchar](max) NULL,
 CONSTRAINT [PK_classes] PRIMARY KEY CLUSTERED 
(
	[classes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 02/10/2020 7:56:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[login_id] [int] IDENTITY(1,1) NOT NULL,
	[login_name] [varchar](max) NULL,
	[login_email] [varchar](max) NULL,
	[login_password] [varchar](max) NULL,
	[login_type] [varchar](max) NULL,
	[member_id] [int] NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[login_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[marks]    Script Date: 02/10/2020 7:56:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[marks](
	[marks_id] [int] IDENTITY(1,1) NOT NULL,
	[std_id] [int] NULL,
	[subjects_id] [int] NULL,
	[std_marks] [varchar](max) NULL,
 CONSTRAINT [PK_marks] PRIMARY KEY CLUSTERED 
(
	[marks_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 02/10/2020 7:56:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subjects](
	[subjects_id] [int] IDENTITY(1,1) NOT NULL,
	[total_marks] [varchar](max) NULL,
	[subjects_name] [varchar](max) NULL,
 CONSTRAINT [PK_subjects] PRIMARY KEY CLUSTERED 
(
	[subjects_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_std_info] ON 

INSERT [dbo].[add_std_info] ([std_id], [std_name], [std_lastname], [std_father], [std_gender], [classes_id], [std_phone_no], [autotime]) VALUES (3, N'Razaa', N'ali', N'ali', N'male', 3, N'123123', CAST(0x0000AC48002D58D7 AS DateTime))
INSERT [dbo].[add_std_info] ([std_id], [std_name], [std_lastname], [std_father], [std_gender], [classes_id], [std_phone_no], [autotime]) VALUES (6, N'Usman', N'Aziz', N'Abdul Aziz', N'male', 3, N'0333333333333', CAST(0x0000AB36013D99CC AS DateTime))
INSERT [dbo].[add_std_info] ([std_id], [std_name], [std_lastname], [std_father], [std_gender], [classes_id], [std_phone_no], [autotime]) VALUES (7, N'Umer', N'Aziz', N'Abdul Aziz', N'male', 3, N'033444444444', CAST(0x0000AB36013ED8C6 AS DateTime))
SET IDENTITY_INSERT [dbo].[add_std_info] OFF
SET IDENTITY_INSERT [dbo].[addteacher] ON 

INSERT [dbo].[addteacher] ([t_id], [t_name], [t_lastname], [t_father], [t_gender], [t_phone_no], [autotime]) VALUES (1, N'Teacher1', N'Teacher', N'teacher', N'male', N'123123', CAST(0x0000AC480051CE08 AS DateTime))
SET IDENTITY_INSERT [dbo].[addteacher] OFF
SET IDENTITY_INSERT [dbo].[classes] ON 

INSERT [dbo].[classes] ([classes_id], [classes_name]) VALUES (3, N'class 2')
INSERT [dbo].[classes] ([classes_id], [classes_name]) VALUES (4, N'class 3')
INSERT [dbo].[classes] ([classes_id], [classes_name]) VALUES (5, N'class 4')
SET IDENTITY_INSERT [dbo].[classes] OFF
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([login_id], [login_name], [login_email], [login_password], [login_type], [member_id]) VALUES (1, N'Farooq', N'farooq@gmail.com', N'3244185981728979115075721453575112', N'admin', 1)
INSERT [dbo].[login] ([login_id], [login_name], [login_email], [login_password], [login_type], [member_id]) VALUES (2, N'Razaa', N'ali@gmail.com', N'3244185981728979115075721453575112', N'student', 3)
INSERT [dbo].[login] ([login_id], [login_name], [login_email], [login_password], [login_type], [member_id]) VALUES (5, N'Usman', N'farooqaziz@gmail.com', N'3244185981728979115075721453575112', N'student', 6)
INSERT [dbo].[login] ([login_id], [login_name], [login_email], [login_password], [login_type], [member_id]) VALUES (6, N'Umer', N'umer@gmail.com', N'3244185981728979115075721453575112', N'student', 7)
SET IDENTITY_INSERT [dbo].[login] OFF
SET IDENTITY_INSERT [dbo].[marks] ON 

INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (1, 1, 1, N'7')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (2, 1, 2, N'20')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (3, 1, 3, N'15')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (4, 2, 1, N'4')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (5, 2, 6, N'4')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (6, 1, 6, N'5')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (7, 3, 6, N'2')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (8, 3, 1, N'8')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (9, 4, 1, N'6')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (10, 3, 5, N'10')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (11, 7, 5, N'18')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (12, 6, 5, N'17')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (13, 3, 4, N'2')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (14, 7, 4, N'4')
INSERT [dbo].[marks] ([marks_id], [std_id], [subjects_id], [std_marks]) VALUES (15, 6, 4, N'3')
SET IDENTITY_INSERT [dbo].[marks] OFF
SET IDENTITY_INSERT [dbo].[subjects] ON 

INSERT [dbo].[subjects] ([subjects_id], [total_marks], [subjects_name]) VALUES (1, N'10', N'Subject1')
INSERT [dbo].[subjects] ([subjects_id], [total_marks], [subjects_name]) VALUES (2, N'20', N'Subject2')
INSERT [dbo].[subjects] ([subjects_id], [total_marks], [subjects_name]) VALUES (3, N'20', N'Subject3')
INSERT [dbo].[subjects] ([subjects_id], [total_marks], [subjects_name]) VALUES (4, N'20', N'Eng')
INSERT [dbo].[subjects] ([subjects_id], [total_marks], [subjects_name]) VALUES (5, N'20', N'Urdu')
INSERT [dbo].[subjects] ([subjects_id], [total_marks], [subjects_name]) VALUES (6, N'40', N'English B')
SET IDENTITY_INSERT [dbo].[subjects] OFF
ALTER TABLE [dbo].[add_std_info] ADD  CONSTRAINT [DF_add_std_info_autotime]  DEFAULT (getdate()) FOR [autotime]
GO
ALTER TABLE [dbo].[addteacher] ADD  CONSTRAINT [DF_addteacher_autotime]  DEFAULT (getdate()) FOR [autotime]
GO
USE [master]
GO
ALTER DATABASE [studentinfo] SET  READ_WRITE 
GO
