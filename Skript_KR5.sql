USE [master]
GO
/****** Object:  Database [KR_5_XRAM]    Script Date: 14.01.2025 11:23:21 ******/
CREATE DATABASE [KR_5_XRAM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KR_5_XRAM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KR_5_XRAM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KR_5_XRAM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KR_5_XRAM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KR_5_XRAM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KR_5_XRAM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KR_5_XRAM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET ARITHABORT OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KR_5_XRAM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KR_5_XRAM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KR_5_XRAM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KR_5_XRAM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KR_5_XRAM] SET  MULTI_USER 
GO
ALTER DATABASE [KR_5_XRAM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KR_5_XRAM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KR_5_XRAM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KR_5_XRAM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KR_5_XRAM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KR_5_XRAM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KR_5_XRAM] SET QUERY_STORE = OFF
GO
USE [KR_5_XRAM]
GO
/****** Object:  Table [dbo].[id_doljnost]    Script Date: 14.01.2025 11:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[id_doljnost](
	[id] [int] NOT NULL,
	[doljnost] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_id_doljnost] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[id_Pol]    Script Date: 14.01.2025 11:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[id_Pol](
	[id] [int] NOT NULL,
	[pol] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_id_Pol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 14.01.2025 11:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] NOT NULL,
	[id_doljnost] [int] NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[otchestvo] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[number_phone] [nvarchar](50) NOT NULL,
	[passport] [nvarchar](50) NOT NULL,
	[data] [nvarchar](50) NOT NULL,
	[vxod] [nvarchar](500) NULL,
	[type_vxod] [nvarchar](50) NOT NULL,
	[id_pol] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[id_doljnost] ([id], [doljnost]) VALUES (1, N'Администратор')
INSERT [dbo].[id_doljnost] ([id], [doljnost]) VALUES (2, N'Исполнитель')
INSERT [dbo].[id_doljnost] ([id], [doljnost]) VALUES (3, N'Менеджер')
GO
INSERT [dbo].[id_Pol] ([id], [pol]) VALUES (1, N'жен')
INSERT [dbo].[id_Pol] ([id], [pol]) VALUES (2, N'муж')
GO
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (1, 3, N'Акимов', N'Ян', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'', N'Серия 2367 Номер 558134', N'03-07-1993', N'1,67523E+12', N'Успешно', 2)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (2, 2, N'Гончарова', N'Ульяна', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'(230) 906-8815', N'Серия 7101 Номер 669343', N'22-06-1975', N'1,6763E+12', N'Успешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (3, 1, N'Анохина', N'Елизавета', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'(555 444/8316', N'Серия 3455 Номер 719630', N'16-08-1991', N'1,67605E+12', N'Успешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (4, 3, N'Николаев', N'Илья', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'(392 682/4442', N'Серия 2377 Номер 871623', N'22-12-1970', N'1,6754E+12', N'Успешно', 2)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (5, 2, N'Уткин', N'Дмитрий', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'(836 429/0386', N'Серия 8755 Номер 921148', N'04-05-1999', N'1,6765E+12', N'Неуспешно', 2)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (6, 2, N'Куликова', N'Стефания', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'(283 945/3092', N'Серия 4355 Номер 104594', N'06-12-1994', N'1,67615E+12', N'Успешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (7, 2, N'Волков', N'Егор', N'Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'(621 359/3669', N'Серия 2791 Номер 114390', N'28-03-1995', N'1,67649E+12', N'Успешно', 2)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (8, 1, N'Соколова', N'Софья', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'(440 561/0314', N'Серия 5582 Номер 126286', N'27-03-1977', N'1,6765E+12', N'Неуспешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (9, 3, N'Голубева', N'Полина', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'(331 918/2434', N'Серия 2978 Номер 133653', N'12-04-1975', N'1,67558E+12', N'Успешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (10, 3, N'Вишневская', N'Мария', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'+7.493) 219@3942', N'Серия 7512 Номер 141956', N'23-12-1975', NULL, N'Успешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (11, 3, N'Васильева', N'Арина', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'+7.407) 485@5030', N'Серия 5046 Номер 158433', N'22-01-2000', NULL, N'Неуспешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (12, 3, N'Павлов', N'Дмитрий', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'+7.919) 478@2497', N'Серия 2460 Номер 169505', N'03-10-1983', N'1,67554E+12', N'Неуспешно', 2)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (13, 2, N'Горбунова', N'Мирослава', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'+7.482) 802@9580', N'Серия 3412 Номер 174593', N'03-03-1998', N'1,67653E+12', N'Успешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (15, 2, N'Петрова', N'Алина', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'+7.710) 388@2563', N'Серия 5829 Номер 219464', N'23-09-1980', N'1,67527E+12', N'Успешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (16, 2, N'Плотников', N'Григорий', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'+7.759) 452@3846', N'Серия 6443 Номер 208059', N'13-03-1991', N'1,67588E+12', N'Успешно', 2)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (17, 2, N'Чернов', N'Алексей', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'(425) 783-2253', N'Серия 8207 Номер 522702', N'16-04-1980', N'1,67561E+12', N'Успешно', 2)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (18, 3, N'Горбунов', N'Степан', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'(889) 449-4391', N'Серия 9307 Номер 232158', N'23-07-1993', N'1,67632E+12', N'Успешно', 2)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (19, 2, N'Кондрашова', N'Арина', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'(713) 462-8265', N'Серия 1710 Номер 427875', N'22-12-1976', N'1,6758E+12', N'Неуспешно', 1)
INSERT [dbo].[User] ([id], [id_doljnost], [surname], [name], [otchestvo], [email], [login], [password], [number_phone], [passport], [data], [vxod], [type_vxod], [id_pol]) VALUES (20, 2, N'Гуляев', N'Тимофей', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'(439) 713-6117', N'Серия 1587 Номер 291249', N'05-02-1987', N'2023-02-01 13:07:20', N'Неуспешно', 2)
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_id_doljnost] FOREIGN KEY([id_doljnost])
REFERENCES [dbo].[id_doljnost] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_id_doljnost]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_id_Pol] FOREIGN KEY([id_pol])
REFERENCES [dbo].[id_Pol] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_id_Pol]
GO
USE [master]
GO
ALTER DATABASE [KR_5_XRAM] SET  READ_WRITE 
GO
