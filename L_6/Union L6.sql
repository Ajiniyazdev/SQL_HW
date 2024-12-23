use W3Resource
go

select *from INFORMATION_SCHEMA.TABLES
where TABLE_NAME='orders'
--1

select salesman_id , name, 'Salesman' from Inventory.Salesman
where city = 'London'
union
select customer_id, cust_name, 'Customer' from Inventory.Customer
where city = 'London'

--2

select salesman_id , city from Inventory.Salesman
union 
select salesman_id , city from Inventory.Customer

--3

select salesman_id 'Salesperson ID', customer_id 'customer_id' from Inventory.Orders
union
select salesman_id 'Salesperson ID', customer_id 'customer_id' from Inventory.Customer

--4

