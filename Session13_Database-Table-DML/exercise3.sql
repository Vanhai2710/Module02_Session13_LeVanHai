-- Tạo cơ sở dữ liệu
create database QuanLyBanHang2;
use QuanLyBanHang2;

-- Tạo bảng Customer
create table Customer (
    cID int primary key,
    cName varchar(25),
    cAge tinyint
);

-- Tạo bảng Product
create table Product (
    pID int primary key,
    pName varchar(25),
    pPrice int
);

-- Tạo bảng Order
create table `Order` (
    oID int primary key,
    cID int,
    oDate datetime,
    oTotalPrice int,
    foreign key (cID) references Customer(cID)
);

-- Tạo bảng OrderDetail
create table OrderDetail (
    oID int,
    pID int,
    odQTY int,
    primary key (oID, pID),
    foreign key (oID) references `Order`(oID),
    foreign key (pID) references Product(pID)
);

select * from product;
-- Chèn dữ liệu vào bảng Customer
INSERT INTO Customer (cID, cName, cAge) VALUES
(1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

-- Chèn dữ liệu vào bảng Product
INSERT INTO Product (pID, pName, pPrice) VALUES
(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

-- Chèn dữ liệu vào bảng Order
INSERT INTO `Order` (oID, cID, oDate, oTotalPrice) VALUES
(1, 1, '2006-03-12', NULL),
(2, 2, '2006-03-23', NULL),
(3, 1, '2006-03-16', NULL);

-- Chèn dữ liệu vào bảng OrderDetail
INSERT INTO OrderDetail (oID, pID, odQTY) VALUES
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8);

