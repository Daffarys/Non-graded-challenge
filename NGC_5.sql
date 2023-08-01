create table Customer(
	customer_id serial Primary key,
	name varchar(50),
	city varchar(50)
);

create table Orders(
	orders_id serial Primary key,
	customer_id integer,
	order_date varchar(50),
	total_amount float
)

insert into customer(customer_id, Name, city)
values
	(1,'John Doe', 'New York'),
	(2,'Jane Smith', 'Los Angeles'),
	(3,'David Johnson', 'Chicago');
	
insert into orders(orders_id, customer_id,order_date,total_amount)
values
	(1,1, '2022-01-10', 100.),
	(2,1, '2022-02-15', 150.),
	(3,2, '2022-03-20', 200.),
	(4,3, '2022-04-25', 50.);

drop table customer,
drop table orders

select customer.name, count(orders.customer_id) as total_orders
from customer
join orders on customer.customer_id = orders.customer_id
group by customer.name


select * from customer
select * from orders

