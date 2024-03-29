USE [Nhom6WF]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 7/29/2019 5:52:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaSanPham] [int] NOT NULL,
	[MaHoaDon] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 7/29/2019 5:52:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/29/2019 5:52:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[DiaChiKhachHang] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](15) NOT NULL,
	[TongTien] [int] NOT NULL,
	[PhiVanChuyen] [int] NOT NULL,
	[TinhTrang] [bit] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/29/2019 5:52:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[XuatXu] [nvarchar](100) NOT NULL,
	[NongDo] [float] NULL,
	[TheTich] [int] NOT NULL,
	[Anh] [nvarchar](100) NULL,
	[MoTa] [nvarchar](200) NULL,
	[Gia] [int] NULL,
	[SoLuong] [int] NOT NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 7/29/2019 5:52:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[HoTen] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](15) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[LoaiTaiKhoan] [varchar](10) NULL CONSTRAINT [df_TaiKhoan]  DEFAULT ('User'),
	[DiaChi] [nvarchar](100) NULL,
	[TinhTrang] [nvarchar](15) NULL CONSTRAINT [df_TaiKhoan2]  DEFAULT ('Active'),
 CONSTRAINT [tentaikhoan_pk] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (5, 58, 12)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (17, 61, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (39, 61, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (68, 59, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (68, 60, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (71, 58, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (71, 61, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (74, 62, 1)
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (1, N'Vang Pháp', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (2, N'Vang Ý', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (3, N'Vang Chile', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (4, N'Vang Tây Ban Nha', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (5, N'Vang Mỹ', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (6, N'Rượu Wisky', NULL)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (7, N'Rượu Nho', NULL)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [TenKhachHang], [DiaChiKhachHang], [Email], [SoDienThoai], [TongTien], [PhiVanChuyen], [TinhTrang], [TenTaiKhoan]) VALUES (58, CAST(N'2019-07-29 00:00:00.000' AS DateTime), N'thanh', N'ha noi', N'aaa@gmail.com', N'44444444444', 6800000, 15000, NULL, N'nam123')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [TenKhachHang], [DiaChiKhachHang], [Email], [SoDienThoai], [TongTien], [PhiVanChuyen], [TinhTrang], [TenTaiKhoan]) VALUES (59, CAST(N'2019-07-29 00:00:00.000' AS DateTime), N'thanh', N'ha noi', N'aaa@gmail.com', N'44444444444', 395000, 15000, NULL, N'nam123')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [TenKhachHang], [DiaChiKhachHang], [Email], [SoDienThoai], [TongTien], [PhiVanChuyen], [TinhTrang], [TenTaiKhoan]) VALUES (60, CAST(N'2019-07-29 00:00:00.000' AS DateTime), N'thanh', N'ha noi', N'aaa@gmail.com', N'44444444444', 395000, 15000, NULL, N'nam123')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [TenKhachHang], [DiaChiKhachHang], [Email], [SoDienThoai], [TongTien], [PhiVanChuyen], [TinhTrang], [TenTaiKhoan]) VALUES (61, CAST(N'2019-07-29 00:00:00.000' AS DateTime), N'thanh', N'ha noi', N'aaa@gmail.com', N'44444444444', 4445000, 15000, NULL, N'nam123')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayLap], [TenKhachHang], [DiaChiKhachHang], [Email], [SoDienThoai], [TongTien], [PhiVanChuyen], [TinhTrang], [TenTaiKhoan]) VALUES (62, CAST(N'2019-07-29 00:00:00.000' AS DateTime), N'thanh', N'ha noi', N'aaa@gmail.com', N'44444444444', 2250000, 15000, NULL, N'nam123')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (1, 1, N'Chateau Mouton Rothschild Pauilac 2014', N'Chateau Mouton Rothschild - France', 131, 750, N'vangphap1.png', N'The wine has a particularly attractive scent of oak combined with vanilla flavor, smell of toast with ripe fruits', 22500000, 37, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (2, 1, N'Chateau Tour Chapoux Limited Edition Bordeaux 2016', N'Comin family', 14, 750, N'vangphap2.png', N'Rượu có vị chat đậm với hương thơm rõ rệt của coffee, vani hòa quyện cùng hương vị của trái cây chín như Việt quất, mâm xôi đen và mận', 1500000, 11, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (3, 1, N'Chateau Les Reuilles Reserve Bordeaux 2016', N'Patrick Todesco', 13, 750, N'vangphap3.png', N'CHATEAU LES REUILLES RESERVE BORDEAUX có vị chat vừa với hương thơm của mứt dâu và trái cây chín như Việt quất, mâm xôi và mận đỏ kết hợp cùng vani. Cấu trúc mềm mại và nhã nhặn với hậu vị bền.', 1200000, 20, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (4, 1, N'Chateau Talaise Bordeaux 2016', N'Gregory Dalla Longa

', 13, 750, N'vangphap4.png', N'CHATEAU TALAISE BORDEAUX 2016 có vị chat vừa, hương thơm của trái cây chín như Cherry, mâm xôi, dâu và mận đỏ kết hợp cùng vani và cà phê', 750000, 36, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (5, 1, N'Palaise Cabernet Sauvignon 2016', N'Gironde, Pháp', 14, 750, N'vangphap5.png', N'Palaise Cabernet Sauvignon 2016 có màu đỏ ruby sáng. Rượu có vị chát đậm đà kết hợp vơi hương thơm nồng nàn của quả Cherry , Lý đen, Dâu đen.', 300000, 113, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (6, 1, N'100 ESSENZA Primitivo Di Manduria 2012', N'Feudi Salentini S.R.L', 15, 750, N'vangphap6.png', N'Rượu có mùi hương đặc biệt hấp dẫn của gỗ sồi kết hợp với hương vani, mùi bánh mì nướng cùng hững trái cây chín mọng. Rượu có thể dùng để kết hợp với các món ăn', 1200000, 33, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (7, 1, N'125 MALVASIA Del Salento', N'Feudi Salentini S.R.L', 12, 750, N'vangphap7.png', N'Rượu có mùi hương đặc biệt hấp dẫn của gỗ sồi kết hợp với hương vani, mùi bánh mì nướng cùng hững trái cây chín mọng. ', 385000, 10, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (8, 1, N'CARDINALE Primitivo Di Manduria 2013', N'Feudi Salentini S.R.L', 14, 750, N'vangphap8.png', N'Cardinale 2013 Primitivo di Manduria mùi thơm dịu dàng của cỏ ngọt khô & các loại mứt trái cây', 1350000, 98, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (9, 1, N'KING Vittorio Semi Dolcer', N'Bollato Casa Vinicola Caldirola', 10, 750, N'vangphap9.png', N'Rượu có mùi hương đặc biệt hấp dẫn của gỗ sồi kết hợp với hương vani, mùi bánh mì nướng cùng hững trái cây chín mọng. Rượu có thể dùng để kết hợp với các món ăn như: Sườn bò sốt tiêu đen,', 250000, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (10, 1, N'LEVANTE PRIMITIVO DEL SALENTO', N'FEUDI SALENTINI - Italy', 15, 750, N'vangphap10.png', N'Rượu có mùi hương đặc biệt hấp dẫn của gỗ sồi kết hợp với hương vani, mùi bánh mì nướng cùng hững trái cây chín mọng.', 1650000, 11, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (11, 1, N'Cantoalba Carmenere 2015', N'Vina La Ronciere - Chile', 14, 750, N'vangphap11.png', N'Rượu có mùi hương đặc biệt hấp dẫn của gỗ sồi kết hợp với hương vani, mùi bánh mì nướng cùng hững trái cây chín mọng. Rượu có thể dùng để kết hợp với các món ăn như: Sườn bò sốt tiêu đen,', 275000, 16, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (12, 1, N'Cantoalba Chardonnay 2017', N'LA RONCIERE - Chile', 13, 750, N'vangphap12.png', N'Rượu có mùi hương đặc biệt hấp dẫn của gỗ sồi kết hợp với hương vani, mùi bánh mì nướng cùng hững trái cây chín mọng. Rượu có thể dùng để kết hợp với các món ăn như: Sườn bò sốt tiêu đen', 265000, 22, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (13, 1, N'Chaku Cabernet Sauvignon 2016', N'Vina La Ronciere - Chile', 13, 750, N'vangphap13.png', N'Rượu có mùi hương đặc biệt hấp dẫn của gỗ sồi kết hợp với hương vani, mùi bánh mì nướng cùng hững trái cây chín mọng. Rượu có thể dùng để kết hợp với các món ăn ', 250000, 35, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (14, 1, N'Indomita Chardonnay 2017
', N'Indomita - Chile', 12, 750, N'vangphap14.png', N'Rượu có mùi hương đặc biệt hấp dẫn của gỗ sồi kết hợp với hương vani, mùi bánh mì nướng cùng hững trái cây chín mọng. Rượu có thể dùng để kết hợp với các món ăn ', 255000, 15, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (15, 1, N'Saint Denis Crianza 2012', N'Rioja - Spain', 14, 750, N'vangphap15.png', N'Chai vang trắng Les Portes de Bordeaux được sản xuất từ 100% nho Sauvignon Blanc theo phương thức sản xuất cổ điển đặc trưng của khu vực rượu vang chất lượng tại Bordeaux ', 750000, 4, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (16, 1, N'Saint Denis Limited Edition 2014', N'Rioja - Spain', 15, 750, N'vangphap16.png', N'Rượu vang Pháp - Les Portes de Bordeaux có màu đỏ ruby đậm. Rượu đậm đà với hương thơm của trái cây đỏ. Les Portes de Bordeaux rất giàu hương vị, ban đầu nồng nàn với vị trái cây đỏ', 1600000, 299, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (17, 1, N'Santalba 1868', N'Santalba - bodegas', 14, 750, N'vangphap17.png', N'Château Le Vieux Serestin Médoc Cru Artisan 2012 là một dòng rượu vang thơm ngon trong các loại rượu vang phổ biến của Pháp. Loại rượu vang này là sản phẩm của hãng rượu lừng danh SAVAS ', 850000, 156, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (18, 2, N'Santalba Amaro 2014', N'Santalba - Spain', 151, 750, N'vangphap18.png', N'Château Côte Puyblanquet 2014 được sản xuất từ giống nho Merlot, Cabernet Sauvignon và Cabernet Flanc. Chai rượu này có màu đỏ ruby, nó được xem như một đóa hoa đang nở rộ,', 2250000, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (21, 2, N'Chivas 12 Years', N'Scotland', 40, 750, N'vangphap19.png', N'Château Tayac-Plaisance Margaux Cru Bourgeois 2013 được sản xuất từ giống nho Merlot, Cabernet Sauvignon và Syrah. Chai rượu này có màu đỏ truyền thống,', 1500000, 1676, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (27, 2, N'Chivas 15 Years', N'Scotland', 40, 750, N'vangphap20.png', N'Château Suau Sauternes Grand Cru Classé 2014 được sản xuất từ hai giống nho Sauvignon Blanc và Sémillon, là dòng vang trắng nổi tiếng của vùng Bordeaux - Pháp. ', 1200000, 1323, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (28, 2, N'“Bollato” Negroamaro Primitivo IGP Puglia 2014', N'Guarini Italia', 14, 750, N'vangy1.png', N'Bollato có màu tím đậm nổi bật, hương thơm nồng nàn của cherry kết hợp với mùi vani tạo nên cho chai vang này một ấn tượng khó quên khi chúng ta thưởng thức nó. Rượu uống ngon nhất ở nhiệt độ 18 độ C', 3500000, 111, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (33, 2, N'100 ESSENZA Primitivo Di Manduria 2012', N'Vùng Puglia', 15, 750, N'vangy2.png', N'100 ESSENZA được làm từ gống nho Primitivo đến từ vùng Manduria - miền nam nước Ý.', 1500000, 24, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (35, 2, N'125 MALVASIA Del Salento', N'Feudi Salentini S.R.L Italy', 12.5, 750, N'vangy3.png', N'125 Malvasia Del Salento là một chai rượu nhẹ nhàng, thanh lịch. Nó được chế biến từ giống nho Malvasia del salento - Một giống nho rất ngon được trồng rộng rãi ở nước Ý.', 385000, 42, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (36, 2, N'125 NEGROAMARO Del Salento', N' Feudi Salentini S.R.L', 12.5, 750, N'vangy4.png', N'Rượu vang 125 Negroamaro Del Salento là 1 trong những chai rượu vang nổi tiếng của Ý. Một trong những cái nôi của rượu vang. Đây là quê hương của các dòng vang danh tiếng như Moscato', 395000, 347, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (37, 2, N'100 ESSENZA Primitivo Di Manduria 2012', N'Vùng Puglia', 15, 750, N'vangy5.png', N'Feudi Salentini được thành lập năm 1994 tại Leporano. Một trong những vùng đẹp nhất Salento. Vùng đất mà không chỉ được các nhà khảo cổ học quan tâm bởi các công trình kiến trúc La Mã cổ xưa', 1500000, 244, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (38, 2, N'125 MALVASIA Del Salento', N'Feudi Salentini S.R.L', 12.5, 750, N'vangy6.png', N'125 Malvasia Del Salento là một chai rượu nhẹ nhàng, thanh lịch. Nó được chế biến từ giống nho Malvasia del salento - Một giống nho rất ngon được trồng rộng rãi ở nước Ý.', 385000, 125, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (39, 2, N'125 NEGROAMARO Del Salento', N'Feudi Salentini- Italia', 12.5, 750, N'vangy7.png', N'Rượu vang 125 Negroamaro Del Salento là 1 trong những chai rượu vang nổi tiếng của Ý. Một trong những cái nôi của rượu vang. Đây là quê hương của các dòng vang danh tiếng như Moscato', 395000, 9, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (43, 2, N'125 PRIMITIVO Del Salento', N'Italia', 14, 750, N'vangy8.png', N'Rượu vang Ý 125 Primitivo có màu đen, rượu có màu đỏ ruby mê hoặc. Nhãn chai màu xám trắng và màu đỏ. Bề ngoài chai rượu có vẻ rất bình thường nhưng đẳng cấp của nó không hề bình thường một chút nào.', 675000, 243, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (45, 2, N'A50 Amarone Della Valpolicella 2010', N' Tinazzi Italia', 15.5, 750, N'vangy9.png', N'Tuyệt phẩm rượu vang A50 được tạo ra để vinh danh “vua” của vùng trồng nho Verona – Andrea Tinazzi. Chỉ có 3000 chai loại này trên toàn thế giới với bọc nút chai bằng vàng 24k', 4950000, 22, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (47, 2, N'Amatè Rosso Negroamaro Primitivo I.G.T', N'Guarini – Italy', 14.5, 750, N'vangy10.png', N'Rượu vang Amatè Rosso Negroamaro Primitivo I.G.T được sản xuất từ hai giống nho ngon nổi tiếng của Italia là Primitivo và Negroamaro.', 1050000, 234, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (50, 2, N'Monterè Ripasso 2012 Valpolicella Superiore', N' Tinazzi - Italy', 14, 750, N'vangy11.png', N'Rượu vang Montere Ripasso là một chai rượu được chế biến từ giống nho Corvina ở vùng Veneto nước Ý. Nó được biết đến là một chai rượu gắn liền với rất nhiều giải thưởng danh giá', 1350000, 25, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (51, 2, N'Moscato D''Asti Capetta', N' Piedmont - Italia', 5.5, 750, N'vangy12.png', N'Moscato d''Asti là một loại rượu vang trắng thuộc phân hạng DOCG chủ yếu là sản xuất ở tỉnh Asti, tây bắc Ý, và trong những khu vực nhỏ hơn của tỉnh của Alessandria và Cuneo. ', 545000, 249, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (52, 2, N'Moscato Perlage Dolce Pavia Fruit I.G.P', N'Guarini - Italy', 4.5, 750, N'vangy13.png', N'Rượu Moscato Perlage Dolce Pavia Fruit I.G.P là một chai rượu vang thuộc dòng vang danh tiếng Moscato nước Ý, ra đời tại vùng Oltrepò Pavese. Đây là vùng đất chủ yếu trồng nho trên các ngọn đồi', 520000, 22, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (55, 2, N'Moscato Spumante (Vang Nổ)', N' Capetta – Italy', 6.5, 750, N'vangy14.png', N'Vang trắng Moscato Capetta có vị ngọt nhẹ nhành như ánh mai. Vị ngọt của nó như vị của các trái cây chín và phảng phất mùi phấn hoa rất hấp dẫn. uống vào ta được tận hưởng một cảm giác dễ chịu.', 525000, 354, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (56, 2, N'PHONICO 2015 Primitivo Del Salento', N'Vùng Puglia', 14.5, 750, N'vangy15.png', N'Feudi Salentini được thành lập năm 1994 tại Leporano. Một trong những vùng đẹp nhất Salento. Vùng đất mà không chỉ được các nhà khảo cổ học quan tâm bởi các công trình kiến trúc La Mã cổ xưa', 850000, 125, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (58, 3, N'Cantoalba Carmenere 2015 Giới thiệu:', N' Curicó Valley - Chile', 1.1, 750, N'vangchile1.png', N'Cantoalba Carmenere 2015 được sản xuất từ những trái nho Carmenere được trồng ở thung lũng Colchagua, miền Tây Chile, một trong những vùng trồng vang nổi tiếng của Chile.', NULL, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (59, 3, N'Chaku Cabernet Sauvignon 2016', N' Central Valley - Chile', 13.5, 750, N'vangchile2.png', N'Chaku Cabernet Sauvignon 2016 được sản xuất từ giống nho Cabernet Sauvignon, trồng ở thung lũng Colchagua, miền trung Chile - một trong những vùng rượu vang nổi tiếng nhất của Chile. ', 250000, 125, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (60, 3, N'Indomita Chardonnay 2017', N' Central Valley - Chile', 12.5, 750, N'vangchile3.png', N'Indomita Chardonay có màu vàng rơm, rượu có vị chua vừa phải, hương thơm trái cây nhiệt đới nồng nàn mãnh liệt như chanh dây và mãng cầu tây, nổi bật nhất là mùi hương khoáng chất', 255000, 44, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (61, 3, N'Indomita Chardonnay 2017', N'Central Valley - Chile', 12.5, 750, N'vangchile4.png', N'Indomita Chardonay có màu vàng rơm, rượu có vị chua vừa phải, hương thơm trái cây nhiệt đới nồng nàn mãnh liệt như chanh dây và mãng cầu tây, nổi bật nhất là mùi hương khoáng chất ', 255000, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (62, 3, N'Indomita Gran Reserva Cabernet Sauvignon 2016', N'Maipo Valley - Chile', 13.5, 750, N'vangchile5.png', N'Rượu vang Indomita Gran resrva Cabernet Sauvignon được làm từ Giống nho Cabernet sauvignon danh tiếng có nguồn gốc Bordeaux - Pháp. Rượu có màu đỏ Ruby, cùng với hương thơm nồng nàn của trái Cherry, ', 625000, 21, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (63, 3, N'Indomita Premium Duette', N'Maipo Valley - Chile', 14.5, 750, N'vangchile6.png', N'Rượu vang Indomita Premium Duette được làm từ Giống nho Cabernet sauvignon và Carmenere danh tiếng có nguồn gốc Bordeaux - Pháp. Rượu có màu đỏ Ruby, cùng với hương thơm nồng nàn của trái Cherry', 1250000, 444, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (64, 3, N'Indomita Selected Varietal Cabernet Sauvignon 2017', N'Maipo Valley - Chile', 13, 750, N'vangchile7.png', N'Rượu vang Indomita Cabernet Sauvignon được làm từ Giống nho Cabernet sauvignon danh tiếng có nguồn gốc Bordeaux - Pháp. Rượu có màu đỏ Ruby, cùng với hương thơm nồng nàn của trái Cherry, ', 355000, 112, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (66, 3, N'Indomita Ultra Premium Zardoz', N'Maipo Valley - Chile', 14.5, 750, N'vangchile8.png', N'Rượu vang Indomita Ultra premium Zardoz được làm từ Giống nho Cabernet sauvignon  danh tiếng có nguồn gốc Bordeaux - Pháp. Các trái nho làm nên chai Vang này đều được chọn lọc từ những cành nho nhấ', 2500000, 222, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (68, 3, N'Mousai Cabernet Sauvignon', N'Colchagua Valley - Chile', 13.5, 750, N'vangchile9.png', N'Mousai Cabernet Sauvignon được lựa chọn từ cây nho của vùng la ronciere colchagua valley - Chile, nơi có điều kiện tự nhiên thích hợp để sản xuất những chai rượu vang cao cấp', 395000, 309, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (69, 3, N'Mousai Chardonnay 2017', N' Colchagua Valley - Chile', 13.5, 750, N'vangchile10.png', N'Rượu vang Moisai Chardonney được ủ và lên men từ những trái nho Chardonay nổi tiếng, được trồng ở thung lũng Limari nằm ở phía bắc Chile là khu vực có khí hậu và địa hình khác biệt với các vùng khác,', 385000, 21, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (70, 4, N'Saint Denis Crianza 2012', N'Tây Ban Nha', 14, 750, N'vangtbn1.png', N'Saint Denis Crianza 2012 là một chai rượu vang có nhãn DOCa - nhãn rượu vang cao cấp nhất của Tây Ban Nha, rượu còn đạt cấp Crianza - nghĩa là rượu được ủ tối thiểu 12 tháng trong thùng gỗ sồi Pháp ', NULL, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (71, 4, N'Saint Denis Limited Edition 2014', N'Tây Ban Nha', 15, 750, N'vangtbn2.png', N'Rượu vang Saint Denis Limited Edition 2014 là một chai rượu vang đạt cấp độ Denominacion de origen calificada (DOCa) – cấp độ cao cấp nhất của Tây Ban Nha. ', 1600000, 440, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (72, 4, N'Saint Denis Single Vineyard 2005
Giới thiệu:', N'Tây Ban Nha', 15, 750, N'vangtbn3.png', N'Rượu vang Saint Denis Single Vineyard 2005 sản xuất từ Tây Ban Nha. Nó mang trên mình vẻ tự hào về xử sở và nguồn gốc của chúng, được lên men tự nhiên từ giống nho Temprillano. ', 2500000, 221, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (73, 4, N'Santalba 1868', N'Tây Ban Nha', 14.5, 750, N'vangtbn4.png', N'Santalba - một thương hiệu của nhà Bodegas, là hợp nhất giữa họ và tên của chủ sở hữu cùng với người sáng lập: Santiago ljalba. Với loại nho chất lượng tốt nhất, đội ngũ chuyên gia làm rượu uy tín,', 850000, 22, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (74, 4, N'Santalba Amaro 2014', N' Tây Ban Nha', 15.5, 750, N'vangtbn5.png', N'Rượu vang đỏ Santalba Amaro 2014 là một chai vang tuyệt vời của xứ sở Tây Ban Nha. Nó là chai rượu được hãng vang nổi tiếng Santalba vô cùng tâm đắc.', 2250000, 21, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (75, 5, N'Rutz Cellars Syrah 2014', N'California USA', 13.9, 750, N'vangmy.png', N'Rutz Cellars Syrah được làm từ Giống nho Syrah danh tiếng ccó nguồn gốc từ Côtes-du-Rhône - Pháp. Rượu có màu đỏ Ruby đậm, cùng với hương thơm nồng nàn của trái Cherry, hoa viole', 850000, 44, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (76, 6, N'Chivas 12 Years', N'Scotland', 40, 750, N'whisky1.png', NULL, 12000000, 48, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (77, 6, N'Chivas 15 Years', N'Scotland', 40, 750, N'whisky2.png', NULL, 15000000, 34, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (78, 6, N'Chivas Mizunara (Chivas Nhật)', N' Scotland', 40, 750, N'whisky3.png', NULL, 10000000, 21, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (79, 6, N'Chivas 18 Years Gold Signature', N'Scotland', 40, 700, N'whisky4.png', NULL, 13000000, 13, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (80, 6, N'Chivas 18 Years 1750ml', N'Scotland', 40, 1750, N'whisky5.png', NULL, 18000000, 454, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (81, 6, N'Chivas 18 Years Blue Signature', N'Scotland', 40, 750, N'whisky6.png', NULL, 18500000, 0, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (82, 6, N'Chivas 21 Years', N'Scotland', 43, 700, N'whisky7.png', NULL, 20000000, 131, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (84, 6, N'Chivas 25 Years', N'Scotland', 40, 750, N'whisky8.png', NULL, 21000000, 42, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (85, 6, N'Glenlivet 1824 Founders Reserve', N'Scotland', 40, 750, N'whisky9.png', NULL, 22000000, 9, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (86, 6, N'Glenlivet 12 Years', N'Scotland', 40, 750, N'whisky10.png', NULL, 25000000, 511, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (87, 6, N'Glenlivet 15 Years', N'Scotland', 40, 750, N'whisky11.png', NULL, 27000000, 23, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (88, 6, N'Bowmore 15 Years', N'Scotland', 40, 750, N'whisky12.png', NULL, 28000000, 299, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (89, 6, N'Singleton 12 Years', N'Scotland', 40, 750, N'whisky13.png', NULL, 30000000, 9, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (91, 6, N'Singleton 18 Years', N'Scotland', 40, 750, N'whisky14.png', NULL, 31000000, 25, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (92, 6, N'Macallan 12 Years', N'Scotland', 40, 750, N'whisky15.png', NULL, 32000000, 12, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (93, 6, N'Macallan 15 Years', N'Scotland', 43, 750, N'whisky16.png', NULL, 33000000, 21, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (94, 6, N'Macallan 18 Years', N'Scotland', 43, 750, N'whisky17.png', NULL, 35000000, 22, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (95, 3, N'a', N'a', 4, 4, NULL, N'4', 4, 22, 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
INSERT [dbo].[TaiKhoan] ([HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [LoaiTaiKhoan], [DiaChi], [TinhTrang]) VALUES (N'abc', N'a@gmail.com', N'123465798', N'abc', N'123', N'User', N'bac ninh', N'Đã kích hoạt')
INSERT [dbo].[TaiKhoan] ([HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [LoaiTaiKhoan], [DiaChi], [TinhTrang]) VALUES (N'Đoàn Văn Anh', N'anh@gmail.com', N'11111111111', N'anh123', N'anh123', N'User', N'85 Trường Chinh Hà Nội', N'Đã kích hoạt')
INSERT [dbo].[TaiKhoan] ([HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [LoaiTaiKhoan], [DiaChi], [TinhTrang]) VALUES (N'Trần Thị Huyền', N'tranthihuyen@gmail.com', N'0828356921', N'huyen123', N'huyen123', N'User', N'Giải Phóng Hà Nội', N'Đã kích hoạt')
INSERT [dbo].[TaiKhoan] ([HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [LoaiTaiKhoan], [DiaChi], [TinhTrang]) VALUES (N'Trần Khánh Linh', N'trankhanhlinh@gmail.com', N'0978273498', N'linh123', N'linh123', N'User', N'Hà Nam', N'Đã kích hoạt')
INSERT [dbo].[TaiKhoan] ([HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [LoaiTaiKhoan], [DiaChi], [TinhTrang]) VALUES (N'Nguyễn Văn Nam', N'nguyenvannam@gmail.com', N'0123456789', N'nam123', N'nam123', N'Admin', N'Hà Nội', N'Đã kích hoạt')
INSERT [dbo].[TaiKhoan] ([HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [LoaiTaiKhoan], [DiaChi], [TinhTrang]) VALUES (N'Thanh', N'thanhvu1501@gmail.com', N'012459723', N'thanhvu', N'123456', N'Admin', N'Hà Nội', N'Đã kích hoạt')
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_hoadon_tentaikhoan] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_hoadon_tentaikhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
