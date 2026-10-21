select distinct customerName,
case
	when creditLimit > 10000 and creditLimit < 100000 then creditLimit * 0.1
    when creditLimit > 100000 and creditLimit < 1000000 then creditLimit * 0.05
    else 'Mua di'
    end as TienHoanTra
    from customers
order by customerName desc 
limit 3;

    select * from customers;
	
