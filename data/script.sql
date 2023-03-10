USE [master]
GO
/****** Object:  Database [MvcCore_ProKamp150]    Script Date: 1.02.2023 20:15:37 ******/
CREATE DATABASE [MvcCore_ProKamp150]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MvcCore_ProKamp150', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MvcCore_ProKamp150.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MvcCore_ProKamp150_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MvcCore_ProKamp150_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MvcCore_ProKamp150] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MvcCore_ProKamp150].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MvcCore_ProKamp150] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET ARITHABORT OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET  MULTI_USER 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MvcCore_ProKamp150] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MvcCore_ProKamp150] SET QUERY_STORE = OFF
GO
USE [MvcCore_ProKamp150]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [MvcCore_ProKamp150]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[AboutDetails1] [nvarchar](max) NULL,
	[AboutDetails2] [nvarchar](max) NULL,
	[AboutImage1] [nvarchar](max) NULL,
	[AboutImage2] [nvarchar](max) NULL,
	[AboutMapLocation] [nvarchar](max) NULL,
	[AboutStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](max) NOT NULL,
	[ImageURL] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogRaytings]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogRaytings](
	[BlogRaytingID] [int] IDENTITY(1,1) NOT NULL,
	[BlogID] [int] NOT NULL,
	[BlogTotalScore] [int] NOT NULL,
	[BlogRaytingCount] [int] NOT NULL,
 CONSTRAINT [PK_BlogRaytings] PRIMARY KEY CLUSTERED 
(
	[BlogRaytingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[BlogTitle] [nvarchar](max) NOT NULL,
	[BlogContent] [nvarchar](max) NOT NULL,
	[BlogThumbnailImage] [nvarchar](max) NOT NULL,
	[BlogImage] [nvarchar](max) NOT NULL,
	[BlogCreateDate] [datetime2](7) NOT NULL,
	[BlogStatus] [bit] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[WriterID] [int] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[CategoryDescription] [nvarchar](max) NOT NULL,
	[CategoryStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[CommentUserName] [nvarchar](max) NOT NULL,
	[CommentTitle] [nvarchar](max) NOT NULL,
	[CommentContent] [nvarchar](max) NOT NULL,
	[CommentDate] [datetime2](7) NOT NULL,
	[BlogScore] [int] NOT NULL,
	[CommentStatus] [bit] NOT NULL,
	[BlogID] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[ContactUserName] [nvarchar](max) NOT NULL,
	[ContactMail] [nvarchar](max) NOT NULL,
	[ContactSubject] [nvarchar](max) NOT NULL,
	[ContactMessage] [nvarchar](max) NOT NULL,
	[ContactDate] [datetime2](7) NOT NULL,
	[ContactStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matches]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[MatchID] [int] IDENTITY(1,1) NOT NULL,
	[HomeTeamID] [int] NOT NULL,
	[GuestTeamID] [int] NOT NULL,
	[MatchDate] [nvarchar](max) NOT NULL,
	[Stadium] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Matches] PRIMARY KEY CLUSTERED 
(
	[MatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message2s]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message2s](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[SenderID] [int] NULL,
	[ReceiverID] [int] NULL,
	[Subject] [nvarchar](max) NULL,
	[MessageDetails] [nvarchar](max) NULL,
	[MessageDate] [datetime2](7) NULL,
	[MessageStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Message2s] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[Sender] [nvarchar](max) NULL,
	[Receiver] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[MessageDetails] [nvarchar](max) NULL,
	[MessageDate] [datetime2](7) NULL,
	[MessageStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLetters]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLetters](
	[MailID] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[MailStatus] [bit] NOT NULL,
 CONSTRAINT [PK_NewsLetters] PRIMARY KEY CLUSTERED 
(
	[MailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationType] [nvarchar](max) NULL,
	[NotificationTypeSymbol] [nvarchar](max) NULL,
	[NotificationDetails] [nvarchar](max) NULL,
	[NotificationDate] [datetime2](7) NULL,
	[NotificationStatus] [bit] NOT NULL,
	[NotificationColor] [nvarchar](max) NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Writers]    Script Date: 1.02.2023 20:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Writers](
	[WriterID] [int] IDENTITY(1,1) NOT NULL,
	[WriterName] [nvarchar](max) NOT NULL,
	[WriterAbout] [nvarchar](max) NOT NULL,
	[WriterImage] [nvarchar](max) NOT NULL,
	[WriterMail] [nvarchar](max) NOT NULL,
	[WriterPassword] [nvarchar](max) NOT NULL,
	[WriterPassword2] [nvarchar](max) NOT NULL,
	[WriterStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Writers] PRIMARY KEY CLUSTERED 
(
	[WriterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230121124641_createAgain', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230121131120_mig_add_BlogRaytings_Table', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230124103033_mig_Notification_add_table', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230125081253_mig_noti_color_add', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230125084458_mig_add-message_table', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230125131316_mig_team_table', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230125133351_mig_add_message_table_relation', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230125133452_mig_add_message_table_relation_delete', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230125135234_message_team_match', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230201124614_mig_add_admin_table', N'6.0.12')
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutID], [AboutDetails1], [AboutDetails2], [AboutImage1], [AboutImage2], [AboutMapLocation], [AboutStatus]) VALUES (1, N'Blogların içeriği geleneksel internet içeriğinden farklılık gösterdiği için sadece bloglar için kurulmuş özel indeksleme mekanizmaları ve arama motorları bulunmaktadır. Technorati en başarılı blog teknolojilerinden biridir. Ayrıca Google Blog Search adında bir blog arama motoru işletmektedir. 2005 yılında Verisign tarafından satın alınan Weblogs.com, dünyanın en büyük blog ping servisi olarak tüm internet indeksleme mekanizmalarına veri sağlamaktadır.

İnternet ile ilgili ciddi bir araştırma kurumu olan Jupiter Research''ün 2005 yılında yaptığı bir araştırmasına göre, blog sitesi sahiplerinin yarısının yıllık geliri 60.000 doların üstünde; blog okuyanların %60''ı erkek ve blog okuma alışkanlığı olanların %73''ü 5 yıldan uzun süredir internet bağlantısına sahip. Blog okuyanların %28''i blog okumak için RSS kullanıyor. 2005 sonunda yapılan başka bir araştırmaya göre de internet kullanıcılarının %38''i blog kelimesinin anlamını bildiklerini, %27''si ise blog okuduklarını belirtmiştir. Blogosferin nabzını tutma misyonundaki Technorati''nin istatistiklerine göre, günde 50.000''den fazla yeni blog sitesi yaratılıyor.

Blogların kullanımı 1999 yılında Blogger''ın bu hizmeti vermeye başlaması ve kısa süre sonra bunu ücretsiz hale getirmesi ile yaygınlaşmıştır. 2003 yılı Şubat ayında Google, Blogger''ı satın aldı ve Google araç çubuğuna, ziyaret edilen sayfanın adresini doğrudan bloğa girmeyi sağlayan ''Blog This!'' tuşu yerleştirdi. İngilizce bilen çoğu kişi ilk defa bu düğme sayesinde bloglar ile tanışmıştır.

Blogger ile aynı zamanlarda kurulan LiveJournal, sadece belirli kişilerin okumasına izin verilebilen blog sayfaları sağlayarak popüler olmuş bir blog sitesidir. Hâlen en çok blog yaratılan sistemlerden biri olan LiveJournal, yazdıklarını herkesle paylaşmak istemeyen ve grup bağlarına önem veren kişiler tarafından tercih ediliyor.

Microsoft''un Windows Live Spaces adlı blog sistemi de, MSN üyelerine sunulan Windows Live Messenger hizmetine ilişkilendirilince ciddi bir yayılma göstermiştir. Üyelerin fotoğraf albümü oluşturmasına izin veren sistem, blogların güncellendiği anda paylaşılmasını sağlayan dahili bir yapıya da sahiptir. Daha çok amatör kullanıcılar yönelik bir hizmet olan Windows Live Spaces, görünüş ve yapı olarak değişikliğe pek açık değildir. Ayrıca, Windows Live Messenger daha çok sohbet amacıyla kullanılan bir servis olduğundan, Space''lerde yer alan bloglar da daha çok resim yükleme alanı olarak kullanılmaktadır. Microsoft, 27 Eylül 2010''da, Windows Live Spaces servisini durduracağını açıklamış ve kullanıcılarına blog''larını ücretsiz olarak WordPress.com''a taşıma olanağı sunmuştur.

Hızla büyüyen ve ciddi bir akım haline gelen blog dünyasında, İnternetin devlerinden Yahoo! da 2005 yılının Mart ayında kendi blog sistemi Yahoo! 360''ı açtığını ilan etmiş, ancak 2012 yılında ise Yahoo!''nun verdiği bu hizmet Yahoo! tarafından sonlandırılmıştır.', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Abouts] OFF
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminID], [Username], [Password], [Name], [ShortDescription], [ImageURL], [Role]) VALUES (1, N'AdminCore', N'123', N'Hatice Albayrak', N'A yetkisine sahip bir admindir. Bütün sisteme erişim sağlayabilir.', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCSLausCtC3EVEUCwIqDUOTbeEYILwbGMtQr2K8SbUaw&s', N'A')
SET IDENTITY_INSERT [dbo].[Admins] OFF
SET IDENTITY_INSERT [dbo].[BlogRaytings] ON 

INSERT [dbo].[BlogRaytings] ([BlogRaytingID], [BlogID], [BlogTotalScore], [BlogRaytingCount]) VALUES (1, 10, 0, 0)
INSERT [dbo].[BlogRaytings] ([BlogRaytingID], [BlogID], [BlogTotalScore], [BlogRaytingCount]) VALUES (2, 1, 0, 0)
INSERT [dbo].[BlogRaytings] ([BlogRaytingID], [BlogID], [BlogTotalScore], [BlogRaytingCount]) VALUES (3, 4, 12, 2)
INSERT [dbo].[BlogRaytings] ([BlogRaytingID], [BlogID], [BlogTotalScore], [BlogRaytingCount]) VALUES (4, 5, 0, 0)
INSERT [dbo].[BlogRaytings] ([BlogRaytingID], [BlogID], [BlogTotalScore], [BlogRaytingCount]) VALUES (5, 6, 0, 0)
INSERT [dbo].[BlogRaytings] ([BlogRaytingID], [BlogID], [BlogTotalScore], [BlogRaytingCount]) VALUES (6, 7, 0, 0)
INSERT [dbo].[BlogRaytings] ([BlogRaytingID], [BlogID], [BlogTotalScore], [BlogRaytingCount]) VALUES (7, 8, 10, 1)
SET IDENTITY_INSERT [dbo].[BlogRaytings] OFF
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (1, N'C# ile yazılım geliştirme', N'C#; Microsoft tarafından .NET Teknolojisi için geliştirilen modern bir programlama dilidir. Sözdizimi C-like (C benzeri) bir deneyim sunar.

Microsoft tarafından geliştirilmiş olsa da ECMA ve ISO standartları altına alınmıştır.[5][6]

C programlama dilinde bir tam sayı değişkeni 1 artırmak için değişkenden sonra "++" eki kullanılır. C++ dilinin adı, C diliyle Nesne Yönelimli Programlama yapabilme olanağı (C with Classes) için eklentiler sağladığı için "C++" şeklindedir. Benzer şekilde C++ diline yeni eklentiler yapılarak ((C++)++) bir adım daha da ileriye götürülmüş ve tamamen nesneye yönelik tasarlanmış C# dilinin isimlendirilmesinde, + karakterlerinin birbirlerine yakınlaşmış hali ve bir melodi anahtarı olan C# Major kullanılmıştır.[7]

Bu dilin tasarlanmasına Pascal, Delphi derleyicileri ve J++ programlama dilinin tasarımlarıyla bilinen Anders Hejlsberg liderlik etmiştir.[7]

Birçok alanda Java''yı kendisine örnek alır ve C# da java gibi C ve C++ kod sözdizimine benzer bir kod yapısındadır. .NET kütüphanelerini kullanmak amacıyla yazılan programların çalıştığı bilgisayarlarda uyumlu bir kütüphanenin ve yorumlayıcının bulunması gereklidir. Bu, Microsoft''un .NET Framework''u olabileceği gibi ECMA standartlarına uygun herhangi bir kütüphane ve yorumlayıcı da olabilir. Yaygın diğer kütüphanelere örnek olarak Portable.Net ve Mono verilebilir.[kaynak belirtilmeli]

Nesne yönelimli programlama kavramının gelişmesine katkıda bulunan aktif programlama dillerinden biridir.[8]

C#, .NET orta seviyeli programlama dillerindendir. Yani hem makine diline hem de insan algısına eşit seviyededir. Buradaki orta ifadesi dilin gücünü değil makine dili ile günlük konuşma diline olan mesafesini göstermektedir. Örneğin; Visual Basic .NET (VB.NET) yüksek seviyeli bir dildir dersek bu, dilin insanların günlük yaşantılarında konuşma biçimine yakın şekilde yazıldığını ifade etmektedir. Dolayısıyla VB.NET, C#.NET''ten daha güçlü bir dildir diyemeyiz', N'deneme', N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/C_Sharp_wordmark.svg/150px-C_Sharp_wordmark.svg.png', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, 2, 2)
INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (4, N'React ile mobile geliştirme', N'React, Facebook''ta bir yazılım mühendisi olan Jordan Walke tarafından geliştirildi ve "FaxJS" adlı React''in erken bir prototipini yayınladı. PHP için bir HTML bileşen kütüphanesi olan XHP''den etkilendi. İlk olarak 2011 yılında Facebook''un Haber Kaynağında ve daha sonra 2012 yılında Instagram''da kullanıldı.  Mayıs 2013''te ABD''de düzenlenen JSConf''da açık kaynaklı olarak tanıtıldı.

26 Eylül 2017''de React 16.0 sürümü yayımlandı.[9]

16 Şubat 2019''da React 16.8 yayımlandı.  Bu sürümde, React Hooks tanıtıldı.[10]

10 Ağustos 2020''de React ekibi, React geliştiriciye yönelik API''de büyük değişiklikler yapılmayan ilk büyük sürüm olarak dikkat çeken React v17.0 için ilk sürüm adayını açıkladı.[11]

29 Mart 2022''de, yeni bir eşzamanlı işleyici, otomatik toplu işleme ve Suspense ile sunucu tarafı oluşturma desteği sunan React 18 piyasaya sürüldü.', N'deneme', N'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/React.svg/250px-React.svg.png', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, 2, 1)
INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (5, N'Şehzade Mustafa Kimdir?', N'Şehzade Mustafa (Osmanlıca:شهزاده مصطفى; d. 1515, Manisa - ö. 6 Ekim 1553, Konya), Kanuni Sultan Süleyman ile eşi Mahidevran Sultan''ın oğlu.

Saruhan, Amasya, Konya sancak beyliklerinde bulunmuştur. Babasına karşı isyan etmekten dolayı yargılanmıştır; Nahcıvan Seferi''ne giden Osmanlı ordusunun Konya’da konakladığı sırada, padişahın otağında boğdurulmuştur.[1] Katli, devlete isyan suçundan dolayıdır ancak deliller ve şahitler konusunda tartışma bulunmaktadır.[2] Bazı tarihçiler, Hürrem Sultan''ın tahta kendi oğullarından birini geçirmek için Şehzade Mustafa''ya tuzak kurduğu ve ölümünü hazırladığını iddia etmektedir.[3][4] Ayrıca 2005 yılında Amasya Valiliği minyatürlerden esinlenerek Şehzade Mustafa bal mumu heykel yaptırmıştır. Bu heykelden dünyada sadece Amasya''daki Şehzade Müzesinde bulunmaktadır. Bazı tarihçiler suçsuz olduğunu savunmaktadır.', N'debene', N'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/%C5%9Eehzade_Mustafa.jpg/220px-%C5%9Eehzade_Mustafa.jpg', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, 4, 3)
INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (6, N'Kenevir Bitkisinin Faydaları', N'Kenevir veya kendir[1] (Cannabis), Cannabaceae familyasına ait tek yıllık, çift çenekli ve otsu bir bitki cinsidir. Bitkiler 50 cm''den 3 m''ye kadar büyüyebilmektedir. Cinsin gövde kısmı dik ve içi boş olup üzerleri dikenimsi tüylerden dolayı pürtüklüdür. Bitki cinsi eşeylidir ve bitkiler erkek ve dişi olmak üzere ikiye ayrılır. Erkek bitki polen üretirken dişi bitki çiçeklenir ve bazı türlerde yüksek oranda tetrahidrokannabinol (THC) ihtiva eder.[2] Tozlaşma rüzgâr vasıtasıyla gerçekleşir.[3] Tartışmalı olsa da cins çoğunlukla farklı fiziksel ve kimyasal özelliklere sahip Cannabis indica, Cannabis sativa ve Cannabis ruderalis olmak üzere üç türe ayrılır.

Bitkinin anavatanı Orta Asya ve Hint altkıtası olmasına rağmen günümüzde ılıman ve tropik bölgelerin çoğunda yetişir ve kültürü yapılır.[4] Büyük ihtimalle yetiştirilmeye ve ıslah edilmeye başlanan ilk bitkilerden biri olan kenevir, tarih boyunca bitkisel hammadde kaynağı ve keyif verici madde olarak kullanılmıştır.[5] Bitkinin saplarında bulunan lifler, iplik, dokuma ve kumaş yapımında, hamurlu kısmı ise kâğıt yapımında kullanılmaktadır. Ayrıca kenevir tohumlarından elde edilen kenevir yağı (esrar yağı ile karıştırılmamalıdır) ve kenevir proteini de gıda olarak kullanım alanlarına sahiptir.[6] Dişi bitkilerin doğada Temmuz-Ağustos aylarında açan soluk yeşilimsi renkli çiçekleri ve tohum yataklarından ise esrar elde edilmektedir. Endüstriyel amaçlar için ıslah edilmiş ve düşük oranda THC içeren kültivarlar endüstriyel kenevir olarak isimlendirilmektedir.', N'deneme', N'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Cannabis_sativa_Koehler_drawing.jpg/220px-Cannabis_sativa_Koehler_drawing.jpg', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, 8, 4)
INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (7, N'Game Of Thrones', N'Game of Thrones (Türkçe: Taht Oyunları), David Benioff ve D. B. Weiss tarafından yaratılan ve HBO''da yayımlanan Amerikan fantastik televizyon dizisidir. George R. R. Martin''in epik fantezi serisi Buz ve Ateşin Şarkısı''ndan uyarlanmış olan dizi, adını serinin ilk kitabından almaktadır. İngiltere, Kanada, Hırvatistan, İzlanda, Malta, Fas ve İspanya''da çekilmiştir.[5] İlk bölümü 17 Nisan 2011''de HBO üzerinden yayımlanmış ve sekiz sezon süren yetmiş üç bölümün ardından 19 Mayıs 2019''da sona ermiştir.[6][7]

Kurgusal kıtalar Westeros ve Essos''da geçen Game of Thrones, geniş bir ansambl oyuncu kadrosuna sahiptir ve yayımlandığı süre boyunca birden fazla olay örgüsünü içinde barındırmıştır.[8] Ana örgü, Westeros''un Yedi Krallığı''nın Demir Tahtı için hak iddia eden veya ondan bağımsız olmaya çalışan soylu aileler arasında geçen siyasi çatışmalar üzerinedir.[9] Dizinin odaklandığı ikinci ana örgü, tahttan indirilmiş ailenin son soyundan gelen Daenerys Targaryen''dir. Essos''a sürgüne gönderilmiş ve taht için geri dönüşünü planlamaktadır. Üçüncü ana örgü ise kuzeyden gelen tehditlere karşı diyarı savunan askerî bir düzen olan Gece Nöbetçileri''dir', N'deneme', N'https://upload.wikimedia.org/wikipedia/tr/thumb/d/d8/Game_of_Thrones_title_card.jpg/250px-Game_of_Thrones_title_card.jpg', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, 7, 5)
INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (8, N'Apple', N'Apple Inc. ya da eski adıyla Apple Computer Inc., merkezi Cupertino''da[5] bulunan; tüketici elektroniği, bilgisayar yazılımı ve kişisel bilgisayar tasarlayan, geliştiren ve satan Amerikan çok uluslu şirket. En bilinen donanım ürünleri Mac serisi bilgisayarlar, iPod müzik çalar, iPhone akıllı telefon, iPad tablet bilgisayar ve Apple Watch adlı akıllı saattir. Yazılımları arasında ise macOS ve iOS işletim sistemleri, iTunes medya tarayıcısı, Safari internet tarayıcısı ile iLife ve iWork paketleri yer almaktadır. Şirket 1 Nisan 1976 yılında kurulmuş ve 3 Ocak 1977’de Apple Computer, Inc. adıyla anonim şirket haline gelmiştir.[6] İsminde yer alan "Computer" (Bilgisayar) kelimesi 9 Ocak 2007''de iPhone tanıtımıyla birlikte tüketici elektroniğine yönelimlerini yansıtması amacıyla kaldırılmıştır.[7][8][9]

Apple, Samsung Electronics''den sonra ciro açısından dünyanın en büyük ikinci bilgi teknolojileri şirketi; Samsung ve Nokia''dan sonra da dünyanın en büyük üçüncü cep telefonu üreticisidir.[10] Fortune dergisi Apple''ı, 2008 yılında Amerika Birleşik Devletleri''nde ve 2008 yılından 2012 yılına kadar dünya çapında en çok rağbet gören şirket olarak nitelendirmiştir', N'deneme', N'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/150px-Apple_logo_black.svg.png', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, 5, 1)
INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [BlogCreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (10, N'Deneme Blogu', N'Apple Inc. ya da eski adıyla Apple Computer Inc., merkezi Cupertino''da[5] bulunan; tüketici elektroniği, bilgisayar yazılımı ve kişisel bilgisayar tasarlayan, geliştiren ve satan Amerikan çok uluslu şirket. En bilinen donanım ürünleri Mac serisi bilgisayarlar, iPod müzik çalar, iPhone akıllı telefon, iPad tablet bilgisayar ve Apple Watch adlı akıllı saattir. Yazılımları arasında ise macOS ve iOS işletim sistemleri, iTunes medya tarayıcısı, Safari internet tarayıcısı ile iLife ve iWork paketleri yer almaktadır. Şirket 1 Nisan 1976 yılında kurulmuş ve 3 Ocak 1977’de Apple Computer, Inc. adıyla anonim şirket haline gelmiştir.[6] İsminde yer alan "Computer" (Bilgisayar) kelimesi 9 Ocak 2007''de iPhone tanıtımıyla birlikte tüketici elektroniğine yönelimlerini yansıtması amacıyla kaldırılmıştır.[7][8][9]

Apple, Samsung Electronics''den sonra ciro açısından dünyanın en büyük ikinci bilgi teknolojileri şirketi; Samsung ve Nokia''dan sonra da dünyanın en büyük üçüncü cep telefonu üreticisidir.[10] Fortune dergisi Apple''ı, 2008 yılında Amerika Birleşik Devletleri''nde ve 2008 yılından 2012 yılına kadar dünya çapında en çok rağbet gören şirket olarak nitelendirmiştir', N'deneme', N'/CoreBlogTema/images/7.jpg', CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), 1, 2, 3)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (2, N'Yazılım', N'deneme', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (3, N'Sanat', N'Deneme', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (4, N'Tarih', N'jdf', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (5, N'Teknoloji', N'1', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (6, N'Eğitim', N'fmölefm', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (7, N'Dizi & Film', N'rkgor', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (8, N'Kimya', N'fefk', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (9, N'Soru Cevap', N'açıklama', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (10, N'Seyahat', N'açıklama', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (11, N'Oyun', N'açıklama', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (12, N'Donanım', N'açıklama', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (1, N'ADANA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (3, N'AFYON')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (4, N'AĞRI')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (5, N'AMASYA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (6, N'ANKARA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (7, N'ANTALYA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (8, N'ARTVİN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (9, N'AYDIN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (10, N'BALIKESİR')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (11, N'BİLECİK')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (12, N'BİNGÖL')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (13, N'BİTLİS')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (14, N'BOLU')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (15, N'BURDUR')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (16, N'BURSA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (19, N'ÇORUM')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (20, N'DENİZLİ')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (21, N'DİYARBAKIR')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (22, N'EDİRNE')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (23, N'ELAZIĞ')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (24, N'ERZİNCAN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (25, N'ERZURUM')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (26, N'ESKİŞEHİR')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (27, N'GAZİANTEP')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (28, N'GİRESUN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (29, N'GÜMÜŞHANE')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (30, N'HAKKARİ')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (31, N'HATAY')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (32, N'ISPARTA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (33, N'İÇEL')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (34, N'İSTANBUL')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (35, N'İZMİR')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (36, N'KARS')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (38, N'KAYSERİ')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (39, N'KIRKLARELİ')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (40, N'KIRSEHİR')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (41, N'KOCAELİ')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (42, N'KONYA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (44, N'MALATYA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (45, N'MANİSA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (46, N'KAHRAMANMARAS')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (47, N'MARDİN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (48, N'MUĞLA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (49, N'MUŞ')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (50, N'NEVSEHİR')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (51, N'NİĞDE')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (52, N'ORDU')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (53, N'RİZE')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (54, N'SAKARYA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (55, N'SAMSUN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (56, N'SİİRT')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (57, N'SİNOP')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (58, N'SİVAS')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (59, N'TEKİRDAĞ')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (60, N'TOKAT')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (61, N'TRABZON')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (62, N'TUNCELİ')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (63, N'ŞANLIURFA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (64, N'UŞAK')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (65, N'VAN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (66, N'YOZGAT')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (68, N'AKSARAY')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (69, N'BAYBURT')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (70, N'KARAMAN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (72, N'BATMAN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (73, N'ŞIRNAK')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (74, N'BARTIN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (76, N'IĞDIR')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (77, N'YALOVA')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (78, N'KARABÜK')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (79, N'KİLİS')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (80, N'OSMANİYE')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentID], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [BlogScore], [CommentStatus], [BlogID]) VALUES (1, N'Ali Yıldırım', N'Harika', N'react konusunda yaptığınız çalışmaya bayıldım', CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), 8, 1, 4)
INSERT [dbo].[Comments] ([CommentID], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [BlogScore], [CommentStatus], [BlogID]) VALUES (2, N'Ayşe Kaya', N'Merak uayandırıcı', N'Tarihte her zaman merak konusu olan bir kişiden bahsetmeniz çok güzel', CAST(N'2023-01-03T00:00:00.0000000' AS DateTime2), 9, 1, 5)
INSERT [dbo].[Comments] ([CommentID], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [BlogScore], [CommentStatus], [BlogID]) VALUES (3, N'Leyla Yıldız', N'Mükemmel', N'Dizi çok güzel bir solukta izledim', CAST(N'2023-01-03T00:00:00.0000000' AS DateTime2), 7, 1, 7)
INSERT [dbo].[Comments] ([CommentID], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [BlogScore], [CommentStatus], [BlogID]) VALUES (5, N'İlyas Kömürcü', N'İlginç', N'Şirket hakkındaki bilgiler çok yararlı', CAST(N'2023-01-04T00:00:00.0000000' AS DateTime2), 5, 1, 8)
INSERT [dbo].[Comments] ([CommentID], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [BlogScore], [CommentStatus], [BlogID]) VALUES (7, N'Mete Yıldız', N'Test Yorumu', N'Merhaba bu deneme yorumudur', CAST(N'2023-01-21T00:00:00.0000000' AS DateTime2), 3, 1, 4)
INSERT [dbo].[Comments] ([CommentID], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [BlogScore], [CommentStatus], [BlogID]) VALUES (8, N'AyşeGül Öztürk', N'Deneme', N'Test', CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), 9, 1, 4)
INSERT [dbo].[Comments] ([CommentID], [CommentUserName], [CommentTitle], [CommentContent], [CommentDate], [BlogScore], [CommentStatus], [BlogID]) VALUES (9, N'Veli Çınarlı', N'Test', N'denem', CAST(N'2023-01-21T00:00:00.0000000' AS DateTime2), 10, 1, 8)
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [ContactUserName], [ContactMail], [ContactSubject], [ContactMessage], [ContactDate], [ContactStatus]) VALUES (1, N'Ali Yıldırım', N'ali@gmail.com', N'Dizi', N'Kategorileri daha iyi düzenlenenilir.', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET IDENTITY_INSERT [dbo].[Message2s] ON 

INSERT [dbo].[Message2s] ([MessageID], [SenderID], [ReceiverID], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (1, 1, 2, N'Seyahat Blog Sorunu', N'test yapıyoruz', CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Message2s] ([MessageID], [SenderID], [ReceiverID], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (2, 3, 2, N'C# kod script', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', CAST(N'2021-12-16T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Message2s] ([MessageID], [SenderID], [ReceiverID], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (3, 1, 5, N'deneme2', N'test2', CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Message2s] ([MessageID], [SenderID], [ReceiverID], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (4, 1, 2, N'Core projesi devamı', N'fff', CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Message2s] OFF
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessageID], [Sender], [Receiver], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (1, N'Ali', N'haticekbr17@gmail.com', N'Teşekkür', N'Merhaba bu bir deneme mesajıdır.', CAST(N'2022-11-09T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Messages] ([MessageID], [Sender], [Receiver], [Subject], [MessageDetails], [MessageDate], [MessageStatus]) VALUES (2, N'Ceren', N'haticekbr17@gmail.com', N'deneme', N'shkljfsdkjfhh', CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Messages] OFF
SET IDENTITY_INSERT [dbo].[NewsLetters] ON 

INSERT [dbo].[NewsLetters] ([MailID], [Mail], [MailStatus]) VALUES (1, N'deneme@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[NewsLetters] OFF
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationID], [NotificationType], [NotificationTypeSymbol], [NotificationDetails], [NotificationDate], [NotificationStatus], [NotificationColor]) VALUES (2, N'Günlük Toplantı', N'mdi mdi-calendar', N'Merhabalar saat 15.00''da toplantı var.', CAST(N'2023-01-24T00:00:00.0000000' AS DateTime2), 1, N'preview-icon bg-success')
INSERT [dbo].[Notifications] ([NotificationID], [NotificationType], [NotificationTypeSymbol], [NotificationDetails], [NotificationDate], [NotificationStatus], [NotificationColor]) VALUES (3, N'Doğum Günü', N'mdi mdi-settings', N'Merhaba yazarlarımızdan cerenin doğum günü yapılacaktır.', CAST(N'2022-11-09T00:00:00.0000000' AS DateTime2), 1, N'preview-icon bg-success')
INSERT [dbo].[Notifications] ([NotificationID], [NotificationType], [NotificationTypeSymbol], [NotificationDetails], [NotificationDate], [NotificationStatus], [NotificationColor]) VALUES (4, N'Sistem Bakımı', N'mdi mdi-link-variant', N'Yarın saat 09-11 arasında sistem bakımı olacaktır', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, N'preview-icon bg-success')
INSERT [dbo].[Notifications] ([NotificationID], [NotificationType], [NotificationTypeSymbol], [NotificationDetails], [NotificationDate], [NotificationStatus], [NotificationColor]) VALUES (5, N'Yeni Yazı', N'mdi mdi-apple', N'Bugün iki yeni blog eklendi.', CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2), 1, N'preview-icon bg-primary')
SET IDENTITY_INSERT [dbo].[Notifications] OFF
SET IDENTITY_INSERT [dbo].[Writers] ON 

INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterPassword2], [WriterStatus]) VALUES (1, N'Hatice Albayrak', N'Merhaba, Ben Hatice Yazılım Uzmanıyım.SmartPro Akademiden mezunum.', N'https://assets.reedpopcdn.com/news-the-witcher-6-neue-bilder-geralt-ciri-yennefer-staffel-2-1602079587095.jpg/BROK/thumbnail/1200x1200/quality/100/news-the-witcher-6-neue-bilder-geralt-ciri-yennefer-staffel-2-1602079587095.jpg', N'haticekbr17@gmail.com', N'aA1111', N'aA1111', 1)
INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterPassword2], [WriterStatus]) VALUES (2, N'Murat Yücedağ', N'Yazılım Mühendisi 

Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500''lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960''larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', N'https://assets.reedpopcdn.com/news-the-witcher-6-neue-bilder-geralt-ciri-yennefer-staffel-2-1602079587095.jpg/BROK/thumbnail/1200x1200/quality/100/news-the-witcher-6-neue-bilder-geralt-ciri-yennefer-staffel-2-1602079587095.jpg', N'murat@gmail.com', N'Mm000', N'Mm000', 1)
INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterPassword2], [WriterStatus]) VALUES (3, N'Aslı Yıldırım ', N'Senarist', N'data:image/jpeg;base64,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', N'asli@gmail.com', N'12345', N'12345', 1)
INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterPassword2], [WriterStatus]) VALUES (4, N'Mert Fırat', N'Eğitmen', N'https://im.showtv.com.tr/5/6043/mert-firat-500x500.png?v=1488457891', N'mert@gmail.com', N'1234', N'1234', 1)
INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterPassword2], [WriterStatus]) VALUES (5, N'Sara Newt', N'Arkeolog', N'https://img-s1.onedio.com/id-55e0568c4eec75066add243e/rev-0/w-620/f-jpg/s-9e3b0a657a27437a1a00f3034dbc9f6f1ed39754.jpg', N'sara@gmail.com', N'123', N'123', 1)
INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterPassword2], [WriterStatus]) VALUES (6, N'yılmaz akkaya', N'Bu bir test sayfasıdır.', N'254fb2ec-77c4-42ea-9faf-cb0ccf6b729d.jpg', N'yilmaz@gmail.com', N'1234Ya', N'1234Ya', 1)
SET IDENTITY_INSERT [dbo].[Writers] OFF
/****** Object:  Index [IX_Matches_GuestTeamID]    Script Date: 1.02.2023 20:15:39 ******/
CREATE NONCLUSTERED INDEX [IX_Matches_GuestTeamID] ON [dbo].[Matches]
(
	[GuestTeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Matches_HomeTeamID]    Script Date: 1.02.2023 20:15:39 ******/
CREATE NONCLUSTERED INDEX [IX_Matches_HomeTeamID] ON [dbo].[Matches]
(
	[HomeTeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Message2s_ReceiverID]    Script Date: 1.02.2023 20:15:39 ******/
CREATE NONCLUSTERED INDEX [IX_Message2s_ReceiverID] ON [dbo].[Message2s]
(
	[ReceiverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Message2s_SenderID]    Script Date: 1.02.2023 20:15:39 ******/
CREATE NONCLUSTERED INDEX [IX_Message2s_SenderID] ON [dbo].[Message2s]
(
	[SenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Categories_CategoryID]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Writers_WriterID] FOREIGN KEY([WriterID])
REFERENCES [dbo].[Writers] ([WriterID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Writers_WriterID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Blogs_BlogID] FOREIGN KEY([BlogID])
REFERENCES [dbo].[Blogs] ([BlogID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Blogs_BlogID]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_Matches_Teams_GuestTeamID] FOREIGN KEY([GuestTeamID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_Matches_Teams_GuestTeamID]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_Matches_Teams_HomeTeamID] FOREIGN KEY([HomeTeamID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_Matches_Teams_HomeTeamID]
GO
ALTER TABLE [dbo].[Message2s]  WITH CHECK ADD  CONSTRAINT [FK_Message2s_Writers_ReceiverID] FOREIGN KEY([ReceiverID])
REFERENCES [dbo].[Writers] ([WriterID])
GO
ALTER TABLE [dbo].[Message2s] CHECK CONSTRAINT [FK_Message2s_Writers_ReceiverID]
GO
ALTER TABLE [dbo].[Message2s]  WITH CHECK ADD  CONSTRAINT [FK_Message2s_Writers_SenderID] FOREIGN KEY([SenderID])
REFERENCES [dbo].[Writers] ([WriterID])
GO
ALTER TABLE [dbo].[Message2s] CHECK CONSTRAINT [FK_Message2s_Writers_SenderID]
GO
USE [master]
GO
ALTER DATABASE [MvcCore_ProKamp150] SET  READ_WRITE 
GO
