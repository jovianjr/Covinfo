USE [master]
GO
/****** Object:  Database [Covinfo]    Script Date: 10/04/2021 03:36:20 ******/
CREATE DATABASE [Covinfo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Covinfo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Covinfo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Covinfo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Covinfo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Covinfo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Covinfo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Covinfo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Covinfo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Covinfo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Covinfo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Covinfo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Covinfo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Covinfo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Covinfo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Covinfo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Covinfo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Covinfo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Covinfo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Covinfo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Covinfo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Covinfo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Covinfo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Covinfo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Covinfo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Covinfo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Covinfo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Covinfo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Covinfo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Covinfo] SET RECOVERY FULL 
GO
ALTER DATABASE [Covinfo] SET  MULTI_USER 
GO
ALTER DATABASE [Covinfo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Covinfo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Covinfo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Covinfo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Covinfo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Covinfo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Covinfo', N'ON'
GO
ALTER DATABASE [Covinfo] SET QUERY_STORE = OFF
GO
USE [Covinfo]
GO
/****** Object:  User [root]    Script Date: 10/04/2021 03:36:21 ******/
CREATE USER [root] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 10/04/2021 03:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varbinary](max) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faq]    Script Date: 10/04/2021 03:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faq](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[keyword] [varchar](100) NOT NULL,
	[head] [varchar](500) NULL,
	[body] [varchar](1000) NULL,
	[flag] [nchar](1) NULL,
 CONSTRAINT [PK_faq] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [username], [password]) VALUES (1, N'admin', 0x0200FC78D2CCC2A119B005ACB7EDE0D3EC33CD79032D479D9A724A0209C63F8CFDC3ABF457E6BC0AC95D757990A3ED52DC6FFE6234FA8401B6DEFEB2A6E996653AE1681441FC)
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[faq] ON 

INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (1, N'Covid, Covid-19', N'Apa itu COVID-19?
', N'Coronavirus adalah suatu kelompok virus yang dapat menyebabkan penyakit pada hewan atau manusia. Beberapa jenis coronavirus diketahui menyebabkan infeksi saluran nafas pada manusia mulai dari batuk pilek hingga yang lebih serius seperti Middle East Respiratory Syndrome (MERS) dan Severe Acute Respiratory Syndrome (SARS). Coronavirus jenis baru yang ditemukan menyebabkan penyakit COVID-19.

', N'1')
INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (2, N'coronavirus, corona', N'Apa itu coronavirus?
', N'COVID-19 adalah penyakit menular yang disebabkan oleh jenis coronavirus yang baru ditemukan.  Virus baru dan penyakit yang disebabkannya ini tidak dikenal sebelum mulainya wabah di Wuhan, Tiongkok, bulan Desember 2019. COVID-19 ini sekarang menjadi sebuah pandemi yang terjadi di banyak negara di seluruh dunia.

', N'1')
INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (3, N'gejala-gejala, gejala, tanda', N'Apa saja gejala COVID-19?
', N'Gejala-gejala COVID-19 yang paling umum adalah demam, batuk kering, dan rasa lelah. Gejala lainnya yang lebih jarang dan mungkin dialami beberapa pasien meliputi rasa nyeri dan sakit, hidung tersumbat, sakit kepala, konjungtivitis, sakit tenggorokan, diare, kehilangan indera rasa atau penciuman, ruam pada kulit, atau perubahan warna jari tangan atau kaki. Gejala-gejala yang dialami biasanya bersifat ringan dan muncul secara bertahap. Beberapa orang menjadi terinfeksi tetapi hanya memiliki gejala ringan.', N'1')
INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (4, N'pertolongan, mencari, memiliki, terkena, positif, terinfeksi ', N'Apa yang harus saya lakukan jika saya memiliki gejala COVID-19 dan kapan saya harus mencari pertolongan medis?
', N'Jika Anda mengalami gejala ringan, seperti batuk ringan atau demam ringan, secara umum tidak perlu mencari pertolongan medis. Tetap di rumah, isolasi diri, dan pantau gejala Anda. Ikuti panduan nasional tentang isolasi mandiri.

Namun, jika Anda tinggal di daerah dengan malaria atau demam berdarah, Anda tidak boleh mengabaikan gejala demam. Segera cari pertolongan medis. Saat Anda pergi ke fasilitas kesehatan, kenakan masker jika memungkinkan, jaga jarak setidaknya 1 meter dari orang lain, dan jangan menyentuh permukaan benda dengan tangan Anda. Jika yang sakit adalah anak, bantu anak untuk mematuhi nasihat ini.', N'1')
INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (5, N'menyebar, sebar, penyebaran, bagaimana, menular, penularan, tular', N'Bagaimana cara COVID-19 menyebar?
', N'Orang dapat tertular COVID-19 dari orang lain yang terinfeksi virus ini. COVID-19 dapat menyebar terutama dari orang ke orang melalui percikan-percikan dari hidung atau mulut yang keluar saat orang yang terinfeksi COVID-19 batuk, bersin atau berbicara. Percikan-percikan ini relatif berat, perjalanannya tidak jauh dan jatuh ke tanah dengan cepat. Orang dapat terinfeksi COVID-19 jika menghirup percikan orang yang terinfeksi virus ini. Oleh karena itu, penting bagi kita untuk menjaga jarak minimal 1 meter dari orang lain. Percikan-percikan ini dapat menempel di benda dan permukaan lainnya di sekitar orang seperti meja, gagang pintu, dan pegangan tangan. Orang dapat terinfeksi dengan menyentuh benda atau permukaan tersebut, kemudian menyentuh mata, hidung, atau mulut mereka. ', N'1')
INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (6, N'isolasi mandiri', N'Apa itu isolasi mandiri?
', N'Isolasi mandiri adalah tindakan penting yang dilakukan oleh orang yang memiliki gejala COVID-19 untuk mencegah penularan ke orang lain di masyarakat, termasuk anggota keluarga.

Isolasi mandiri adalah ketika seseorang yang mengalami demam, batuk, atau gejala COVID-19 lainnya tinggal di rumah dan tidak pergi bekerja, sekolah, atau ke tempat-tempat umum. Hal ini dilakukan secara sukarela atau berdasarkan rekomendasi dari penyedia layanan kesehatan. Namun, jika Anda tinggal di daerah dengan kasus malaria atau demam berdarah, Anda tidak boleh mengabaikan gejala demam. Segera cari pertolongan medis. Saat Anda pergi ke fasilitas kesehatan, kenakan masker jika memungkinkan, jaga jarak setidaknya 1 meter dari orang lain dan jangan menyentuh permukaan benda dengan tangan Anda. Jika yang sakit adalah anak, bantu anak mematuhi nasihat ini.
', N'1')
INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (7, N'melindungi, mencegah, menekan', N'Apa yang dapat saya lakukan untuk melindungi diri saya dan mencegah penyebaran penyakit ini?
', N'Seringlah mencuci tangan Anda dengan air bersih mengalir dan sabun, atau cairan antiseptik berbahan dasar alkohol. Jaga jarak setidaknya 1 meter dengan orang lain. Hindari pergi ke tempat-tempat ramai. Hindari menyentuh mata, hidung, dan mulut. Tetaplah tinggal di rumah dan lakukan isolasi mandiri meskipun hanya memiliki gejala ringan seperti batuk, sakit kepala, dan demam ringan sampai Anda sembuh. ', N'1')
INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (8, N'vaksin, obat, perawatan', N'Apakah ada vaksin, obat, atau perawatan untuk COVID-19?
', N'Meskipun beberapa pengobatan barat, tradisional, maupun buatan rumahan dapat meringankan dan mengurangi gejala ringan COVID-19, tidak ada obat yang terbukti dapat mencegah atau menyembuhkan COVID-19. WHO tidak merekomendasikan tindakan mengobati diri sendiri dengan obat apa pun, termasuk antibiotik, untuk mencegah atau menyembuhkan COVID-19. Namun, beberapa uji klinis sedang berlangsung atas obat-obatan barat maupun tradisional. WHO sedang mengoordinasikan upaya-upaya pengembangan vaksin dan obat untuk mencegah dan mengobati COVID-19 dan akan terus memberikan informasi terbaru seiring tersedianya temuan klinis.
', N'1')
INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (10, N'masker, penggunaan masker', N'Bagaimana cara menggunakan masker yang benar?', N'Jika Anda akan menggunakan masker:
1. Sebelum menyentuh masker, cuci tangan menggunakan sabun dan air bersih mengalir, atau bersihkan tangan menggunakan cairan antiseptik berbahan dasar alkohol.
2. Ambil masker dan periksa apakah ada sobekan atau lubang
3. Tentukan sisi mana yang merupakan sisi atas (tempat pita logam berada)
4. Pastikan sisi masker yang tepat menghadap ke luar (sisi berwarna).
5. Tempatkan masker ke wajah Anda. Jepit pita logam atau bagian tepi masker yang kaku sehingga bentuknya sesuai hidung Anda. 6. Tarik masker ke bawah sehingga menutupi mulut dan dagu Anda.
7. Jangan menyentuh masker pada saat Anda memakainya sebagai perlindungan.
8. Setelah digunakan, lepas masker dengan tangan bersih, lepaskan tali elastis dari belakang telinga sambil menjauhkan masker dari wajah dan pakaian Anda, untuk menghindari menyentuh permukaan masker yang mungkin terkontaminasi.', N'1')
INSERT [dbo].[faq] ([id], [keyword], [head], [body], [flag]) VALUES (11, N'berapa lama bertahan', N'Berapa lama virus dapat bertahan di permukaan benda?
', N'Hal yang paling penting untuk diketahui tentang coronavirus pada permukaan benda adalah bahwa coronavirus mudah dibersihkan menggunakan disinfektan rumah tangga biasa yang dapat membunuh virus tersebut. Penelitian telah menunjukkan bahwa virus COVID-19 dapat bertahan hingga 72 jam pada plastik dan stainless steel, kurang dari 4 jam pada tembaga, dan kurang dari 24 jam pada karton.

Pastikan Anda selalu menjaga kebersihan tangan dengan mencuci tangan menggunakan sabun dan air bersih mengalir, atau cairan antiseptik berbahan dasar alkohol. Hindari menyentuh mata, mulut, atau hidung Anda.

', N'1')
SET IDENTITY_INSERT [dbo].[faq] OFF
GO
USE [master]
GO
ALTER DATABASE [Covinfo] SET  READ_WRITE 
GO
