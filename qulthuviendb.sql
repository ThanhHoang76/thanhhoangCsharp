USE [QLThuVien]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 04/01/2022 7:23:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[MaDocGia] [nchar](10) NOT NULL,
	[TenDangNhap] [nchar](30) NULL,
	[MatKhau] [nchar](30) NULL,
	[Quyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DOCGIA]    Script Date: 04/01/2022 7:23:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCGIA](
	[MaDocGia] [nchar](10) NOT NULL,
	[TenDangNhap] [nchar](30) NULL,
	[HoTen] [nchar](30) NULL,
	[GioiTinh] [nchar](5) NULL,
	[NamSinh] [datetime] NULL,
	[DiaChi] [nchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUMUON]    Script Date: 04/01/2022 7:23:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUMUON](
	[MaPhieu] [nchar](10) NOT NULL,
	[MaDocGia] [nchar](10) NULL,
	[MaSach] [nchar](10) NULL,
	[NgayMuon] [datetime] NULL,
	[NgayPhaiTra] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUTRA]    Script Date: 04/01/2022 7:23:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTRA](
	[MaPhieu] [nchar](10) NOT NULL,
	[MaDocGia] [nchar](10) NULL,
	[MaSach] [nchar](10) NULL,
	[NgayTra] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SACH]    Script Date: 04/01/2022 7:23:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [nchar](10) NOT NULL,
	[TenSach] [nchar](50) NULL,
	[TacGia] [nchar](30) NULL,
	[TheLoai] [nchar](30) NULL,
	[NhaXuatBan] [nchar](50) NULL,
	[GiaSach] [int] NULL,
	[SoLuong] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ACCOUNT] ([MaDocGia], [TenDangNhap], [MatKhau], [Quyen]) VALUES (N'01        ', N'thanhhoang                    ', N'123456                        ', 1)
INSERT [dbo].[ACCOUNT] ([MaDocGia], [TenDangNhap], [MatKhau], [Quyen]) VALUES (N'02        ', N'thanhhoang1                   ', N'123                           ', 1)
INSERT [dbo].[ACCOUNT] ([MaDocGia], [TenDangNhap], [MatKhau], [Quyen]) VALUES (N'999       ', N'admin                         ', N'                              ', 0)
INSERT [dbo].[DOCGIA] ([MaDocGia], [TenDangNhap], [HoTen], [GioiTinh], [NamSinh], [DiaChi]) VALUES (N'01        ', N'thanhhoang                    ', N'Hoàng Ngọc Thành              ', N'Nam  ', CAST(N'2000-07-06 00:00:00.000' AS DateTime), N'77 Nguyễn Huệ                                                                                       ')
INSERT [dbo].[DOCGIA] ([MaDocGia], [TenDangNhap], [HoTen], [GioiTinh], [NamSinh], [DiaChi]) VALUES (N'02        ', N'thanhhoang1                   ', N'Hoàng Ngọc Thành              ', N'Nam  ', CAST(N'2000-07-07 00:00:00.000' AS DateTime), N'HUSC                                                                                                ')
INSERT [dbo].[PHIEUMUON] ([MaPhieu], [MaDocGia], [MaSach], [NgayMuon], [NgayPhaiTra]) VALUES (N'1         ', N'01        ', N'1         ', CAST(N'2021-12-21 00:00:00.000' AS DateTime), CAST(N'2021-12-22 00:00:00.000' AS DateTime))
INSERT [dbo].[PHIEUMUON] ([MaPhieu], [MaDocGia], [MaSach], [NgayMuon], [NgayPhaiTra]) VALUES (N'2         ', N'02        ', N'2         ', CAST(N'2021-12-22 00:00:00.000' AS DateTime), CAST(N'2021-12-23 00:00:00.000' AS DateTime))
INSERT [dbo].[PHIEUTRA] ([MaPhieu], [MaDocGia], [MaSach], [NgayTra]) VALUES (N'1         ', N'01        ', N'1         ', CAST(N'2021-12-22 00:00:00.000' AS DateTime))
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [TheLoai], [NhaXuatBan], [GiaSach], [SoLuong], [TinhTrang]) VALUES (N'1         ', N'Lập trình hướng đối tượng                         ', N'Không biết                    ', N'Lập trình                     ', N'HUSC                                              ', 1500, 3, N'Còn       ')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [TheLoai], [NhaXuatBan], [GiaSach], [SoLuong], [TinhTrang]) VALUES (N'2         ', N'Nhập môn lập trình                                ', N'Không biết                    ', N'Lập trình                     ', N'HUSC                                              ', 1500, 10, N'Còn       ')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [TheLoai], [NhaXuatBan], [GiaSach], [SoLuong], [TinhTrang]) VALUES (N'3         ', N'Kỹ Thuật Lập Trình                                ', N'Không biết                    ', N'Lập trình                     ', N'HUSC                                              ', 3000, 5, N'Còn       ')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [TheLoai], [NhaXuatBan], [GiaSach], [SoLuong], [TinhTrang]) VALUES (N'4         ', N'Thiết Kế Phần Mềm                                 ', N'Không biết                    ', N'Lập trình                     ', N'HUSC                                              ', 4000, 0, N'Hết       ')
ALTER TABLE [dbo].[DOCGIA]  WITH CHECK ADD  CONSTRAINT [FK_DOCGIA_ACCOUNT] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[ACCOUNT] ([MaDocGia])
GO
ALTER TABLE [dbo].[DOCGIA] CHECK CONSTRAINT [FK_DOCGIA_ACCOUNT]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUMUON_DOCGIA] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DOCGIA] ([MaDocGia])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK_PHIEUMUON_DOCGIA]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUMUON_SACH] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK_PHIEUMUON_SACH]
GO
ALTER TABLE [dbo].[PHIEUTRA]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUTRA_DOCGIA] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DOCGIA] ([MaDocGia])
GO
ALTER TABLE [dbo].[PHIEUTRA] CHECK CONSTRAINT [FK_PHIEUTRA_DOCGIA]
GO
ALTER TABLE [dbo].[PHIEUTRA]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUTRA_SACH] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[PHIEUTRA] CHECK CONSTRAINT [FK_PHIEUTRA_SACH]
GO
