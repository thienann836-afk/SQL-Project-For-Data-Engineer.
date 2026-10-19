insert into customers(ma_khach,ten,sdt) 
values ('id01','Nguyen Van An','0900999009'),
	   ('id02','Nguyen Binh Thu','09034532324'),
       ('id03','Nguyen Tri Thanh','09276378232');
       
insert into products(ma_sp,ten_sp,gia_sp)
values ('sp01','phim chieu rap',70000.00),
		('sp02','Marval',70000.00),
        ('sp03','Trai Buon Nguoi',70000.00);
insert into orders(ma_don,ma_khach,ngay_dat,gia)
values ('don01','id01','2010-10-27',230000.00),
	    ('don02','id02','2010-10-30',430000.00),
        ('don03','id03','2010-10-26',180000.00);

insert into order_items(ma_sp,ma_don)
values ('sp01','don01'),
		('sp02','don02'),
        ('sp03','don03');
        
select * from customers;
update customers
set ten = 'Nguyen Thien nhinh'
where ma_khach ='id02';
delete from order_items where ma_don = 'don01' and ma_sp = 'sp01';
delete from orders where ma_don = 'don01';
delete from customers where ma_khach = 'id01';

update customers 
set ten = 'Nguyen Thien An'
where ma_khach = 'id02';
delete from order_items where ma_sp = 'sp03' and ma_don = 'don03';
delete from orders where ma_don = 'don03' and ma_khach = 'id03';
delete from customers where ma_khach = 'id03';
select * from orders;
select * from order_items;