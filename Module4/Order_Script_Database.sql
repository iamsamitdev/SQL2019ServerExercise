USE [master]
GO
/****** Object:  Database [Orders]    Script Date: 10/11/2564 14:30:10 ******/
CREATE DATABASE [Orders]
WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

ALTER DATABASE [Orders] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Orders].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [Orders] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Orders] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Orders] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Orders] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Orders] SET ARITHABORT OFF 
GO
ALTER DATABASE [Orders] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Orders] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Orders] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Orders] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Orders] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Orders] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Orders] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Orders] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Orders] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Orders] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Orders] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Orders] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Orders] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Orders] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Orders] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Orders] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Orders] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Orders] SET RECOVERY FULL 
GO
ALTER DATABASE [Orders] SET  MULTI_USER 
GO
ALTER DATABASE [Orders] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Orders] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Orders] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Orders] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Orders] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Orders] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Orders] SET QUERY_STORE = OFF
GO
USE [Orders]
GO
/****** Object:  Table [dbo].[TblCategories]    Script Date: 10/11/2564 14:30:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCategories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[CategoryDescription] [nvarchar](400) NULL,
	[CategoryPicture] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCustomers]    Script Date: 10/11/2564 14:30:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCustomers](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](40) NULL,
	[CustomerAddress] [nvarchar](200) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[HomePageName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOrderDetails]    Script Date: 10/11/2564 14:30:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOrderDetails](
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[ProductCount] [int] NULL,
	[Discount] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOrders]    Script Date: 10/11/2564 14:30:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOrders](
	[OrderID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProducts]    Script Date: 10/11/2564 14:30:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProducts](
	[ProductID] [int] NOT NULL,
	[CategoryID] [int] NULL,
	[ProductName] [nvarchar](50) NULL,
	[UnitPrice] [money] NULL,
	[VATFlag] [bit] NOT NULL,
	[UnitInStock] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TblCategories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryPicture]) VALUES (1, N'˹ѧ���', N'˹ѧ��� �Ե���� ��������õ�ҧ�', NULL)
INSERT [dbo].[TblCategories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryPicture]) VALUES (3, N'Hardware', N'�ػ�ó�����������ҧ� �� ���� LAN �繵�', NULL)
INSERT [dbo].[TblCategories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryPicture]) VALUES (4, N'Multimedia', N'�ػ�ó���ŵ�����¢ͧ���������� �� �������§ �繵�', NULL)
GO
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (91, N'�ç��úѳ�Ե�֡�', N'18/18 �.�ҧ��-��Ҵ ��.18 �ҧ���  ��طû�ҡ��', N'10540', N'3370361', N'www.bot.com#http://www.bot.com#')
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (92, N'��ͧ��ش�Է�����ૹ�����', N'100/6 �.�ط����� ��� 2 �ҧ�йҴ ���觪ѹ ���.', N'10250', N'(662) 332-6503', N'www.tosa.com#http://www.tosa.com#')
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (94, N'����ѷ ����� �ӡѴ (��Ҫ�)', N'���G �ٹ���ä�� The Mall ྪ����- �ҧ� �Ţ���275 ����1 �.ྪ���� �ҧ��˹�� ������ԭ ���.', N'10110', N'240-3700', N'www.themail.com#http://www.themail.com#')
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (95, N'��ҹ �Һ��', N'1770 �.ྪú��յѴ���� ���¢�ҧ  ���.', N'10900', N'(662) 537-2000', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (96, N'NORTHBRIDGE COMMUNITIES LTD.', N'69/428 ���� 8 �.�ѵ�Ҹ����� �ҧ����� �.���ͧ �������', N'10400', N'276-1040', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (97, N'��. ���ɰ� �����ѵ��', N'�Ҥ�úح��ͧ ��� 18 1193  �.����¸Թ ����  ���.', N'10900', N'(662) 561-1036', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (98, N'����ѷ ��к���ʷ� �ӡѴ', N'�Ţ��� 2199, 2201, 2203, 2205, 2207 �. �Ҵ�����  �ǧ�ѧ�ͧ��ҧ �ҧ�л�   ��ا෾', N'10110', N'(662) 249-0141-5', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (99, N'�ç���¹ ��ҹ���� & ����������', N'�Ҥ�êҭ����з������� 2 ��� 1 2922/209  �.ྪú��յѴ���� �ҧ�л�  ���', N'10900', N'(662) 512-2271-3', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (100, N'����ѷ ��������ѵ�� �ӡѴ', N'�Ҥ���Թ��  ��� 10 132  �.�Է��  �����ѹ ��ا෾�', N'10220', N'(662) 521-0368', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (103, N'USAID', N'159/30 Vibhavadi Rangsit Rd., Donmuang  Bangkok', N'10330', N'251-6334', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (104, N'CHA CHA RESTAURANT', N'372 �.�Ҹػ�д�ɰ� �ҧ⾧�ҧ �ҹ���� ��ا෾�', N'10110', N'392-2683', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (105, N'Amity Bookstore', N'The President Park, Park View  99/361-368 Sukhumvit 24  Bangkok', N'10110', N'258-6920', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (106, N'Books & Magazine Co.,Ltd.', N'604/3 �Ҥ�þѹ��Ծ���ҫ�� �.ྪú��� ࢵ�Ҫ��� ���.', N'10110', N'714-1636-41', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (107, N'����ѷ ⵪Ժ� ���Ź�� �ӡѴ', N'60 Soi Naphasup Yaek 5 Sukhumvit 36 Bangkok', N'11000', N'527-4387', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (109, N'����ѷ ��ࡷ෤����� �ӡѴ', N'���G  �ٹ���ä�� The Mall �Ҵ�����- �ҧ�л� �Ţ��� 3522 �.�Ҵ����� ��ͧ��� �ҧ�л� ���.', N'10110', N'240-2865', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (114, N'International Education Institute', N'525/1 ���� �.9 ���� �ҧ�ѡ ���.', N'10600', N'466-0519', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (115, N'Dr. Sawitree Bintasan', N'60 / 14 �. 11 �. �ҧ�� - ��Ҵ  �ҧ�� ���⢹� ���', N'10600', N'466-0519', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (119, N'����ѷ�Թ�ع��ѡ��Ѿ�� �����ط� �ӡѴ', N'�ç��������� 54 �.���ǧ�� ������� �ҧ�ѡ ���.', N'10600', N'466-0519', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (121, N'LOXLEY PUBLIC CO.,LTD.', N'70/15 �٤� ���١�� �����ҹ�', N'10900', N'512-0270-81', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (122, N'Interkids', N'�Ҥ�úҧ�͡�ʵ� 136  �.� �йͧ �¡�ع����� ��ͧ�� ��ا෾�', N'10310', N'643-1111', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (125, N'�ç���¹͹غ�ž��Թ��', N'����ѷ �Ѥ�� ����� �ӡѴ 87/110 ��� 14 �Ҥ�������칷� ��ͧ��  ���', N'10400', N'255-7500-8', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (127, N'EDUCARE 2', N'15/1 �آ���Է 33 ���.', N'10120', N'2112710', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (129, N'�ç���¹������ѡ�������ҹ', N'2102 �.����Ѳ�� �.�ѹ��� ��ͧ����� �ҹ���� ���.', N'11000', N'152-249051', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (131, N'�ç���¹͹غ���������Ҵ', N'87/110 �Ҥ�������칷�ǹ� ��� ��ͧ�ѹ ��ͧ�� ��ا෾�', N'10110', N'381-4220', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (133, N'����ѷ �ش���ʵ�� �ӡѴ', N'�Ţ��� 2199, 2201, 2203, 2205,2207 �. �Ҵ�����  �ǧ�ѧ�ͧ��ҧ �ҧ�л�  ��ا෾', N'84000', N'(077)273473', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (136, N'��ҹ˹ѧ��� �ظԴ� ���', N'��Թ�Ե �������� ��� 18 898 �.��Թ�Ե ����Թ� �����ѹ ���.', N'10330', N'2516334', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (137, N'����ѷ � �� �� (1993) �ӡѴ', N'87/110 �Ҥ�������칷�ǹ� ��� �آ���Է 63  ���.', N'90110', N'(074)364620', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (138, N'�ç���¹�Ѳ����', N'Hilton Hotel 2 Wireless Road,  Pathumwan Bangkok', N'41000', N'(042)322409', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (144, N'��ҧ�����ǹ�ӡѴ ������', N'�Ҥ���Թ�� ��� 11', N'10250', N'331-2564', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (153, N'͹غ������ѵ��', N'�Ҥ�������칷�ǹ� ��� 14 87/110 �آ���Է 63 ��ͧ�ѹ ��ͧ�� ���.', N'10230', N'509-0214', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (154, N'Good Choice Supermarket', N'79 �.������˧ 50 �����ҡ  ��ا෾�', N'10250', N'314-4024', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (155, N'��ҹ�ͧ�ʧ', N'23/34-35 �.����Ե� ����ѹ�ǧ��  ��ا෾�', N'10900', N'275-2350', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (158, N'��ҹ˹ѧ��� �.�. �Ԫ���', N'44 �.10 �ҧ�ҵ�Ҵ (�� 4.5) ���⢹�  ��ا෾�', N'10200', N'221-7765', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (159, N'���� ��� ������', N'112/54 �.2 �.�͡��� �ǧ�ҧ�ع��¹ ࢵ����ͧ ���.', N'10110', N'258-4181', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (160, N'��ҹ BOOK SHELF', N'BANGKOK BANK', N'17140', N'(056)424-274', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (162, N'����ѷ �������������� �ӡѴ', N'����Է��������� 235 �.ྪ���� �ҧ���� ������ԭ ���.', N'18000', N'(056) 313408', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (163, N'����ѷ �ǧ������� �ӡѴ (�����)', N'1259 �.������⪮� ��Ҫ�� ���ͧ ��ط��Ҥ�', N'57130', N'(053)731-274', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (164, N'����ѷ ��.�� �������ſ��� �ӡѴ', N'�Ҥ���λ���', N'10400', N'645-2630-42', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (166, N'��ҹ����Է�����Ż���������', N'�����Թ ��ͧ�Ţ��� 98-104 �Ҥ�ÿ���ٹ��ǹ�, �Ţ��� 5 �.�Ѫ�����ɡ ���¢�ҧ  ���.', N'10500', N'236-1215', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (169, N'�ӹѡ����ش��ҧ ����Է��������ջ���', N'��Ҥ�á�ا෾ �ӡѴ (�ӹѡ�ҹ� 333 �.���� ���� �ҧ�ѡ ��ا෾�', N'10110', N'381-4220', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (176, N'��ҧ�����ǹ�ӡѴ �ҫ���', N'682/4 Sukhumvit Road Bangkok', N'10310', N'9349301-12', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (180, N'SUMMIT CO.,LTD.', N'�آ��Ժ�� 2 �ҧ�л� ��ا෾�', N'10110', N'381-9774', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (181, N'NORSK DATA LIMITED.', N'��� 7 ��ҧ�繷��ŪԴ�� 1027 �.�Դ��-��Թ�Ե  ���.', N'83000', N'01-9790260', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (183, N'��ҹ���պ����', N'2922/60 �.ྪú��յѴ���� �ҧ�л� ���¢�ҧ ���.', N'20000', N'038-791538', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (186, N'����ѷ ��д������ �ӡѴ(��Ҫ�)', N'�.��ͧ 1 �.��ͧ��ǧ  �����ҹ�', N'33190', N'045-687-062', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (188, N'��ҹ�ٹ��˹ѧ��ͨѹ�����', N'63-64 �Ҥ����� 1 ��� 1 �Ҹ��� ���.', N'10260', N'721-9355', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (189, N'����ѷ �����䴹� ������ê�� �ӡѴ', N'12 �.������˧ 14 �.������˧ �����ҡ �ҧ�л�  ���.', N'10260', N'7476118-19', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (190, N'����ѷ �.�ͫ����� (1989) �ӡѴ', N'�Ţ��� 161 ������ 2 �Ҥ���ٹ���ä�� ������� ���� �ѧ�Ե ��ͧ�Ţ��� 135R ��� 1 ��ЪҸԻѵ�� �ѭ���� �����ҹ�', N'10400', N'247-1030', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (192, N'����ѷ �ҵ�� �ͷ� �ػ�������� �ӡѴ', N'212/229 ������ ���⢹� ���', N'10500', N'631-0231', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (193, N'METRABYTE CO.,LTD. (�Ң���������ҧ�)', N'115   ��� 1  ����о�ҫ��  ����  ��ا෾�', N'51000', N'(053) 511-131', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (194, N'����ѷ ����ū �͹��ŵ�� �ӡѴ', N'17 �.�ٹ���Ԩ�� 3 �.ྪú��յ�  ���¢�ҧ ���', N'10210', N'5800050-69', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (196, N'��ҹ˹͹˹ѧ������ҧ�������', N'Hope Place 1200  Klong Toey Bangkok', N'21000', N'(038) 611-694', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (197, N'��ҹ KIDDY WORLD', N'��ͧ�Ţ��� 319 �Ҥ���ç�������ط�ҹ ��ä�ҡҴ�ǹ���  99/4 ���� 2 �.������� �.��෾ �.���ͧ ��§����', N'10310', N'248-1161', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (198, N'����ѷ ������ ���������� �ӡѴ', N'252/40 �Ҥ�����ͧ���ѷ� 1 ��� 31 �.�Ѫ�����ɡ  ���¢�ҧ ���.', N'22000', N'039-312851', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (199, N'INCHCAPE SERVICES LIMITED', N'37 �.�آ���Է 35 ��ͧ�� ��ͧ�� ���', N'10900', N'561-1036', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (207, N'����ѷ ���Ԥ͹ ������� �͹��ŵ�� �ӡѴ', N'87 �.�آ���Է 89/1 �ҧ�ҡ ���⢹� ���.', N'10110', N'6620262-3', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (208, N'���俿�ҽ��¼�Ե ��觻������', N'71  �Ҥ�û�Сѹ��������Ѳ�� � ����ʹ� ���� ���.', N'10120', N'682-0232-3', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (209, N'����Է����ʵ�� ����Է����ºҧ���', N'����Է�������չ��Թ�����ò �Է �.���Ѳ�� ͹�������� �ҧࢹ ���.', N'84000', N'(077) 288-964', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (210, N'�ӹѡ�Էº�ԡ�� ʶҺѹ�Ҫ�ѯ�ǹ���Ե', N'��� ����ҹ�Ե�   ���.', N'54000', N'(054) 511-154', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (211, N'����ѷ ���� �ӡѴ', N'71/12-19 �.�Ⱥ����� 2 �ǧ�Ѵ����ҳ� ࢵ������ ���.', N'10120', N'211-7130', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (212, N'S C T COMPUTER CO.,LTD.', N'��ѧ��ͧ��Ҩ��ͧ IPST 924 �֡ ��Ƿ. ��� 3 �آ����Է  ���.', N'94000', N'(073) 333-487', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (213, N'T.M.N ��ҧ�ç˹ѧ����', N'Hilton Hotel 2 Wireless road, Pathumwan Bangkok', N'22000', N'(039)350-993-4', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (216, N'����ѷ �.��ԭ���Ѫ�ô��� �ӡѴ', N'�Ҥ���ӹѡ�ҹ���ͧ��-�ѷ� 2 ��� 1 �.�Ѫ�����ɡ ���¢�ҧ ���.', N'10200', N'221-0633', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (217, N'��ҹ The Books', N'����Է������͡�ä���� 126/1 �.����Ǵ�-�ѧ�Ե �ǧ����ʹ� ���� ��ا෾�', N'10330', N'651-4207-18', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (219, N'����ѷ ��͡������ �ӡѴ(��Ҫ�)', N'782/51 �.�ɨ���ԭ �.ྪ����  �Ѵ��Ҿ�� �ҧ�͡�˭� ���.', N'10400', N'254-9835,267-9384', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (220, N'SYNCHRON CO.,LTD.', N'39/7 �.�Ԫ�Ҹҹ�  �.���Ѥ�� �ҡ���  �������', N'10320', N'248-5855 ���  2027', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (221, N'��ҹ�����Һ����', N'60 Soi Naphasup Yaek 5 , Sukhumvit 36 Bangkok', N'10230', N'570-8030,942-0561-2', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (222, N'��ҹ˹ѧ��� Discovery Books', N'60 �.����Ѿ�� �¡ 5 �آ���Է 36 ��ا෾�', N'10400', N'267-9377-8', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (223, N'DK.�ѷ��', N'����Է�������չ��Թ�����ò �Է��ࢵ����ҹ�Ե� �آ���Է 23 ��ͧ�� ���.', N'65000', N'(055)258-862', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (225, N'JAPAN AIR CHARTER CO.,LTD.', N'47/1 RANGSIT-NAKORNNAYOK RD. KM 7  PHATUMTANEE', N'10400', N'251-3476', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (227, N'����ѷ �ǧ��� ��§����', N'186/1 �.19 �.�ҧö���� ���ç�� ��л��ᴧ ��طû�ҡ��', N'10310', N'318-2110', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (229, N'DIDYASARIN INTERNATIONAL SCHOOL', N'�Ҥ�úؾ�Ե 20 �.�Ҹ��˹�� ���.', N'10240', N'731-0834-7', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (230, N'����ѷ ���ͷ �ӡѴ', N'258 Soi Japanese School Rama 9 Bangkapi Huay Kwang Bangkok', N'10400', N'279-0230-45', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (231, N'��ҹ�', N'����Է������������ѭ 140/65 �.���� ������˧ 24 �����ҡ  ��ا෾�', N'10240', N'370-0826', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (232, N'����Է����¸�����ʵ�� (�ѧ�Ե)', N'��� 4 �֡ 2 ��ѡ����ҫ�� �.���Ѳ�� �͹���ͧ ���.', N'10330', N'252-0263', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (234, N'����ѷ ��ͧ�������', N'��.෤��������� 46 �Ѵ��Ҿ�� �ҧ�͡�˭� ���.', N'64110', N'(055)641-781', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (237, N'��ҹ ���»ҡ��', N'60 Soi Naphasup Yae5 , Sukhumvit 36 Bangkok', N'10310', N'559-0251', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (239, N'����ѷ �Թ�������� �ӡѴ (�Ң� 1)', N'�آ��Ժ�� 2 �ҧ�л� ��ا෾�', N'10120', N'287-1926', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (243, N'����ѷ  �Թ�������� �ӡѴ (�Ң� 2)', N'1/3 �.��ǹ��Ѱ �.3 �.���ͧ  ��§����', N'10100', N'221-6188', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (244, N'����ѷ �Թ�������� �ӡѴ (�Ң� 3)', N'13 �آ���Է 49-4 ��ͧ�ѹ ��ͧ�� ���', N'10510', N'517-0440', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (246, N'Golden Sky Co.,Ltd.', N'54/40 Sarawanville Soi 28 Chaeng Wattana Rd. Pakkred Non', N'10120', N'286-8671', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (249, N'GOOFY', N'11/25-26 ���� 2 �.�͡��� �ҧ�ع��¹ ����ͧ ��ا෾�', N'10110', N'350-3500', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (250, N'ʶҺѹ�Ҫ�ѯ���Թ���', N'201 �.����Ǵ��ѧ�Ե �.��͡�Ե ������ ��بѡ� ���.', N'30130', N'044-311617', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (252, N'�ç���¹�෤�������', N'800/43-45 �.��С���آ �.��ȡ-�Թᴧ �Թᴧ ���.', N'17160', N'056489123', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (254, N'��Ҥ�÷����� �ӹѡ�ҹ�˭�', N'72 �Ҥ�� 3 �.�Ҫ���Թ��ҧ  ��ا෾�', N'10110', N'261-0330', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (255, N'�������֡�ҹ͡�ç���¹', N'84/2 soi 33, Sukhumvit Rd.   Bangkok', N'10400', N'267-9377-8', NULL)
INSERT [dbo].[TblCustomers] ([CustomerID], [CustomerName], [CustomerAddress], [ZipCode], [Telephone], [HomePageName]) VALUES (258, N'The Bangkok Patana Schook(BPS)', N'����Է����´Թᴧ 40/4 �.������4 ��ͧ��  ���.', N'10400', N'656-5030-45', NULL)
GO
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10265, 5, 31, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10265, 10, 15, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10278, 7, 16, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10278, 8, 31, 0.25)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10278, 23, 4, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10289, 10, 8, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10290, 10, 17, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10290, 11, 15, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10290, 12, 14, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10290, 13, 39, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10311, 15, 11, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10311, 16, 11, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10311, 114, 8, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10323, 17, 12, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10323, 18, 20, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10323, 19, 18, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10362, 27, 11, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10362, 28, 6, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10363, 27, 29, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10363, 28, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10363, 29, 17, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10370, 30, 14, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10370, 45, 15, 0.2)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10380, 31, 21, 0.1)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10390, 51, 10, 0.1)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10390, 65, 7, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10411, 38, 8, 0.2)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10411, 142, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10436, 43, 27, 0.1)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10445, 45, 14, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10445, 46, 6, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10449, 46, 25, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10449, 47, 10, 0.1)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10449, 48, 16, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10449, 65, 8, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10464, 11, 50, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10464, 32, 24, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10464, 49, 18, 0.2)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10464, 50, 21, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10498, 55, 4, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10498, 56, 7, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10507, 57, 46, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10511, 57, 22, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10524, 60, 31, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10524, 61, 26, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10532, 62, 26, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10533, 62, 22, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10533, 63, 35, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10536, 48, 21, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10536, 64, 38, 0.25)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10536, 65, 6, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10536, 66, 4, 0.1)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10536, 67, 39, 0.1)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10552, 67, 17, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10552, 68, 36, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10552, 69, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10561, 69, 10, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10561, 70, 19, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10561, 71, 21, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10582, 73, 18, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10582, 74, 18, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10582, 117, 8, 0.2)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10582, 156, 20, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10599, 74, 18, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10599, 75, 18, 0.25)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10599, 76, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10620, 42, 5, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10620, 56, 9, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10620, 59, 15, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10620, 79, 1, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10620, 80, 4, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10620, 81, 15, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10620, 82, 5, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10620, 114, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10620, 165, 3, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10650, 87, 4, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10650, 88, 7, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10670, 91, 9, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10670, 92, 14, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10670, 121, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10670, 122, 3, 0.1)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10670, 173, 3, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10682, 93, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10717, 13, 24, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10717, 29, 9, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10717, 99, 1, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10717, 101, 10, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10717, 107, 3, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10730, 103, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10730, 104, 17, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10730, 108, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10732, 22, 18, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10732, 74, 10, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10732, 75, 10, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10733, 27, 7, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10733, 105, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10733, 106, 1, 0.2)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10733, 115, 4, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10733, 116, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10743, 101, 12, 0.05)
GO
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10743, 106, 6, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10743, 107, 4, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10743, 108, 6, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10755, 108, 3, 0.25)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10755, 109, 7, 0.25)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10755, 111, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10790, 28, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10790, 53, 1, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10790, 114, 14, 0.2)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10790, 115, 12, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10790, 116, 3, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10790, 120, 12, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10791, 116, 8, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10791, 117, 17, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10791, 118, 3, 0.25)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10791, 120, 18, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10791, 121, 2, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10791, 122, 18, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10791, 123, 31, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10791, 154, 12, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10893, 138, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10893, 139, 6, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10893, 142, 18, 0.25)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10893, 171, 4, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10949, 141, 16, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10949, 148, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10949, 149, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10952, 149, 25, 0.05)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10956, 149, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10956, 150, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10959, 150, 8, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10968, 152, 38, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (10969, 172, 12, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11041, 94, 12, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11041, 95, 18, 0.25)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11041, 97, 19, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11041, 165, 19, 0.2)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11041, 166, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11051, 166, 4, 0.2)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11052, 56, 4, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11052, 166, 46, 0.2)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11052, 167, 2, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11052, 168, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11052, 171, 30, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11067, 169, 10, 0)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11067, 170, 18, 0.15)
INSERT [dbo].[TblOrderDetails] ([OrderID], [ProductID], [ProductCount], [Discount]) VALUES (11067, 171, 25, 0.25)
GO
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10265, 181, CAST(N'2018-08-08T00:00:00.000' AS DateTime), CAST(N'2018-08-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10278, 213, CAST(N'2018-08-11T00:00:00.000' AS DateTime), CAST(N'2018-08-15T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10289, 229, CAST(N'2018-08-11T00:00:00.000' AS DateTime), CAST(N'2018-08-18T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10290, 106, CAST(N'2018-08-12T00:00:00.000' AS DateTime), CAST(N'2018-08-14T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10311, 192, CAST(N'2018-08-14T00:00:00.000' AS DateTime), CAST(N'2018-08-26T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10323, 190, CAST(N'2018-08-15T00:00:00.000' AS DateTime), CAST(N'2018-08-18T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10362, 103, CAST(N'2018-08-22T00:00:00.000' AS DateTime), CAST(N'2018-09-02T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10363, 192, CAST(N'2018-08-25T00:00:00.000' AS DateTime), CAST(N'2018-08-28T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10370, 164, CAST(N'2018-08-26T00:00:00.000' AS DateTime), CAST(N'2018-09-03T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10380, 99, CAST(N'2018-08-28T00:00:00.000' AS DateTime), CAST(N'2018-09-15T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10390, 225, CAST(N'2018-09-02T00:00:00.000' AS DateTime), CAST(N'2018-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10411, 137, CAST(N'2018-09-04T00:00:00.000' AS DateTime), CAST(N'2018-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10436, 125, CAST(N'2018-09-08T00:00:00.000' AS DateTime), CAST(N'2018-09-15T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10445, 193, CAST(N'2018-09-09T00:00:00.000' AS DateTime), CAST(N'2018-09-19T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10449, 127, CAST(N'2018-09-10T00:00:00.000' AS DateTime), CAST(N'2018-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10464, 163, CAST(N'2018-09-12T00:00:00.000' AS DateTime), CAST(N'2018-09-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10498, 219, CAST(N'2018-09-17T00:00:00.000' AS DateTime), CAST(N'2018-09-24T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10507, 207, CAST(N'2019-01-06T00:00:00.000' AS DateTime), CAST(N'2019-01-27T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10511, 136, CAST(N'2019-01-07T00:00:00.000' AS DateTime), CAST(N'2019-01-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10524, 252, CAST(N'2019-01-09T00:00:00.000' AS DateTime), CAST(N'2019-01-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10532, 136, CAST(N'2019-01-12T00:00:00.000' AS DateTime), CAST(N'2019-01-16T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10533, 231, CAST(N'2019-01-13T00:00:00.000' AS DateTime), CAST(N'2019-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10536, 122, CAST(N'2019-01-15T00:00:00.000' AS DateTime), CAST(N'2019-02-19T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10552, 209, CAST(N'2019-01-16T00:00:00.000' AS DateTime), CAST(N'2019-01-19T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10561, 194, CAST(N'2019-01-19T00:00:00.000' AS DateTime), CAST(N'2019-01-21T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10582, 166, CAST(N'2019-01-20T00:00:00.000' AS DateTime), CAST(N'2019-01-26T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10599, 258, CAST(N'2019-01-21T00:00:00.000' AS DateTime), CAST(N'2019-01-28T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10620, 221, CAST(N'2019-01-23T00:00:00.000' AS DateTime), CAST(N'2019-01-27T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10650, 219, CAST(N'2019-01-26T00:00:00.000' AS DateTime), CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10670, 246, CAST(N'2019-01-28T00:00:00.000' AS DateTime), CAST(N'2019-02-06T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10682, 249, CAST(N'2019-01-28T00:00:00.000' AS DateTime), CAST(N'2019-02-06T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10717, 227, CAST(N'2019-01-30T00:00:00.000' AS DateTime), CAST(N'2019-02-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10730, 255, CAST(N'2019-01-30T00:00:00.000' AS DateTime), CAST(N'2019-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10732, 217, CAST(N'2019-02-02T00:00:00.000' AS DateTime), CAST(N'2019-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10733, 243, CAST(N'2019-02-03T00:00:00.000' AS DateTime), CAST(N'2019-02-11T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10743, 144, CAST(N'2019-02-04T00:00:00.000' AS DateTime), CAST(N'2019-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10755, 138, CAST(N'2019-02-04T00:00:00.000' AS DateTime), CAST(N'2019-02-19T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10790, 98, CAST(N'2019-12-31T00:00:00.000' AS DateTime), CAST(N'2019-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10791, 94, CAST(N'2019-12-31T00:00:00.000' AS DateTime), CAST(N'2020-01-18T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10893, 254, CAST(N'2020-01-07T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10949, 100, CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-01-20T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10952, 199, CAST(N'2020-01-13T00:00:00.000' AS DateTime), CAST(N'2020-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10956, 234, CAST(N'2020-01-13T00:00:00.000' AS DateTime), CAST(N'2020-02-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10959, 107, CAST(N'2020-01-14T00:00:00.000' AS DateTime), CAST(N'2020-01-15T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10968, 193, CAST(N'2020-01-14T00:00:00.000' AS DateTime), CAST(N'2020-01-19T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (10969, 220, CAST(N'2020-01-15T00:00:00.000' AS DateTime), CAST(N'2020-01-29T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (11041, 121, CAST(N'2020-01-19T00:00:00.000' AS DateTime), CAST(N'2020-01-28T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (11051, 216, CAST(N'2020-01-20T00:00:00.000' AS DateTime), CAST(N'2020-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (11052, 97, CAST(N'2020-01-20T00:00:00.000' AS DateTime), CAST(N'2020-01-25T00:00:00.000' AS DateTime))
INSERT [dbo].[TblOrders] ([OrderID], [CustomerID], [OrderDate], [ShippedDate]) VALUES (11067, 133, CAST(N'2020-01-21T00:00:00.000' AS DateTime), CAST(N'2020-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (4, 2, N'ENCARTA ''94', 884.1100, 0, 717)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (5, 2, N'BUSINESS MASTER 4TH', 700.9300, 0, 287)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (7, 4, N'FRENCH 1, LIYC', 1039.7500, 0, 239)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (8, 4, N'FRENCH 2, LIYC', 843.5000, 1, 117)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (10, 2, N'DRAGONS LAIR', 219.6300, 0, 205)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (11, 2, N'HOW THE WORLD WORKS', 706.5400, 0, 448)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (12, 1, N'����Դ-������¢ͧ�ѧ��', 45.0000, 1, 904)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (13, 3, N'CD ROM 12X WEARNES', 369.1600, 1, 189)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (14, 2, N'JUST GRANDMA & ME', 686.9200, 0, 206)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (15, 3, N'SOUND CARD 3D 16BIT', 369.1600, 1, 323)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (16, 4, N'FRENCH 3, LIYC', 354.0600, 1, 108)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (17, 4, N'FRENCH 1, LYRIC', 1099.2500, 1, 257)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (18, 2, N'KID PIX STUDIO', 706.5400, 0, 95)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (19, 4, N'FRENCH 2, LYRIC', 174.7500, 1, 1129)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (21, 1, N'����֡����ؤ����', 88.7800, 1, 249)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (22, 2, N'MS MAGIC SCHOOL BUS', 1261.6800, 0, 316)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (23, 1, N'��ͤԴ���͡��ѧ�', 88.7900, 1, 831)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (24, 4, N'FRENCH 1, VOCAB', 732.2500, 1, 1967)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (25, 4, N'FRENCH 2, VOCAB', 561.5000, 0, 95)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (26, 2, N'MARIO TEACHES  TYPING', 1177.5700, 0, 111)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (27, 1, N'��ͤԴ���ͤ����ѡ', 145.0000, 1, 215)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (28, 1, N'��ͤԴ���ͤ��������', 150.0000, 1, 281)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (29, 1, N'��ͤԴ���ͤӾٴ', 156.0000, 1, 111)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (30, 1, N'��ͤԴ���;Ѳ�ҵ��ͧ', 156.0000, 0, 202)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (31, 1, N'��ͤԴ�����Ե��Ҿ', 172.0000, 1, 278)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (32, 1, N'�Դ�˭� ���ͤ��������', 172.0000, 1, 340)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (33, 2, N'MYST', 2200.9300, 0, 370)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (35, 1, N'�����ͻ�Ѻ��ا��оѲ�Ҥ����Դ', 177.5700, 0, 449)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (36, 2, N'PERSONAL FINANCE', 1757.0100, 0, 502)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (38, 1, N'�����ͷ�ͧ�������', 196.0000, 1, 128)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (40, 1, N'����������§��� "������ʷ�"', 196.0000, 0, 235)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (41, 4, N'FRENCH 3, VOCAB', 552.2500, 1, 222)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (42, 1, N'����������§��� "�����ͤ����"', 196.0000, 1, 259)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (43, 1, N'����������§��� "�Ф�Һ�ʷ�"', 219.6300, 0, 150)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (45, 2, N'WING COMMANDER', 2079.4400, 0, 201)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (46, 3, N'INTAC CABLE', 369.1600, 1, 428)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (47, 3, N'VIDEOCONFERENCING CARD-FLY VIDEO OF SOUND EQUIPMEN', 369.1600, 1, 205)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (48, 1, N'����������Ѻ������ؤ 90', 219.6300, 1, 409)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (49, 1, N'�ٴ���ҧ���ҷ�', 219.6300, 1, 155)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (50, 2, N'SALES MANAGER FACTOMATIC', 700.9300, 0, 169)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (51, 2, N'SECRETS OF STARGATE', 1842.9900, 0, 197)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (53, 4, N'JAPANESE 1, LIYC', 278.0000, 0, 326)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (54, 2, N'US ATLAS', 540.1900, 0, 159)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (55, 4, N'JAPANESE 2, LIYC', 278.0000, 0, 159)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (56, 2, N'WORLD ATLAS', 1286.9200, 0, 177)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (57, 4, N'JAPANESE 3, LIYC', 112.5000, 1, 157)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (58, 4, N'JAPANESE 1, VOCAB', 278.1900, 0, 146)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (59, 2, N'20 TH CENTURY ALMANAC', 1229.9000, 0, 136)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (60, 2, N'WHO KILLED BRETT', 1448.6000, 0, 137)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (61, 3, N'INTEL PROSHARE CONFERENCING VIDEO SYSTEM 200', 260.0000, 1, 134)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (62, 3, N'�к��Դ�����������觢��Ǵ�������ͧ����������', 10.0000, 1, 128)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (63, 3, N'INTAC CABLE', 18700.0000, 1, 295)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (64, 3, N'MS SQL Client Access', 369.1600, 1, 373)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (65, 3, N'MS Exchange Client Access 4.0', 10500.0000, 1, 281)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (66, 3, N'MS Office 97', 15000.0000, 1, 126)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (67, 3, N'Watermark Enterprise Access', 369.1600, 1, 164)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (68, 2, N'GUIDED TOUR OF MULTIMEDIA', 420.5600, 0, 200)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (69, 2, N'ENCICLOMEDIA', 723.3700, 0, 210)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (70, 2, N'MIND GAMES', 789.7200, 0, 695)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (71, 2, N'NEW KID ON THE BLOCK', 738.3200, 0, 294)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (72, 2, N'LITTLE MONSTER AT  SCHOOL', 515.8900, 0, 402)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (73, 2, N'WHO SHOT JOHNNY ROCK', 1233.6500, 0, 340)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (74, 2, N'SAT 1 CLIFF''S STUDY WARE', 814.9500, 0, 196)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (75, 1, N'101 WAYS TO BE A BETTER MANAGER', 219.6300, 1, 343)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (76, 1, N'175 SCIENE EXPERIMENTS', 219.6300, 1, 348)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (77, 1, N'�Էҹ��ʻ', 219.6300, 1, 254)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (78, 1, N'����¢ͧ����', 219.6300, 0, 285)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (79, 1, N'1ST BOOK OF PIANO', 219.6300, 0, 166)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (80, 1, N'2 ND BIG DOT TO DOT', 219.6300, 1, 182)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (81, 1, N'21ST CENTURY MANUFACTURING', 219.6300, 1, 128)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (82, 2, N'UNDER A KILLING MOON', 514.0200, 0, 828)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (84, 2, N'INFOPEDIA', 925.2300, 0, 401)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (85, 2, N'FUN WITH NUMBERS', 1929.9100, 0, 386)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (86, 2, N'EAGLE EYE MYSTERIES', 271.0300, 0, 276)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (87, 2, N'CYCLEMANIA', 1327.1000, 0, 324)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (88, 2, N'ULTIMA VIII-PAGAN IB', 1544.8500, 0, 241)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (91, 1, N'99% INSPIRATION', 219.6300, 1, 575)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (92, 4, N'JAPANESE 2, VOCAB', 279.5000, 1, 485)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (93, 4, N'JAPANESE 3, VOCAB', 561.5000, 1, 236)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (94, 3, N'Software Accessories Pack', 369.1600, 1, 282)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (95, 2, N'ALADDIN ACTIVITY CENTER', 1628.0400, 0, 332)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (97, 3, N'Microsoft Windows NT Server 4.0 Thai Edition 20 Cl', 1500.0000, 1, 128)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (98, 2, N'COMPLETE ALGEBRA ,THE', 1518.6900, 0, 181)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (99, 2, N'KIDS COLLECTION(AMERICAN TALE)', 3179.4400, 0, 134)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (100, 2, N'MULTIMEDIA WORD GAMES', 652.3400, 0, 243)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (101, 2, N'MATH CHALLENGE', 300.9300, 0, 176)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (102, 2, N'GUS TO GOES TO CYBERTOWN', 1338.3200, 0, 214)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (103, 2, N'FAMILY LEARNING', 1740.1900, 0, 203)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (104, 2, N'BRAIN BATTLES', 1242.0600, 0, 169)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (105, 2, N'REAL WORLD MATH', 1353.2700, 0, 273)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (106, 2, N'LEARNING QUEST FOR CHILDREN', 1299.0700, 0, 274)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (107, 3, N'Exchange 5 Upgrade Cl', 2150.0000, 0, 232)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (108, 3, N'Microsoft Windows Proxy Server 1.0', 5000.0000, 0, 144)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (109, 3, N'Computer IBM Aptiva DT5133', 3000.0000, 1, 188)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (111, 1, N'A COMPLETE GUIDE TO THE FUTURES MARKETS', 246.0000, 1, 357)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (114, 3, N'Barcode printer', 2560.0000, 1, 215)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (115, 4, N'CHINESE 1, VOCAB', 421.7500, 1, 214)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (116, 4, N'CHINESE 2, VOCAB', 124.7500, 1, 890)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (117, 2, N'MY FAVORITE MONSTER', 1392.5200, 0, 647)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (118, 1, N'A GOURMET''S BOOK OF CHOCOLATE', 246.0000, 0, 456)
GO
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (120, 1, N'A GOURMET''S BOOK OF HERBS & SPICES', 246.0000, 1, 461)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (121, 1, N'A GREED ! MAKING MANAGEMENT COMMUNICATION PERSUASI', 257.0100, 1, 419)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (122, 2, N'LEARNING FUN FOR KID', 1112.1500, 0, 158)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (123, 2, N'DENNIS MILLER THAT''S GEEK TO ME', 1245.4500, 0, 101)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (125, 3, N'Software Barcode', 109.0000, 1, 127)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (128, 1, N'A HAPPY DAY COLORING BOOK', 265.0000, 0, 312)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (129, 1, N'A IS FOR ANIMALS', 307.0000, 1, 300)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (130, 1, N'A PASSION FOR SUCCESS', 309.0000, 1, 136)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (131, 1, N'A PLEA FOR COMMOM SENSE', 313.0800, 0, 129)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (132, 4, N'CHINESE 3, VOCAB', 773.0000, 0, 186)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (133, 2, N'DENNIS MILLER THAT''S NEWS TO ME', 467.2900, 0, 195)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (134, 2, N'KODAK PHOTO CD ACCESS SW & PHOTO SAMPLER', 365.4200, 0, 366)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (135, 2, N'BUSINESS TOOLS', 467.2900, 0, 258)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (136, 3, N'Intel Express Router 9100 with Encryption', 109.0000, 1, 245)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (137, 4, N'MAGIC BOX PACK 1', 375.0000, 1, 332)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (138, 4, N'MAGIC BOX PACK 2', 773.7500, 0, 1405)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (139, 4, N'MAGIC BOX SUITE PACK I AND II', 63.2300, 1, 2076)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (141, 4, N'LYRIC LANGUAGE SPANISH', 3034.0000, 1, 964)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (142, 4, N'LYRIC LANGUAGE MORE ITALIAN', 774.7500, 0, 173)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (143, 2, N'CHILDREN''S PAINT', 1298.1300, 0, 999)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (144, 4, N'LYRIC LANGUAGE GERMAN', 1199.7500, 1, 219)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (147, 3, N'Compex RL2000 Ethernet Controller', 478.0000, 1, 447)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (148, 3, N'UTP Cat-5 Cabling', 377.0000, 1, 335)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (149, 3, N'MITAC TD6600 Pentium Pro 200Mhz', 435.0000, 0, 267)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (150, 1, N'A PROMISE IS A PROMISE', 313.0800, 0, 208)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (152, 3, N'Belta NS-TX CPU Intel Pentium 166Mhz MMX', 144.0000, 0, 99)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (153, 1, N'A TEDDY TALE', 313.0800, 0, 3123)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (154, 1, N'���㨡�÷ӧҹ����ͧ����������', 313.0800, 0, 1294)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (156, 1, N'䷷ҹԤ', 313.0800, 1, 583)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (159, 1, N'���͡�ҹ���ҧ��', 48.0000, 1, 1184)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (160, 3, N'Intel Express 10/100 Fast Ether Net', 340.0000, 0, 1106)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (163, 1, N'���ͧ��㹻� 2560', 369.1600, 0, 3032)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (164, 1, N'���¹����Զ������������', 20.0000, 1, 145)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (165, 1, N'ABC RHYMES', 399.0000, 1, 251)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (166, 1, N'ACCOUNTING & AUDITING IN A NEW ENVIRONME', 401.8700, 1, 190)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (167, 1, N'ACTIVITY-BASED MANAGEMENT', 410.0000, 1, 212)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (168, 4, N'LYRIC LANGUAGE MORE FRENCH', 674.7500, 1, 154)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (169, 2, N'OCEANLIFE VOL.1', 1180.3700, 0, 225)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (170, 2, N'OCEANLIFE VOL.2', 1179.4400, 0, 201)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (171, 2, N'OCEANLIFE VOL.3', 522.4300, 0, 1140)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (172, 2, N'INFONATION', 1024.3000, 0, 116)
INSERT [dbo].[TblProducts] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [VATFlag], [UnitInStock]) VALUES (173, 2, N'PLANNED MARKETING', 714.9500, 0, 1461)
GO
USE [master]
GO
ALTER DATABASE [Orders] SET  READ_WRITE 
GO
