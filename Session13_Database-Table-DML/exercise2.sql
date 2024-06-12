-- Tạo cơ sở dữ liệu
create database QuanLyBanHang;
use QuanLyBanHang;

-- Tạo bảng Customer
create table Customer (
	cID char(10) primary key,
    cName varchar(100),
    cAge int
);

-- Tạo bảng product
create table Product (
	pID char(10) primary key,
    pName varchar(100),
    pPrice decimal(10,2)
);

-- Tạo bảng Order
create table `Order`(
	oID CHAR(10) PRIMARY KEY,
    cID CHAR(10),
    oDate DATE,
    oTotalPrice DECIMAL(10, 2),
    FOREIGN KEY (cID) REFERENCES Customer(cID)
);

-- Tạo bảng OrderDetail
create table OrderDetail (
    oID CHAR(10),
    pID CHAR(10),
    odQTY INT,
    PRIMARY KEY (oID, pID),
    FOREIGN KEY (oID) REFERENCES `Order`(oID),
    FOREIGN KEY (pID) REFERENCES Product(pID)
);




