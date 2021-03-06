USE [master]
GO
/****** Object:  Database [ShoeShopOnlineDB]    Script Date: 13/06/2019 3:54:58 CH ******/
CREATE DATABASE [ShoeShopOnlineDB] 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET  MULTI_USER 
GO
ALTER DATABASE [ShoeShopOnlineDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoeShopOnlineDB] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShoeShopOnlineDB', N'ON'
GO
USE [ShoeShopOnlineDB]
GO
/****** Object:  Table [dbo].[About]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[ObjectName] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[Mobile] [varchar](20) NULL,
	[Website] [varchar](256) NULL,
	[Email] [varchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Contact__3214EC07B68E50F5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupId] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential_1] PRIMARY KEY CLUSTERED 
(
	[UserGroupId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[Content] [nvarchar](max) NULL,
	[Reply] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Feedback__3214EC07ABFD67FA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[Id] [uniqueidentifier] NOT NULL,
	[CoppyRight] [nvarchar](100) NULL,
	[Address] [nvarchar](256) NULL,
	[PhoneNumber] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Footer__3214EC07852F6A97] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](256) NOT NULL,
	[Link] [nvarchar](256) NULL,
	[DisplayOrder] [int] NULL,
	[ParentId] [int] NULL,
	[Target] [nvarchar](256) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Menu__3214EC079B6A10D6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Summary] [nvarchar](max) NULL,
	[MetaTitle] [varchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[UrlImage] [nvarchar](256) NULL,
	[NewsCategoryId] [uniqueidentifier] NULL,
	[Warranty] [int] NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[MetaDescriptions] [nvarchar](256) NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tag] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Content__3214EC0722536217] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[MetaTitle] [varchar](256) NULL,
	[ParentId] [int] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](256) NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Category__3214EC07DEE8C6AA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ShipName] [nvarchar](256) NOT NULL,
	[ShipPhone] [nvarchar](50) NOT NULL,
	[ShipAddress] [nvarchar](256) NOT NULL,
	[ShipEmail] [varchar](256) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Order__3214EC07DF9E2F66] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductId] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Code] [varchar](20) NULL,
	[MetaTitle] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[UrlImage] [nvarchar](256) NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludeVAT] [bit] NULL,
	[Quantity] [int] NULL,
	[ProductCategoryId] [uniqueidentifier] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[MetaDescriptions] [nvarchar](256) NULL,
	[TopHot] [bit] NULL,
	[IsNormalProduct2] [bit] NULL,
	[IsNormalProduct1] [bit] NULL,
	[IsNewProduct] [bit] NULL,
	[ViewCount] [int] NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Product__3214EC072E0A9E49] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[MetaTitle] [varchar](256) NULL,
	[ParentId] [int] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](256) NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[MetaDescriptions] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__ProductC__3214EC077834B296] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UrlImage] [nvarchar](256) NOT NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Slide__3214EC073DFECF16] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupId] [varchar](50) NULL,
	[AvatarUrl] [nvarchar](256) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[ConfirmPassword] [varchar](50) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[ResetPasswordCode] [nvarchar](100) NULL,
	[Email] [varchar](256) NULL,
	[Address] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__User__3214EC07B2B93D14] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 13/06/2019 3:54:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[About] ([Id], [Title], [Description], [Content], [IsDeleted], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'71725cfd-cf6d-49d9-b152-9102907d997e', N'Giới thiệu thông tin cửa hàng,  sứ mệnh cửa hàng', N'Giầy dép là một trong những phụ kiện không thể thiếu góp phần tạo nên phong cách thời trang của mỗi người. Chính vì điều đó Giầy Xinh mong muốn đem đến những mẫu giầy mới nhất được cập nhật thường xuyên giúp các bạn nữ dễ dàng hơn trong việc lựa chọn và cập nhật những style thịnh hành của thời trang giầy dép trong nước và thế giới.', N'<p>Giầy d&eacute;p l&agrave; một trong những phụ kiện kh&ocirc;ng thể thiếu g&oacute;p phần tạo n&ecirc;n phong c&aacute;ch thời trang của mỗi người. Ch&iacute;nh v&igrave; điều đ&oacute; Giầy Xinh mong muốn đem đến những mẫu giầy mới nhất được cập nhật thường xuy&ecirc;n gi&uacute;p c&aacute;c bạn nữ dễ d&agrave;ng hơn trong việc lựa chọn v&agrave; cập nhật những style thịnh h&agrave;nh của thời trang giầy d&eacute;p trong nước v&agrave; thế giới.</p>

<p>Free Style Shop&nbsp;được biết đến với những sản phẩm giầy d&eacute;p nữ hợp thời trang, nhập trực tiếp từ những c&ocirc;ng ty giầy d&eacute;p uy t&iacute;n, cao cấp m&agrave; kh&ocirc;ng qua trung gian, đảm bảo về chất lượng v&agrave; gi&aacute; th&agrave;nh &hellip; Free Style Shop cung cấp mọi kiểu d&aacute;ng giầy d&eacute;p nữ mới nhất: Giầy b&uacute;p b&ecirc;, giầy cao c&oacute;t, giầy b&aacute;nh mỳ, giầy bệt, sandals, gi&agrave;y vải &hellip;.Nếu l&agrave; một người y&ecirc;u thời trang, t&igrave;m kiếm những phong c&aacute;ch mới, th&igrave; bạn kh&ocirc;ng thể bỏ qua những xu hướng nổi bật của thời trang gi&agrave;y d&eacute;p : combat boot, gi&agrave;y orford, gi&agrave;y mũi nhọn, đ&iacute;nh kim loại, phong c&aacute;ch sporty với gi&agrave;y đế b&aacute;nh m&igrave;&hellip;Thật dễ d&agrave;ng, chỉ với một click bạn c&oacute; thể nhanh ch&oacute;ng sở hữu ch&uacute;ng trong tủ đồ của m&igrave;nh với Free Style Shop.</p>

<h2><strong>Li&ecirc;n hệ với ch&uacute;ng t&ocirc;i:</strong></h2>

<p>Phone: 0947 569 488</p>

<p>Website:&nbsp;<a href="http://www.freestyleshop.com/">www.freestyleshop.com/</a></p>

<p>Facebook:&nbsp;<a href="https://www.facebook.com/freestyleshop">https://www.facebook.com/freestyleshop</a></p>

<p>Facebook &nbsp;ch&iacute;nh:&nbsp;https://www.facebook.com/freestyleshop</p>

<h2><strong>Free Style Shop cam kết:</strong></h2>

<p>- H&agrave;ng thật giống 100% ảnh chụp về kiểu d&aacute;ng, mẫu m&atilde;.</p>

<p>- Mẫu mới cập nhật li&ecirc;n tục.</p>

<p>- Sản phẩm chất lượng</p>

<p>- Gi&aacute; th&agrave;nh phải chăng</p>

<p>- Phương thức vận chuyển thuận tiện. ( Ship h&agrave;ng to&agrave;n quốc, nhận chuyển h&agrave;ng COD )</p>

<p>- H&agrave;ng lu&ocirc;n c&oacute; sẵn trong kho.</p>

<p>- B&aacute;n h&agrave;ng nhiệt t&igrave;nh tư vấn</p>

<h2><strong>C&aacute;ch thức đặt h&agrave;ng online:</strong></h2>

<p>Bước 1: Chọn mẫu.</p>

<p>Bước 2: Li&ecirc;n hệ qua điện thoại hoặc giỏ h&agrave;ng tr&ecirc;n website để x&aacute;c nhận t&igrave;nh trạng của h&agrave;ng mẫu: m&agrave;u sắc, xuất xứ, số lượng, gi&aacute; cả, t&igrave;nh trạng c&ograve;n h&agrave;ng hay hết h&agrave;ng.</p>

<p>Bước 3: Đặt h&agrave;ng qua giỏ h&agrave;ng hoặc gọi điện trực tiếp cho Free Style Shop.</p>

<p>Bước 4: Nhận điện thoại x&aacute;c nhận đơn đặt h&agrave;ng từ Free Style Shop.</p>

<p>Bước 5: Nhận h&agrave;ng, kiểm tra, thanh to&aacute;n tiền( &Aacute;p dụng cho kh&aacute;ch d&ugrave;ng dịch vụ chuyển h&agrave;ng COD)--&gt; Ph&iacute; ship 50k</p>

<p>Kh&aacute;ch h&agrave;ng chuyển khoản trước: --&gt; ph&iacute; ship 30k.<br />
Kh&aacute;ch h&agrave;ng ở H&agrave; Nội --&gt; ph&iacute; ship 20k.<br />
FREE SHIP đơn h&agrave;ng&nbsp; lớn hơn 1 triệu v&agrave; kh&aacute;ch h&agrave;ng thanh to&aacute;n trước.</p>

<p>Bước 6: Qu&yacute; anh chị v&agrave; c&aacute;c bạn vui l&ograve;ng th&ocirc;ng b&aacute;o x&aacute;c nhận đ&atilde; nhận h&agrave;ng cho Free Style Shop. Xin cảm ơn!</p>

<p>Số t&agrave;i khoản:</p>

<p>Ng&acirc;n h&agrave;ng VIETCOMBANK (chi nh&aacute;nh Chương Dương)</p>

<p>Số t&agrave;i khoản: 0541000205983</p>

<p>Chủ t&agrave;i khoản: Nguyễn Thị Giang</p>

<p>Free Style Shop rất vui được phục vụ c&aacute;c bạn!</p>
', 0, NULL, NULL, N'admin', CAST(N'2019-06-03T22:50:19.8376942+07:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [Title], [ObjectName], [Address], [Mobile], [Website], [Email], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (1, N'Show Room 1', N'Cơ sở Đà Nẵng', N'33 Xô Viết Nghệ Tĩnh, Hải Châu', N'0236.478.479', N'https://freestyledanang.com.vn', N'freestyledanang@gmail.com', CAST(N'2019-05-29T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-03T13:15:58.0517228+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Contact] ([Id], [Title], [ObjectName], [Address], [Mobile], [Website], [Email], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (2, N'Show Room 2', N'Cơ sở Quảng Nam', N'48 Hai Bà Trung, Hội An', N'0235.487.489', N'https://freestylehoian.com.vn', N'freestylehoian@gmail.com', CAST(N'2019-05-29T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-03T13:06:49.7802278+07:00' AS DateTimeOffset), N'admin', 0)
SET IDENTITY_INSERT [dbo].[Contact] OFF
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'ADD_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'CREATE_CREDENTIAL')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'CREATE_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'CREATE_USER_GROUP')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_CREDENTIAL')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_USER_GROUP')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'EDIT_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'UPDATE_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'UPDATE_USER_GROUP')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_CREDENTIAL')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_LAYOUT')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_USER_GROUP')
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'0ea663e4-be02-4f8f-a9c7-3a2f0e4c4522', N'Bùi Thế Toàn', N'0213158128', N'toan38582@donga.edu.vn', N'Gia Lai', N'CRUD for Layout, admin, login with facebook', N'Finish', CAST(N'2019-06-04T10:50:20.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T11:55:22.7982222+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'b17940d6-204f-4079-9c5d-6411e2ae58fa', N'Lê Văn Quang', N'0789846512', N'quangle@gmail.com', N'Gia Lai', N'Role, User, UserGroup, Credentials (CRUD)', N'Finish', CAST(N'2019-06-04T10:49:28.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T11:55:36.4814440+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'ae2f9c04-2189-40d4-8037-afffd451384a', N'QUang oc cho', N'913712903123', N'quangle@gmail.com', N'as;ldfjkas', N'ngu nhu bo', N'ngu nhu cho dsfasdfasdf', CAST(N'2019-06-08T09:58:55.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-08T09:59:26.9347532+07:00' AS DateTimeOffset), N'admin', 1)
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a848b336-aecf-483d-a2b5-e2d821f5be2b', N'Trần Thị Thùy Linh', N'0912389143', N'linh38447@donga.edu.vn', N'Gia Lai', N'Form Login, Layout for Home page, CRUD, search, pagedlist, sort for User table', N'Finish', CAST(N'2019-06-04T10:51:31.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T11:55:46.6417554+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'ac526ab9-64dd-488f-8302-fc2f18d9ea7e', N'Trần Hữu Hùng', N'0123456789', N'hung38585@donga.edu.vn', N'Đà Nẵng', N'CRUD, search, pagedlist, sort for Product table', N'Finish', CAST(N'2019-06-04T10:48:30.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T11:55:52.5782255+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Footer] ([Id], [CoppyRight], [Address], [PhoneNumber], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'044bf44b-24af-4c55-a776-f93ae5e6ceb0', N'© 2019 Free Style All Rights Reserved', N'33 Xô Viết Nghệ Tĩnh', N'0988.944.608', NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (1, N'Trang chủ', N'/', 1, NULL, N'_self', CAST(N'2019-05-27T16:17:45.9225714+07:00' AS DateTimeOffset), NULL, NULL, N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (2, N' Giới thiệu', N'/gioi-thieu', 2, NULL, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (3, N'Tin tức', N'/tin-tuc', 3, NULL, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (4, N'Sản phẩm', N'/tat-ca-san-pham', 4, NULL, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (5, N'Liên hệ', N'#', 5, NULL, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (15, N'Thông tin liên hệ', N'#Contact', 1, 5, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (16, N'Góp ý', N'/gop-y', 2, 5, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (18, N'Phản hồi ý kiến khách hàng', N'/phan-hoi-y-kien-khach-hang', 3, 5, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (20, N'Khuyến mãi', N'/loai-tin-tuc/khuyen-mai/a2b988e6-9053-4c9d-b6fb-5ade0e050d18', 1, 3, N'_self', CAST(N'2019-06-09T17:13:06.0990506+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (21, N'Sự kiện', N'/loai-tin-tuc/su-kien/9d1fdd2c-e06d-402b-87de-f8746537bdbf', 2, 3, N'_self', CAST(N'2019-06-09T17:18:30.1729160+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (22, N'Chăm sóc khách hàng', N'/loai-tin-tuc/cham-soc-khach-hang/c787ffc1-f333-484e-b176-c76d5c3d85a7', 3, 3, N'_self', CAST(N'2019-06-09T17:20:35.8215820+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Menu] OFF
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'f11b09ac-0959-4d99-a18e-1b4a3739f310', N'WHITE VALENTINE TRẮNG - ĐÁP TRẢ YÊU THƯƠNG - GIẢM GIÁ LÊN ĐẾN 15%', N'Dường như ngày Valentine Đỏ (14/2) ngọt ngào vẫn chưa đủ với những con tim đang yêu.Vì vậy, Valentine Trắng để tỏ tình cảm với người thương yêu mình.', N'white-valentine-trang-dap-tra-yeu-thuong-giam-gia-len-den-15', N'<p style="text-align:center"><strong>WHITE VALENTINE DAY - Đ&Aacute;P TRẢ Y&Ecirc;U THƯƠNG</strong></p>

<p style="text-align:center">___________________________</p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="" src="https://streetstyle.vn/images/companies/1/14.3%20wed%20%281%29.png" style="width:500px" /></p>

<p>&nbsp;</p>

<p>Dường như ng&agrave;y&nbsp;Valentine Đỏ (14/2)&nbsp;ngọt ng&agrave;o vẫn chưa đủ với những con tim đang y&ecirc;u.V&igrave; vậy,&nbsp;Valentine Trắng&nbsp;để tỏ t&igrave;nh cảm với người thương y&ecirc;u m&igrave;nh.<br />
<br />
Hiểu được điều đ&oacute;&nbsp;<strong>STREETSTYLE.VN</strong>&nbsp;mang đến chương tr&igrave;nh&nbsp;&quot;Đ&Aacute;P TRẢ Y&Ecirc;U THƯƠNG&quot;&nbsp;như sau:<br />
<br />
<strong>GIẢM 5%</strong>&nbsp;khi mua&nbsp;<strong>1&nbsp;Đ&Ocirc;I GI&Agrave;Y</strong><br />
<br />
<strong>GIẢM 10%</strong>&nbsp;khi mua&nbsp;<strong>2 Đ&Ocirc;I GI&Agrave;Y TRỞ L&Ecirc;N</strong>&nbsp;+&nbsp;<strong>FREESHIP.</strong><br />
<br />
<strong>LƯU &Yacute; :</strong>&nbsp;<strong>CỘNG DỒN TH&Ecirc;M % T&Iacute;CH LŨY CỦA TH&Agrave;NH VI&Ecirc;N</strong><br />
<br />
&Aacute;p dụng cho c&aacute;c bạn mua&nbsp;<strong>ONLINE</strong>&nbsp;c&aacute;c sản phẩm sau đ&acirc;y:</p>

<p><br />
<strong>VANS OLD SHOOL ALL WHITE ; FILA ALL WHITE v&agrave; STANMITH ALL WHITE.</strong><br />
<br />
<strong>THỜI GIAN DIỄN RA:&nbsp;13/03/2019 - 15/03/2019.</strong><br />
<br />
NHANH TAY ĐẶT H&Agrave;NG NGAY&nbsp;để&nbsp;NHẬN NGAY ƯU Đ&Atilde;I STREETSTYLE.VN&nbsp;v&agrave; đ&aacute;p trả lại t&igrave;nh y&ecirc;u của người y&ecirc;u m&igrave;nh nh&eacute; c&aacute;c bạn eyyyyy.</p>
', N'/Content/Data/files/14_3%20wed%20(1).png', N'a2b988e6-9053-4c9d-b6fb-5ade0e050d18', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-07T22:46:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-07T22:49:31.9041970+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'0dee53ce-3b1c-49be-a043-4257239c996f', N'Những cách phối outfit với giày Converse dành cho các bạn nam', N'Coverse từ lâu đã được xem là đôi giày bình dân, thích hợp với mọi nhà. Tuy nhiên mang lên thì dễ chứ muốn mang sao để tạo ấn tượng với mọi người thì cần phải học hỏi nhiều. Hỡi các chàng trai hãy cầm lấy đôi giày Converse yêu thích nhất của mình trong tủ đồ, StreetStyle.vn sẽ chỉ cho bạn làm thế nào để “diện” món đồ thời trang cổ điển này theo cách độc đáo nhưng cũng không kém phẩm bụi bặm nhất.', N'nhung-cach-phoi-outfit-voi-giay-converse-danh-cho-cac-ban-nam', N'<p>Coverse từ l&acirc;u đ&atilde; được xem l&agrave; đ&ocirc;i gi&agrave;y b&igrave;nh d&acirc;n, th&iacute;ch hợp với mọi nh&agrave;. Tuy nhi&ecirc;n mang l&ecirc;n th&igrave; dễ chứ muốn mang sao để tạo ấn tượng với mọi người th&igrave; cần phải học hỏi nhiều. Hỡi c&aacute;c ch&agrave;ng trai h&atilde;y cầm lấy đ&ocirc;i gi&agrave;y Converse y&ecirc;u th&iacute;ch nhất của m&igrave;nh trong tủ đồ,&nbsp;<a href="https://www.facebook.com/StreetStyleStorevn/" target="_blank">StreetStyle.vn</a>&nbsp;sẽ chỉ cho bạn l&agrave;m thế n&agrave;o để &ldquo;diện&rdquo; m&oacute;n đồ thời trang cổ điển n&agrave;y theo c&aacute;ch độc đ&aacute;o nhưng cũng kh&ocirc;ng k&eacute;m phẩm bụi bặm nhất.</p>

<p><strong>Converse đen trắng</strong></p>

<p style="text-align:center"><strong>&nbsp;<img alt="" src="https://streetstyle.vn/images/companies/1/cvs%20%C4%91en%20tr%E1%BA%AFng%20th%E1%BA%A5p.jpg" style="width:600px" /></strong></p>

<p>Đ&ocirc;i&nbsp;<strong><a href="https://streetstyle.vn/giay-converse/">gi&agrave;y Converse</a></strong>&nbsp;vốn đ&atilde; mang n&eacute;t cổ điển, lại c&ograve;n kết hợp với gam m&agrave;u quyền lực, đen trắng cực k&igrave; dễ phối đồ. Đ&acirc;y kh&ocirc;ng chỉ l&agrave; phong c&aacute;ch m&agrave; nh&agrave; nh&agrave; người người đều biết đến, hơn thế đ&oacute; cũng l&agrave; kiểu m&agrave; mỗi người n&ecirc;n bổ sung ngay v&agrave;o tủ gi&agrave;y của m&igrave;nh.</p>

<p>Ch&iacute;nh sự thoải m&aacute;i v&agrave; trẻ trung m&agrave; Converse đen trắng mang lại gi&uacute;p ch&uacute;ng ta dễ d&agrave;ng kết hợp ch&uacute;ng với nhiều loại quần &aacute;o kh&aacute;c nhau nhưng ph&ugrave; hợp nhất vẫn l&agrave; trang phục thường nhật, thoải m&aacute;i năng đọng. Để sở hữu c&aacute;i nh&igrave;n thoải m&aacute;i giản dị hơn với Converse đen trắng, h&atilde;y bắt đầu với quần jean d&aacute;ng su&ocirc;ng hoặc quần chinos . Bổ sung th&ecirc;m v&agrave;o bộ trang phục thiết kế &aacute;o đơn giản, kh&ocirc;ng qu&aacute; m&agrave;u m&egrave;, phức tạp một chiếc &aacute;o ph&ocirc;ng trắng hoặc đen l&agrave; bạn c&oacute; thể tự tin dạo phố dịp cuối tuần rồi. Hoặc bạn c&oacute; thể thử nghiệm phong c&aacute;ch layer khi kết hợp &aacute;o thun với &aacute;o kho&aacute;c chambray, bomber, vừa đơn giản lại kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh.</p>

<p><strong>Converse cao cổ đen tuyền</strong></p>

<p style="text-align:center"><strong>&nbsp;<img alt="" src="https://streetstyle.vn/images/companies/1/cvs%20all%20black.jpg" style="width:600px" /></strong></p>

<p>Đ&ocirc;i gi&agrave;y cao cổ chỉ to&agrave;n m&agrave;u đen với đen n&agrave;y sẽ mang đến phong c&aacute;ch cực kỳ ấn tượng v&agrave; huyền b&iacute; cho người mang, đặc biệt l&agrave; khi ch&uacute;ng được kết hợp với trang phục ph&ugrave; hợp. Quần jeans ống b&oacute; (skinny jeans) đen hơi bạc m&agrave;u một ch&uacute;t c&oacute; thể coi l&agrave; lựa chọn v&ocirc; c&ugrave;ng l&yacute; tưởng trong việc phối đồ với đ&ocirc;i gi&agrave;y đen c&aacute; t&iacute;nh n&agrave;y. Đối với phần tr&ecirc;n, h&atilde;y giữ mọi thứ thật ngầu v&agrave; nổi bật với &aacute;o ph&ocirc;ng trắng hay m&agrave;u trung t&iacute;nh, hoặc c&oacute; thể thử nghiệm phong c&aacute;ch &aacute;o họa tiết bắt mắt. Phần dưới đen sẽ l&agrave;m nổi bật hơn phẩn tr&ecirc;n của bạn v&agrave; l&agrave;m bộ outfit h&agrave;i h&ograve;a hơn</p>

<p><strong>Converse trắng cao cổ</strong></p>

<p style="text-align:center"><strong>&nbsp;<img alt="" src="https://streetstyle.vn/images/companies/1/cvs%20tr%E1%BA%AFng.jpg" style="width:600px" /></strong></p>

<p><strong><a href="https://www.youtube.com/watch?v=scTqysE4nHQ" target="_blank">Converse trắng cao</a></strong>&nbsp;cổ mang đến n&eacute;t thẩm mỹ cổ điển v&ocirc; c&ugrave;ng tinh tế. Ai lại kh&ocirc;ng th&iacute;ch một đ&ocirc;i gi&agrave;y trắng c&oacute; thể mang với bất k&igrave; bộ out fit n&agrave;o chứ .Bạn c&oacute; thể lựa chọn trang phục denim thường nhật hay quần chinos đơn giản cho buổi hẹn h&ograve; cuối tuần. Tuy nhi&ecirc;n c&oacute; một lưu &yacute; l&agrave; gi&agrave;y cao cổ cao đến mắt c&aacute; ch&acirc;n sẽ trở n&ecirc;n kỳ cục nếu bạn kết hợp với quần xắn gấu. Thay v&agrave;o đ&oacute;, h&atilde;y để quần su&ocirc;ng tự nhi&ecirc;n để tr&ocirc;ng thật thoải m&aacute;i v&agrave; tự do. H&atilde;y ưu lựa chọn những chất liệu mỏng v&igrave; n&oacute; ph&ugrave; hợp hơn với kiểu d&aacute;ng mảnh mai &ocirc;m s&aacute;t của gi&agrave;y cao cổ. Sau c&ugrave;ng, bạn c&oacute; thể ho&agrave;n thiện bộ trang phục với &aacute;o sơ mi trắng đơn giản v&agrave; một &aacute;o kho&aacute;c tối m&agrave;u.</p>

<p>Ngo&agrave;i ra, h&atilde;y nhớ rằng Converse sinh ra l&agrave; để người mang để lại dấu ấn, đừng v&igrave; ch&uacute;ng m&agrave;u trắng m&agrave; giữ kĩ một c&aacute;ch th&aacute;i qu&aacute; . Thậm ch&iacute; l&agrave; đừng ngại l&agrave;m bẩn đ&ocirc;i gi&agrave;y trắng tinh nếu bạn muốn ch&uacute;ng trở n&ecirc;n độc nhất hơn v&agrave; sở hữu c&aacute;i nh&igrave;n bụi phủ đậm chất đường phố hơn. Chỉ c&oacute; bạn mới c&oacute; đ&ocirc;i gi&agrave;y của bạn</p>

<p><strong>Converse trắng thấp cổ</strong></p>

<p>Đ&acirc;y ch&iacute;nh l&agrave; lựa chọn ho&agrave;n hảo nhất cho m&ugrave;a h&egrave; năng động v&agrave; tr&agrave;n đầy sức sống. M&agrave;u sắc tươi s&aacute;ng v&agrave; phong c&aacute;ch đơn giản mang đến cho bất cứ ai sở hữu n&oacute; một vẻ đẹp nhẹ nh&agrave;ng v&ocirc; c&ugrave;ng trẻ trung. Để l&agrave;m n&ecirc;n sự bổ sung ho&agrave;n hảo, h&atilde;y kết hợp với quần m&agrave;u nhạt hoặc s&aacute;ng m&agrave;u như jeans trắng, quần chinos m&agrave;u be để l&agrave;m tổng thể trở n&ecirc;n tươi s&aacute;ng v&agrave; đậm chất m&ugrave;a h&egrave; hơn. Quần jeans sẫm m&agrave;u cũng l&agrave; một lựa chọn kh&ocirc;ng tồi, miễn l&agrave; bạn đảm bảo sự c&acirc;n bằng của cả set đồ với sự tương phản r&otilde; n&eacute;t giữa ch&uacute;ng. Cố gắng để mọi thứ thật giản dị v&agrave; thoải m&aacute;i với &aacute;o ph&ocirc;ng trắng, blazer một h&agrave;ng khuy,&hellip;</p>
', N'/Content/Data/files/cvs%20all%20black.jpg', N'c787ffc1-f333-484e-b176-c76d5c3d85a7', NULL, N'giay-converse', NULL, NULL, NULL, NULL, CAST(N'2019-06-06T12:57:16.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-07T21:34:14.4117284+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'8d6c4773-7233-49d1-8902-524bc4bc6238', N'ĐẾN NGAY GIỜ VÀNG - ƯU ĐÃI NGẬP TRÀN', N'StreetStyle.vn xin gửi đến các bạn chương trình GIỜ VÀNG ƯU ĐÃI như sau:  Khi mua hàng TRỰC TIẾP tại StreetStyle.vn sẽ được giảm giá 10% giày và 15% cho quần áo.', N'den-ngay-gio-vang-uu-dai-ngap-tran', N'<p style="text-align:center"><strong>ĐẾN NGAY GIỜ V&Agrave;NG - ƯU Đ&Atilde;I NGẬP TR&Agrave;N.</strong><br />
<br />
<img alt="" src="https://streetstyle.vn/images/companies/1/StreetStyle.vn.png" style="width:500px" /></p>

<p><br />
<strong>StreetStyle.vn</strong>&nbsp;xin gửi đến c&aacute;c bạn chương tr&igrave;nh&nbsp;<strong>GIỜ V&Agrave;NG ƯU Đ&Atilde;I</strong>&nbsp;như sau:<br />
<br />
Khi mua h&agrave;ng&nbsp;<strong>TRỰC TIẾP</strong>&nbsp;tại&nbsp;<strong>StreetStyle.vn</strong>&nbsp;sẽ được giảm gi&aacute;&nbsp;<strong>10%</strong>&nbsp;gi&agrave;y v&agrave;&nbsp;<strong>15%</strong>&nbsp;cho quần &aacute;o.<br />
<br />
C&aacute;c bạn xem ch&iacute;nh s&aacute;ch&nbsp;<strong>TH&Agrave;NH VI&Ecirc;N</strong>&nbsp;của shop tại đ&acirc;y nh&eacute;:&nbsp;<a href="https://streetstyle.vn/chuong-trinh-khuyen-mai/sinh-nhat-ban-duoc-giam-10-15.html?fbclid=IwAR1lgVAA9shujj6MQzoPmPxYvegvZ6MkJDCHvEvhNqMoAavgmt-RaC5FIsM">https://streetstyle.vn/c&hellip;/sinh-nhat-ban-duoc-giam-10-15.html</a><br />
<br />
Chương tr&igrave;nh Freeship COD TO&Agrave;N QUỐC với đơn h&agrave;ng từ 500k. V&agrave; qu&agrave; tặng vớ StreetStyle, m&oacute;c kho&aacute; sneaker k&egrave;m gi&agrave;y từ 500k vẫn được &aacute;p dụng b&igrave;nh thường.<br />
<br />
Chương tr&igrave;nh k&eacute;o d&agrave;i từ&nbsp;<strong>02/05/2019 đến hết 31/5/2019</strong><br />
<br />
Cảm ơn c&aacute;c bạn đ&atilde; lu&ocirc;n đồng h&agrave;nh v&agrave; ủng hộ&nbsp;<strong>StreetStyle.vn</strong>&nbsp;thời gian qua.<br />
<br />
Ch&uacute;c c&aacute;c bạn sẽ c&oacute; 1 tuần mua sắm thật vui vẻ v&agrave; kỳ nghĩ lễ th&uacute; vị!</p>
', N'/Content/Data/files/StreetStyle_vn.png', N'a2b988e6-9053-4c9d-b6fb-5ade0e050d18', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-07T22:44:24.5343101+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'bf7bbebb-a4e8-41fb-b1df-7a3492d72d57', N'Shop off lúc 19h ngày 15/12 cổ vũ đội tuyển Việt Nam', N'\ Shop Off Từ 19h Đêm Nay \  vì... đêm nay "Bão" lớn sẽ về  #19h30 tối nay, #No_Job, #No_Love, #No_problem, tất cả cùng hướng về đội tuyển Việt Nam cùng trận cuối cùng tại AFFcup2018', N'shop-off-luc-19h-ngay-15-12-co-vu-doi-tuyen-viet-nam', N'<p>\ Shop Off Từ 19h Đ&ecirc;m Nay \</p>

<p>v&igrave;... đ&ecirc;m nay &quot;B&atilde;o&quot; lớn sẽ về</p>

<p><a href="https://www.facebook.com/hashtag/19h30?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAYOHxm0WFgxLVlwNi-5p3Td44BN80n_ERRfAIJmJVdgm_dkZlSGel0k1WqM5Q5xs-DsPxGCzwoOmribhLbkyBpsLwMQkEmL3JCIAnZybt-gpjwwYgLVCwAoTKtg0pdz8ovqFVWQKXWIBf__Qj-ghCWLCXjd62PncKtLxLcbbGTmkElKPIoBWP3rwzq9_WCGkz5nWRPWeWmQvt6qKHQlt-TAKWVMfdCrgIs7HWWmR2xULsGP7Grq8qvUpru4hhDqjmm1gMOyrWew31t-WKSTbHpLqWk8tB7R0sAwm7Q3zmxezgGT9_r8beVIdzDPQM3zyBdI-5RIegzEzyK_WBYkX4CsmC-1P_SXdNb-Qkae-EwAzTPwTFXriC2VNWrgMkhL3UWkwDLMlw4hlItfYnIb1hxRHRWfPY5SDHaEU63qf7opmo&amp;__tn__=%2ANK-R">#19h30</a>&nbsp;tối nay,&nbsp;<a href="https://www.facebook.com/hashtag/no_job?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAYOHxm0WFgxLVlwNi-5p3Td44BN80n_ERRfAIJmJVdgm_dkZlSGel0k1WqM5Q5xs-DsPxGCzwoOmribhLbkyBpsLwMQkEmL3JCIAnZybt-gpjwwYgLVCwAoTKtg0pdz8ovqFVWQKXWIBf__Qj-ghCWLCXjd62PncKtLxLcbbGTmkElKPIoBWP3rwzq9_WCGkz5nWRPWeWmQvt6qKHQlt-TAKWVMfdCrgIs7HWWmR2xULsGP7Grq8qvUpru4hhDqjmm1gMOyrWew31t-WKSTbHpLqWk8tB7R0sAwm7Q3zmxezgGT9_r8beVIdzDPQM3zyBdI-5RIegzEzyK_WBYkX4CsmC-1P_SXdNb-Qkae-EwAzTPwTFXriC2VNWrgMkhL3UWkwDLMlw4hlItfYnIb1hxRHRWfPY5SDHaEU63qf7opmo&amp;__tn__=%2ANK-R">#No_Job</a>,&nbsp;<a href="https://www.facebook.com/hashtag/no_love?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAYOHxm0WFgxLVlwNi-5p3Td44BN80n_ERRfAIJmJVdgm_dkZlSGel0k1WqM5Q5xs-DsPxGCzwoOmribhLbkyBpsLwMQkEmL3JCIAnZybt-gpjwwYgLVCwAoTKtg0pdz8ovqFVWQKXWIBf__Qj-ghCWLCXjd62PncKtLxLcbbGTmkElKPIoBWP3rwzq9_WCGkz5nWRPWeWmQvt6qKHQlt-TAKWVMfdCrgIs7HWWmR2xULsGP7Grq8qvUpru4hhDqjmm1gMOyrWew31t-WKSTbHpLqWk8tB7R0sAwm7Q3zmxezgGT9_r8beVIdzDPQM3zyBdI-5RIegzEzyK_WBYkX4CsmC-1P_SXdNb-Qkae-EwAzTPwTFXriC2VNWrgMkhL3UWkwDLMlw4hlItfYnIb1hxRHRWfPY5SDHaEU63qf7opmo&amp;__tn__=%2ANK-R">#No_Love</a>,&nbsp;<a href="https://www.facebook.com/hashtag/no_problem?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAYOHxm0WFgxLVlwNi-5p3Td44BN80n_ERRfAIJmJVdgm_dkZlSGel0k1WqM5Q5xs-DsPxGCzwoOmribhLbkyBpsLwMQkEmL3JCIAnZybt-gpjwwYgLVCwAoTKtg0pdz8ovqFVWQKXWIBf__Qj-ghCWLCXjd62PncKtLxLcbbGTmkElKPIoBWP3rwzq9_WCGkz5nWRPWeWmQvt6qKHQlt-TAKWVMfdCrgIs7HWWmR2xULsGP7Grq8qvUpru4hhDqjmm1gMOyrWew31t-WKSTbHpLqWk8tB7R0sAwm7Q3zmxezgGT9_r8beVIdzDPQM3zyBdI-5RIegzEzyK_WBYkX4CsmC-1P_SXdNb-Qkae-EwAzTPwTFXriC2VNWrgMkhL3UWkwDLMlw4hlItfYnIb1hxRHRWfPY5SDHaEU63qf7opmo&amp;__tn__=%2ANK-R">#No_problem</a>, tất cả c&ugrave;ng hướng về đội tuyển Việt Nam c&ugrave;ng trận cuối c&ugrave;ng tại AFFcup2018</p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="" src="https://streetstyle.vn/images/companies/1/Vi%E1%BB%87t%20Nam%20v%C3%B4%20%C4%91%E1%BB%8Bch%20AFFcup%202018.jpg" style="width:500px" /></p>

<p>Nhớ m&atilde;i cảm gi&aacute;c đ&oacute; từ năm 2008&nbsp;<img alt="" src="https://static.xx.fbcdn.net/images/emoji.php/v9/tf3/1.5/16/2764.png" style="height:16px; width:16px" /></p>

<p>Ch&uacute;c Việt Nam đ&ecirc;m nay kh&ocirc;ng ngủ như 10 năm trước&nbsp;</p>
', N'/Content/Data/files/Vi%E1%BB%87t%20Nam%20v%C3%B4%20%C4%91%E1%BB%8Bch%20AFFcup%202018.jpg', N'9d1fdd2c-e06d-402b-87de-f8746537bdbf', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-07T22:48:05.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-07T22:49:00.2609067+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'5bfd24f1-e085-49ff-abbd-e6bf4887042f', N'TƯNG BỪNG CHÀO HÈ', N'Khi mua hàng tại StreetStyle.vn sẽ được giảm giá 10% giày và 15% cho quần áo.  Áp dụng cho cả ONLINE và OFFLINE.', N'tung-bung-chao-he-freestyle', N'<p><strong>StreetStyle.vn xin gửi đến c&aacute;c bạn chương tr&igrave;nh&nbsp;TƯNG BỪNG CH&Agrave;O H&Egrave;&nbsp;như sau:</strong></p>

<p><img alt="" src="https://streetstyle.vn/images/companies/1/ch%C3%A0o%20h%C3%A8.png" style="width:500px" /></p>

<p>Khi mua h&agrave;ng tại&nbsp;<strong>StreetStyle.vn</strong>&nbsp;sẽ được giảm gi&aacute; 10% gi&agrave;y v&agrave; 15% cho quần &aacute;o.</p>

<p>&Aacute;p dụng cho cả&nbsp;ONLINE&nbsp;v&agrave;&nbsp;OFFLINE.<br />
<br />
Chương tr&igrave;nh k&eacute;o d&agrave;i&nbsp;<strong>từ&nbsp;21/05/2019 đến hết 30/5/2019</strong><br />
<br />
C&aacute;c bạn xem ch&iacute;nh s&aacute;ch TH&Agrave;NH VI&Ecirc;N của shop tại đ&acirc;y nh&eacute;:&nbsp;<a href="https://streetstyle.vn/chuong-trinh-khuyen-mai/sinh-nhat-ban-duoc-giam-10-15.html?fbclid=IwAR0azgbRV5YdXbt8yCx2z0XRtoplK4cS-YPkJH3E8PO0DtiBC0Hx3Gof6xA">https://streetstyle.vn/chuong-trinh-khuyen-mai/sinh-nhat-ban-duoc-giam-10-15.html?fbclid=IwAR0azgbRV5YdXbt8yCx2z0XRtoplK4cS-YPkJH3E8PO0DtiBC0Hx3Gof6xA</a><br />
<br />
Chương tr&igrave;nh Freeship COD TO&Agrave;N QUỐC với đơn h&agrave;ng từ 500k. V&agrave; qu&agrave; tặng vớ StreetStyle, m&oacute;c kho&aacute; sneaker k&egrave;m gi&agrave;y từ 500k vẫn được &aacute;p dụng b&igrave;nh thường.<br />
<br />
Cảm ơn c&aacute;c bạn gần xa đ&atilde; lu&ocirc;n đồng h&agrave;nh v&agrave; ủng hộ&nbsp;<strong>StreetStyle.vn</strong>&nbsp;trong suốt thời gian qua.</p>
', N'/Content/Data/files/ch%C3%A0o%20h%C3%A8.png', N'a2b988e6-9053-4c9d-b6fb-5ade0e050d18', NULL, N'tung-bung-chao-he-freestyle', NULL, NULL, NULL, NULL, CAST(N'2019-06-07T22:41:28.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-07T22:42:54.6196845+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'6e3a0fa5-b167-45e2-9039-fd4debea35e3', N'Tổng hợp mẹo bảo quản giày vào mùa mưa', N'Mùa mưa chắc hẳn là  kẻ thù lớn nhất của những đôi sneaker, nhất là tại Việt Nam khi mà thời tiết thay đổi thất thường lúc mưa lúc nắng không biết đâu mà lần. Và đặc biệt những cơn mưa dù là nhỏ đi nữa cũng đủ làm cho đôi giày của bạn vấy bẩn (nhất là những đôi giày trắng) và có mùi hôi khó chịu nếu không vệ sinh đúng cách và kịp thời.', N'tong-hop-meo-bao-quan-giay-vao-mua-mua', N'<p>M&ugrave;a mưa chắc hẳn l&agrave;&nbsp; kẻ th&ugrave; lớn nhất của những đ&ocirc;i sneaker, nhất l&agrave; tại Việt Nam khi m&agrave; thời tiết thay đổi thất thường l&uacute;c mưa l&uacute;c nắng kh&ocirc;ng biết đ&acirc;u m&agrave; lần. V&agrave; đặc biệt những cơn mưa d&ugrave; l&agrave; nhỏ đi nữa cũng đủ l&agrave;m cho đ&ocirc;i gi&agrave;y của bạn vấy bẩn (nhất l&agrave; những đ&ocirc;i gi&agrave;y trắng) v&agrave; c&oacute; m&ugrave;i h&ocirc;i kh&oacute; chịu nếu kh&ocirc;ng vệ sinh đ&uacute;ng c&aacute;ch v&agrave; kịp thời.</p>

<p>Kh&oacute; khăn l&agrave; thế nhưng những cơn mưa kh&ocirc;ng thể giết chết nềm ham th&iacute;ch với những đ&ocirc;i gi&agrave;y của ch&uacute;ng ta phải kh&ocirc;ng n&agrave;o? Nếu bạn vẫn muốn diện sneaker v&agrave;o m&ugrave;a mưa n&agrave;y th&igrave; h&atilde;y &aacute;p dụng ngay những mẹo sau của&nbsp;<strong><a href="https://www.facebook.com/StreetStyleStorevn/?ref=br_rs">StreetStyle.vn</a></strong>&nbsp;nh&eacute;.</p>

<p><strong>1. Hạn chế mang gi&agrave;y l&agrave;m bằng da lộn</strong></p>

<p style="text-align:center"><strong>&nbsp;<img alt="" src="https://streetstyle.vn/images/companies/1/rain-shoes-1519620455.jpg" style="width:600px" /></strong></p>

<p>Trong số c&aacute;c chất liệu sử dụng để l&agrave;m sneaker th&igrave; kẻ th&ugrave; lớn nhất của nước ch&iacute;nh l&agrave; da lộn. Khi tiếp x&uacute;c với nước, bề mặt da lộn rất dễ bị bị x&ugrave; l&ocirc;ng, kh&ocirc;ng th&igrave; cũng cứng v&agrave; bay m&agrave;u. &Ocirc;ng b&agrave; ta c&oacute; c&acirc;u &ldquo;ph&ograve;ng bệnh hơn chữa bệnh&rdquo;, thay v&igrave; phải đắng đo l&agrave;m sao để giữ cho gi&agrave;y da lộn sạch khi đi mưa th&igrave; ch&uacute;ng ta c&oacute; thể đơn giản l&agrave; kh&ocirc;ng mang ch&uacute;ng ra đường v&agrave;o m&ugrave;a n&agrave;y.</p>

<p><strong>2. N&ecirc;n chọn những đ&ocirc;i gi&agrave;y c&oacute; chất liệu Gore-Tex v&agrave; một số loại gi&agrave;y thiết kế chuy&ecirc;n dụng cho m&ugrave;a mưa</strong></p>

<p>Tr&aacute;i ngược với da lộn Gore-Tex l&agrave; một chất liệu đặc biệt với khả năng chống nước v&agrave; bền tuyệt đối, cho n&ecirc;n việc mang những đ&ocirc;i gi&agrave;y l&agrave;m bằng chất liệu n&agrave;y v&agrave;o những ng&agrave;y mưa sẽ kh&ocirc;ng phải l&agrave; vấn đề.</p>

<p>Tuy nhi&ecirc;n đừng lội nước qu&aacute; s&acirc;u v&igrave; gi&agrave;y kh&ocirc;ng thể chống nước khi nước lọt v&agrave;o cổ gi&agrave;y. V&agrave; tất nhi&ecirc;n nước kh&ocirc;ng v&agrave;o được th&igrave; cũng sẽ kh&ocirc;ng tho&aacute;t ra được, nếu để những đ&ocirc;i gi&agrave;y đ&oacute; v&ocirc; nước th&igrave; sẽ rất kh&oacute; chịu v&igrave; phải mang theo một đống nước tr&ecirc;n ch&acirc;n. Converse Rubber hay Vans trong bộ sưu tập All Weather MTE cũng l&agrave; một trong những lựa chọn hợp l&yacute; cho m&ugrave;a mưa ngập lụt n&agrave;y đấy.</p>

<p><strong>3. Sử dụng&nbsp;</strong><strong><a href="https://streetstyle.vn/xit-nano-protector-400ml-vi.html">chai xịt chống nước</a></strong><strong>:</strong></p>

<p style="text-align:center"><strong>&nbsp;<img alt="" src="https://streetstyle.vn/images/companies/1/IMG_1144.jpg" style="width:600px" /></strong></p>

<p>Tất nhi&ecirc;n kh&ocirc;ng phải đ&ocirc;i gi&agrave;y n&agrave;o cũng l&agrave;m bằng chất liệu chống nước v&agrave; cũng kh&ocirc;ng phải đ&ocirc;i gi&agrave;y chống nước n&agrave;o cũng l&agrave;m bạn y&ecirc;u th&iacute;ch v&agrave; sẵn s&agrave;n m&oacute;c hầu bao. Trong trường hợp gi&agrave;y của bạn kh&ocirc;ng c&oacute; khả năng chống nước th&igrave; việc sử dụng c&aacute;c loại xịt chống nước (phủ nano) l&agrave; việc cần l&agrave;m khi di chuyển dưới mưa. Một số sản phẩm nổi bật l&agrave; Repel của Jason Markk hay Crep Protect. Nguy&ecirc;n tắc hoạt động chung của c&aacute;c loại xịt n&agrave;y l&agrave; tạo ra một lớp m&agrave;ng nano bảo vệ cho lớp chất liệu b&ecirc;n dưới n&oacute;.</p>

<p>&nbsp;</p>

<p><strong>4. Lu&ocirc;n thủ sẵn D&eacute;p + t&uacute;i nilong:</strong></p>

<p style="text-align:center"><img alt="" src="https://streetstyle.vn/images/companies/1/d%C3%A9p.jpg" style="width:600px" /></p>

<p>D&ugrave; l&agrave; sản phẩm sịt chống nước của h&atilde;ng n&agrave;o đi nữa th&igrave; cũng c&oacute; một số khuyết điểm nhỏ. Chẳng hạn như kh&ocirc;ng thể chống nước ở phần cổ gi&agrave;y chẳng hạn. Trong trường hợp mưa qu&aacute; to, đi k&egrave;m với ngập lụt, h&atilde;y lu&ocirc;n thủ sẵn theo b&ecirc;n m&igrave;nh một đ&ocirc;i d&eacute;p nhẹ để thay ra khi cần v&agrave; d&ugrave;ng t&uacute;i nilong để bỏ gi&agrave;y v&agrave;o.</p>

<p><strong>5. Vệ sinh gi&agrave;y ngay sau khi đi mưa về</strong></p>

<p>Nếu như bạn đ&atilde; l&agrave;m mọi c&aacute;ch để bảo vệ đ&ocirc;i gi&agrave;y th&acirc;n y&ecirc;u của m&igrave;nh nhưng ch&uacute;ng vẫn bị bẩn th&igrave; điều bạn cần quan t&acirc;m tiếp theo đ&oacute; l&agrave; c&aacute;ch vệ sinh. Gi&agrave;y cần phải được v&ecirc; sinh ngay sau khi đi mưa về bởi v&igrave; nước mưa kh&aacute; bẩn, dễ d&agrave;ng g&acirc;y ẩm mốc cho đ&ocirc;i sneaker của bạn nếu để l&acirc;u. Đặc biệt l&agrave; c&aacute;c chất liệu primeknit hay flyknit rất thấm nước v&agrave; cực k&igrave; kị bị lội nước.</p>

<p>Nếu gi&agrave;y bạn sử dụng đế Boost hay bất cứ đế n&agrave;o kh&aacute;c m&agrave;u trắng, h&atilde;y nhanh ch&oacute;ng lau kh&ocirc; ch&uacute;ng v&igrave; gặp nước đế Boost rất dễ bị v&agrave;ng.</p>

<p>Sau khi vệ sinh xong h&atilde;y phơi gi&agrave;y nơi tho&aacute;ng m&aacute;t để gi&agrave;y mau kh&ocirc;, tuyệt đối kh&ocirc;ng phơi dưới nắng v&igrave; nắng sẽ l&agrave;m hư chất liệu đ&ocirc;i gi&agrave;y của bạn (thật ra th&igrave; m&ugrave;a mưa cũng chả mấy khi c&oacute; nắng).</p>

<p><strong>6. Bảo quản gi&agrave;y ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</strong></p>

<p>Kh&ocirc;ng chỉ c&oacute; nước mưa m&agrave; những nơi tối, thiếu &aacute;nh s&aacute;ng hoặc ẩm ướt trong nh&agrave; cũng l&agrave; một trong những nguy&ecirc;n nh&acirc;n khiến đ&ocirc;i gi&agrave;y y&ecirc;u dấu của bạn mau ch&oacute;ng &ldquo;xuống cấp&rdquo;. Kh&ocirc;ng những thế, v&agrave;o những ng&agrave;y mưa sẽ c&oacute; nhiều nơi trong nh&agrave; bạn trở n&ecirc;n ẩm hơn, c&aacute;c bạn cần ch&uacute; &yacute; thật cẩn thận để lựa chọn nơi để gi&agrave;y v&agrave;o m&ugrave;a n&agrave;y. H&atilde;y tr&aacute;nh xa những chỗ bị ngập hoặc dột ra v&igrave; đ&oacute; l&agrave; c&aacute;ch nhanh nhất để ph&aacute; hỏng đ&ocirc;i gi&agrave;y của c&aacute;c bạn.</p>
', N'/Content/Data/files/rain-shoes-1519620455.jpg', N'c787ffc1-f333-484e-b176-c76d5c3d85a7', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-06T13:06:58.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-07T21:37:21.6947954+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[NewsCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a2b988e6-9053-4c9d-b6fb-5ade0e050d18', N'Khuyến mãi', N'khuyen-mai', NULL, 1, N'khuyen-mai', N'khuyen-mai', CAST(N'2019-06-06T12:35:39.9620651+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[NewsCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c787ffc1-f333-484e-b176-c76d5c3d85a7', N'Chăm sóc khách hàng', N'cham-soc-khach-hang', NULL, 3, N'cham-soc-khach-hang', N'cham-soc-khach-hang', CAST(N'2019-06-06T12:36:29.4368490+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[NewsCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'9d1fdd2c-e06d-402b-87de-f8746537bdbf', N'Sự kiện', N'su-kien', NULL, 2, N'su-kien', N'su-kien', CAST(N'2019-06-06T12:36:06.9230031+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[Order] ([Id], [UserId], [ShipName], [ShipPhone], [ShipAddress], [ShipEmail], [Status], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'de421815-26ec-4f6f-8b19-51bb1b944319', N'34f97ad8-b22c-43ef-8e0a-9205115e3a9a', N'Đinh Thành Nghĩa', N'0988944608', N'33 Xô Viết Nghệ Tĩnh, Hải Châu, Đà Nẵng', N'dtnghia2510@gmail.com', 1, CAST(N'2019-06-11T15:23:01.1546756+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[Order] ([Id], [UserId], [ShipName], [ShipPhone], [ShipAddress], [ShipEmail], [Status], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'bde109ba-5890-4e61-8051-e0d04d8d352e', N'34f97ad8-b22c-43ef-8e0a-9205115e3a9a', N'Đinh Thành Nghĩa', N'0988944608', N'33 Xô Viết Nghệ Tĩnh, Hải Châu, Đà Nẵng', N'dtnghia2510@gmail.com', 1, CAST(N'2019-06-11T16:09:58.9518950+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[OrderDetail] ([ProductId], [OrderId], [Quantity], [Price], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'79ecab79-012d-4a7a-896d-3ea453a7d4ec', N'bde109ba-5890-4e61-8051-e0d04d8d352e', 1, CAST(1750000 AS Decimal(18, 0)), CAST(N'2019-06-11T16:09:59.2052553+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[OrderDetail] ([ProductId], [OrderId], [Quantity], [Price], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'73586220-5579-426b-b831-ed1f166ae0f1', N'de421815-26ec-4f6f-8b19-51bb1b944319', 3, CAST(199000 AS Decimal(18, 0)), CAST(N'2019-06-11T15:23:01.3683569+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[OrderDetail] ([ProductId], [OrderId], [Quantity], [Price], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'73586220-5579-426b-b831-ed1f166ae0f1', N'bde109ba-5890-4e61-8051-e0d04d8d352e', 2, CAST(199000 AS Decimal(18, 0)), CAST(N'2019-06-11T16:09:59.1683841+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'8cf42ce1-6f0d-4d97-9b1d-03cf821bf39e', N'REEBOK FLOATRIDE RUN FLEXWEAVE', NULL, N'reebok-floatride-run-flexweave', N'<h3>Materials</h3>

<p>Chất liệu: Th&acirc;n giầy sử dụng c&ocirc;ng nghệ Flexweave bền tăng cường khả năng tho&aacute;ng kh&iacute;, độ ổn định v&agrave; linh hoạt</p>

<h3>Fit</h3>

<p>Best for: Long distance runs, including marathons, half marathons, 10Ks</p>

<h3>Technology</h3>

<p>Đế gi&agrave;y sử dụng c&ocirc;ng nghệ m&uacute;t xốp Floatride đem lại cảm gi&aacute;c &ecirc;m nhẹ, đ&aacute;p ứng mọi y&ecirc;u cầu của người sử dụng</p>

<h3>Product Code</h3>

<p>FLOATRIDE RUN FLEXWEAVE_M</p>
', N'/Content/Data/files/cn5237_fsl_ecom.jpg', CAST(3590000 AS Decimal(18, 0)), NULL, 0, 5, N'185e17eb-86c3-4323-8faf-6fcbb2e7bd08', N'Chạy nhanh hơn, chạy xa hơn với công nghệ Floatride Run và Fleaxweave (TM)', NULL, N'reebok-floatride-run-flexweave', NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-06-05T12:48:56.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-09T17:57:48.9485071+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'836c11c8-c252-45b6-9604-08de7011869a', N'Converse Jack Purcell Leather', NULL, N'converse-jack-purcell-leather', N'<p>Kiểu d&aacute;ng Jack Purcell cổ điển với tone m&agrave;u All-White thanh lịch, thời thượng, đặc biệt hơn l&agrave; chất liệu da cao cấp bền bỉ để bạn dễ d&agrave;ng vệ sinh. Mọi sự kết hợp sẽ trở n&ecirc;n dễ d&agrave;ng hơn khi bạn sở hữu trong tủ gi&agrave;y của m&igrave;nh một item như thế n&agrave;y nh&eacute;!</p>
', N'/Content/Data/files/165664C.jpg', CAST(2000000 AS Decimal(18, 0)), NULL, 0, 5, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'SKU: 164225C, Chất liệu: Da, Màu sắc: Trắng', NULL, N'converse-jack-purcell-leather', N'converse-jack-purcell-leather', NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-05T12:17:43.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-09T17:57:59.1238850+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'e8ab3637-5fa0-4b12-93ce-0e11bde67845', N'Jordan 4 ST2030', NULL, N'jordan-4-st2030', N'<p>GI&Agrave;Y CẶP Đ&Ocirc;I THỂ THAO JORDAN 4 ST2030 - C&oacute; rất nhiều c&aacute;ch để những người đang y&ecirc;u thể hiện t&igrave;nh cảm cho nhau. Trong đ&oacute;, đi gi&agrave;y couple gi&agrave;y cặp gi&agrave;y đ&ocirc;i l&agrave; một c&aacute;ch rất hay. Vừa thể hiện cho mọi người thấy rằng hai bạn l&agrave; một cặp, vừa thể hiện được sự đồng điệu của cả hai khi tr&ecirc;n người mang một m&oacute;n đồ chung. Hai người mang một đ&ocirc;i gi&agrave;y giống nhau giống như nguyện ước được đi c&ugrave;ng nhau tới cuối chặng đường đời.</p>
', N'/Content/Client/images/abt-1.jpg', CAST(299000 AS Decimal(18, 0)), NULL, 0, 20, N'de613250-d551-435b-9613-2f67164a78f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-06-03T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:29:41.8098390+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'07b8ca65-0fa3-4aad-aace-1944c6740869', N'Converse Chuck Taylor', NULL, N'converse-chuck-taylor', N'<p>Phi&ecirc;n bản Chuck Taylor cổ thấp đầy nữ t&iacute;nh với tone m&agrave;u xanh dịu nhẹ. Đặc biệt sự đồng bộ đến từ phần th&acirc;n gi&agrave;y v&agrave; viền xung quanh đế gi&agrave;y cho bạn một item thời trang, nổi bật. Chất liệu Textile mềm nhẹ, được dệt tỉ mỉ gi&uacute;p bạn c&oacute; được sự th&ocirc;ng tho&aacute;ng, thoải m&aacute;i</p>
', N'/Content/Data/files/564345C-DRAKE-650x650.jpg', CAST(1300000 AS Decimal(18, 0)), NULL, 0, 5, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'SKU: 564345C, Chất liệu: Textile,  Màu sắc: Xanh', NULL, N'converse-chuck-taylor', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-05T12:21:03.1376893+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'79ecab79-012d-4a7a-896d-3ea453a7d4ec', N'Vans Oldskool Mash Up Stickers', NULL, N'vans-oldskool-mash-up-stickers', N'<p>Kiểu d&aacute;ng Old Skool kinh điển với hai đường lượn s&oacute;ng trắng ở hai b&ecirc;n th&acirc;n gi&agrave;y c&ugrave;ng họa tiết Sticks Vans bắt mắt v&agrave; ngộ nghĩnh mang đến sản phẩm nổi bật. Sự đa dạng về m&agrave;u sắc cũng như thiết kế dễ mang, item chắc chắn sẽ kh&ocirc;ng l&agrave;m bạn phải kh&oacute; khăn trong việc mix&amp;match.</p>
', N'/Content/Data/files/VN0A38G1VFV-DRAKE-650x650.jpg', CAST(1750000 AS Decimal(18, 0)), NULL, 0, 5, N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'SKU: VN0A38G1VFV Chất liệu: Da lộn/Canvas Màu sắc: Stickers/True White', NULL, N'vans-oldskool-mash-up-stickers', N'vans-oldskool-mash-up-stickers', NULL, 1, NULL, NULL, NULL, CAST(N'2019-06-05T12:29:41.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-11T18:52:54.9386662+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'd22b1e54-b2d1-4375-86b7-41596036ab8c', N'Adidas X18.1 FG', NULL, N'adidas-x18.1-fg', N'<p>Gi&agrave;y b&oacute;ng đ&aacute; đinh cao Adidas X18.1 FG +M&agrave;u sắc : Xanh n&otilde;n chuối cực k&igrave; nổi bật ki ra s&acirc;n +Thiết kế : Cao su tổng hợp chất liệu si&ecirc;u nhẹ rất th&iacute;ch hợp cho cầu thủ c&oacute; lỗi chơi tốc độ cao, đinh FG bằng nhựa c&oacute; độ cao vừa phải gi&uacute;p b&aacute;m s&acirc;n cực tốt ,ngay cả trong điều kiện s&acirc;n ẩm ướt.</p>
', N'/Content/Client/images/abt-2.jpg', CAST(759000 AS Decimal(18, 0)), CAST(590000 AS Decimal(18, 0)), 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-05-04T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:22:05.5690807+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'6af940c9-ab84-40f8-b433-42daec387bb9', N'Adidas EQT 2018', NULL, N'adidas-eqt-2018', N'<p>Gi&agrave;y Adidas EQT&nbsp;2018&nbsp;l&agrave; một trong những sản phẩm mới nhất kết hợp form d&aacute;ng của NMD đ&atilde; qu&aacute; th&agrave;nh c&ocirc;ng. Nếu bạn đang t&igrave;m kiếm một sản phẩm đ&aacute;p ứng được nhiều nhiệm vụ trong c&ugrave;ng một ng&agrave;y th&igrave; Adidas EQT l&agrave; một sản phẩm m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua bởi những yếu tố.<br />
Sự năng động trong kh&acirc;u thiết kế kết hợp sự tiện dụng tối đa cho kh&aacute;ch h&agrave;ng sử dụng. Chất liệu thun dệt thuần t&uacute;y đẹp mắt bền bỉ tho&aacute;ng kh&iacute; sẽ đem lại một trải nghiệm tuyệt vời khi sử dụng.</p>
', N'/Content/Client/images/abt-3.jpg', CAST(699000 AS Decimal(18, 0)), CAST(590000 AS Decimal(18, 0)), 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-06-04T11:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:20:48.2211555+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'510c5367-ff16-4646-9cd8-44770a7748d7', N'Adidas Tubular 2019', NULL, N'adidas-tubular-2019', N'<p>Thiết kế của gi&agrave;y adidas tubular dawn&nbsp;&ocirc;m trọn ph&ugrave; hợp với mọi b&agrave;n ch&acirc;n tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng. Đế gi&agrave;y th&iacute;ch ứng với mọi địa h&igrave;nh.<br />
Loại gi&agrave;y: Original<br />
M&agrave;u sắc: x&aacute;m, đen</p>
', N'/Content/Client/images/shoes-1.png', CAST(599000 AS Decimal(18, 0)), CAST(499000 AS Decimal(18, 0)), 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-01T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:21:50.8355256+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'60f7f5f4-7b22-41ac-a8c0-7017a3b85aee', N'AHARY RUNNER', N'AHARY RUNNER_M', N'ahary-runner', N'<h3>Materials</h3>

<p>Chất liệu: Th&acirc;n gi&agrave;y được thiết kế với lớp lưới ngụy trang đem lại cảm gi&aacute;c tho&aacute;ng m&aacute;t tự nhi&ecirc;n v&agrave; thoải m&aacute;i</p>

<h3>Fit</h3>

<p>Designed for: 5K running, long walks, low-mileage training</p>

<h3>Technology</h3>

<p>Thiết kế gi&agrave;y cổ thấp gi&uacute;p người sử dụng tự do vận động v&ugrave;ng mắt c&aacute; ch&acirc;n v&agrave; chuyển động t&aacute;c nhanh ch&oacute;ng</p>

<h3>Product Code</h3>

<p>AHARY RUNNER_M</p>
', N'/Content/Data/files/cn5333_fsl_ecom.jpg', CAST(2150000 AS Decimal(18, 0)), NULL, 0, 5, N'185e17eb-86c3-4323-8faf-6fcbb2e7bd08', N'Giầy chạy bộ tốc độ thấp với các chi tiết thiết kế tinh xảo', NULL, N'ahary-runner', N'ahary-runner', NULL, 1, NULL, NULL, NULL, CAST(N'2019-06-05T12:46:31.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-05T12:49:39.5254072+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c042f922-9fd4-4a0e-8056-8e904cc5e5cf', N'Nike Air Zoom', NULL, N'nike-air-zoom-generation', N'<p>Nike Air Zoom &nbsp;đem đến một cảm gi&aacute;c mới lạ ho&agrave;n to&agrave;n so với c&aacute;c thế hệ tiền nhiệm trước đ&oacute; của Nike, với c&ocirc;ng nghệ chủ đạo l&agrave; sợi Dynamic Flywire, sẽ đe lại cảm gi&aacute;c thoải m&aacute;i v&agrave; độ vừa vặn tối đa, trong khi kiến tr&uacute;c thiết kế Flymesh ở phần upper gi&uacute;p tăng cường khả năng hỗ trợ mu b&agrave;n ch&acirc;n.<br />
Phần đế trong của gi&agrave;y thể thao Nike Air Zoom được tăng cường gấp ba lần mật độ bọt gi&uacute;p giảm &aacute;p lực trong những pha xoay ch&acirc;n, v&agrave; đem lại sự &ecirc;m &aacute;i, dễ chịu trong c&aacute;c hoạt động tập luyện thường ng&agrave;y.<br />
Đặc điểm nổi bật của d&ograve;ng&nbsp;gi&agrave;y thể thao&nbsp;Nike Air ch&iacute;nh l&agrave; b&iacute; mật nằm ở ph&iacute;a dưới gầm gi&agrave;y, đ&oacute; l&agrave; một t&uacute;i kh&iacute;, c&oacute; chức năng l&agrave;m giảm c&aacute;c t&aacute;c động mạnh l&ecirc;n đ&ocirc;i ch&acirc;n, đồng thời đem lại khả năng &ecirc;m &aacute;i, linh hoạt v&agrave; v&ocirc; c&ugrave;ng dễ chịu.</p>
', N'/Content/Client/images/shoes-2.png', CAST(699000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-05-30T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:22:33.0180693+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'b14e06c8-8cd6-4c9c-b3a3-95ea614e799a', N'Nike Air Uptempo', NULL, N'nike-air-uptempo', N'<p>Gi&agrave;y thể thao Nike Air Uptempo , Varsity Red - một trong những mẫu gi&agrave;y được y&ecirc;u th&iacute;ch nhất ở thời điểm hiện tại. Mẫu Nike Air Uptempo đ&atilde; dần được Nike hồi sinh với cả phối m&agrave;u cũ v&agrave; mới. Tiếp nối cho c&aacute;c ph&aacute;t h&agrave;nh More Uptempo trước đ&acirc;y, Nike cho ra mắt phối m&agrave;u Bulls của d&ograve;ng gi&agrave;y với thiết kế hầm hố v&agrave; độc đ&aacute;o n&agrave;y.</p>
', N'/Content/Client/images/shoes-3.png', CAST(759000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-05-24T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:23:00.9496653+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'44a76484-6ac2-4d48-a5c7-97448c545ab0', N'New Balance 572', NULL, N'new-balance-572', N'<p>Với kiểu d&aacute;ng cổ điển, cấu tr&uacute;c gi&agrave;y được thiết kế mang lại cảm gi&aacute;c thoải m&aacute;i, lớp da cao cấp bao phủ upper, lỗ th&ocirc;ng hơi ở mũi gi&agrave;y c&oacute; t&aacute;c dụng gi&uacute;p đ&ocirc;i ch&acirc;n được th&ocirc;ng tho&aacute;ng&nbsp;c&ugrave;ng với phần đệm REVlite, đệm cổ gi&agrave;y v&agrave; outsole cao su với độ b&aacute;m tốt hơn, New Balance 572 l&agrave; mẫu gi&agrave;y kh&ocirc;ng thể bị đ&aacute;nh bại.</p>
', N'/Content/Data/files/442823965ba2ba421c8991433c31a3ac.jpg', CAST(3590000 AS Decimal(18, 0)), NULL, 0, 5, N'49df2e48-4b19-477c-a87b-aec64de21e48', N'New Balance 572 là mẫu giày mang thiết kế đẹp mắt, trẻ trung, có thể được xếp vào danh sách không bao giờ lỗi mốt của New Balance.', NULL, N'new-balance-572', N'new-balance-572', NULL, NULL, NULL, 1, NULL, CAST(N'2019-06-05T12:57:38.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-05T12:59:33.1304280+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'11b4d958-69e7-47b5-afe0-9f1b49e1b01e', N'Vans ComfyCush Era', NULL, N'vans-comfycush-era', N'<p>Ứng dụng c&ocirc;ng nghệ ComfyCush v&agrave;o đ&ocirc;i gi&agrave;y Vans Era c&oacute; phần đệm ở cổ ch&acirc;n. Đặc biệt l&agrave; sự kết hợp của 2 tone m&agrave;u tương phản V&agrave;ng - Xanh kh&aacute; nổi bật. Vans ComfyCush Era đ&atilde; mang đến cho người d&ugrave;ng một trải nghiệm kh&aacute;c biệt với trọng lượng v&ocirc; c&ugrave;ng nhẹ. Đặc biệt l&agrave; sự cải tiến to&agrave;n bộ nội thất b&ecirc;n trong đ&ocirc;i gi&agrave;y, gi&uacute;p bạn linh hoạt, nhẹ nh&agrave;ng hơn trong việc di chuyển.</p>
', N'/Content/Data/files/VN0A3WM9VNO-DRAKE-650x650.jpg', CAST(2200000 AS Decimal(18, 0)), NULL, 0, 5, N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'SKU: VN0A3WM9VNO, Chất liệu: Vải Canvas, Màu sắc: Xanh/Vàng', NULL, N'vans-comfycush-era', N'vans-comfycush-era', NULL, 1, NULL, NULL, NULL, CAST(N'2019-06-05T12:44:24.6006977+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c9d85df8-6a73-4c5f-b10e-a7a73bd0e09a', N'Nike Vapor Max 2019', NULL, N'nike-vapor-max-2019', N'<p>Gi&agrave;y&nbsp;Nike Air VaporMax 2019&nbsp;<br />
Nguồn gốc:&nbsp;&nbsp; &nbsp;H&agrave;ng ch&iacute;nh h&atilde;ng<br />
H&atilde;ng sản xuất:&nbsp;&nbsp; &nbsp;Nike<br />
Mục đ&iacute;ch sử dụng:&nbsp;&nbsp; &nbsp;Gi&agrave;y đi h&agrave;ng ng&agrave;y, gi&agrave;y thể thao chạy bộ<br />
K&iacute;ch cỡ:&nbsp;&nbsp; &nbsp;36-45<br />
M&agrave;u sắc:&nbsp;&nbsp; &nbsp;Nhiều m&agrave;u<br />
T&igrave;nh trạng:&nbsp;&nbsp; &nbsp;Mới 100%, Full box<br />
M&atilde; sản phẩm&nbsp;&nbsp; &nbsp;&nbsp;#AR6631-400</p>
', N'/Content/Client/images/b-1.jpg', CAST(259000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2019-06-03T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:23:20.2008100+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'59ded37f-c008-4f40-9af6-c34691f826e2', N'LunarEpic Low Flyknit', NULL, N'lunar-epic-low-fly-knit-2', N'<p>Sock-Like Fit<br />
Vải Nike Flyknit được thiết kế để quấn ch&acirc;n của bạn như một c&aacute;i t&uacute;i cho một bộ v&eacute;t v&uacute; tự nhi&ecirc;n, vừa vặn với mọi cử động.<br />
Chuyển đổi Mượt<br />
Đệm đệm lunarlon l&agrave; một sự kết hợp của bọt mềm v&agrave; vững chắc gi&uacute;p hấp thụ t&aacute;c động v&agrave; tạo ra sự chuyển đổi từ g&oacute;t ch&acirc;n sang mượt.<br />
Nhắm mục ti&ecirc;u đệm<br />
Dựa tr&ecirc;n c&aacute;c điểm chịu &aacute;p lực của người chạy bộ khi di chuyển, đế ngo&agrave;i c&oacute; c&aacute;c khu vực đệm ở nơi bạn cần nhất.</p>
', N'/Content/Client/images/shoes-13.png', CAST(229000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-05-21T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:23:43.2620444+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a410db7a-d414-41df-bad6-c6c636940977', N'Vans Anaheim Factory Style 73 DX', NULL, N'vans-anaheim-factory-style-73-dx-vn0a3wlqvtm', N'<p>Kiểu d&aacute;ng Old Skool kinh điển với hai đường lượn s&oacute;ng trắng ở hai b&ecirc;n th&acirc;n gi&agrave;y c&ugrave;ng họa tiết Sticks Vans bắt mắt v&agrave; ngộ nghĩnh mang đến sản phẩm nổi bật. Sự đa dạng về m&agrave;u sắc cũng như thiết kế dễ mang, item chắc chắn sẽ kh&ocirc;ng l&agrave;m bạn phải kh&oacute; khăn trong việc mix&amp;match.</p>
', N'/Content/Data/files/VN0A38G1VFV-DRAKE-650x650(1).jpg', CAST(1750000 AS Decimal(18, 0)), NULL, 0, 10, N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'SKU: VN0A38G1VFV Chất liệu: Da lộn/Canvas Màu sắc: Stickers/True White', NULL, N'van', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-08T12:03:57.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-13T13:34:21.3733579+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'90bff1e5-4b44-4d2c-813b-c94fdad898ff', N'Nike Air“Just Do It”', NULL, N'nike-air-max-just-do-it', N'<p>Nike ra mắt BST &ldquo;Just Do It&rdquo; chịu ảnh hưởng của loạt sản phẩm OFF-WHITE trước đ&acirc;y Ngay khi những h&igrave;nh ảnh đầu ti&ecirc;n của phi&ecirc;n bản n&agrave;y xuất hiện, đ&atilde; c&oacute; nhiều &yacute; kiến cho rằng thiết kế n&agrave;y chịu ảnh hưởng cả về m&agrave;u sắc lẫn những họa tiết từ c&aacute;c si&ecirc;u phẩm hợp t&aacute;c c&ugrave;ng OFF-WHITE ra mắt trước đ&acirc;y. C&acirc;u tagline &ldquo;JUST DO IT&rdquo; đặc trưng của h&atilde;ng được đặt ở kh&aacute; nhiều vị tr&iacute; tr&ecirc;n th&acirc;n gi&agrave;y, &aacute;p dụng theo phong c&aacute;ch m&agrave; Virgil Abloh từng sử dụng rất th&agrave;nh c&ocirc;ng.</p>
', N'/Content/Client/images/shoes-5.png', CAST(599000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-05-25T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:23:59.0556416+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'1cdc746d-7b42-4666-baad-d3ca4411b2fe', N'Puma Tsugi Blaze', NULL, N'puma-tsugi-blaze', N'<p>C&aacute;c Tsugi Blaze evoKNIT t&iacute;nh năng độc đ&aacute;o lớp đ&uacute;c mềm, cũng như một g&oacute;t ch&acirc;n dệt m&aacute;u me, cung cấp hỗ trợ v&agrave; xung quanh một đan tr&ecirc;n với lớp phủ da lộn.&nbsp;Một thiết kế tr&ecirc;n m&agrave; l&agrave;m gi&agrave;y n&agrave;y ở lại đ&uacute;ng với Blaze ban đầu của Glory.&nbsp;C&aacute;c dụng cụ đi&ecirc;u khắc c&aacute;c t&iacute;nh năng của c&ocirc;ng nghệ Ignite, khiến n&oacute; trở th&agrave;nh sneaker ho&agrave;n hảo cho những người y&ecirc;u th&iacute;ch sự thoải m&aacute;i v&agrave; kiểu d&aacute;ng thời trang-forward.<br />
PUMA l&agrave; thương hiệu thể thao to&agrave;n cầu m&agrave; cầu ch&igrave; th&agrave;nh c&ocirc;ng ảnh hưởng từ thể thao, lối sống v&agrave; thời trang.&nbsp;quan điểm c&ocirc;ng nghiệp độc đ&aacute;o của PUMA mang lại những bất ngờ trong thể thao-lối sống gi&agrave;y d&eacute;p, quần &aacute;o v&agrave; phụ kiện, th&ocirc;ng qua đổi mới kỹ thuật v&agrave; thiết kế mang t&iacute;nh c&aacute;ch mạng.</p>
', N'/Content/Client/images/shoes-6.png', CAST(499000 AS Decimal(18, 0)), NULL, 0, 20, N'9f0de121-5036-4a23-a37e-176e1fab5ffc', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-05-26T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:24:12.1387702+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'cc41105a-fde4-4e45-b479-d84e35b6f6e2', N'Adidas Yeezy Super', NULL, N'adidas-yeezy-super-2019', N'<p>☘️&nbsp;M&atilde;:&nbsp;YB090</p>

<p>✔️&nbsp;Sản xuất: Made in Viet Nam</p>

<p>✔️&nbsp;Loại h&agrave;ng: H&agrave;ng xuất dư</p>

<p>✔️&nbsp;Mẫu m&atilde;: 100% so với Au</p>

<p>✔️&nbsp;Độ bền: 99% so với Au</p>

<p>✔️&nbsp;M&agrave;u sắc: X&aacute;m cam</p>

<p>✔️&nbsp;Size: 24 &ndash; 35</p>

<p>🎁🎁&nbsp;H&agrave;ng Full box</p>
', N'/Content/Client/images/shoes-7.png', CAST(999000 AS Decimal(18, 0)), NULL, 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-05-28T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:31:53.5629762+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c4ecf378-3f7a-42da-af1c-e16ba17e5b6b', N'Nike Air Force 1 Mid', NULL, N'nike-air-force-1-mid', N'<p>Gi&agrave;y Nike Air Force 1 Mid &#39;07<br />
Nguồn gốc:&nbsp;&nbsp; &nbsp;Ch&iacute;nh h&atilde;ng<br />
H&atilde;ng sản xuất:&nbsp;&nbsp; &nbsp;Nike<br />
Mục đ&iacute;ch sử dụng:&nbsp;&nbsp; &nbsp;Gi&agrave;y đi h&agrave;ng ng&agrave;y, gi&agrave;y thể thao chạy bộ<br />
K&iacute;ch cỡ:&nbsp;&nbsp; &nbsp;36-44<br />
M&agrave;u sắc:&nbsp;&nbsp; &nbsp;Nhiều m&agrave;u<br />
T&igrave;nh trạng:&nbsp;&nbsp; &nbsp;Mới 100%, Full box<br />
M&atilde; SP:&nbsp;&nbsp; &nbsp;#82NK007</p>
', N'/Content/Client/images/b-2.jpg', CAST(1190000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2019-06-02T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:24:28.7050123+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'73586220-5579-426b-b831-ed1f166ae0f1', N'YZY 350 hag f1', NULL, N'yzy-350-hag-f1', N'<p>✔️&nbsp;SALE UP TO 50%, Gi&aacute; chỉ từ&nbsp;<a href="https://www.facebook.com/hashtag/99k?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARC6Zuwvbt-7SRSHd4_YPzR_1MwWWIytadK0EgYFMHOIwVwffRwi8DARFAOwTc9miVfbucYhtoR_EwJHoLI1HElYBizL8g54o6EEzUgvdIcZkPTbpFu9HIpqBe4n632HmZxqiBiQkvkanyIdJsI0DQNLEVp2jPTEEWA-sZKotNNopjJKgfmMyKtmBOfe54cUP0iisvjMeKLH4KxE6KHBdgduEXMYC9pg_ckplnfqjOZTpBL_JjFaTe42EQnnoQPqXB43H5EOJD8tc1dT-RKOPZLhveU6C_67L4HxSX4LNV6lZkLq3fn_3WkCCSU_q7yocztr78rWPz8l2RyIUzghtFYtP2sU&amp;__tn__=%2ANK-R">#99k</a>&nbsp;Sale 20% tất cả c&aacute;c mẫu gi&agrave;y F1,SF,Rep<br />
✔️&nbsp;SALE Đồng gi&aacute; 99K v&agrave; 50% một số mẫu lẻ size<br />
✔️&nbsp;Gi&agrave;y cv đồng gi&aacute; 135K</p>
', N'/Content/Data/files/61847470_2070570656579794_6448383436297076736_n.jpg', CAST(199000 AS Decimal(18, 0)), CAST(99000 AS Decimal(18, 0)), 0, 6, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, N'yzy-350-hag-f1', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-05T12:02:25.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-05T23:23:23.4662687+07:00' AS DateTimeOffset), N'nghia', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'7bcd2a38-03a1-4cee-be22-ef7a628acf27', N'Balenciaga triple S', NULL, N'balenciaga-triple-s', N'<p>Đế sạch, ph&acirc;n tầng t&aacute;ch đế r&otilde; r&agrave;ng. H&agrave;ng c&oacute; sẵn, full size nam nữ 36-44.</p>

<p>Kh&aacute;ch h&agrave;ng vui l&ograve;ng để lại size gi&agrave;y ở phần lưu &yacute; hoặc inbox với shop để được tư vấn nhiệt t&igrave;nh</p>
', N'/Content/Data/files/61847470_2070570656579794_6448383436297076736_n(1).jpg', CAST(950000 AS Decimal(18, 0)), CAST(850000 AS Decimal(18, 0)), 0, 9, N'4af55b5a-7ef5-4026-ae30-675149352730', NULL, NULL, N'balenciaga-triple-s', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-05T12:07:32.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-05T12:08:48.8321886+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'd2c573a6-7c30-49b7-8173-f1d3c18fe5bf', N'Puma Suede Leather', NULL, N'puma-suede-leather', N'<p>Gi&agrave;y Puma Suede Leather được thiết kế đẹp mắt, phổ biến từ l&acirc;u m&agrave; c&oacute; thể bắt gặp ở s&acirc;n b&oacute;ng rổ từ những năm 60, s&agrave;n hiphop những năm 90 v&agrave; nay l&agrave; tr&ecirc;n những vỉa h&egrave; phố. Đ&ocirc;i gi&agrave;y sử dụng chất liệu da lộn mềm mịn v&agrave; c&oacute; kiểu d&aacute;ng thể thao, được đ&aacute;nh gi&aacute; l&agrave; kiểu gi&agrave;y sneaker mang t&iacute;nh biểu tượng của thương hiệu Puma được duy tr&igrave; đến ng&agrave;y nay.</p>
', N'/Content/Client/images/shoes-8.png', CAST(1990000 AS Decimal(18, 0)), CAST(1290000 AS Decimal(18, 0)), 0, 20, N'9f0de121-5036-4a23-a37e-176e1fab5ffc', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-04-24T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:24:41.0788378+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'f4e587a0-d114-4f30-946c-04c30e01b730', N'Adidas', N'adidas', NULL, 1, N'adidas', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'Converse', N'converse', NULL, 2, N'convers', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'9f0de121-5036-4a23-a37e-176e1fab5ffc', N'Puma', N'puma', NULL, 3, N'puma', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'de613250-d551-435b-9613-2f67164a78f6', N'Air Jordan', N'air-jordan', NULL, 4, N'jordan', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'4af55b5a-7ef5-4026-ae30-675149352730', N'Balenciaga', N'balenciaga', NULL, 5, N'balenciaga', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'185e17eb-86c3-4323-8faf-6fcbb2e7bd08', N'Reebok', N'reebok', NULL, 6, N'reebok', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'49df2e48-4b19-477c-a87b-aec64de21e48', N'New Balance', N'new-balance', NULL, 7, N'new balance', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', N'Nike', N'nike', NULL, 8, N'nike', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'Vans', N'vans', NULL, 9, N'vans', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'ADD_USER', N'Thêm User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'CREATE_CREDENTIAL', N'Thêm Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'CREATE_ROLE', N'Thêm Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'CREATE_USER_GROUP', N'Thêm UserGroup')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_CREDENTIAL', N'Xóa Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_ROLE', N'Xóa Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_USER', N'Xóa User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_USER_GROUP', N'Xóa UserGroup')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'EDIT_USER', N'Cập nhật User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'UPDATE_CREDENTIAL', N'Cập nhật Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'UPDATE_ROLE', N'Cập nhật Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'UPDATE_USER_GROUP', N'Cập nhật UserGroup')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_CREDENTIAL', N'Xem Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_LAYOUT', N'Xem giao diện')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_ROLE', N'Xem Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_USER', N'Xem User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_USER_GROUP', N'Xem UserGroup')
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([Id], [UrlImage], [DisplayOrder], [Link], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (1, N'/Content/Client/images/banner.jpg', 1, NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[Slide] ([Id], [UrlImage], [DisplayOrder], [Link], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (2, N'/Content/Client/images/banner-2.jpg', 2, NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[Slide] ([Id], [UrlImage], [DisplayOrder], [Link], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (3, N'/Content/Client/images/banner-3.jpg', 3, NULL, NULL, NULL, N'admin', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Slide] OFF
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'b9c6d5c0-e616-40a0-9f04-202a371075b3', N'ADMIN', N'/Content/Data/files/banner2.jpg', N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'21232f297a57a5a743894a0e4a801fc3', N'Đinh Thành', N'Nghĩa', NULL, N'nghia38511@donga.edu.vn', N'Đà Nẵng', CAST(N'2019-04-21T15:31:55.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T13:45:09.2794829+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'8c9d01c9-ecbd-40d1-b373-2a2a44673f08', N'MEMBER', N'/Content/Data/files/shoes-10.png', N'hung', N'202cb962ac59075b964b07152d234b70', N'202cb962ac59075b964b07152d234b70', N'Trần Hữu', N'Hùng', NULL, N'hung38585@donga.edu.vn', N'Đà Nẵng', CAST(N'2019-06-03T23:37:45.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T13:47:11.1203171+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'34f97ad8-b22c-43ef-8e0a-9205115e3a9a', N'MEMBER', N'/Content/Data/files/te2.jpg', N'nghia', N'202cb962ac59075b964b07152d234b70', N'202cb962ac59075b964b07152d234b70', N'Đinh Thành', N'Nghĩa', NULL, N'dtnghia2510@gmail.com', N'33 Xô Viết Nghệ Tĩnh, Hải Châu, Đà Nẵng', CAST(N'2019-04-21T15:31:55.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-12T10:31:47.3301092+07:00' AS DateTimeOffset), N'nghia', 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'1c20141b-73a6-4c73-baea-d74b60b2b391', N'MOD', N'/Content/Data/files/te2.jpg', N'modifier1', N'202cb962ac59075b964b07152d234b70', N'202cb962ac59075b964b07152d234b70', N'Lê Văn', N'Quang', NULL, N'quang38173@donga.edu.vn', N'Chư Sê, Gia Lai', CAST(N'2019-06-13T14:26:05.3075907+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'MOD', N'Moderitor')
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK__Content__Categor__412EB0B6] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK__Content__Categor__412EB0B6]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Product__5070F446] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Product__5070F446]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserGroup] FOREIGN KEY([GroupId])
REFERENCES [dbo].[UserGroup] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserGroup]
GO
USE [master]
GO
ALTER DATABASE [ShoeShopOnlineDB] SET  READ_WRITE 
GO
