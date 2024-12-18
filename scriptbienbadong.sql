USE [master]
GO
/****** Object:  Database [Bienbadong]    Script Date: 11-13-2024 3:43:57 PM ******/
CREATE DATABASE [Bienbadong]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bienbadong', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Bienbadong.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bienbadong_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Bienbadong_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Bienbadong] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bienbadong].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bienbadong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bienbadong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bienbadong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bienbadong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bienbadong] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bienbadong] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bienbadong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bienbadong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bienbadong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bienbadong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bienbadong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bienbadong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bienbadong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bienbadong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bienbadong] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bienbadong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bienbadong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bienbadong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bienbadong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bienbadong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bienbadong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bienbadong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bienbadong] SET RECOVERY FULL 
GO
ALTER DATABASE [Bienbadong] SET  MULTI_USER 
GO
ALTER DATABASE [Bienbadong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bienbadong] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bienbadong] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bienbadong] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bienbadong] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bienbadong] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Bienbadong', N'ON'
GO
ALTER DATABASE [Bienbadong] SET QUERY_STORE = ON
GO
ALTER DATABASE [Bienbadong] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Bienbadong]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 11-13-2024 3:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[MaBaiViet] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[TenBaiViet] [nvarchar](200) NOT NULL,
	[NoiDungBaiViet] [nvarchar](max) NOT NULL,
	[NgayDang] [datetime] NOT NULL,
	[NgayCapNhat] [datetime] NULL,
	[TrangThai] [int] NULL,
	[LuotThich] [int] NULL,
	[BinhLuan] [int] NULL,
	[LuotXem] [int] NULL,
	[MaChuDe] [int] NULL,
	[TaiKhoan] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 11-13-2024 3:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungBinhLuan] [nvarchar](max) NOT NULL,
	[NgayBinhLuan] [datetime] NULL,
	[MaBaiViet] [int] NULL,
	[TaiKhoan] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 11-13-2024 3:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaChuDe] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](100) NOT NULL,
	[LuotXem] [int] NULL,
	[HienThi] [bit] NULL,
	[DuongDan] [varchar](200) NULL,
	[ThuTuHienThi] [int] NULL,
	[MaDanhMuc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 11-13-2024 3:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
	[HienThi] [bit] NULL,
	[DuongDan] [varchar](200) NULL,
	[ThuTuHienThi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailThongBao]    Script Date: 11-13-2024 3:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailThongBao](
	[Email] [nvarchar](200) NOT NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuotThich]    Script Date: 11-13-2024 3:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuotThich](
	[MaBaiViet] [int] NOT NULL,
	[TaiKhoan] [varchar](50) NOT NULL,
	[NgayThich] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaiViet] ASC,
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11-13-2024 3:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[Ho] [nvarchar](100) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GioiTinh] [int] NULL,
	[NgaySinh] [date] NOT NULL,
	[TrangThai] [int] NULL,
	[HinhAnh] [nvarchar](200) NULL,
	[DiemThanhTich] [int] NULL,
	[SoBaiViet] [int] NULL,
	[MaQuyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 11-13-2024 3:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViPham]    Script Date: 11-13-2024 3:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViPham](
	[MaViPham] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungViPham] [nvarchar](100) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaViPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([MaBaiViet], [HinhAnh], [TenBaiViet], [NoiDungBaiViet], [NgayDang], [NgayCapNhat], [TrangThai], [LuotThich], [BinhLuan], [LuotXem], [MaChuDe], [TaiKhoan]) VALUES (13, N'0e7d454c-112f-4d5a-8bde-e3c02fc9136d_Cong-trinh-dien-gio-Han-Quoc-tai-bien-Ba-Dong.jpg', N'Khám phá vẻ đẹp mê hoặc của Biển Ba Động', N'<h3><strong>Vị trí của Biển Ba Động</strong></h3><p>Bãi biển Ba Động tạo nên cảnh quan của huyện Trà Cú, nằm cách trung tâm thành phố Trà Vinh khoảng 25 km. Để đến được điểm đến thanh bình này, du khách bắt đầu cuộc hành trình dọc theo Quốc lộ 53 đẹp như tranh vẽ, uốn lượn qua những cánh đồng xanh mướt và khung cảnh thiên nhiên quyến rũ.</p><h3><strong>Lịch sử hình thành của Biển Ba Động</strong></h3><p>Bãi biển Ba Động nằm ở phía đông bắc Trà Vinh, được đặt tên theo một hiện tượng tự nhiên độc đáo. Với mỗi lần thủy triều lên xuống, ba động cát riêng biệt xuất hiện dọc theo bờ biển – hai động nhỏ và một động lớn, mỗi động đều có hình dạng đặc biệt. Viên ngọc ven biển này lần đầu tiên được người Pháp phát hiện và khai hoang vào đầu thế kỷ 20. Bãi biển Ba Động là một kho báu thiên nhiên quý giá được thiên nhiên ban tặng cho vùng này. Du khách chắc chắn sẽ bị quyến rũ bởi những hàng phi lao tươi tốt dọc bờ biển, khiến nơi đây trở thành điểm đến quen thuộc của cả khách du lịch trong nước và quốc tế. Đáng chú ý, bãi biển Ba Động là bãi biển hiếm có ở miền Tây Nam Bộ được thiên nhiên ưu đãi với bờ cát rộng trải dài từ thôn Nhà Mát đến thôn Con Trứng. Tuy nhiên, khác với bãi cát trắng hay vàng lấp lánh, bãi biển này lại có một nét quyến rũ độc đáo là nước không trong như miền Trung do có nhiều phù sa.</p><h2><strong>Thời điểm lý tưởng nhất để đi du lịch biển Ba Động?</strong></h2><p>Xét về thời điểm lý tưởng, Trà Vinh bộc lộ sức hấp dẫn độc đáo quanh năm, khiến nơi đây trở thành điểm du lịch hấp dẫn quanh năm. Tuy nhiên, nó đặc biệt thu hút du khách trong mùa lễ hội, với lễ hội Chôl Chnăm Thmây (lễ năm mới, lễ chịu tuổi của người Khmer) là một điểm nhấn đáng chú ý. Lễ hội truyền thống này của cộng đồng người Khmer có các hoạt động hấp dẫn như múa Khmer và thả đèn trời. Lễ hội thường diễn ra trong ba ngày, kéo dài vào các ngày 14, 15 và 16 tháng 4 (tương ứng với các ngày 12, 13 và 14 tháng 3 âm lịch). Vì vậy, việc kết hợp chuyến tham quan Trà Vinh với chuyến đi đến bãi biển Ba Động trong mùa lễ hội sôi động này là điều rất nên làm.</p><p><img src="https://lockernlock.vn/wp-content/uploads/2023/10/Le-hoi-Chol-Chnam-Thmay-cua-nguoi-Khmer.jpg" alt="Lễ hội Chôl Chnăm Thmây của người Khmer" srcset="https://lockernlock.vn/wp-content/uploads/2023/10/Le-hoi-Chol-Chnam-Thmay-cua-nguoi-Khmer.jpg 1200w, https://lockernlock.vn/wp-content/uploads/2023/10/Le-hoi-Chol-Chnam-Thmay-cua-nguoi-Khmer-555x370.jpg 555w" sizes="100vw" width="1200"></p><p><i>Lễ hội Chôl Chnăm Thmây của người Khmer</i></p><h2><strong>Cách di chuyển đến biển Ba Động ở Trà Vinh</strong></h2><p>Bãi biển Ba Động thuộc huyện Trà Cú, là nơi nghỉ dưỡng yên tĩnh cách trung tâm thành phố Trà Vinh khoảng 25 km. Để bắt đầu cuộc hành trình này, du khách có thể đi qua Quốc lộ 53 tuyệt đẹp, tuyến đường được tô điểm bởi những cánh đồng tươi tốt và khung cảnh thiên nhiên quyến rũ.</p><h3><strong>Khởi hành từ các tỉnh miền Bắc/ miền Trung</strong></h3><p>Trà Vinh hiện chưa có sân bay phục vụ khách du lịch nên những người đi từ các tỉnh miền Bắc, miền Trung nên mua vé máy bay tới TP.HCM hoặc Cần Thơ. Từ TP.HCM hoặc Cần Thơ, du khách có thể thuê xe máy, ô tô hoặc taxi cho chuyến đi tiếp theo tới Trà Vinh.</p><h3><strong>Khởi hành từ TP.HCM</strong></h3><p>Trải dài khoảng 200 km từ Thành phố Hồ Chí Minh, chuyến đi đến Trà Vinh có thể được thực hiện bằng xe máy hoặc ô tô. Hai tuyến đường chính tạo điều kiện thuận lợi cho hành trình từ Sài Gòn đến Trà Vinh: một tuyến đi thẳng Quốc lộ 53, tuyến còn lại đi qua Đường cao tốc Trung Lương, một tuyến đường ngắn hơn một chút nhưng dành riêng cho ô tô. Từ thành phố Trà Vinh, hành trình tiếp tục theo quốc lộ 53 để đến thị trấn Cầu Ngang. Từ đó, đi theo đường tỉnh 913, cuối cùng đến xã Trường Long Hòa, cách trung tâm thành phố Trà Vinh khoảng 58 km.</p><h3><strong>Khởi hành từ Cần Thơ</strong></h3><p>Cần Thơ chỉ cách Trà Vinh 75km, khiến nơi đây trở thành địa điểm đi xe máy hấp dẫn đối với nhiều du khách thích phiêu lưu. Xuất phát từ trung tâm Cần Thơ, hành trình men theo Quốc lộ 1A băng qua cây cầu biểu tượng Cần Thơ. Sau đó, du khách chuyển sang quốc lộ 54 và tiếp tục đi theo tuyến TL911 để đến Trà Vinh.</p><h2><strong>Các hoạt động vui chơi ở bãi biển Ba Động, Trà Vinh</strong></h2><h3><strong>Đắm mình vào làn nước biển Ba Động</strong></h3><p>Tham quan Bãi biển Ba Động thì điều mang đến niềm vui tuyệt vời nhất là hoạt động tắm biển. Cảm giác được đắm mình trong những con sóng êm dịu trong khi bãi cát trắng mềm mại ôm lấy đôi chân, bạn sẽ trải nghiệm cảm giác tự do và trẻ hóa sâu sắc.</p><p><img src="https://lockernlock.vn/wp-content/uploads/2023/10/Du-khach-dang-tam-bien-tai-bien-Ba-Dong.jpg" alt="Du khách đang tắm biển tại biển Ba Động" srcset="https://lockernlock.vn/wp-content/uploads/2023/10/Du-khach-dang-tam-bien-tai-bien-Ba-Dong.jpg 1200w, https://lockernlock.vn/wp-content/uploads/2023/10/Du-khach-dang-tam-bien-tai-bien-Ba-Dong-555x370.jpg 555w" sizes="100vw" width="1200"></p><p><i>Du khách đang tắm biển tại biển Ba Động</i></p><h3><strong>Check-in sống ảo tại Biển Ba Động</strong></h3><p>Hơn nữa, bãi biển Ba Động còn là sở hữu không gian bình dị để chụp những bức ảnh tuyệt đẹp. Tận dụng tối đa khung cảnh thiên nhiên hoang sơ, đặc trưng bởi cát, nước biển và cảnh quan hoang sơ để tạo nên những hình ảnh đẹp và khác biệt sẽ trở thành kỷ vật đáng trân trọng.</p><h3><strong>Ngắm hoàng hôn</strong></h3><p>Mỗi buổi chiều ở bãi biển Ba Động lại mở ra một cảnh tượng thiên nhiên ngoạn mục: hoàng hôn. Khi đắm mình trong bầu không khí yên tĩnh, bạn có thể chứng kiến mặt trời duyên dáng lặn xuống biển, tô điểm bầu trời bằng những sắc màu ấm áp, quyến rũ.</p><p><img src="https://lockernlock.vn/wp-content/uploads/2023/10/Hoang-hon-tren-bien-Ba-Dong.jpg" alt="Hoàng hôn trên biển Ba Động" srcset="https://lockernlock.vn/wp-content/uploads/2023/10/Hoang-hon-tren-bien-Ba-Dong.jpg 1200w, https://lockernlock.vn/wp-content/uploads/2023/10/Hoang-hon-tren-bien-Ba-Dong-555x370.jpg 555w" sizes="100vw" width="1200"></p><p><i>Hoàng hôn trên biển Ba Động</i></p><h3><strong>Chiêm ngưỡng công trình điện gió Hàn Quốc</strong></h3><p>Ngoài vai trò là thiên đường du lịch, bãi biển Ba Động còn là nơi tọa lạc của Dự án Điện gió Hàn Quốc, nơi công nghệ điện gió hiện đại hòa quyện với sự thanh bình của đại dương, mang đến góc nhìn mới mẻ về sự hòa quyện giữa thiên nhiên và các giải pháp năng lượng sáng tạo.</p><p><img src="https://lockernlock.vn/wp-content/uploads/2023/10/Cong-trinh-dien-gio-Han-Quoc-tai-bien-Ba-Dong.jpg" alt="Công trình điện gió Hàn Quốc tại biển Ba Động" srcset="https://lockernlock.vn/wp-content/uploads/2023/10/Cong-trinh-dien-gio-Han-Quoc-tai-bien-Ba-Dong.jpg 1200w, https://lockernlock.vn/wp-content/uploads/2023/10/Cong-trinh-dien-gio-Han-Quoc-tai-bien-Ba-Dong-555x370.jpg 555w" sizes="100vw" width="1200"></p><p><i>Công trình điện gió Hàn Quốc tại biển Ba Động</i></p><h2><strong>Trải nghiệm ẩm thực thú vị tại bãi biển Ba Động</strong></h2><h3><strong>Hải sản tươi sống</strong></h3><p>Thưởng thức hải sản tươi sống ngay cạnh biển là một trải nghiệm tuyệt vời. Các món hải sản hấp dẫn như sò điệp, mực, cua, tôm được chế biến một cách khéo léo, đơn giản để bảo quản trọn vẹn hương vị mặn mà, tinh túy của đại dương.</p><p><img src="https://lockernlock.vn/wp-content/uploads/2023/10/Hai-san-tuoi-song-che-bien-ngay-gan-bien.jpg" alt="Hải sản tươi sống chế biến ngay gần biển" srcset="https://lockernlock.vn/wp-content/uploads/2023/10/Hai-san-tuoi-song-che-bien-ngay-gan-bien.jpg 1200w, https://lockernlock.vn/wp-content/uploads/2023/10/Hai-san-tuoi-song-che-bien-ngay-gan-bien-555x370.jpg 555w" sizes="100vw" width="1200"></p>', CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-07T00:00:00.000' AS DateTime), 0, 0, 1, 5, 3, N'thang')
INSERT [dbo].[BaiViet] ([MaBaiViet], [HinhAnh], [TenBaiViet], [NoiDungBaiViet], [NgayDang], [NgayCapNhat], [TrangThai], [LuotThich], [BinhLuan], [LuotXem], [MaChuDe], [TaiKhoan]) VALUES (14, N'4e59b2d1-9d61-4989-82fa-1f9a8ecc2cb4_Bien---Ba-Dong-2.jpg', N'Ba Động - Bãi biển nước mặn hút khách du lịch ĐBSCL', N'<p><a href="https://laodong.vn/tags/tra-vinh-25337.ldo"><strong>Trà Vinh</strong></a><strong>&nbsp;là nơi tồn tại rất nhiều lớp văn hoá đa màu, đa sắc thái nên nơi đây nổi tiếng với du lịch tâm linh. Dẫu vậy, ít ai biết rằng, nơi đây vẫn có một bãi </strong><a href="https://laodong.vn/lao-dong-cuoi-tuan/man-moi-vi-bien-1065757.ldo"><strong>biển</strong></a><strong> đẹp cho du khách gần xa.</strong></p><figure class="image"><img src="https://media-cdn-v2.laodong.vn/storage/newsportal/2022/7/14/1068102/Bien---Ba-Dong-2.jpg" alt="Ba Động - Bãi biển nước mặn hút khách du lịch ĐBSCL"></figure><p><i>Ba Động mộc mạc, cánh đồng điện gió nên thơ hứa hẹn sẽ mang lại dấu ấn sâu đậm trong lòng du khách.</i></p><figure class="image"><img src="https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/7/14/1068102/Bien-Ba-Dong-1.jpg" alt="&nbsp;"></figure><p><i>Biển Ba Động thuộc địa phận xã Trường Long Hoà, huyện Duyên Hải, tỉnh Trà Vinh. Đây là bãi tắm nước mặn nổi tiếng tại ĐBSCL và thu hút du khách đến tham quan vào dịp hè.</i></p><figure class="image"><img src="https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/7/14/1068102/Bien---Ba-Dong-2.jpg" alt="&nbsp;"></figure><p><i>Do phù sa bồi đắp quanh năm nên tại bãi Ba Động, người ta dễ thấy những bãi bùn, màu vàng nâu. Từ biển Ba Động nhìn ra, người ta cũng dễ bắt gặp dãy điện gió cực đẹp.</i></p><figure class="image"><img src="https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/7/14/1068102/Bien-Ba-Dong-3.jpg" alt="&nbsp;"></figure><p><i>"Đây là lần đầu tiên tôi đến Trà Vinh, ban đầu cứ nghĩ biển Ba Động hoang sơ, mênh mông.&nbsp; Nào ngờ, vẻ đẹp của nó còn hấp dẫn tôi hơn nhiều, đặc biệt là những chiếc tuabin nhìn vô cùng đẹp mắt" - chị Kiều Nguyễn Anh Thư (23 tuổi, Cần Thơ) chia sẻ.</i></p><figure class="image"><img src="https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/7/14/1068102/Bien-Ba-Dong-4.jpg" alt="&nbsp;"></figure><p><i>Trên bãi biển Ba Động, ngư dân Trà Vinh hằng ngày vẫn cần mẫn đánh bắt hải sản. Nghề đi biển cho họ cơm ăn áo mặc và tín ngưỡng thờ Bà Cố Hỷ, thể hiện lòng biết ơn đối với người đã che chở cho bà con ven bờ.</i></p><figure class="image"><img src="https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/7/14/1068102/Bien-Ba-Dong-7.jpg" alt="&nbsp;"></figure><p><i>Trên bờ, nhiều người dân phơi con ruốc để cung cấp đặc sản cho người dân đến tham quan.</i></p><figure class="image"><img src="https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/7/14/1068102/Bien-Ba-Dong-5.jpg" alt="&nbsp;"></figure><figure class="image"><img src="https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/7/14/1068102/Bien-Ba-Dong-8.jpg" alt="&nbsp;"></figure><p><i>Anh Nguyễn Văn Nên (45 tuổi, TP. Hồ Chí Minh) chia sẻ "Gia đình tôi đến đây tham quan vào dịp nghỉ hè, bãi tắm thật sự rất đẹp. Tôi và gia đình đã có trải nghiệm rất thú vị tại nơi đây. Chắc chắc chúng tôi sẽ quay lại vào một dịp gần nhất''</i><br>&nbsp;</p>', CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-07T00:00:00.000' AS DateTime), 0, 0, 1, 6, 3, N'thang')
INSERT [dbo].[BaiViet] ([MaBaiViet], [HinhAnh], [TenBaiViet], [NoiDungBaiViet], [NgayDang], [NgayCapNhat], [TrangThai], [LuotThich], [BinhLuan], [LuotXem], [MaChuDe], [TaiKhoan]) VALUES (15, N'1780a683-d013-4455-b15b-35d7cc49fc69_bien-ba-dong1.jpg', N'Biển Ba động - Trà Vinh', N'<p><strong>Khu vực Đồng bằng sông Cửu Long từ Cần Giờ xuống tới Cà Mau là vùng biển phù sa nhưng riêng Trà Vinh có những bãi cát dài và đẹp, thích hợp cho việc tắm biển và nghỉ mát - Trong đó, nổi tiếng nhất là bãi biển Ba Động.</strong><br><br>Ba Động là tên gọi chung của một bãi cát biển dài gần chục cây số thuộc xã Trường Long Hòa, huyện Duyên Hải, cách thị xã Trà Vinh hơn 60 cây số về hướng Đông Nam. Tại đây, từ đầu thế kỷ XX đã hình thành khu tắm biển, nghỉ dưỡng. Ngày nay, các doanh nghiệp kinh doanh du lịch và người dân địa phương đã đầu tư hình thành khu du lịch với nhiều loại hình sản phẩm tiện dụng và phong phú như tắm biển, nhà hàng, khách sạn, giải trí, quà lưu niệm…<br><br>&nbsp;</p><p><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg8cJ-Ergfwe7cEn4LkSHrsH6xHugip9DcKRDnNif6pWe6s4j-CJs5CoROR0V8Mz86MxTrnK3XmwQ8mLX6mCu1fJw9Fzpv99Gq9Y1tdQWgtIvcBF9othDngz_jH2DKRjmK17AMWnv0l3S0/s1600/bien-ba-dong1.jpg"><img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg8cJ-Ergfwe7cEn4LkSHrsH6xHugip9DcKRDnNif6pWe6s4j-CJs5CoROR0V8Mz86MxTrnK3XmwQ8mLX6mCu1fJw9Fzpv99Gq9Y1tdQWgtIvcBF9othDngz_jH2DKRjmK17AMWnv0l3S0/s400/bien-ba-dong1.jpg"></a></p><p>Từ những nhà hàng, khách sạn tiện nghi nép mình trong rừng dương rì rào gió biển, khách du lịch có thể phóng tầm mắt ra phía trùng dương thăm thẳm. Ở đó có những đoàn thuyền đánh cá ngày đêm ngược xuôi cần mẫn, mang nguồn lợi vô tận của biển khơi làm giàu cho quê hương, Tổ quốc.<br><br>Ở khu du lịch này, du khách có thể thưởng thức nhiều loại đặc sản biển tươi sống với giá rẻ đến không ngờ.<br><br>&nbsp;</p><p><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1WB4BGuhN8H-gNkdUQprAR9vQGLIUAl1-xdbJaiv7IYDrCqEqGht5kqz8ef8_5oB4WYrDaPzZUgPAPY7OsdpXpLh44MVHGcW0_4wVBypwggAC6y8r2FTjYEGNx5tJ7nKAPAsLntI0KC8/s1600/mientay+(1).jpg"><img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg1WB4BGuhN8H-gNkdUQprAR9vQGLIUAl1-xdbJaiv7IYDrCqEqGht5kqz8ef8_5oB4WYrDaPzZUgPAPY7OsdpXpLh44MVHGcW0_4wVBypwggAC6y8r2FTjYEGNx5tJ7nKAPAsLntI0KC8/s400/mientay+(1).jpg"></a></p><p><a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzp3LvILNVV9ZocdbowgFHpTckrDyqq0vS3ZK5ovA8gfeOESptuQjLe0UdxLbtrOrsQTeFDokIoGkEXOkxt_vmFYI2f4xGQv2wkzfqxFGuHpZBDZCtjyQpzZlw_eQ4tDb9Jwy0FDRJlc0/s1600/Anh+61.jpg"><img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgzp3LvILNVV9ZocdbowgFHpTckrDyqq0vS3ZK5ovA8gfeOESptuQjLe0UdxLbtrOrsQTeFDokIoGkEXOkxt_vmFYI2f4xGQv2wkzfqxFGuHpZBDZCtjyQpzZlw_eQ4tDb9Jwy0FDRJlc0/s400/Anh+61.jpg"></a></p><p>Tại Ba Động, du khách còn có thể tham gia những chuyến du khảo tìm hiểu lịch sử khai hoang mở đất và truyền thống đấu tranh chống ngoại xâm hào hùng của xã “Trường Long Hòa sắt thép”, của huyện “Duyên Hải căn cứ anh hùng” với những chiến công như huyền thoại cùng các di tích Bến tiếp nhận vũ khí từ đường Hồ Chí Minh trên biển (Cồn Tàu), khu căn cứ Tỉnh ủy Trà Vinh (Giồng Giếng)…; du khảo sinh thái với những dãy rừng ngập mặn Trường Long Hòa, Long Khánh…; thưởng thức nhiều loại sản vật đã trở thành đặc sản của vùng quê ven biển này như dưa hấu Ba Động, nghêu Nhà Mát, tôm sú Cồn Cù, đuôn Chà là, cá Kèo kho gợt – Chù ụ rang me, nước mắm Rươi…<br><br>Ba Động đang là một địa chỉ du lịch ngắn ngày hấp dẫn hướng tới đối tượng đông đảo khách có thu nhập trung bình như công chức, thanh niên, học sinh, công nhân lao động cùng gia đình trên địa bàn Trà Vinh và các tỉnh lân cận. Những ngày lễ, ngày nghỉ cuối tuần, nhất là dịp Tết Nguyên đán… cả bãi biển Ba Động như bức tranh nhiều màu sắc, sôi động, vui tươi với hàng chục ngàn khách du lịch gần xa tìm về tham quan, nghỉ dưỡng.<br>&nbsp;</p>', CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-07T00:00:00.000' AS DateTime), 0, 0, 0, 0, 4, N'thang')
INSERT [dbo].[BaiViet] ([MaBaiViet], [HinhAnh], [TenBaiViet], [NoiDungBaiViet], [NgayDang], [NgayCapNhat], [TrangThai], [LuotThich], [BinhLuan], [LuotXem], [MaChuDe], [TaiKhoan]) VALUES (16, N'704f19b0-531e-419c-a562-0396b9c52054_LỊCH SỬ.jpg', N'Biển Ba Động - Địa điểm tham quan du lịch HOT nhất Trà Vinh', N'<p>Biển Ba Động, một viên ngọc quý bên bờ biển Trà Vinh, là điểm đến tham quan hấp dẫn với khung cảnh tươi đẹp và thiên nhiên hoang sơ. Dù bạn đang tìm kiếm sự thư giãn trên bãi cát hay khám phá lịch sử nơi này, Biển Ba Động chắc chắn sẽ mang đến những trải nghiệm đáng nhớ. Hôm nay cùng Zoom Travel khám phá những địa điểm tham quan du lịch hot nhất tại Trà Vinh nhé.</p><p><img src="https://zoomtravel.vn/upload/images/GI%E1%BB%9AI%20THI%E1%BB%86U.jpg" alt=""></p><h2><strong>Đôi nét bề Biển Ba Động</strong></h2><p>Biển Ba Động, nằm tại vùng Đông Bắc Trà Vinh, là một kho báu thiên nhiên tuyệt vời mà tự nhiên đã ban tặng cho vùng đất này. Với cát trắng mịn màng và biển xanh biếc, nơi đây tạo nên một bức tranh hoàn mỹ của biển cả và thiên nhiên nơi miền đất phương Nam.</p><p>Với bờ cát dài, biển Ba Động không chỉ thu hút những du khách muốn thư giãn cùng làn nước biển mát lành mà còn là nơi tuyệt vời cho những người yêu thích nắng và biển. Không gian yên bình và khí hậu ôn hoà ở đây cùng những cảnh quan thiên nhiên ngoạn mục đã làm say đắm biết bao trái tim du khách.<br><img src="https://zoomtravel.vn/upload/images/%E1%BA%A3nh%20b%C3%ACa.jpg" alt=""></p><h3><strong>Biển Ba Động ở đâu</strong></h3><p>Biển Ba Động nằm tại huyện Trà Cú, cách trung tâm thành phố Trà Vinh khoảng 25 km. Để đến đây, bạn có thể di chuyển theo Quốc lộ 53, một tuyến đường tuyệt đẹp với những cánh đồng xanh mướt và cảnh quan thiên nhiên tươi đẹp.</p><h3><strong>Lịch sử hình thành của Biển Ba Động</strong></h3><p>Biển Ba Động không chỉ đẹp về thiên nhiên mà còn mang trong mình những dấu ấn lịch sử đáng ngưỡng mộ. Vùng này từng là nơi tập trung của các hoạt động giao thương với các nước láng giềng, điều này còn thể hiện qua kiến trúc cổ kính và di tích tại đây.</p><p>Với vẻ đẹp tự nhiên tuyệt mỹ và giá trị lịch sử độc đáo, Biển Ba Động thật sự là một điểm đến không thể bỏ qua đối với những ai yêu thích du lịch và mong muốn khám phá vẻ đẹp độc đáo của vùng đất Trà Vinh.</p><p><img src="https://zoomtravel.vn/upload/images/L%E1%BB%8ACH%20S%E1%BB%AC.jpg" alt=""></p><h2><strong>Biển Ba Động mùa nào đẹp nhất</strong></h2><p>Tuy vẻ đẹp của nơi này luôn tỏa sáng, nhưng liệu có mùa nào thực sự là thời điểm tốt nhất để bạn thực sự trải nghiệm vẻ đẹp của Biển Ba Động hãy cùng tìm hiểu.</p><p>Mùa xuân: Biển Ba Động trong mùa xuân chào đón sự trở lại của thiên nhiên sau mùa đông. Bãi biển và biển cả trở nên tươi mới hơn, tạo nên không gian tinh khiết và thư giãn.</p><p>Mùa hè: Mùa hè mang đến nhiệt độ ấm áp và biển cả dịu mát. Đây là thời điểm hoàn hảo để tận hưởng những hoạt động biển như tắm biển và tham gia các môn thể thao nước. Mùa hè cũng tạo ra cảnh quan tươi sáng và sinh động.</p><p>Mùa thu: Mùa thu đem lại không gian mát mẻ và dịu dàng tại Biển Ba Động. Với ánh nắng vàng ấm áp, bãi biển trở nên thú vị và đẹp đẽ hơn. Đây là thời điểm tốt để bạn thả hồn trong không gian thiên nhiên đẹp như tranh vẽ<img src="https://zoomtravel.vn/upload/images/TH%E1%BB%9CI%20TI%E1%BA%BET.jpg" alt=""></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Dù bạn đến Biển Ba Động vào mùa nào, vẻ đẹp của nơi này luôn làm say đắm lòng người. Hãy lựa chọn thời điểm phù hợp với sở thích của bạn để tận hưởng khoảnh khắc tuyệt vời bên cát trắng và biển cả mênh mông.</p><h2><strong>Di chuyển đến Biển Ba Động bằng phương tiện gì</strong></h2><p>Nếu bạn đang thắc mắc về cách di chuyển đến nơi này, dưới đây là một số phương tiện và hướng dẫn giúp bạn tiếp cận đến bãi biển đáng yêu này. Phương tiện di chuyển đến Biển Ba Động linh hoạt trong lựa chọn</p><ul><li>Ô tô cá nhân hoặc xe máy: Di chuyển bằng ô tô cá nhân hoặc xe máy là cách tiện lợi để đến Biển Ba Động. Lộ trình theo Quốc lộ 53 dẫn qua cánh đồng xanh mướt và khu vực nông thôn thanh bình, tạo trải nghiệm hấp dẫn trên đường đi.</li><li>Xe buýt: Nếu bạn không sở hữu phương tiện cá nhân, hãy tận dụng dịch vụ xe buýt.</li><li>Dịch vụ taxi hoặc xe đưa đón: Nếu bạn ưa thích sự thoải mái và tiện lợi, hãy sử dụng dịch vụ taxi hoặc xe đưa đón. Đặt xe trước hoặc tìm các dịch vụ đưa đón tại Trà Vinh để đến Biển Ba Động một cách dễ dàng.</li></ul><p><img src="https://zoomtravel.vn/upload/images/ph%C6%B0%C6%A1ng%20ti%E1%BB%87n%20di%20chuy%E1%BB%83n.jpg" alt=""></p><p>Nhớ hãy kiểm tra tình hình giao thông và lên kế hoạch trước khi khởi hành đến Biển Ba Động. Việc tận hưởng hành trình an toàn và thú vị sẽ giúp bạn có những trải nghiệm đáng nhớ tại địa điểm biển tuyệt đẹp này.</p><h2><strong>Đến biển Ba Động có gì chơi</strong></h2><p>Nhắm mắt và hình dung bạn đang đứng trước bãi biển Ba Động, với cát trắng mịn màng và biển xanh biếc mênh mông. Nhưng thực sự, đến Biển Ba Động có những trải nghiệm gì đang chờ đón bạn, cùng xem với mình nhé</p><p><img src="https://zoomtravel.vn/upload/images/ch%C6%A1i%20g%C3%AC%20%E1%BB%9F%20%C4%91%C3%A2y.jpg" alt=""></p><h3><strong>Tắm biển</strong></h3><p>Điều tuyệt vời nhất khi đến Biển Ba Động chắc chắn là tắm biển. Cảm giác mặc bikini, dặn dòng sóng xoa dịu và cát trắng thoải mái dưới chân, bạn sẽ cảm nhận được sự tự do và sảng khoái.</p><p><img src="https://zoomtravel.vn/upload/images/095740HBT_5975.jpg" alt=""></p><h3><strong>Check-in sống ảo tại Biển Ba Động</strong></h3><p>Biển Ba Động cung cấp nền cảnh tuyệt vời cho việc chụp ảnh sống ảo. Tận dụng cát trắng, biển xanh và không gian thiên nhiên hoang sơ để ghi lại những hình ảnh đẹp và độc đáo cho các bức ảnh đáng nhớ.</p><p><img src="https://zoomtravel.vn/upload/images/1213214.jpg" alt=""></p><h3><strong>Ngắm hoàng hôn</strong></h3><p>Mỗi buổi hoàng hôn tại Biển Ba Động là một tượng đài thiên nhiên vô cùng đẹp. Đắm mình trong không gian yên bình, bạn có thể chứng kiến ánh mặt trời lặn xuống biển cùng những gam màu ấm áp trên bầu trời.</p><h3><strong>Công trình điện gió Hàn Quốc</strong></h3><p>Không chỉ là điểm tham quan du lịch, Công trình điện gió Hàn Quốc tại Biển Ba Động còn đem đến cái nhìn mới lạ với sự kết hợp giữa thiên nhiên biển cả và công nghệ điện gió hiện đại.</p>', CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-07T00:00:00.000' AS DateTime), 0, 0, 0, 1, 6, N'tuyetmai')
INSERT [dbo].[BaiViet] ([MaBaiViet], [HinhAnh], [TenBaiViet], [NoiDungBaiViet], [NgayDang], [NgayCapNhat], [TrangThai], [LuotThich], [BinhLuan], [LuotXem], [MaChuDe], [TaiKhoan]) VALUES (17, N'031676f9-b335-4ebf-a293-3941ceb56876_bien-ba-dong1.jpg', N'Biển Ba Động - Địa điểm tham quan du lịch HOT nhất Trà Vinh', N'<p>Biển Ba Động - Địa điểm tham quan du lịch HOT nhất Trà Vinh</p>', CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-07T00:00:00.000' AS DateTime), 1, 0, 0, 1, 3, N'tuyetmai')
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [NgayBinhLuan], [MaBaiViet], [TaiKhoan]) VALUES (16, N'rất hay', CAST(N'2024-11-07T00:00:00.000' AS DateTime), 14, N'tuyetmai')
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [NoiDungBinhLuan], [NgayBinhLuan], [MaBaiViet], [TaiKhoan]) VALUES (17, N'rat hay', CAST(N'2024-11-07T00:00:00.000' AS DateTime), 13, N'tuyetmai')
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe], [LuotXem], [HienThi], [DuongDan], [ThuTuHienThi], [MaDanhMuc]) VALUES (1, N'Sự Kiện ', 69, 1, N'/BaiViet/BaiVietChuDe?iMaChuDe=', 1, 3)
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe], [LuotXem], [HienThi], [DuongDan], [ThuTuHienThi], [MaDanhMuc]) VALUES (2, N'Vị trí địa lý', 15, 1, N'/BaiViet/BaiVietChuDe?iMaChuDe=', 2, 3)
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe], [LuotXem], [HienThi], [DuongDan], [ThuTuHienThi], [MaDanhMuc]) VALUES (3, N'Giới thiệu chung', 9, 1, N'/BaiViet/BaiVietChuDe?iMaChuDe=', 3, 3)
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe], [LuotXem], [HienThi], [DuongDan], [ThuTuHienThi], [MaDanhMuc]) VALUES (4, N'Lịch sử và văn hóa', 22, 1, N'/BaiViet/BaiVietChuDe?iMaChuDe=', 1, 4)
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe], [LuotXem], [HienThi], [DuongDan], [ThuTuHienThi], [MaDanhMuc]) VALUES (5, N'Thể thao', 13, 1, N'/BaiViet/BaiVietChuDe?iMaChuDe=', 2, 4)
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe], [LuotXem], [HienThi], [DuongDan], [ThuTuHienThi], [MaDanhMuc]) VALUES (6, N'Cảnh quan và đặc điểm tự nhiên', 2, 1, N'/BaiViet/BaiVietChuDe?iMaChuDe=', 3, 4)
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe], [LuotXem], [HienThi], [DuongDan], [ThuTuHienThi], [MaDanhMuc]) VALUES (7, N'Ẩm thực và đặc sản địa phương', 4, 1, N'/BaiViet/BaiVietChuDe?iMaChuDe=', 4, 4)
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [HienThi], [DuongDan], [ThuTuHienThi]) VALUES (1, N'Trang Chủ', 1, N'/Home/Index', 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [HienThi], [DuongDan], [ThuTuHienThi]) VALUES (2, N'Văn Hóa', 1, N'/New/Index', 2)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [HienThi], [DuongDan], [ThuTuHienThi]) VALUES (3, N'Giới thiệu du lịch', 1, N'https://localhost:7288/BaiViet/BaiVietChuDe?iMaChuDe=1', 3)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [HienThi], [DuongDan], [ThuTuHienThi]) VALUES (4, N'Góc Nhìn', 1, N'https://localhost:7288/BaiViet/BaiVietChuDe?iMaChuDe=4', 4)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [HienThi], [DuongDan], [ThuTuHienThi]) VALUES (7, N'Quảng Cáo', 1, N'https://localhost:7288/BaiViet/BaiVietChuDe?iMaChuDe=5', 5)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
INSERT [dbo].[EmailThongBao] ([Email], [TrangThai]) VALUES (N'clontomi@gmail.com', 1)
GO
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'admin', N'admin', N'Admin Trương Tuyết Mai', N'Trị', 0, CAST(N'1999-02-05' AS Date), 0, N'AnhMacDinh.png', 5, 1, 1)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'AnhThang', N'AnhThang', N'Anh', N'Thắng', 0, CAST(N'1979-11-11' AS Date), 0, N'AnhMacDinh.png', 0, 0, 2)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'demo', N'demo', N'demo', N'demo', 0, CAST(N'2024-05-06' AS Date), 0, N'AnhMacDinh.png', 5, 1, 2)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'minh', N'minh', N'Trần Ngọc', N'Minh', 0, CAST(N'1992-05-05' AS Date), 0, N'AnhMacDinh.png', 0, 0, 2)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'Nhi', N'Nhi', N'Thanh', N'Nhi', 0, CAST(N'1994-09-12' AS Date), 0, N'AnhMacDinh.png', 0, 0, 1)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'nhung', N'nhung', N'Thùy', N'Nhung', 1, CAST(N'1995-12-11' AS Date), 0, N'AnhMacDinh.png', 0, 0, 2)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'quantri', N'quantri', N'Quản', N'Trị', 0, CAST(N'1995-02-01' AS Date), 0, N'AnhMacDinh.png', 0, 0, 1)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'thang', N'thang', N'Tuyết', N'Mai', 1, CAST(N'2000-07-07' AS Date), 0, N'AnhMacDinh.png', 55, 11, 2)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'trang', N'trang', N'Kiều', N'Trang', 1, CAST(N'1982-12-12' AS Date), 1, N'AnhMacDinh.png', 0, 0, 2)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Ho], [Ten], [GioiTinh], [NgaySinh], [TrangThai], [HinhAnh], [DiemThanhTich], [SoBaiViet], [MaQuyen]) VALUES (N'tuyetmai', N'tuyetmai', N'Trương Tuyết', N'Mai', 1, CAST(N'2024-11-01' AS Date), 0, N'AnhMacDinh.png', 15, 3, 2)
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Ban Quản Trị')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'Người Dùng')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[ViPham] ON 

