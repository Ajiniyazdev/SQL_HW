create database MyDatabase1

use MyDatabase

--Tools-Options-Text Editor-All Languages

--DDL Data Definition Language
--create
--alter
--drop
--truncate

create table table_name(column_name datatype, column_name2 datatype,...

create table FirstTable(FirstName varchar(50), Age int)

select * from FirstTable

insert into table_name values (value1, value2,...), (value21, value22, ...)
/*
insert into table_name values (value1, value2, ...)
insert into table_name values (value21, value22, ...)
*/
insert into FirstTable values ('Daniel', 25), ('Kim', 30)

insert into Firsttable(FirstName, Age) values ('Lia', 45)

insert into FirstTable values ('Berg', 100)

insert into FirstTable(FirstName) values ('Jack')

insert into FirstTable(Age) values (38)

insert into FirstTable(FirstName) values ('Samuel', 17)

select * from FirstTable

alter table table_name
add column_name datatype

alter table FirstTable
add Lastname varchar(100)

--alter table FirstTable
--drop column Lastname

--Ctrl+K+C  comment
--Ctrl+K+U  uncomment

select * from FirstTable

truncate table Firsttable

drop table FirstTable

create table SecondTable (ID int, name varchar(50))

select * from SecondTable

insert into SecondTable values (1, 'Pitt'), (2, 'Bred')

select * from SecondTable

--DML Data Manipulation Language

insert into SecondTable values (3, 'Anna')
insert into SecondTable values (4, 'Morgan')
insert into SecondTable values (5, 'William')

select * from SecondTable

exec sp_help 'SecondTable'

update SecondTable
set name = 'Hanna'

update SecondTable
set name = 'Hanna'
where name = 'Anna'

insert into SecondTable values (7, 'Bred')

update SecondTable
set name = 'Brett'
where name = 'Bred' and ID = 2

select * from SecondTable

delete from SecondTable
where name = 'Morgan'

update SecondTable
set name = ''
where ID = 5 and name = 'William'

delete from SecondTable
where ID = 5 and name = ''

--DQL Data Query Language
--Select

select * from SecondTable

select id, name from SecondTable

select name from SecondTable

select getdate()
select 'abc'
select 2+2

--TCL Transaction Control Language

select * from SecondTable

insert into SecondTable values ('', 'Jackson')

0 vs null

insert into SecondTable values (null, 'Christina')

insert into SecondTable(name) values ('Michael')

insert into SecondTable values (7, 'Mateo')

select * from SecondTable

begin transaction
update SecondTable
set name = 'Mateo'
where ID = 7

--rollback
--commit

rollback

commit

create table ThirdTable(name varchar(50))
insert into ThirdTable values ('ABC'), ('DEF'), ('Logan'), ('Kimdir')

--DCL Data Control Language

select * from ThirdTable
select * from SecondTable

create login MyLogin with password = '1234'

create user MyUser for login MyLogin

create role MyRole

alter role MyRole add member MyUser

--Grant
--Revoke

grant select on SecondTable to MyRole

select * from ThirdTable

--Hometask

--Create database(any topic you are interested)

--Create at least 10 tables with 5-7 columns

--Populate these tables with any data (roughly 5 rows each)

