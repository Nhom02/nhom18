USE [giayit]
GO
/****** Object:  Table [dbo].[phieunhap]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieunhap](
	[maphieunhap] [int] NOT NULL,
	[nguoinhap] [nvarchar](max) NULL,
	[ngaynhap] [datetime] NULL,
	[tongtien] [int] NULL,
 CONSTRAINT [PK_phieunhap] PRIMARY KEY CLUSTERED 
(
	[maphieunhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[phieunhap] ([maphieunhap], [nguoinhap], [ngaynhap], [tongtien]) VALUES (1, N'Phạm Hoàng Hiệp', CAST(0x0000A29C00000000 AS DateTime), 20000)
INSERT [dbo].[phieunhap] ([maphieunhap], [nguoinhap], [ngaynhap], [tongtien]) VALUES (2, N'dũng', CAST(0x0000A2A1017F5E30 AS DateTime), 133332)
INSERT [dbo].[phieunhap] ([maphieunhap], [nguoinhap], [ngaynhap], [tongtien]) VALUES (3, N'dũng', CAST(0x0000A2A101801758 AS DateTime), 1722220)
INSERT [dbo].[phieunhap] ([maphieunhap], [nguoinhap], [ngaynhap], [tongtien]) VALUES (4, N'Dũng', CAST(0x0000A2A200A8D9C8 AS DateTime), 120240000)
INSERT [dbo].[phieunhap] ([maphieunhap], [nguoinhap], [ngaynhap], [tongtien]) VALUES (5, N'Boss', CAST(0x0000A2A200ACBDE0 AS DateTime), 879999912)
/****** Object:  Table [dbo].[phanquyen]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanquyen](
	[maphanquyen] [int] NOT NULL,
	[quyen] [nchar](20) NULL,
 CONSTRAINT [PK_phanquyen] PRIMARY KEY CLUSTERED 
(
	[maphanquyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[phanquyen] ([maphanquyen], [quyen]) VALUES (1, N'vip                 ')
/****** Object:  Table [dbo].[nhacungcap]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[manhacungcap] [int] NOT NULL,
	[tennhacungcap] [nvarchar](20) NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[sdt] [nvarchar](15) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.nhacungcap] PRIMARY KEY CLUSTERED 
(
	[manhacungcap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[nhacungcap] ([manhacungcap], [tennhacungcap], [diachi], [sdt], [email]) VALUES (1, N'Nhat Ban', N'1 Nam Ki Khoi Nghia', N'5346345232', N'nhatban@gmail.com')
INSERT [dbo].[nhacungcap] ([manhacungcap], [tennhacungcap], [diachi], [sdt], [email]) VALUES (2, N'Han Quoc', N'699 Nguyen Van Linh', N'23423423423', N'hanquoc@gmail.com')
INSERT [dbo].[nhacungcap] ([manhacungcap], [tennhacungcap], [diachi], [sdt], [email]) VALUES (3, N'Trung Quoc', N'1500 Dinh Bo Linh', N'095732562', N'trungquoc@gmail.com')
INSERT [dbo].[nhacungcap] ([manhacungcap], [tennhacungcap], [diachi], [sdt], [email]) VALUES (4, N'Phap', N'232 Hoang Van thu', N'23423346245', N'phap@gmail.com')
/****** Object:  Table [dbo].[loaisanphams]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanphams](
	[maloai] [nvarchar](128) NOT NULL,
	[tenloai] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[loaisanphams] ([maloai], [tenloai]) VALUES (N'bo', N'BOSS')
INSERT [dbo].[loaisanphams] ([maloai], [tenloai]) VALUES (N'cl', N'CLARKS')
INSERT [dbo].[loaisanphams] ([maloai], [tenloai]) VALUES (N'co', N'COLUMBIA')
INSERT [dbo].[loaisanphams] ([maloai], [tenloai]) VALUES (N'dr', N'DRMARTENS')
INSERT [dbo].[loaisanphams] ([maloai], [tenloai]) VALUES (N'ec', N'ECCO')
INSERT [dbo].[loaisanphams] ([maloai], [tenloai]) VALUES (N'ge', N'GEOX')
INSERT [dbo].[loaisanphams] ([maloai], [tenloai]) VALUES (N'ti', N'TIMBERLAND')
/****** Object:  Table [dbo].[tonkho]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tonkho](
	[ngay] [datetime] NOT NULL,
	[masanpham] [nvarchar](max) NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_tonkho] PRIMARY KEY CLUSTERED 
(
	[ngay] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A29200000000 AS DateTime), N'cl02', 4)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A1017F5E30 AS DateTime), N'cl02', 8)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A101801758 AS DateTime), N'cl02', 13)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A101889400 AS DateTime), N'Boss13', 9)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A101889658 AS DateTime), N'Boss10', 1)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A1018898B0 AS DateTime), N'Boss09', 1)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A101889B08 AS DateTime), N'Boss08', 9)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A101889D60 AS DateTime), N'Boss07', 9)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A101889FB8 AS DateTime), N'Boss06', 9)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188A210 AS DateTime), N'Boss05', 9)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188A468 AS DateTime), N'Geox11', 1)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188A6C0 AS DateTime), N'Geox10', 1)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188A918 AS DateTime), N'Clark12', 1)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188AB70 AS DateTime), N'Clark13', 9)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188ADC8 AS DateTime), N'Clark05', 1)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188B020 AS DateTime), N'ti12', 38)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188B278 AS DateTime), N'ti11', 37)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188B4D0 AS DateTime), N'ti09', 36)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188B728 AS DateTime), N'ti08', 37)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188B980 AS DateTime), N'ti05', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188BBD8 AS DateTime), N'ti04', 43)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188BE30 AS DateTime), N'ti02', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188C088 AS DateTime), N'ti01', 40)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188C2E0 AS DateTime), N'ge08', 37)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188C538 AS DateTime), N'ge05', 41)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188C790 AS DateTime), N'ge04', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188C9E8 AS DateTime), N'ge02', 43)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188CC40 AS DateTime), N'ge01', 40)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188CFC4 AS DateTime), N'ec06', 40)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188D21C AS DateTime), N'ec03', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188D474 AS DateTime), N'ec02', 41)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188D6CC AS DateTime), N'ec01', 41)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188D924 AS DateTime), N'dr14', 37)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188DB7C AS DateTime), N'dr11', 37)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188DDD4 AS DateTime), N'dr09', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188E02C AS DateTime), N'dr08', 41)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188E284 AS DateTime), N'dr07', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188E4DC AS DateTime), N'dr06', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188E734 AS DateTime), N'dr01', 39)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188E98C AS DateTime), N'co13', 37)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188EBE4 AS DateTime), N'cl10', 38)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188EE3C AS DateTime), N'cl09', 40)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188F094 AS DateTime), N'cl07', 43)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188F2EC AS DateTime), N'cl05', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188F544 AS DateTime), N'cl04', 41)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188F79C AS DateTime), N'cl03', 39)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188F9F4 AS DateTime), N'cl02', 5)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188FC4C AS DateTime), N'cl01', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A10188FEA4 AS DateTime), N'bo14', 37)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A1018900FC AS DateTime), N'bo12', 0)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A200A8D9C8 AS DateTime), N'cl10', 42)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A200A8DAF4 AS DateTime), N'ti05', 44)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A200AC42D4 AS DateTime), N'sp01', 0)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A200ACBF0C AS DateTime), N'sp01', 99)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2A200AD9580 AS DateTime), N'sp01', 96)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2AB0101B890 AS DateTime), N'ge01', 39)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2AB0101B9BC AS DateTime), N'ge04', 41)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2AB0114A194 AS DateTime), N'sp003', 0)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2AB01153410 AS DateTime), N'so003', 0)
INSERT [dbo].[tonkho] ([ngay], [masanpham], [soluong]) VALUES (CAST(0x0000A2AB011613E4 AS DateTime), N'sp0023', 0)
/****** Object:  Table [dbo].[tintuc]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tintuc](
	[matintuc] [int] NOT NULL,
	[tieude] [nvarchar](50) NULL,
	[noidung] [ntext] NULL,
	[ngaydang] [datetime] NULL,
 CONSTRAINT [PK_tintuc] PRIMARY KEY CLUSTERED 
(
	[matintuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[username] [nchar](20) NOT NULL,
	[password] [nchar](50) NULL,
	[hoten] [nvarchar](100) NULL,
	[ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([username], [password], [hoten], [ngaysinh]) VALUES (N'admin               ', N'1234567                                           ', N'Hoang Hiep', CAST(0x0000835C00000000 AS DateTime))
INSERT [dbo].[admin] ([username], [password], [hoten], [ngaysinh]) VALUES (N'superadmin          ', N'1234567                                           ', N'Duc Dung', CAST(0x0000848700000000 AS DateTime))
/****** Object:  Table [dbo].[user]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[makhachhang] [nchar](30) NOT NULL,
	[tenkhachhang] [nvarchar](100) NULL,
	[password] [nchar](30) NULL,
	[ngaysinh] [datetime] NULL,
	[gioitinh] [int] NULL,
	[sdt] [nchar](15) NULL,
	[diachi] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[maphanquyen] [int] NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[makhachhang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'admin1                        ', N'Phạm Hoàng Hiệp', N'1234567                       ', CAST(0x0000A29001730E42 AS DateTime), 1, N'01667573377    ', N'350 hoang van thu', N'phhoanghiep035@gmail.com', 1, N'1')
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'dung125                       ', N'Phạm Hoàng Hiệp', N'123456                        ', CAST(0x0000A13900000000 AS DateTime), 1, N'908904853      ', N'350 hoang van thu', N'phhoanghiep035@gmail.com', 1, N'')
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'dung129                       ', N'dung', N'123456                        ', CAST(0x0000A28B00B2A40B AS DateTime), 1, N'09293847       ', N'dung', N'shaduka2011@gmail.com', 1, N'1')
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'supercat2701                  ', N'phạm hoàng hiệp', N'1234567890                    ', CAST(0x0000A13900000000 AS DateTime), 1, N'01667573377    ', N'312 ly thuong kiet', N'phhoanghiep@gmail.com', 1, N'1')
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'user00                        ', N'Phạm Hoàng Hiệpa', N'123456                        ', CAST(0x0000840100000000 AS DateTime), 1, N'01667573377    ', N'350 hoang van thu', N'phhoanghiep035@gmail.com', 1, N'1')
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'user01                        ', N'Nguyễn Đức Dũng', N'1234567                       ', CAST(0x0000848D00000000 AS DateTime), 1, N'01600000000    ', N'quan 12 ho chi minh', N'dungde@gmail.com', NULL, N'1')
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'user11                        ', N'Phạm Hoàng Hiệp', N'123456                        ', CAST(0x0000A29200A9ADBC AS DateTime), 1, N'01667573377    ', N'350 hoang van thu', N'phhoanghiep035@gmail.com', 1, N'1')
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'user22                        ', N'dung', N'123456                        ', CAST(0x0000A2AB00FC6480 AS DateTime), 1, N'0936757447     ', N'hcm', N'tuthantactu007@yahoo.com', 1, N'')
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'user33                        ', N'dung', N'123456                        ', CAST(0x0000A2A5013703C1 AS DateTime), 1, N'0936757447     ', N'hcm', N'tuthantactu@gmai.com', 1, N'1')
INSERT [dbo].[user] ([makhachhang], [tenkhachhang], [password], [ngaysinh], [gioitinh], [sdt], [diachi], [email], [maphanquyen], [ghichu]) VALUES (N'user3656                      ', N'dung', N'123456                        ', CAST(0x0000A2A50137A9F0 AS DateTime), 1, N'394583         ', N'jcm', N'tuthantactu007@yahoo.com', 1, N'')
/****** Object:  Table [dbo].[sanphams]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanphams](
	[masanpham] [nvarchar](128) NOT NULL,
	[tensanpham] [nvarchar](max) NULL,
	[chatlieu] [nvarchar](max) NULL,
	[giasanpham] [int] NOT NULL,
	[motasanpham] [nvarchar](max) NULL,
	[soluongcon] [int] NOT NULL,
	[sanphammoi] [int] NOT NULL,
	[hinhanh] [nvarchar](max) NULL,
	[ghichu] [int] NOT NULL,
	[maloai] [nvarchar](128) NULL,
	[manhacungcap] [int] NULL,
	[stt] [int] NOT NULL,
 CONSTRAINT [PK__sanphams__8F121B2F0AD2A005] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'bo12', N'Boss 12', N'da', 1500000, N'Nhật Bản', 0, 1, N'image/giay/BOSS/boss-02.JPG', 1, N'bo', 1, 1)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'bo14', N'Boss 14', N'da', 1600000, N'Trung Quốc', 37, 1, N'image/giay/BOSS/Giày da nam Clarks Storm walk HI 2011.jpg', 1, N'bo', 1, 2)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Boss05', N'Boss 05', N'da', 2000000, N'Tàu khựa', 9, 1, N'image/giay/BOSS/Nam Boss 24620_1tr3.jpg', 1, N'bo', 1, 55)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Boss06', N'Boss 06', N'da lon', 15000000, N'Nhật Bản', 9, 1, N'image/giay/BOSS/boss-09.jpg', 1, N'bo', 1, 56)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Boss07', N'Boss 07', N'da lon', 2000000, N'Nhật Bản', 9, 1, N'image/giay/BOSS/boss-01.jpg', 1, N'bo', 1, 57)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Boss08', N'Boss 08', N'da lon', 2000000, N'Tàu khựa', 9, 1, N'image/giay/BOSS/boss-07.jpg', 1, N'bo', 1, 58)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Boss09', N'Boss 09', N'da lon', 2000000, N'Nhật Bản', 1, 1, N'image/giay/BOSS/boss-08.jpg', 1, N'bo', 1, 59)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Boss10', N'Boss 10', N'da lon', 2000000, N'Tàu khựa', 1, 1, N'image/giay/BOSS/boss-09.jpg', 1, N'bo', 1, 60)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Boss13', N'Boss 13', NULL, 2000000, N'Nhật Bản', 9, 1, N'image/giay/BOSS/boss-07.jpg', 1, N'bo', 1, 62)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'cl01', N'Clarks 01', N'da', 1500000, N'Nhật Bản', 42, 1, N'image/giay/clarks/clark-01.jpg', 1, N'cl', 1, 4)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'cl02', N'Clarks 02', N'da', 2000000, N'Nhật Bản', 2, 1, N'image/giay/clarks/clark-02.jpg', 1, N'cl', 1, 5)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'cl03', N'Clarks 03', N'da', 1700000, N'Nhật Bản', 39, 0, N'image/giay/clarks/clark-03.jpg', 1, N'bo', 1, 6)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'cl04', N'Clarks 04', N'da', 1600000, N'Hàn Quốc', 41, 1, N'image/giay/clarks/clark-04.jpg', 1, N'bo', 1, 7)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'cl05', N'Clarks 05', N'da', 1500000, N'Pháp', 42, 1, N'image/giay/clarks/clark-05.jpg', 1, N'cl', 1, 8)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'cl07', N'Clarks 07', N'da', 2000000, N'Pháp', 43, 1, N'image/giay/clarks/clark-07.png', 1, N'cl', 4, 10)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'cl09', N'Clarks 09', N'da', 1500000, N'Trung Quốc', 40, 1, N'image/giay/clarks/clark-09.jpg', 1, N'bo', 3, 11)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'cl10', N'Clarks 10', N'da', 1500000, N'Hàn Quốc', 42, 1, N'image/giay/BOSS/giay.jpg', 1, N'bo', 1, 12)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Clark05', N'Clark 05', N'da lon', 15000000, N'Tàu khựa', 1, 1, N'image/giay/CLARKS/clark-02.jpg', 1, N'cl', 1, 50)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Clark12', N'Clark 12', NULL, 2000000, N'Tàu khựa', 1, 1, N'image/giay/CLARKS/clark-04.jpg', 1, N'cl', 1, 52)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Clark13', N'Clark 13', N'da lon', 2000000, N'Tàu khựa', 9, 1, N'image/giay/CLARKS/Clarks RACE 2011 D13_950k.jpg', 1, N'cl', 1, 51)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'co13', N'Columbia 13', N'da', 1400000, N'Hàn Quốc', 37, 1, N'image/giay/COLUMBIA/giay.jpg', 1, N'co', 1, 16)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'dr01', N'Dr martens 01', N'da', 1200000, N'Trung Quốc', 39, 0, N'image/giay/drmartens/dr-01.jpg', 2, N'dr', 3, 17)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'dr06', N'Dr martens 06', N'da', 1500000, N'Nhật Bản', 42, 1, N'image/giay/drmartens/dr-06.jpg', 2, N'dr', 1, 18)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'dr07', N'Dr martens 07', N'da', 2000000, N'Nhật Bản', 42, 1, N'image/giay/drmartens/dr-07.jpg', 2, N'dr', 1, 19)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'dr08', N'Dr martens 08', N'da', 1900000, N'Nhật Bản', 41, 0, N'image/giay/drmartens/dr-08.jpg', 2, N'dr', 1, 20)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'dr09', N'Dr martens 09', N'da', 1500000, N'Hàn Quốc', 42, 1, N'image/giay/drmartens/dr-09.jpg', 2, N'dr', 2, 21)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'dr11', N'Dr martens 11', N'da', 1500000, N'Pháp', 37, 1, N'Image/Clarkai.jpg', 4, N'dr', 4, 23)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'dr14', N'Dr martens 14', N'da', 1100000, N'Nhật Bản', 37, 1, N'image/giay/BOSS/Clarks S12.jpg', 1, N'dr', 1, 24)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ec01', N'Ecco 01', N'da', 1100000, N'Hàn Quốc', 41, 0, N'image/giay/ecco/ecco-01.jpg', 3, N'ec', 2, 25)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ec02', N'Ecco 02', N'da', 1500000, N'Trung Quốc', 41, 0, N'image/giay/ecco/ecco-02.jpg', 3, N'ec', 3, 26)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ec03', N'Ecco 03', N'da', 1000000, N'Pháp', 42, 1, N'image/giay/ecco/ecco-03.jpg', 3, N'ec', 4, 27)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ec06', N'Ecco 06', N'da', 1600000, N'Hàn Quốc', 40, 0, N'image/giay/ecco/ecco-06.jpg', 3, N'ec', 2, 28)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ge01', N'Geox 01', N'da', 1500000, N'Hàn Quốc', 39, 0, N'image/giay/geox/ge-01.jpg', 4, N'ge', 2, 33)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ge02', N'Geox 02', N'da', 1400000, N'Nhật Bản', 43, 0, N'image/giay/geox/ge-02.jpg', 4, N'ge', 1, 34)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ge04', N'Geox 04', N'da', 1600000, N'Pháp', 41, 0, N'image/giay/geox/ge-04.jpg', 4, N'ge', 4, 35)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ge05', N'Geox 05', N'da', 1800000, N'Nhật Bản', 41, 1, N'image/giay/geox/ge-05.jpg', 4, N'ge', 1, 36)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ge08', N'Geox 08', N'da', 1500000, N'Nhật Bản', 37, 1, N'image/giay/GEOX/HUGO BOSS_HB003_935k.JPG', 1, N'ge', 1, 39)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Geox10', N'Geox 10', N'da lon', 15000000, N'Tàu khựa', 1, 1, N'image/giay/GEOX/Giầy nam GE22.jpg', 1, N'ge', 1, 53)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'Geox11', N'Geox 11', N'da lon', 2000000, N'Tàu khựa', 1, 1, N'image/giay/GEOX/ge-05.jpg', 1, N'ge', 1, 54)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'sp0023', N'timberland005', N'da', 55555555, N'ádasdasdasd', 0, 0, N'Image/Timberland Annapolis 3369.png', 0, N'ti', 1, 65)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'sp01', N'giầy víp bá đạo', N'da rồng', 9999999, N'Hàng việt nam chất lượng cao', 96, 0, N'Image/Clarkggfdfd.PNG', 0, N'bo', 1, 64)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ti01', N'Timberland 01', N'da', 1200000, N'Pháp', 40, 1, N'image/giay/timberland/ti-01.png', 4, N'ti', 4, 41)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ti02', N'Timberland 02', N'da', 1600000, N'Hàn Quốc', 42, 1, N'image/giay/timberland/ti-02.jpg', 5, N'ti', 2, 42)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ti04', N'Timberland 04', N'da', 1100000, N'Trung Quốc', 43, 1, N'image/giay/timberland/ti-04.jpg', 5, N'ti', 3, 43)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ti05', N'Timberland 05', N'da', 1700000, N'Nhật Bản', 44, 0, N'image/giay/timberland/ti-05.png', 5, N'ti', 1, 44)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ti08', N'Timberland 08', N'da', 1200000, N'Trung Quốc', 37, 0, N'image/giay/timberland/ti-08.jpg', 2, N'ti', 3, 45)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ti09', N'Timberland 09', N'da', 1100000, N'Trung Quốc', 36, 1, N'image/giay/timberland/ti-09.jpg', 5, N'ti', 3, 46)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ti11', N'Timberland 11', N'da', 1300000, N'Nhật Bản', 37, 0, N'image/giay/timberland/ti-11.jpg', 5, N'ti', 1, 47)
INSERT [dbo].[sanphams] ([masanpham], [tensanpham], [chatlieu], [giasanpham], [motasanpham], [soluongcon], [sanphammoi], [hinhanh], [ghichu], [maloai], [manhacungcap], [stt]) VALUES (N'ti12', N'Timberland 12', N'da', 1500000, N'Pháp', 38, 1, N'image/giay/timberland/ti-12.jpg', 5, N'ti', 4, 48)
/****** Object:  Table [dbo].[hoadon]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[mahoadon] [int] NOT NULL,
	[makhachhang] [nchar](30) NULL,
	[tenkhachhang] [nvarchar](50) NULL,
	[diachi] [nvarchar](max) NULL,
	[email] [nvarchar](50) NULL,
	[sdt] [nvarchar](max) NULL,
	[tongtien] [int] NULL,
	[ngaymuahang] [datetime] NULL,
	[ngaygiaohang] [datetime] NULL,
	[tinhtrang] [nvarchar](20) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_hoadons] PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (1, N'user00                        ', N'Dũng', N'HCM', N'Badao@gmail.com', N'0936757447', 555555, CAST(0x0000A29200000000 AS DateTime), CAST(0x0000A29200000000 AS DateTime), N'đã giao', NULL)
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (2, N'user00                        ', N'Nguyễn văn Tòe', N' Quận 12 hc', N'Shaduka201144444@gmail.com', N'0936757447', 4800000, CAST(0x0000A280011CC0EC AS DateTime), CAST(0x0000A280011CC0EC AS DateTime), N'đã giao', N'')
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (3, N'dung125                       ', N' Nguyễn Đức Dũng', N'Đại học sài gòn,Tp.HCM,Việt Nam', N' shaduka2011@gmail.com', N' 908904853      ', 18000000, CAST(0x0000A280017197A7 AS DateTime), CAST(0x0000A280017197A7 AS DateTime), N'đã giao', N'')
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (4, N'user00                        ', N' Cao Thái Hiệp', N' 312 ly thuong kiet', N' phhoanghiep@gmail.com', N' 01667573377    ', 1500000, CAST(0x0000A289016473FA AS DateTime), CAST(0x0000A289016473FA AS DateTime), N'chưa giao', N'')
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (5, N'user00                        ', N' Cao Thái Hiệp', N' 312 ly thuong kiet', N' phhoanghiep@gmail.com', N' 01667573377    ', 2000000, CAST(0x0000A2890164A718 AS DateTime), CAST(0x0000A2890164A718 AS DateTime), N'chưa giao', N'')
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (6, N'user00                        ', N' aaaaaaaaaa', N' ádas', N'shaduka2011@gmail.com', N' ádasdass', 3000000, CAST(0x0000A28901651E62 AS DateTime), CAST(0x0000A28901651E62 AS DateTime), N'chưa giao', N'')
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (7, N'user00                        ', N' Cao Thái Hiệp ', N' 312 ly thuong kiet hcm', N' phhoanghiep@gmail.com', N' 01667573377    ', 2000000, CAST(0x0000A28B009E96DC AS DateTime), CAST(0x0000A28B009E96DC AS DateTime), N'chưa giao', N'')
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (8, N'user00                        ', N' Cao Thái Hiệp ', N' 312 ly thuong kiet hcm', N' phhoanghiep@gmail.com', N' 01667573377    ', 2600000, CAST(0x0000A28B00AA1CE7 AS DateTime), CAST(0x0000A28B00AA1CE7 AS DateTime), N'chưa giao', N'')
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (9, N'user00                        ', N' Cao Thái Hiệp ', N' 312 ly thuong kiet hcm', N' phhoanghiep@gmail.com', N' 01667573377    ', 4800000, CAST(0x0000A28B00AB3C2D AS DateTime), CAST(0x0000A28B00AB3C2D AS DateTime), N'chưa giao', N'')
INSERT [dbo].[hoadon] ([mahoadon], [makhachhang], [tenkhachhang], [diachi], [email], [sdt], [tongtien], [ngaymuahang], [ngaygiaohang], [tinhtrang], [ghichu]) VALUES (10, N'user00                        ', N' Phạm Hoàng Hiệpa', N' 350 hoang van thu', N' phhoanghiep035@gmail.com', N' 01667573377    ', 3100000, CAST(0x0000A2AB00FC498C AS DateTime), CAST(0x0000A2AB00FC498C AS DateTime), N'đã giao', N'')
/****** Object:  Table [dbo].[chitietphieunhap]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietphieunhap](
	[maphieunhap] [int] NOT NULL,
	[masanpham] [nvarchar](128) NOT NULL,
	[soluong] [int] NOT NULL,
	[gia] [int] NULL,
 CONSTRAINT [PK_chitietphieunhap_1] PRIMARY KEY CLUSTERED 
(
	[maphieunhap] ASC,
	[masanpham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chitietphieunhap] ([maphieunhap], [masanpham], [soluong], [gia]) VALUES (1, N'bo12', 1, 20000)
INSERT [dbo].[chitietphieunhap] ([maphieunhap], [masanpham], [soluong], [gia]) VALUES (2, N'cl02', 4, 33333)
INSERT [dbo].[chitietphieunhap] ([maphieunhap], [masanpham], [soluong], [gia]) VALUES (3, N'cl02', 5, 344444)
INSERT [dbo].[chitietphieunhap] ([maphieunhap], [masanpham], [soluong], [gia]) VALUES (4, N'cl10', 4, 60000)
INSERT [dbo].[chitietphieunhap] ([maphieunhap], [masanpham], [soluong], [gia]) VALUES (4, N'ti05', 2, 60000000)
INSERT [dbo].[chitietphieunhap] ([maphieunhap], [masanpham], [soluong], [gia]) VALUES (5, N'sp01', 99, 8888888)
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 01/06/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[mahoadon] [int] NOT NULL,
	[masanpham] [nvarchar](128) NOT NULL,
	[tensanpham] [nvarchar](50) NULL,
	[giasanpham] [int] NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_chitiethoadon] PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC,
	[masanpham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (1, N'cl02', N'Clarks 01', 1500000, 3)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (2, N'cl04', N'Clarks 04', 1600000, 3)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (3, N'cl03', N'Clarks 03', 1700000, 3)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (3, N'cl04', N'Clarks 04', 1600000, 3)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (3, N'ec01', N'Ecco 01', 1100000, 3)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (3, N'ti02', N'Timberland 02', 1600000, 3)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (4, N'cl01', N'Clarks 01', 1500000, 1)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (5, N'cl02', N'Clarks 02', 2000000, 1)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (6, N'bo12', N'Boss 12', 1500000, 2)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (7, N'dr07', N'Dr martens 07', 2000000, 1)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (8, N'ti11', N'Timberland 11', 1300000, 2)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (9, N'cl01', N'Clarks 01', 1500000, 1)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (9, N'dr11', N'Dr martens 11', 1500000, 1)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (9, N'ge05', N'Geox 05', 1800000, 1)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (10, N'ge01', N'Geox 01', 1500000, 1)
INSERT [dbo].[chitiethoadon] ([mahoadon], [masanpham], [tensanpham], [giasanpham], [soluong]) VALUES (10, N'ge04', N'Geox 04', 1600000, 1)
/****** Object:  ForeignKey [FK_chitiethoadon_hoadon]    Script Date: 01/06/2014 17:38:23 ******/
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_hoadon] FOREIGN KEY([mahoadon])
REFERENCES [dbo].[hoadon] ([mahoadon])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_hoadon]
GO
/****** Object:  ForeignKey [FK_chitiethoadon_sanphams]    Script Date: 01/06/2014 17:38:23 ******/
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_sanphams] FOREIGN KEY([masanpham])
REFERENCES [dbo].[sanphams] ([masanpham])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_sanphams]
GO
/****** Object:  ForeignKey [FK_chitietphieunhap_phieunhap]    Script Date: 01/06/2014 17:38:23 ******/
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD  CONSTRAINT [FK_chitietphieunhap_phieunhap] FOREIGN KEY([maphieunhap])
REFERENCES [dbo].[phieunhap] ([maphieunhap])
GO
ALTER TABLE [dbo].[chitietphieunhap] CHECK CONSTRAINT [FK_chitietphieunhap_phieunhap]
GO
/****** Object:  ForeignKey [FK_chitietphieunhap_sanphams]    Script Date: 01/06/2014 17:38:23 ******/
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD  CONSTRAINT [FK_chitietphieunhap_sanphams] FOREIGN KEY([masanpham])
REFERENCES [dbo].[sanphams] ([masanpham])
GO
ALTER TABLE [dbo].[chitietphieunhap] CHECK CONSTRAINT [FK_chitietphieunhap_sanphams]
GO
/****** Object:  ForeignKey [FK_hoadon_user]    Script Date: 01/06/2014 17:38:23 ******/
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_user] FOREIGN KEY([makhachhang])
REFERENCES [dbo].[user] ([makhachhang])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_hoadon_user]
GO
/****** Object:  ForeignKey [FK_sanphams_loaisanphams]    Script Date: 01/06/2014 17:38:23 ******/
ALTER TABLE [dbo].[sanphams]  WITH CHECK ADD  CONSTRAINT [FK_sanphams_loaisanphams] FOREIGN KEY([maloai])
REFERENCES [dbo].[loaisanphams] ([maloai])
GO
ALTER TABLE [dbo].[sanphams] CHECK CONSTRAINT [FK_sanphams_loaisanphams]
GO
/****** Object:  ForeignKey [FK_sanphams_nhacungcap]    Script Date: 01/06/2014 17:38:23 ******/
ALTER TABLE [dbo].[sanphams]  WITH CHECK ADD  CONSTRAINT [FK_sanphams_nhacungcap] FOREIGN KEY([manhacungcap])
REFERENCES [dbo].[nhacungcap] ([manhacungcap])
GO
ALTER TABLE [dbo].[sanphams] CHECK CONSTRAINT [FK_sanphams_nhacungcap]
GO
/****** Object:  ForeignKey [FK_user_phanquyen]    Script Date: 01/06/2014 17:38:23 ******/
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_phanquyen] FOREIGN KEY([maphanquyen])
REFERENCES [dbo].[phanquyen] ([maphanquyen])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_phanquyen]
GO
