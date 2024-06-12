create database warehoues;
use warehouse;
-- 1. Nhà cung cấp 
create table Nhacungcap (
	maNCC char(10) primary key,
    tenNCC varchar(100),
    diachi varchar(255),
    sodienthoai varchar(15)
);
-- 2. Đơn đặt hàng 
create table Dondathang (
	soDH char(10) primary key,
    ngayDH date,
    maNCC char(10),
    foreign key (maNCC) references Nhacungcap(maNCC)
);
-- 3. Chi tiết đơn đặt hàng  
create table ChiTietDonDatHang (
	maVT char(10),
    soDH char(10),
    DonGiaNhap decimal(10,2),
    SoLuongDat int,
    primary key (maVT, soDH),
    foreign key (maVT) references VatTu(maVT),
    foreign key (soDH) references DonDatHang(soDH)
);
-- 4. Vật tư
create table VatTu (
	maVT char(10) primary key,
	tenVT varchar(100)
);
-- 5. Phiếu nhập 
create table PhieuNhap (
	soPN char(10) primary key,
    ngayNhap date
); 
-- 6. Phiếu nhập chi tiết
create table PhieuNhapChiTiet (
	soPN char(10),
    maVT char(10),
    DonGiaNhap decimal(10,2),
    SoLuongNhap int,
    primary key (soPN, maVT),
    foreign key (soPN) references PhieuNhap(soPN),
    foreign key (maVT) references VatTu(maVT)
);
-- 7. Phiếu xuất
create table PhieuXuat (
	soPX char(10) primary key,
    ngayXuat date
);
-- 8. Phiếu xuất chi tiết
create table PhieuXuatChiTiet (
	soPX char(10),
    maVT char(10),
    DonGiaXuat decimal(10, 2),
    SoLuongXuat int,
    primary key (soPX, maVT),
    foreign key (soPX) references PhieuXuat(soPX),
    foreign key (maVT) references VatTu(maVT)
);








