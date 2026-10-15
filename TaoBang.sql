create database bobdata;
use bobdata;
create table customers(
ma_khach varchar(20) not null,
ten varchar(20) not null,
sdt varchar(20) not null,
primary key (ma_khach)
);
create table orders(
ma_don varchar(20) not null,
ma_khach varchar(20) not null,
ngay_dat date not null,
gia decimal(10,2) not null,
primary key (ma_don,ma_khach),
foreign key(ma_khach) references customers(ma_khach)
);
create table products(
ma_sp varchar(20) not null,
ten_sp varchar(20) not null,
gia_sp decimal(10,2) not null,
primary key (ma_sp)
);
create table order_items(
ma_sp varchar(20) not null,
ma_don varchar(20) not null,
ngay_dat date not null,
primary key (ma_sp,ma_don),
foreign key (ma_sp) references products(ma_sp),
foreign key (ma_don) references orders(ma_don)
);
