select * from customers;
select * from orders;
-- Inner Join
select c.customer_id,c.name,o.order_id,o.total_amount
from customers c
inner join orders o 
on c.customer_id = o.customer_id;
-- Left join chỉ ra cả khi 
select c.customer_id,c.name,o.order_id,o.total_amount
from customers c
left join orders o
on c.customer_id = o.customer_id;
-- Truy vấn con
select name,city 
from customers
where total_amount in(
select total_amount from orders
where total_amount > 100000
);