INSERT [dbo].[ViPham] ([MaViPham], [NoiDungViPham], [TaiKhoan]) VALUES (1, N'Đăng bài viết sai chủ đề', N'minh')
INSERT [dbo].[ViPham] ([MaViPham], [NoiDungViPham], [TaiKhoan]) VALUES (2, N'Bình luận bêu xấu admin', N'minh')
INSERT [dbo].[ViPham] ([MaViPham], [NoiDungViPham], [TaiKhoan]) VALUES (3, N'Không hoạt động đóng góp ý kiến cho diễn đàn', N'thang')
INSERT [dbo].[ViPham] ([MaViPham], [NoiDungViPham], [TaiKhoan]) VALUES (4, N'Đăng bài viết dùng từ genz, teencode', N'nhi')
INSERT [dbo].[ViPham] ([MaViPham], [NoiDungViPham], [TaiKhoan]) VALUES (5, N'Bình luận ảnh không liên quan đến chủ đề bài viết lập trình c', N'nhung')
SET IDENTITY_INSERT [dbo].[ViPham] OFF
GO
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT ((0)) FOR [LuotThich]
GO
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT ((0)) FOR [BinhLuan]
GO
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[ChuDe] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[ChuDe] ADD  DEFAULT ((1)) FOR [HienThi]
GO
ALTER TABLE [dbo].[DanhMuc] ADD  DEFAULT ((1)) FOR [HienThi]
GO
ALTER TABLE [dbo].[LuotThich] ADD  DEFAULT (getdate()) FOR [NgayThich]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT (N'AnhMacDinh.png') FOR [HinhAnh]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ((0)) FOR [DiemThanhTich]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ((0)) FOR [SoBaiViet]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD FOREIGN KEY([MaChuDe])
REFERENCES [dbo].[ChuDe] ([MaChuDe])
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NguoiDung] ([TaiKhoan])
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([MaBaiViet])
REFERENCES [dbo].[BaiViet] ([MaBaiViet])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NguoiDung] ([TaiKhoan])
GO
ALTER TABLE [dbo].[ChuDe]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[LuotThich]  WITH CHECK ADD FOREIGN KEY([MaBaiViet])
REFERENCES [dbo].[BaiViet] ([MaBaiViet])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LuotThich]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NguoiDung] ([TaiKhoan])
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[ViPham]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NguoiDung] ([TaiKhoan])
GO
USE [master]
GO
ALTER DATABASE [Bienbadong] SET  READ_WRITE 
GO
