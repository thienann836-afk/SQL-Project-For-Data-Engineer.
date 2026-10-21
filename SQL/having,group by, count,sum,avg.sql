select * from orderdetails;
select * from products;
select * from orders;
select count(orderNumber), sum(quantityOrdered*priceEach) as TongDoanhThu,
avg(quantityOrdered*priceEach) as TrungBinhDon
from orderdetails
group by orderNumber
having TongDoanhThu > 10000;
